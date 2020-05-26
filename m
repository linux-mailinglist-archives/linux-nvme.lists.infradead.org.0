Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18531DBBF8
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGSmEMhP23LG8w1HRH5XP1GtVbQ4dRg0eVMFFdYdPUE=; b=C24hSWjNEBKmvp
	mSCPf6rF76apuT93xRZeEhWdgSUNlim9XoUqqz2yd5mrdQZsp2lSFrSaGF0SOWDOKIisZxLozsXBd
	kAmzFOvGXj4yw2SxmOVKJjPfcoU5po6xSmEyoQscgmi1izLhJTS/yBoGNztp+1ixc1tZhIBvNgVJ9
	JpQ3UBFpxAvSnqIHmAUYEXE8eerqrj5OsfNtJmF9VWZLssiPPkvypYd1uIO7ZLVgtMIxi7dAqNoQu
	dP7QQa/FsI/cGwCos0WZTaqomQqNDboNtAfjBmwIf24LEDIoprnp63NaFpKKXNDImOfPWygV2VqE+
	vxYUgi1B1l59KmRWEexg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSt7-0006xR-Ue; Wed, 20 May 2020 17:52:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSsz-0006w6-MW
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 17:52:11 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE89B206B6;
 Wed, 20 May 2020 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997129;
 bh=ti1WjseTOpUkll0Pp/RDFQPT5PbKehiG1FR9vcyaXhM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wU2lOGs3YIURROgGLkLHDx3s8886LDycW8Nd9dp3y6UQfBBMUaJf9UGI89tUv3GxF
 9NeQQC9GeIsSDuSw3d5CeecjsMYuu/xJROjso5QglHAD3jieVa0V8KoyxQwFgBDU+M
 J1dAZ9KnSPAyuYE4zGeY2Pi0JCRuprehvCWKxmOI=
Date: Thu, 21 May 2020 02:52:02 +0900
From: Keith Busch <kbusch@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [PATCH 3/3] nvme-pci: make nvme reset more reliable
Message-ID: <20200520175202.GA2151@redsun51.ssa.fujisawa.hgst.com>
References: <20200520115655.729705-1-ming.lei@redhat.com>
 <20200520115655.729705-4-ming.lei@redhat.com>
 <af81f03c-cee9-f1cf-5002-48df43e824db@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af81f03c-cee9-f1cf-5002-48df43e824db@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105209_750359_EC8A26F5 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Alan Adamson <alan.adamson@oracle.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:10:47AM -0700, Dongli Zhang wrote:
> On 5/20/20 4:56 AM, Ming Lei wrote:
> > +static bool nvme_wait_freeze_and_check(struct nvme_dev *dev)
> > +{
> > +	bool frozen;
> > +
> > +	while (true) {
> > +		frozen = nvme_frozen(&dev->ctrl);
> > +		if (frozen)
> > +			break;
> > +		if (!dev->online_queues)
> > +			break;
> > +		msleep(5);
> > +	}
> > +
> > +	return frozen;
> > +}
> > +
> >  static void nvme_reset_work(struct work_struct *work)
> >  {
> >  	struct nvme_dev *dev =
> >  		container_of(work, struct nvme_dev, ctrl.reset_work);
> >  	bool was_suspend = !!(dev->ctrl.ctrl_config & NVME_CC_SHN_NORMAL);
> >  	int result;
> > +	bool reset_done = true;
> >  
> >  	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING)) {
> >  		result = -ENODEV;
> > @@ -2606,8 +2622,9 @@ static void nvme_reset_work(struct work_struct *work)
> >  		nvme_free_tagset(dev);
> >  	} else {
> >  		nvme_start_queues(&dev->ctrl);
> > -		nvme_wait_freeze(&dev->ctrl);
> > -		nvme_dev_add(dev);
> > +		reset_done = nvme_wait_freeze_and_check(dev);
> 
> Once we arrive at here, it indicates "dev->online_queues >= 2".
> 
> 2601         if (dev->online_queues < 2) {
> 2602                 dev_warn(dev->ctrl.device, "IO queues not created\n");
> 2603                 nvme_kill_queues(&dev->ctrl);
> 2604                 nvme_remove_namespaces(&dev->ctrl);
> 2605                 nvme_free_tagset(dev);
> 2606         } else {
> 2607                 nvme_start_queues(&dev->ctrl);
> 2608                 nvme_wait_freeze(&dev->ctrl);
> 2609                 nvme_dev_add(dev);
> 2610                 nvme_unfreeze(&dev->ctrl);
> 2611         }
> 
> Is there any reason to check "if (!dev->online_queues)" in
> nvme_wait_freeze_and_check()?

Looks correct to me. If the queues fail to freeze, that means a timeout
occured, and the nvme timeout handler tears down all online queues, so
this patch uses that for the criteria to break out of the loop. 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
