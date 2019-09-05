Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7188AAACBA
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vmD68XirUNv4iptbPgLbfFcf5vxr5ymJKHEJyDkfY3I=; b=R/cV9W2V13Bmh2IzVUs59rZWw
	fiFytimL3/i69g4JsSydD5zqiNUo/DASC14ygZ7FO+XLE8qQjJ2paK/qso3JqdMwd5ytyOI9G16rM
	1Vn2Y/7NbXs4wyiF96W2f8BUISwT+QxXKkXec4uyR9ojwug0hQpYO8+6T1mCGiDFWRGaKRtuWQsdM
	A6/l2WYL59FZnRIg1a2aKgccbHltm6ofoS5KZdnD0Kg1PjNed9GdVZjOb40jhQcgIhW9mjzSyPa0/
	shJegPIHPiN8OFlRHQTHU8dqD1xMJE1ULaQMEkU0BF/UjUqGV+PLfGSpkDNaWg4Mv6174qKzrHUOX
	aS4+257+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5y1m-0003FN-AZ; Thu, 05 Sep 2019 20:06:46 +0000
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5y1f-0003Ez-TO
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:06:41 +0000
Received: by mail-wm1-f48.google.com with SMTP id n10so4531040wmj.0
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:06:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wEjkXdffDqQRSiIAfvcrB3bgYa6SV/zYgW/165yf+Og=;
 b=ejWK6Tbwz0yG8sZ/wb4a/ivc9RcsZXq/p3bJ0m7OJfZaq8KoTEuKbzHnKe98pClwwo
 UKF5lK1qP+TisWnuSHfdP6XvOSH8I2Zh1ziTqG8XmJWBOxvfKwNAAoqDgQ92kkQVANoa
 ZWd16tsemMMwNWuaBzZFdvZ6ujodM/RV7cELQh1jX24/PIL0hEuRwg6xI5FpAGfqV6xU
 vkBIr0iohgeZ2gLH+Rd7HTfhQusC4x3HVUouPzqMVub9LPrPa2XmSji97y7Xv2wDE/fV
 3QqDX4nS/ZIHSexN7Txt9h+ksgX0vAGSre4OWm2ch1Jli0jH79QeT3Yn078fWp8mYzqc
 rNOg==
X-Gm-Message-State: APjAAAUC6vE/hKlstYxf+Y3rb54WQJQAbOCTKb1I+nuOG0NMizqhEFrS
 tdvdJSEW/95zcOiRmegMtxY=
X-Google-Smtp-Source: APXvYqyjZjSYUb6UXah5w5rBYvYJgNU7RgWpdYo69+d+RrjqGik5ANx69A8dKEDKbBjtLL4EQNglOg==
X-Received: by 2002:a1c:7d8e:: with SMTP id y136mr4221909wmc.83.1567713998403; 
 Thu, 05 Sep 2019 13:06:38 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t7sm3541453wrr.37.2019.09.05.13.06.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:06:37 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] nvme: add uevent variables for controller devices
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org
References: <20190904215954.15423-1-sagi@grimberg.me>
 <20190904215954.15423-4-sagi@grimberg.me>
 <b0e3f456-4071-abb8-5af9-26354c1a5356@broadcom.com>
 <1c073c6f-468f-a3d5-8990-99774779011f@grimberg.me>
 <9edbf220-d9b1-0431-d22f-9909ebde187a@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e6e500ee-5237-2f9a-f26b-fa2bb67b1128@grimberg.me>
Date: Thu, 5 Sep 2019 13:06:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9edbf220-d9b1-0431-d22f-9909ebde187a@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_130639_942528_83C1492B 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Overall, it looked good to me.
> 
> Reviewed-by: James Smart <james.smart@broadcom.com>

Thanks,

Christoph, any feedback?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
