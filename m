Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D3C32259
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 09:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cvWYIFP9kRrt47b06iJ/F+nCBp0J57marGU5jZBYgn0=; b=hiCSLUWrbidkD2130l+MAXr8r
	CVqONbG3bDafBao0i+bfC/mAyNZmDQ93H2PudCyh1kTiIzoit8KukHmIdyOLFHVGAi9UuXZ/xdVmi
	POnzKhVAod6g8ZB2MTmcrT3XRHkbjjOUvuDm3PXwJhvEvLs7lQrJmkDvsAQ2Aty+xZvobSUUcc4BV
	osNl2Z5dYLL4M1VBh8zLfwVp/DxCnqAuRBAtjZcmXpeGP7nUeP+1fFhR++v8jgu8+/lyHjjXtz7sp
	N9NZcTJryeSYERAyIq1tksyL98/cRrCH5J/qof2nINw8z6j6Lx6c5ENqXqt5hzyiFE6FQ3QaO2S2K
	5GYIDYJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXKf1-0004fK-FH; Sun, 02 Jun 2019 07:12:07 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKew-0004ex-6i
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 07:12:04 +0000
Received: by mail-pf1-f194.google.com with SMTP id s11so8710458pfm.12
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 00:11:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GGIaVvNtCD6H4Tsys+by0Q3HtxQEbdWEB2U3xhjK3Dg=;
 b=rRW8o1YJW1IvhICmePZMWD3qq2URbdkiRKCkKiNxaCjeiaWUxPu0NmrgWrR6jKZZzI
 Sgpsw7Qk+NglZYwAWUW1F2DA63I9C8CIe0qHa3l7neqlpan3S6Yjk6KR256ymTOqRFGZ
 s2w+cjeVRAC2Rw1JP404df4RytMNKtu0yESfPrfPoGAltPuda/qg+eY6kVXRsdv0PZw1
 QuHZLWuwitMDQh6cAjsxjtcS3eutwVV7xHRfne21m6fJC50i1Rp6HIiKWd0U1ApxvQYr
 ewFV4UtZXSwf15tPvEpFreu6j1ufD1pUUUdHcxhzQw4mnFoI7bwIsffui58GTuAPRF4X
 ZM+w==
X-Gm-Message-State: APjAAAVYkTDPFDl9uNrwZXd89aieCZO7e/ZWEejCPaud/VlBMRIc6F6N
 TduEWPoaHUxrAayq3M9+LkY=
X-Google-Smtp-Source: APXvYqwT2xCYJLhJNhNBJnEjrdath37v+uPDNJmSxr9A43n/PwjzxedmrQDm6FP483VaBVS59h/OAA==
X-Received: by 2002:a65:5347:: with SMTP id w7mr20349419pgr.375.1559459518135; 
 Sun, 02 Jun 2019 00:11:58 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id i16sm10773627pfd.100.2019.06.02.00.11.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 00:11:57 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli: add default value for nsid of write-zeroes
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190601070003.20142-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bfac4b78-937c-42e8-1be1-f9a81ad22ab7@grimberg.me>
Date: Sun, 2 Jun 2019 00:11:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190601070003.20142-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_001202_246621_F4041F4A 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/nvme.c b/nvme.c
> index 9819fcb..a7a96a1 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -3731,6 +3731,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>   
>   	struct config cfg = {
>   		.start_block     = 0,
> +		.namespace_id    = 0,

This is implicitly set to 0. You should mention that you add this just
for clarification, and its not fixing a bug.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
