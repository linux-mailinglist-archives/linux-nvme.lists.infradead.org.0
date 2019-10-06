Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5B9CD8E1
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 21:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QCWPZnZYHRAnbZ3IlyVbFsfwgsNksnT2hT7gWOLoKs=; b=LmbIh9XGS/l0pm
	u8CyyhoJQD0mmvsqP3tDyo5N2r4Po/3IO1gddrXsmjYcOO0UMRvN0ikI6aR1NvrjeoYBYrshkxtJm
	UmHAVbLq+9x/1su4L811KQRj4doKC7ddObibRRjOL1+6voJClSXXN8h4V//UHrOjivYS0ilzjR4l6
	6fHYZ/3Smbcm7BGCU+44Y6g4Zz2XvWKNB64Thkl3ErjMqnl+1iIagX6a/oGXZeUbUP/NTcQID57R8
	mjQPylruD/uJb5KqIlM1sQNcL4iMPv65bQEnqSGqYUNVLo/StJMETxrB0Ri4jn5qeYAovrN7q/8Ie
	G5YLv/1gN4UlijuMAjqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHC5m-0000Lt-7L; Sun, 06 Oct 2019 19:21:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHC5h-0000LT-Nl
 for linux-nvme@lists.infradead.org; Sun, 06 Oct 2019 19:21:15 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACA932077B;
 Sun,  6 Oct 2019 19:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570389673;
 bh=KGQpWyuNGlR6/YpNIjIUQyU5X4xp21pku07dVF1CvyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pbUwgqDTxshiTN1hHNE6IJ45J+AU1NjVJtVG/2gImJwC0qss9n51PPXbI1TvguH6C
 rdzxQJ6w5F1LsH2cwsjBtrF76K6AE//N7Lj8qSM8IXbctVFvy+b/DyQU4VVzsjk8Ft
 Q3ix9/OjqkJZb1Nj7stlJ2uzHLKAgEckfQFoQly4=
Date: Sun, 6 Oct 2019 13:21:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: Tyler Ramer <tyaramer@gmail.com>
Subject: Re: [PATCH] nvme-pci: Shutdown when removing dead controller
Message-ID: <20191006192109.GA9983@keith-busch>
References: <20191003191354.GA4481@Serenity>
 <CAKcoMVC2LdcmUx6j5JzuT-TsFGz=mwQ0MsprrKR2qeXoTmQ-TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKcoMVC2LdcmUx6j5JzuT-TsFGz=mwQ0MsprrKR2qeXoTmQ-TQ@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_122113_814517_F622C169 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@fb.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 11:36:42AM -0400, Tyler Ramer wrote:
> Here's a failure we had which represents the issue the patch is
> intended to solve:
> 
> Aug 26 15:00:56 testhost kernel: nvme nvme4: async event result 00010300
> Aug 26 15:01:27 testhost kernel: nvme nvme4: controller is down; will
> reset: CSTS=0x3, PCI_STATUS=0x10
> Aug 26 15:02:10 testhost kernel: nvme nvme4: Device not ready; aborting reset
> Aug 26 15:02:10 testhost kernel: nvme nvme4: Removing after probe
> failure status: -19
> 
> The CSTS warnings comes from nvme_timeout, and is printed by
> nvme_warn_reset. A reset then occurs
> Controller state should be NVME_CTRL_RESETTING
> 
> Now, in nvme_reset_work, controller is never marked "CONNECTING"  at:
> 
>      if (!nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_CONNECTING))
> 
> because several lines above, we can determine that
> nvme_pci_configure_admin_queues returns
> a bad result, which triggers a goto out_unlock and prints "removing
> after probe failure status: -19"
> 
> Because state is never changed to NVME_CTRL_CONNECTING or
> NVME_CTRL_DELETING, the
> logic added in https://github.com/torvalds/linux/commit/2036f7263d70e67d70a67899a468588cb7356bc9
> should not apply. 

Nor should it, because there are no IO in flight at this point, there
can't be any timeout work to check the state.

> We can further validate that dev->ctrl.state ==
> NVME_CTRL_RESETTING thanks to
> the WARN_ON in nvme_reset_work.

I'm not sure I see what this is fixing. Setting the shutdown to true is
usually just to get the queues flushed, but the nvme_kill_queues() that
we call accomplishes the same thing.
 
> On Thu, Oct 3, 2019 at 3:13 PM Tyler Ramer <tyaramer@gmail.com> wrote:
> >
> > Always shutdown the controller when nvme_remove_dead_controller is
> > reached.
> >
> > It's possible for nvme_remove_dead_controller to be called as part of a
> > failed reset, when there is a bad NVME_CSTS. The controller won't
> > be comming back online, so we should shut it down rather than just
> > disabling.
> >
> > Signed-off-by: Tyler Ramer <tyaramer@gmail.com>
> > ---
> >  drivers/nvme/host/pci.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index c0808f9eb8ab..c3f5ba22c625 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -2509,7 +2509,7 @@ static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
> >  static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
> >  {
> >         nvme_get_ctrl(&dev->ctrl);
> > -       nvme_dev_disable(dev, false);
> > +       nvme_dev_disable(dev, true);
> >         nvme_kill_queues(&dev->ctrl);
> >         if (!queue_work(nvme_wq, &dev->remove_work))
> >                 nvme_put_ctrl(&dev->ctrl);
> > --
> > 2.23.0
> >

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
