Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFFBCEEE4
	for <lists+linux-nvme@lfdr.de>; Tue,  8 Oct 2019 00:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNf6cAdaQN+oNfnyjbiTdST4E8+V89Sdp+fYt/EHtwE=; b=qKTPfCZb3Or11f
	F6SVKJsquvo3tY2Gc9Vgk3t5wPl8KkUqgzTaJWRzkDS25X0IgrrkCa7E01QdqZOW5p330eoUS1+ar
	9ttRXrPsalLIsI2mEzMLluj+L0TftIrd7Piudy47P+WFxGIPDwE021Qog8Zor1c1HREZgjhz+6rPp
	QOiQ2P/s5EA1AJrM2NqihFuszOD93VXKDyZI+qYkhE79Bn/mYfzmGwJGPi7YpPEOZtkhqbstKs6ps
	xVHOBmPs9BhaRBUfiQtqF4SYqqrdT5gWrWRZmQeOE2VacSDEpWcDNT4XTi8axxmcE4dot8cZmJcwM
	MnPMnhEhVbhR8C56hyjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHbE8-00012e-AE; Mon, 07 Oct 2019 22:11:36 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHbE3-00011r-In
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 22:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1570486291; x=1602022291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=fwumaDoNR8/M5OTVKavfEmL4UPE4WrZDuS1OgsLehDw=;
 b=caagwnpK5lnIBi1dtWQvg0W/ufGG0PfSd7yGgrcp2Hd9PzNk4Q/tfW0Z
 IECl+LeXOvcnZhlw7SufxV770bA6fZVwtGw+1AB7UkjrTe4H/V95aaAfJ
 FvzVnRGpK55bwpA9qDEGxrsdHuKtJzF2Owg/uKmQg4laQbU8xB4x5yIMg 8=;
X-IronPort-AV: E=Sophos;i="5.67,269,1566864000"; d="scan'208";a="420684493"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-67b371d8.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 07 Oct 2019 22:11:28 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-67b371d8.us-east-1.amazon.com (Postfix) with ESMTPS
 id ACA92A212F; Mon,  7 Oct 2019 22:11:27 +0000 (UTC)
Received: from EX13D01UWB001.ant.amazon.com (10.43.161.75) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 7 Oct 2019 22:11:27 +0000
Received: from EX13D01UWB003.ant.amazon.com (10.43.161.94) by
 EX13d01UWB001.ant.amazon.com (10.43.161.75) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 7 Oct 2019 22:11:26 +0000
Received: from EX13D01UWB003.ant.amazon.com ([10.43.161.94]) by
 EX13d01UWB003.ant.amazon.com ([10.43.161.94]) with mapi id 15.00.1367.000;
 Mon, 7 Oct 2019 22:11:26 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "kbusch@kernel.org" <kbusch@kernel.org>, "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "tyaramer@gmail.com" <tyaramer@gmail.com>, "axboe@fb.com" <axboe@fb.com>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: Shutdown when removing dead controller
Thread-Topic: [PATCH] nvme-pci: Shutdown when removing dead controller
Thread-Index: AQHVfVwpGhwUwA6X9kWpqedn8pc+zg==
Date: Mon, 7 Oct 2019 22:11:26 +0000
Message-ID: <7042458bf65523747514c98db36ceaa5fa390679.camel@amazon.com>
References: <20191003191354.GA4481@Serenity>
In-Reply-To: <20191003191354.GA4481@Serenity>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.7]
Content-ID: <95C8F61E4CD0D44AAB11CB3984C122A6@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_151131_753813_C60CB1C5 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-10-03 at 15:13 -0400, Tyler Ramer wrote:
> Always shutdown the controller when nvme_remove_dead_controller is
> reached.
> 
> It's possible for nvme_remove_dead_controller to be called as part of a
> failed reset, when there is a bad NVME_CSTS. The controller won't
> be comming back online, so we should shut it down rather than just
> disabling.
> 

I would add that nvme_timeout() would go through the nvme_should_reset() path
where we don't shutdown the device during nvme_dev_disable, it makes sense to
do a full shutdown during nvme_remove_deal_ctrl work() when reset fails.



> Signed-off-by: Tyler Ramer <tyaramer@gmail.com>
> ---

Reviewed-by: Balbir Singh <sblbir@amazon.com>

>  drivers/nvme/host/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index c0808f9eb8ab..c3f5ba22c625 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2509,7 +2509,7 @@ static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
>  static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
>  {
>  	nvme_get_ctrl(&dev->ctrl);
> -	nvme_dev_disable(dev, false);
> +	nvme_dev_disable(dev, true);
>  	nvme_kill_queues(&dev->ctrl);
>  	if (!queue_work(nvme_wq, &dev->remove_work))
>  		nvme_put_ctrl(&dev->ctrl);
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
