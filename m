Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6031ABA
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 11:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6paBKSNxqoOnoZgYHOBcqR/BCcc05/HcExdvOVvJF/o=; b=nehgKYdHWVM0PG
	cvypkkp2zOUOUla56NU1IIdv11xkZFNdNZALcnraf0eNUlRUlLmF9F8H8yD0N3Spwa54/49NcoNDw
	TyEtXXGeFQpJVFcRDo8bhgWUxS5aHzR5CoMZHMZsfeje5aKECOZ7f6ct8MYe/wj1wV7MKKOt+0Jwh
	BlZPmFTkYPB6rol6nUBVgYuGJEQ+IUOGo1jEwI/DGFME5Ljy9b5SRqxrcfg1wESbqDKvyytbg0CgZ
	kTDKanbZ36wobY9jejc64wW9SC+O3NbxciuHuB338vp+ZyuuZBOXoZgkQnGpxjF33DySnx/ApKt+W
	n7o6XEVhudaBObquRSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX00F-0005af-EF; Sat, 01 Jun 2019 09:08:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX009-0005aH-UF
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 09:08:35 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 59F3168AFE; Sat,  1 Jun 2019 11:08:09 +0200 (CEST)
Date: Sat, 1 Jun 2019 11:08:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 2/3] nvme: rearm fw notification in admin only state
Message-ID: <20190601090809.GH6453@lst.de>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-3-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524202036.17265-3-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_020834_129495_B7546FD9 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 02:20:35PM -0600, Keith Busch wrote:
> +	if (ctrl->state != NVME_CTRL_LIVE &&
> +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)

I think we really

 a) need a nvme_ctrl_is_live() helper encapsulating the above
 b) audit all checks for NVME_CTRL_LIVE if they really need to use
    this helper instead.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
