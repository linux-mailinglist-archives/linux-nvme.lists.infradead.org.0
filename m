Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6D21CFA44
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 18:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkHrlja7kBltI9xp8ds/JRQXh+6yv5M3zfNznlMCJQM=; b=ZjIfeTa4cO4O9H
	mFlSOOWL6Z+FcnkNIVJs/JVezi80p3BMuDH0Irbf82iABx52/eUV4b9OASr+WsFuMYFy+CHgvbDXX
	1HffzVXzvW7LATG1ypz1VDXu7J/vs5Al9uXS8HoGCantVxovL/Hcff4nuVolTTP8HMTADz/D6dWWx
	iLmf866xjb/2xoycPN+V94sGpPNZpaTOduoelDaQG0CdMuSjunGyImFWDmsgqW2071dYVCPPaQKZo
	GZXKRgBkl71Ohp7YtYI5SMht2IiHDQk9aBLXPsIlfEzaYwBU33DTDMz8Byp7sQq5GVbuym+Y6Ycr1
	ER6//dk+TwgS0+yafscg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXXH-0003jU-3Z; Tue, 12 May 2020 16:13:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXXC-0003j3-2Y
 for linux-nvme@lists.infradead.org; Tue, 12 May 2020 16:13:35 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DD6C568BEB; Tue, 12 May 2020 18:13:31 +0200 (CEST)
Date: Tue, 12 May 2020 18:13:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 2/2] nvmet-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE
 when we have more to send
Message-ID: <20200512161331.GB6049@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
 <20200505052002.14924-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505052002.14924-2-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_091334_265006_B1884365 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, May 04, 2020 at 10:20:02PM -0700, Sagi Grimberg wrote:
> We can signal the stack that this is not the last page coming and the
> stack can build a larger tso segment, so go ahead and use it.

Applied to nvme-5.8.

Can you prepare a patch to add the missing MSG_EOR flag in
nvmet_try_send_ddgst?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
