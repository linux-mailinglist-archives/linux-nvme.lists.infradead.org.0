Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354F1FDC7
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 04:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9gjn+fogaqlLrKUIk6P2zvcnFUjYJnkJFxZ2WPxTf4=; b=DE4G2P6M1EzojH
	/ZavHsy4r8HNrIpotat/jStB379Xco2oJQE3hmZX0+rVSiZZqldIHb+zn3mGk3BQ7C5FYlPBnblhE
	4V0hfo+hoDxd6HmwWZqyPXwonseR1iW1tIJJ9+U9qrbGzbdcRpsWwq5dcy1BjXSbGsdfAnYxWkJ0y
	t1XDUWNUt/QrR7dnPSUMlu6cX3IFezdw2tR619aDfFqThwYSPK162A6Htesxridxr8VIX8EwmJwq8
	NUFBDOvc/gh1nRgU7bYteiCF/mwD55Euonoope/a+POBEwlYhZlte+WPtCkk+sO8p1Lb0VO9vUR5L
	/1lHTEINe6ShCTYq/0ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6N9-0000V0-7L; Thu, 16 May 2019 02:43:55 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6N3-0000Ud-CN
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 02:43:51 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E1D8F308623C;
 Thu, 16 May 2019 02:43:47 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CB0F01001DD7;
 Thu, 16 May 2019 02:43:39 +0000 (UTC)
Date: Thu, 16 May 2019 10:43:30 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 1/6] nvme-pci: Fix controller freeze wait disabling
Message-ID: <20190516024329.GA16342@ming.t460p>
References: <20190515163625.21776-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-1-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 16 May 2019 02:43:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_194349_437031_77820481 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:36:20AM -0600, Keith Busch wrote:
> If a controller disabling didn't start a freeze, like when we disable
> whilst in the connecting state, don't wait for freeze to complete.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/pci.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 2a8708c9ac18..d4e442160048 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2376,7 +2376,7 @@ static void nvme_pci_disable(struct nvme_dev *dev)
>  
>  static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>  {
> -	bool dead = true;
> +	bool dead = true, freeze = false;
>  	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  
>  	mutex_lock(&dev->shutdown_lock);
> @@ -2384,8 +2384,10 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>  		u32 csts = readl(dev->bar + NVME_REG_CSTS);
>  
>  		if (dev->ctrl.state == NVME_CTRL_LIVE ||
> -		    dev->ctrl.state == NVME_CTRL_RESETTING)
> +		    dev->ctrl.state == NVME_CTRL_RESETTING) {
> +			freeze = true;
>  			nvme_start_freeze(&dev->ctrl);
> +		}
>  		dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY) ||
>  			pdev->error_state  != pci_channel_io_normal);
>  	}
> @@ -2394,10 +2396,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>  	 * Give the controller a chance to complete all entered requests if
>  	 * doing a safe shutdown.
>  	 */
> -	if (!dead) {
> -		if (shutdown)
> -			nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);
> -	}
> +	if (!dead && shutdown && freeze)
> +		nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);
>  
>  	nvme_stop_queues(&dev->ctrl);
>  

Looks fine:

Reviewed-by: Ming Lei <ming.lei@rehda.com>


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
