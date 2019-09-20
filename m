Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E83B97C9
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 21:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pecbGj22onXZ0Fc5WNGloIBGydjVWjuS/yIA0en3Z4=; b=YlPmqK0APYJxc/
	g1vWurf6fiZ2ZB7JuIwagWzbc+yt9DC1XkpVVtyHODphewrGFUGQ3zBM9k1cKpdMnpAhilL+w1vM3
	Eve9x914kg5iCD6/hNjuXmfuibZZADIwykyyfVE90sVrIpjde9AnBNfmspqltOD6Ezd8b23dx61aD
	frVubXMSnmhH3G3Z+IsZ6agMKlEFPHXQ0MblOFurUHq5+GsAvw12/SpMKf6bG2icTd7JxCTafBZ1+
	ynP6+BQWA7QfjHvyej7YoT2HgYS/USi91QtY7ylSwnV2Rrgm8cvhXld5zEq31Ic3MGwGBZphpkrnV
	qdJcnczkb//QonU1kWag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBOac-0004KJ-2r; Fri, 20 Sep 2019 19:29:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBOaY-0004Jw-B7
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 19:29:07 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8A732080F;
 Fri, 20 Sep 2019 19:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569007745;
 bh=q7ZR+MZcv7Pc0aswfaReFH9wKiubA88Rvmct4EOtupQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tJlHf5qToGhPfVCCynn2X/k3vFfU+4+nLzNkQORIcgsWzf2p4nQVNKbFRI4vNFhmq
 4sMq5e8u9uNYFtGtwrII/mdhbgwCeQKiWGRRp+UqFNn2qwRrN9gqocWufjZ8EYYB4I
 TT99p8LGYEBKvnG+cg0mWYnHyLq3Xh3W9wSwnkeM=
Date: Fri, 20 Sep 2019 13:29:03 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 6/6] nvme: Wait for reset state when required
Message-ID: <20190920192903.GE97854@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-7-kbusch@kernel.org>
 <debdee44-22a1-0361-9d20-4af6a11dab0d@grimberg.me>
 <20190920182637.GD97854@C02WT3WMHTD6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920182637.GD97854@C02WT3WMHTD6>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_122906_402558_007DF660 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 12:26:37PM -0600, Keith Busch wrote:
> On Fri, Sep 20, 2019 at 11:13:06AM -0700, Sagi Grimberg wrote:
> > On 9/19/19 2:34 PM, kbusch@kernel.org wrote:
> > >   static void nvme_reset_done(struct pci_dev *pdev)
> > >   {
> > >   	struct nvme_dev *dev = pci_get_drvdata(pdev);
> > > -	nvme_reset_ctrl_sync(&dev->ctrl);
> > > +
> > > +	if (!nvme_reset_continue(&dev->ctrl))
> > > +		flush_work(&dev->ctrl.reset_work);
> > 
> > Is nvme_reset_continue allowed to fail here?
> > As I see it, the flush must complete regardless doesn't it?
> 
> I was thinking a surprise hot-removal, but no, the pci driver is holding
> the device lock across the prepare/done sequence, so I don't think it's
> possible for this reset_continue() to fail to schedule.

Oh wait, there actually is a way, and I even accounted for it in this
patch, but just forgot about it. If we start an FLR while the controller
is CONNECTING, and if that CONNECTING fails, we'll transition to DELETING.
So yeah, reset_continue could fail.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
