Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BED92E0D1
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEEOVCAe9UqsJS6diUYKYJR0/O4QmR59HYPvDhESTQg=; b=PW6aWzuypapYZR
	TOx6VgCgIML3DHaOhOU5GVxGfJS0Pdzlu+zy5XPVhOJX0zrsmz+uLgnyikkffhtP0Ml7JdQm50ijX
	1W6Z8k7p1wF0TQhBS8PTTlUP6MSL5m76N6i3dfAwwnf8Ca2b+say9bbkz8+9YhV16TudRYWgNYfbW
	heeoBETceI/5bsRcqVAHYLiQ9mIynxtKolh5Ep7mf4YGeMFkEOyhFesEClbOql/HM8xWbBMGDeYF8
	NsZY56KrLwOmyXt1tM4+JNEtyBQGTqaJOcETM5CCSnU/ef9B5C953xNjHARUfFdCQ0vM7/tKHv5ZZ
	e9mEJ9ZZUd1PYeKwNM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0IZ-0004Oo-Ra; Wed, 29 May 2019 15:15:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0IU-0004OB-RR
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:15:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id h2so102086pgg.1
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YD7/cBxw7LRkLxwmM6m3DiNi5eK8EJjOnQqrabni5wk=;
 b=efpl+pqxTpk6uynjucmLrNO3wU6NZdCAYsaH9wfZPcLJVOOiq+ayHuE6J54vBfMiCo
 qqa7VcvNl+1mvkcvR+Aq85iYmvLzpZZbfIb9S0mXCE/T4MI+QefqusFehJSCL30Pu3TY
 dIJ1Jlju3gBiDnE+mL9ITtuc0p4pbqWXS/5JDBx1VCLk3pEIq7i7ZH1ecA8sVuQKyUhE
 Qcs9WaGq5K+6riaAjsIvtUlyn9fIT/ounEOskphzeWrv/w+MsQRIDGQiLUMyIwca/YqH
 mie0L5OkbLbDEeI6oi5sONcPQoqYi/1em161Kn5UHWUghi48tVjHxx3i11zLAB/IqRiO
 291Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YD7/cBxw7LRkLxwmM6m3DiNi5eK8EJjOnQqrabni5wk=;
 b=CbtI4GiJuDv26H68WZaYKUw+UUiTJgAWZPa7XcZgdAvGjuzOps8ihOBP1NzxXh+h99
 cOfVTtXUSqTL4x75/NWZRQch7aH+0ER/bUzTe079GL0KA4NdJrL0DL243dpOY0BPY2yN
 IJW77T7NegV1m/Q2L3vlc4Xeby3Y4b5CnXUVAoVhA/dVDkwHEnowwSeMOMFy5uSmtXha
 cQm4rHxyUrBamdDcXmWDw8zwzUbzLZVi+NucSD+3S4Ra4Kr2orOMSsDg20eshtAhOVND
 Usm5ZK9CKE++GYB3A+wa6J18/rYkl8Skade6/XlHbENZZoe/hlV8N8Kh9+w2yriJHoOQ
 7wWg==
X-Gm-Message-State: APjAAAV/MpnXFiHYCU1OHMgBdl3Lvw3tYI3vTNyjSGKucGLQY3KCIH/X
 lK2GcPztbI+JJ5/cOyDRcMM=
X-Google-Smtp-Source: APXvYqxTAteT8bJiOMJQ3vOkzrcMeUZij7aykBblSbtFWouj2KzpS4lZAaa3owSARvcjlUPUbykn+w==
X-Received: by 2002:a63:6e48:: with SMTP id j69mr22160682pgc.34.1559142922147; 
 Wed, 29 May 2019 08:15:22 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y12sm4486572pgi.10.2019.05.29.08.15.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 08:15:21 -0700 (PDT)
Date: Thu, 30 May 2019 00:15:18 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
Message-ID: <20190529151517.GC28274@minwooim-desktop>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_081522_892352_261266F2 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +/**
> + * nvme_thermal_zones_register() - register nvme thermal zone devices
> + * @ctrl: controller instance
> + *
> + * This function creates up to nine thermal zone devices for all implemented
> + * temperature sensors including the composite temperature.
> + * Each thermal zone device provides a single trip point temperature that is
> + * associated with an over temperature threshold.
> + */
> +static int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_smart_log *log;
> +	int ret;
> +	int i;
> +
> +	log = kzalloc(sizeof(*log), GFP_KERNEL);
> +	if (!log)
> +		return 0; /* non-fatal error */

Do we need to print something like warning here? If kzalloc() fails, it
would be good to be distinguished between the nvme failure and internal
failure like this.

> +
> +	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
> +			   log, sizeof(*log), 0);
> +	if (ret) {
> +		dev_err(ctrl->device, "Failed to get SMART log: %d\n", ret);
> +		/* If the device provided a response, then it's non-fatal */
> +		if (ret > 0)
> +			ret = 0;

It seems like that nvme_init_identify() is just check the internal error
which is in negative value now as you have posted.  Why don't we just
return the value of "ret" itself without updating it to 0 ?

> +		goto free_log;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		struct thermal_zone_device *tzdev;
> +		int temp;
> +
> +		if (i)
> +			temp = le16_to_cpu(log->temp_sensor[i - 1]);
> +		else
> +			temp = get_unaligned_le16(log->temperature);
> +
> +		/*
> +		 * All implemented temperature sensors report a non-zero value
> +		 * in temperature sensor fields in the smart log page.
> +		 */
> +		if (!temp)
> +			continue;
> +		if (ctrl->tzdev[i])
> +			continue;
> +
> +		tzdev = nvme_thermal_zone_register(ctrl, i);
> +		if (!IS_ERR(tzdev))
> +			ctrl->tzdev[i] = tzdev;
> +	}
> +
> +free_log:
> +	kfree(log);
> +
> +	return ret;
> +}
> +
> +/**
> + * nvme_thermal_zones_unregister() - unregister nvme thermal zone devices
> + * @ctrl: controller instance
> + *
> + * This function removes the registered thermal zone devices and symlinks.
> + */
> +static void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		struct thermal_zone_device *tzdev = ctrl->tzdev[i];
> +		char name[20];

Simple query here :)

If we are not going to allow the name of link exceed the length of its
own device name like nvmeX_tempY, then can we THERMAL_NAME_LENGTH macro
here?  If the name of link is not exactly about the device name itself,
then it's fine.  What do you think about it ?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
