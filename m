Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE761C4E0F
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 08:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qlpw4D+2hMeaMu9x+D+lvvBgjBGjHN3jmBc9GEaxwEs=; b=oFQKh7rPzGKoaC
	EP0awRp9LbPv4Bp3ov0OMQL67tJ+2L/J8QceOH5XazP4mROyABgk+zAYKWKuE3C7FHQTtDGQA9G/7
	TxOzA8WYxWHF3/2l4A28AU2pdT3rHOCb2Y1D4afQ20VFf4UOvgAQ53UvkwaSFN5vuqkXmvkw/Qzto
	OPZHg8i7NrNFUShJNNa7/2TlrpFND7+xN6NFgJGtWNFfANZq3Rq+Y5fiYwa0tCiNZkDAQ6HmUGbJ0
	JwjnnsxeOiVqA4aNT4SjKB5kcIYsbPBv+MzoCvGAyUtWeqNfrGen6Oc98sF/PUbSuFc8EyLlkuLQD
	VUma6EWfLeuwsTwdcIFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqlY-0002I5-Kv; Tue, 05 May 2020 06:09:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqlT-0002HP-Ri
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 06:09:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 01B8F68BEB; Tue,  5 May 2020 08:09:08 +0200 (CEST)
Date: Tue, 5 May 2020 08:09:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE
 when we have more to send
Message-ID: <20200505060907.GA3995@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505052002.14924-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_230912_042047_B09AF1D9 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 10:20:01PM -0700, Sagi Grimberg wrote:
> We can signal the stack that this is not the last page coming and the
> stack can build a larger tso segment, so go ahead and use it.

Maybe you wan a little helper that returns the flags based on a last
flag?  Something like:

static int nvme_tcp_msg_flags(bool last_page)
{
	if (last_page)
		return MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST;
	return MSG_DONTWAIT | MSG_EOR;
}

or do we have a case where we don't want to set EOR?  At least the
target seems to currently have such a case.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
