Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1D4B5776
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 23:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qAzF8XbdZRQnv+0/QdHVeKLPUb7YP54yG9ZFLlywZg=; b=QV0/O1U2mEtOao
	ieNhmCgw5dAu6LSBpZQvxnokqsEpMQzoj+VtFWeYKXisUGVmM9FPR3n/gFHyPVHsii52X/hCKEUEG
	KsfGY+b4xL7BG2QFNeV2QghhykoYvuRuAE8Kf8eT5PNXb8kb2hO+ARL18Uf58HENCCHXF1AORRPJA
	6pfadeRQoanfeeUVQyzbKS4nQ7B0wpdbMMOUNM1YVm/CvBx5yjGGGBArud/ehg1cm58Nexac4j7es
	pCvrtEHPt5zlMbzdYsiZ2fS9d2Iztdl4STL95zuUW2xWua9VFauAr2nD8eyL6oQKBpxCff0Cj/JjK
	Uml0WFCHXc2nIxbv4dPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKxn-0002QS-Kj; Tue, 17 Sep 2019 21:24:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKxO-0002FH-AK
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 21:24:20 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8A032054F;
 Tue, 17 Sep 2019 21:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568755457;
 bh=n6chQUAGcWJ80WhhviuIXFNGVNjiz/fYMESfpx36ZXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=joStA6mlr6RJeqaPM3eDWc80PfaUONRdiZPh88bve37kvStjrCIV2lORXNgGbXcr5
 N5E1rp9/KYxLshbuVewfnXXWw+RViRkv5sz4B9WUXLFj98ceFYpVhSr16fCf7Zf3JA
 NjAa2S7GATgBCnQ39O4+Q/1AeThBd5pGD8+QZN1Y=
Date: Tue, 17 Sep 2019 15:24:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [PATCH] nvme-pci: Save PCI state before putting drive into
 deepest state
Message-ID: <20190917212414.GB39848@C02WT3WMHTD6.wdl.wdc.com>
References: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_142418_899539_AE46872F 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 sjg@google.com, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ryan Hong <Ryan.Hong@Dell.com>, Jared Dominguez <jared.dominguez@dell.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 06:42:33PM -0500, Mario Limonciello wrote:
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
>
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
>  		ret = 0;
>  		goto unfreeze;
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

In the event that something else fails after the point you've saved
the state, we need to fallback to the behavior for when the driver
doesn't save the state, right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
