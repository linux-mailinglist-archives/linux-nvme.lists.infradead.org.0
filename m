Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB51ADDFB
	for <lists+linux-nvme@lfdr.de>; Fri, 17 Apr 2020 15:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tf2pk1CHwfwlrwba5H8HA4jUSlm0tqQaw73QZFFf5uE=; b=XrtQxiqMwGQy8q
	OsjgmgBRqv6nj0YNjg3stLDPiur8/SSTo2Zhsx+EqMkgLLzLid3rN7rDALBNbTaH0MUXpoULD7dhQ
	yA38lFNiRqk1hlU44e89M5UIDzXx5hblA0mBYdq5Z1Lo0PF4ppT8JTug0awXXLTnqkGZQWPiHH41E
	UXDAa+CY55iMhwiiZyScRtJLp5ARFBDLgo2snIlLqn5T4IAm9BO+2Hi1uZy970Ze++pgcf/KTCd6L
	yaTa2dzd/S2ogw+K/lv4pXmS79KO4v/B7GzaL7cvMG9bK9OM/nYgYd/5ef4thT9XFQDy/VEGX/iT4
	fHw8APSS5kuRbdcP1YxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQeJ-0000ar-Ee; Fri, 17 Apr 2020 13:03:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQch-00032y-Tu
 for linux-nvme@lists.infradead.org; Fri, 17 Apr 2020 13:01:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A72B768BEB; Fri, 17 Apr 2020 14:59:29 +0200 (CEST)
Date: Fri, 17 Apr 2020 14:59:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme/pci: Use Discard instead of Write Zeroes on SK
 hynix SC300
Message-ID: <20200417125929.GA5053@lst.de>
References: <20200417083641.28205-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417083641.28205-1-kai.heng.feng@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_060136_125860_006DE414 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, open list <linux-kernel@vger.kernel.org>,
 "open list:NVM EXPRESS DRIVER" <linux-nvme@lists.infradead.org>, axboe@fb.com,
 linux-stable <stable@vger.kernel.org>, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 04:36:41PM +0800, Kai-Heng Feng wrote:
> After commit 6e02318eaea5 ("nvme: add support for the Write Zeroes
> command"), SK hynix SC300 becomes very slow with the following error
> message:
> [  224.567695] blk_update_request: operation not supported error, dev nvme1n1, sector 499384320 op 0x9:(WRITE_ZEROES) flags 0x1000000 phys_seg 0 prio class 0]
> 
> Use quirk NVME_QUIRK_DEALLOCATE_ZEROES to workaround this issue.

Do you have a written guarantee from SK Hynix that it will always zero
all blocks discarded?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
