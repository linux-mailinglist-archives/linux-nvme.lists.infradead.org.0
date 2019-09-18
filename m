Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB810B6EE3
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 23:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6eTv5d+Seh1/HtS6ZuZg2OYeNilkyg2o+457MNgHw4=; b=KrLE5rjjL36vsB
	aeAG1XdXGhvH3Z2500jU2DlzH50k1XomPI/sV5MC68JAQbxUTs0JK7PKRYAcRSsOthNIXiyRIDyBB
	MQkAGfCbQJponqnyQDZRTe+cFMux6q6HgmWCwzVBE2LkS0XpP/GZsCeqyofjPgTigaDUWUwsLiF4I
	OaOGQps7MAewkEvUhvIrj2mZ/2zseyz9NHsLyxHR17PmpNO2sTZWMig1Sf9ZkbBb+aNLYBshH3B/x
	mf5gefxHW9c93K+9M1DDXh52afdY6V5a1dfYNuTk2i3KG6ghdMuJejxPnBo1+bsQjZJxEHhHsXidX
	NLPCjialkkHtIPQ0IuvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAhXu-0007Fn-1S; Wed, 18 Sep 2019 21:31:30 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhXl-0007EE-Oy
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 21:31:23 +0000
Received: from 79.184.255.25.ipv4.supernova.orange.pl (79.184.255.25) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id ff4cb8bbef048af8; Wed, 18 Sep 2019 23:31:19 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [PATCH] nvme-pci: Save PCI state before putting drive into
 deepest state
Date: Wed, 18 Sep 2019 23:31:19 +0200
Message-ID: <4858057.cjDlXVALXj@kreacher>
In-Reply-To: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
References: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_143121_973411_8DA7E627 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>, sjg@google.com,
 Linux PCI <linux-pci@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ryan Hong <Ryan.Hong@dell.com>, Keith Busch <kbusch@kernel.org>,
 Jared Dominguez <jared.dominguez@dell.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thursday, September 12, 2019 1:42:33 AM CEST Mario Limonciello wrote:
> The action of saving the PCI state will cause numerous PCI configuration
> space reads which depending upon the vendor implementation may cause
> the drive to exit the deepest NVMe state.
> 
> In these cases ASPM will typically resolve the PCIe link state and APST
> may resolve the NVMe power state.  However it has also been observed
> that this register access after quiesced will cause PC10 failure
> on some device combinations.
> 
> To resolve this, move the PCI state saving to before SetFeatures has been
> called.  This has been proven to resolve the issue across a 5000 sample
> test on previously failing disk/system combinations.

This sounds reasonable to me, but it would be nice to CC that to linux-pm
and/or linux-pci too.

> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> ---
>  drivers/nvme/host/pci.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 732d5b6..9b3fed4 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2894,6 +2894,13 @@ static int nvme_suspend(struct device *dev)
>  	if (ret < 0)
>  		goto unfreeze;
>  
> +	/*
> +	 * A saved state prevents pci pm from generically controlling the
> +	 * device's power. If we're using protocol specific settings, we don't
> +	 * want pci interfering.
> +	 */
> +	pci_save_state(pdev);
> +
>  	ret = nvme_set_power_state(ctrl, ctrl->npss);
>  	if (ret < 0)
>  		goto unfreeze;
> @@ -2908,12 +2915,6 @@ static int nvme_suspend(struct device *dev)

This is the case in which the PCI layer is expected to put the device into
D3, so you need

pdev->state_saved = 0;

at this point, because you have saved the config space already.

>  		ret = 0;
>  		goto unfreeze;

And here you don't need to jump to "unfreeze" any more.

>  	}
> -	/*
> -	 * A saved state prevents pci pm from generically controlling the
> -	 * device's power. If we're using protocol specific settings, we don't
> -	 * want pci interfering.
> -	 */
> -	pci_save_state(pdev);
>  unfreeze:
>  	nvme_unfreeze(ctrl);
>  	return ret;
> 





_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
