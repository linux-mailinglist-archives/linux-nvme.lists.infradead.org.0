Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DDBB98BF
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 23:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFW6ljhvfcdUL0fwRniXTHwucp1LUSgdONwCtc6hSh4=; b=pjMKxeF6nToef/
	lg3vZWBakK4zYFP3tGRs0k/XjqQ1hB2egdrDiE/+MEDivPVWT+s+g36S1QQHeJmkMdUg7wo+88tIb
	g7eWaydrRe6RPPrLCCQwVYcc57JGMHyoSKcD1Ak4U2D/TpW5JwsRt43QAoN3N2Ggp2eS0elczVmjw
	tYhUdxjTvt/5QmDcg3oAOlIRRmM7MB9KJqIz0F5uyDBw1jE01ZuFf3mTFu1viRf8g82TPWzgxDqfL
	ahrm1DrkEL/QK0EQW11EIqLQSEqm2L7u8fw9aCBi9hQfdKMANFQYtQzxQo3XiB5SVHBHmH3MBSIIp
	iETlB60To9m9J8fTs3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBQ7C-0005q1-2b; Fri, 20 Sep 2019 21:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBQ77-0005pZ-JA
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 21:06:50 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50DEE205F4;
 Fri, 20 Sep 2019 21:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569013608;
 bh=xs5oGTif9HdSNkhNlpe1eqvmzTMtiKdWGHq2YaYl3Pc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SEhWDqrGXDllKD3CNeSvzGvTFC/uv6U2ohYpUNHAewlefZyVCtojCfMneMrczlK/r
 M88t11BOTLNF4tuHukFJ12q6Q8NXsUlKuRRPstLYqjzaxI7ksdtgtqyunatVBgxCv7
 mvaU70cjh+as8QlL4B5h26VDRmlOWZ1czJo6ESro=
Date: Fri, 20 Sep 2019 15:06:46 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 6/6] nvme: Wait for reset state when required
Message-ID: <20190920210645.GA30909@keith-busch>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-7-kbusch@kernel.org>
 <debdee44-22a1-0361-9d20-4af6a11dab0d@grimberg.me>
 <20190920182637.GD97854@C02WT3WMHTD6>
 <20190920192903.GE97854@C02WT3WMHTD6>
 <8bae471f-e7d6-89a3-81bc-498b9d42c392@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bae471f-e7d6-89a3-81bc-498b9d42c392@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_140649_665828_485506B1 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Fri, Sep 20, 2019 at 01:49:57PM -0700, Sagi Grimberg wrote:
> 
> > > > >    static void nvme_reset_done(struct pci_dev *pdev)
> > > > >    {
> > > > >    	struct nvme_dev *dev = pci_get_drvdata(pdev);
> > > > > -	nvme_reset_ctrl_sync(&dev->ctrl);
> > > > > +
> > > > > +	if (!nvme_reset_continue(&dev->ctrl))
> > > > > +		flush_work(&dev->ctrl.reset_work);
> > > > 
> > > > Is nvme_reset_continue allowed to fail here?
> > > > As I see it, the flush must complete regardless doesn't it?
> > > 
> > > I was thinking a surprise hot-removal, but no, the pci driver is holding
> > > the device lock across the prepare/done sequence, so I don't think it's
> > > possible for this reset_continue() to fail to schedule.
> > 
> > Oh wait, there actually is a way, and I even accounted for it in this
> > patch, but just forgot about it. If we start an FLR while the controller
> > is CONNECTING, and if that CONNECTING fails, we'll transition to DELETING.
> > So yeah, reset_continue could fail.
> 
> And nvme_remove() will flush the reset_work?

If scheduled, yes, nvme_remove() flushes reset_work.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
