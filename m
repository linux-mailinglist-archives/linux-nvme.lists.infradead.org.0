Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94CF7B021
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 19:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxBEfk64VG9IFZTtxflhRR1KH5h7ozW/zzI4wyy7bPY=; b=QD/BuufPfxT5V0
	VJhaBG1KLG+rPeL8DMAkoX+tfXIWaE/jEiH2sqNH6dSrd3QJxR3es31qpRpqJIf8l5JJBnjLujQWE
	ombRnIqNAsMf+jcNVGlDikwtIAxjhNxlaYQjZfBB3wpIvIw3QphwJlGufp7o6ldTL7A7LlVfHIEnc
	j5L37y66JYe7692NeHL4JuQRkdqynfS3I3At0EX1atoRZHcchUCsyPobfTgcyLX1salM5ieVsi1bt
	7BA2GHn3s131uo1XXi2JZ4HcxHO+FLmeoyofufeDWuVos2MPfyx153srzIAiuCy6n01D+o3AvPm18
	8PoMBXPuYMPT5CoVD7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsW0I-00071h-LM; Tue, 30 Jul 2019 17:33:38 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsW0C-00071K-EN
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 17:33:33 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 10:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="176858900"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 10:33:31 -0700
Date: Tue, 30 Jul 2019 11:30:48 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate
 failed because of controller reset
Message-ID: <20190730173048.GC13948@localhost.localdomain>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_103332_527216_A1FAFF93 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:12:42AM -0700, Sagi Grimberg wrote:
> 
> > > Yes, and again, addresses the case that the namespace is going away.
> > > 
> > > So I think we are in agreement? I only need to change the commit
> > > message from: "the revalidation I/O" to "the admin I/O" ?
> > 
> > That words of 'admin I/O' isn't related with the patch or issue.
> 
> But it is, the original issue was due to the fact that
> nvme_revalidate_disk() I/Os such as nvme_identify_ns() or
> nvme_identify_ns_descs(). This was the original issue.
> 
> > > Yea, this should do the trick I guess:
> > > --
> > > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > > index fa31da0762b9..d01976c93160 100644
> > > --- a/drivers/nvme/host/core.c
> > > +++ b/drivers/nvme/host/core.c
> > > @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl
> > > *ctrl, unsigned nsid)
> > > 
> > >           ns = nvme_find_get_ns(ctrl, nsid);
> > >           if (ns) {
> > > -               if (ns->disk && revalidate_disk(ns->disk))
> > > +               if (ns->disk && ctrl->state == NVME_CTRL_LIVE &&
> > > +                   revalidate_disk(ns->disk)
> > >                           nvme_ns_remove(ns);
> > >                   nvme_put_ns(ns);
> > >           } else
> > 
> > If RESET is triggered just inside revalidate_disk(), and not done after
> > revalidate_disk() returns,  there is still race between reset and scan work.
> > 
> 
> You are correct, this was why I had the ctrl->state check after
> revalidate_disk so if it failed because we are in a reset we should
> not remove the namespace.
> 
> We need a reliable way to NOT remove the namespace if revalidate_disk
> failed because the controller is resetting and we don't have a channel
> to the controller at this very moment...
> 
> Keith,
> 
> As for the failure during reset scenario, this is happening only when
> the namespace is about to go away or something is seriously wrong right
> (looking from where nvme_kill_queues is called).
> 
> Do you still think we should avoid calling the revalidate_disk if the
> controller is resetting?

I was considering if a reset happens to trigger when nvme's
revalidate_disk tries to read identify namespace. It's possible that
command gets aborted, and we don't retry admin commands, so we'd return
-ENODEV and nvme_validate_ns() removes an otherwise healthy namespace.

I'm not too concerned about this corner case actually occuring in
practice, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
