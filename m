Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1096751C30
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c69MCpRs+Kd+DbuN7hIwS1zh72Q8jbJEyl4elLeBnJg=; b=p/D7Iz0TE0AEBm
	KC8hXveHfEmY9Yd9FhFeuGwi4rObkAcYZRbh8OdIXCA/41LEHYtl24Gy25xzYwq2D6EcXZ43dXBLX
	41INoNj9U20G39aIfNlZpd71CgHi4hSF0bZLy0hG04srgvSbnO3H8Q90ZbR5V4lejaS6Xs4rkQIcP
	5PPOmBkUZqvBIxIlIoZb70RdfQ59QaIyfPR0ZbcWBZj4knjOkuhq7yfa946Vc1nw30TVsu+mkcWhg
	4yq03+YuC5N8x4aEvsuXkL6K62Q1H3TZCEV8ezlLmQsjfZlHPtEOkIm66ituJz2QJBBTzf6pt05+j
	TuS8B46H3Em6N51ecLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVSq-00039g-Rr; Mon, 24 Jun 2019 20:21:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVSk-000397-Fx
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:21:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so7687383pgp.11
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K2URUWLi/i37v7K+14kEpM0KZq8GpN2UCZhu67teNXY=;
 b=OOw72oySzClnxongvl16fJuTXhexhrWE/q4y8lfFonZMTpCIt3o/TI1qLmOLR2poFw
 MfAzSxygGpHJ7dcNfmkrhq+wSJDkxi9mi4U6vGEYqPo7Z0/SZ1u5HbBv+1kNr+Vl3u0s
 F8yAH7yQmycnjpiTUwjoNzXjXm7Tg6Fin3f+eTmXn0ZFO85FDQsCrfdJqahzciKrXFkn
 VQtvoffQWEM/CACMX83eHL+5qhZ0wFH8WFwCaB21G0nyLlO0jWCOic5j6LQuIJ8RBLjb
 F9ijJXTLAzoaX+nRx8yJWTZWQF9CpAeH2Urym0CAUzdRTr+UxRzqN8KZXKi2KXakuC3k
 XvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K2URUWLi/i37v7K+14kEpM0KZq8GpN2UCZhu67teNXY=;
 b=bJaW5qEaKR1OUEMbnN13saK1gLZ6w9TIXoNhvOkSdQTBYfG3WWau0mA4kMIwO6ObSd
 2rBF50eXadoAn0+amsamRLsUbAQDNkilXcfmIvlejXtetw0aJLBeY0WVy/Bhie28OHjJ
 1F6EE4dawiBXh52rxiLP1Bz7n10Ui1AlXz3QzfHSNJiL7d+JcBVyG3zsS83nFJaNt40y
 FS9Tq8Tj7Hya9XJUuXUAXws/vyMnrkHjDZyT3KnF08FWfb5dgYmcUq+F/V+B2HVqn0tu
 F5JFKNjIImOBf455M3Vit4hDKgceO+BihHmyO6Y53SQu7JLG9AU35IPAj5yNuctfAUdc
 HC0A==
X-Gm-Message-State: APjAAAWJC/cMh2KI9tRLjji+i9sW6dW5ddRFnCwvbRH3GN5gRmWev3AB
 mgGaJkJm5eMTFN8YMlQhNVM=
X-Google-Smtp-Source: APXvYqzN3DSPGn+3YbngXKJ00yEQiBNAAdY0MNO6THf0uc/OgOi7WJGWhIs2NZDIA+kWIeC2dM5YLA==
X-Received: by 2002:a63:52:: with SMTP id 79mr34365144pga.381.1561407673484;
 Mon, 24 Jun 2019 13:21:13 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x25sm12526216pfm.48.2019.06.24.13.21.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 13:21:12 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:21:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
Message-ID: <20190624202110.GD6526@minwooim-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_132114_535483_C6AE3B9F 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 tj@kernel.org, cgroups@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> @@ -2627,7 +2752,30 @@ static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
>  
>  static void nvme_pci_get_ams(struct nvme_ctrl *ctrl, u32 *ams)
>  {
> -	*ams = NVME_CC_AMS_RR;
> +	/* if deivce doesn't support WRR, force reset wrr queues to 0 */
> +	if (!NVME_CAP_AMS_WRRU(ctrl->cap)) {
> +		wrr_low_queues = 0;
> +		wrr_medium_queues = 0;
> +		wrr_high_queues = 0;
> +		wrr_urgent_queues = 0;

Could we avoid this kind of reset variables in get_XXX() function?  I
guess it would be great if it just tries to get some value which is
mainly focused to do.

> +
> +		*ams = NVME_CC_AMS_RR;
> +		ctrl->wrr_enabled = false;
> +		return;
> +	}
> +
> +	/*
> +	 * if device support WRR, check wrr queue count, all wrr queues are
> +	 * 0, don't enable device's WRR.
> +	 */
> +	if ((wrr_low_queues + wrr_medium_queues + wrr_high_queues +
> +				wrr_urgent_queues) > 0) {
> +		*ams = NVME_CC_AMS_WRRU;
> +		ctrl->wrr_enabled = true;
> +	} else {
> +		*ams = NVME_CC_AMS_RR;
> +		ctrl->wrr_enabled = false;

These two line can be merged into above condition:

	if (!NVME_CAP_AMS_WRRU(ctrl->cap) ||
		wrr_low_queues + wrr_medium_queues + wrr_high_queues +
			wrr_urgent_queues <= 0) {
		*ams = NVME_CC_AMS_RR;
		ctrl->wrr_enabled = false;
	}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
