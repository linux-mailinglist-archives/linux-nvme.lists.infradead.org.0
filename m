Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3BC209B8
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0vjQ9V/TZ1EyW3LGSuofAZikSOh6zKWU6oGrZzfORU=; b=PQ3LwYN6Bpn+T+
	PFONSlU5vqfz2OLva7GC+xfu4RliLrn85Uhc7I/5QWGLS/xe4KxrrZknIz7RCORJV+76s1j+qOsTk
	IfXjZx6beZ43l1yjVXH5WqqzClOP6gNrehIfoG5FvnxmvO78A7/msPGoEEvm1BoIuMfl709vDtz9z
	R6cIvCinR76TOxm2hrorXuEgHs9am4QRztjC5s+5AK4b+wWpvMmF0WVpA13P/T0e2NGI5jyHfocAB
	yUDutxcY2MeKMEyCHPfNENO7p0cUAnCBM3G005tZjF8NKIM15HQ/Ygrh+iXgtfirem1cvsxY8fYJB
	szCVZugq2hMN1DLKSxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHQo-0003WX-AQ; Thu, 16 May 2019 14:32:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHQg-0003Pv-1n
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:32:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id d30so1657637pgm.7
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 07:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=USTSvosZQUwlXRNslyvBhxvhMTuh+Dka6Kqkcn0/koE=;
 b=HDZ5DESSf2+w/sQOh+tvO5tlHvqP3VAIAW1HMBygMxEriMoQQsX3DYKC5JS+EvaxMc
 Q0X9rMfzmuaoaEclHD0L7pHm9HVAmpuEngUAqRD7DkAY51M/oWYYLdpiKVLictrefpjW
 9gtLsWXzgLMJqYmwxZY8M3nTQCf0t+/kiMTFT6C83NzLY0G9dzkKAn4Mpu2ElkOp8ebQ
 IBdFpCovUnBnQHztto6/2JYntlnCTta8FBytwMW2knLxKLGtSPUYIDkLeTv+zsscznyL
 KCsq8X6uWZBiEWKCT8kgjlQOqnOPytvbFBOePLYdq05KpT7yx1Sk4iJ8JVALNyz4zD8v
 KP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=USTSvosZQUwlXRNslyvBhxvhMTuh+Dka6Kqkcn0/koE=;
 b=XskBKILnXxdPiFBn40lQL9bIRbYp536djcDBRZqDOWXt4L+d9aXMntqcZOD7OIQhSe
 uHR3vPVSPAEmDcDnPbIcMEMq+6U+33Hqc69FL4qyCK1omjZhYZG+1iQLPrCobCbIPd4G
 mh7MmRfhBscUszuEKplJdYskIvOonFrejaT8x+y5nBUSLBGqaxWk5q22TXT8AVGuimxU
 a64IERBwo6d1QPgQfA8H/AG4dLzWICvc5i8NMqfgvdLtR2wtgO07uavTsXKqpQRoSlgo
 3FGuXacZ6yO9KAtINAxBucC2+iiEosxXZVtSb/Qpp8MRC/HMJSSu3rE+7/29yeZWnubb
 Vkjw==
X-Gm-Message-State: APjAAAXOcMj2pbyUhirMKrEmjIscwgEDzQoWdgM4FA0n5hVbjiaq4GtT
 3fyRHC2MTaQ+gj9yfmwOi0c=
X-Google-Smtp-Source: APXvYqwCpI4XV53P0/CJGDU6R6OJTH8Uh6keGYXPsieiQpLG8032FEf/PC6zQYVpJaJ17vwm6ROlJQ==
X-Received: by 2002:aa7:880f:: with SMTP id c15mr56520046pfo.100.1558017137148; 
 Thu, 16 May 2019 07:32:17 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f28sm12694022pfk.104.2019.05.16.07.32.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 07:32:16 -0700 (PDT)
Date: Thu, 16 May 2019 23:32:14 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Message-ID: <20190516143212.GE24001@minwooim-desktop>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073218_276382_2E7D8D67 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	if (sensor < 0 || sensor > 8)
> +		return -EINVAL;

Does we really need to check the negative case here ?  Am I missing
something in this context ?  If we really want to check it in this
level, can we check the invalid case in the following function?

> +static struct thermal_zone_device *
> +nvme_thermal_zone_register(struct nvme_ctrl *ctrl, int sensor)
> +{
> +	struct thermal_zone_device *tzdev;
> +	char type[THERMAL_NAME_LENGTH];
> +	int ret;
> +
> +	snprintf(type, sizeof(type), "nvme_temp%d", sensor);

Before preparing "nvme_temp%d", maybe we can make it sure here. :)
What do you say?

> +int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_smart_log *log;
> +	int ret;
> +	int i;
> +
> +	log = kzalloc(sizeof(*log), GFP_KERNEL);
> +	if (!log)
> +		return -ENOMEM;
> +
> +	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
> +			   log, sizeof(*log), 0);
> +	if (ret) {
> +		ret = ret > 0 ? -EINVAL : ret;
> +		goto free_log;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		struct thermal_zone_device *tzdev;
> +
> +		if (i && !le16_to_cpu(log->temp_sensor[i - 1]))
> +			continue;
> +		if (ctrl->tzdev[i])
> +			continue;
> +
> +		tzdev = nvme_thermal_zone_register(ctrl, i);
> +		if (!IS_ERR(tzdev))
> +			ctrl->tzdev[i] = tzdev;

Quenstion here. Are we okay not to print some warnings here in case
of error returned?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
