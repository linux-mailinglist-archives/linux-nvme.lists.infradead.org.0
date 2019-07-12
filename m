Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233BA674BF
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 19:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+lYu4CFJx7tV6MANUKrZoYJT/1wEylgeJQUxdDVyPBc=; b=RvVM6rXm/2cVQQJuFOS0xGVq+
	qVOqiV9J3zGWc3TEXDrCvbM3CZKW7O7UKWJZ1go6iKak8eK36IIZCmpgQtLP3F08vUC/cp0gAHvAy
	KeyeM+M7wvZ7v5kkzds9Z3mQiSPramrYvhxrzEVmLgkM2tPQUl5YLpYHodHqVoGQDsqmjBGxA2Gx5
	c+ZOLn8Yl5c/t9qNX+6QxSaMbbXq4tyyuNo3z3v1YaiiA40bcUNKL2kZwAiv5yXaKLX1Nw9XF4Qwi
	NKuz9UlFeBMk/4MQL1s3qnNgRA5yyyAvZAI0zPiNvbz1ATSbcZwO+NSZtrLKylJUkDO6Oxnk6JDGF
	jHNRBpmHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzlS-0000xB-3R; Fri, 12 Jul 2019 17:55:22 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzlK-0000wd-Ny
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 17:55:15 +0000
Received: by mail-pf1-f196.google.com with SMTP id r1so4600316pfq.12
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 10:55:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6Ir3XVRcDLgOzyXMGBy3PB7dqN5Mgyu+UKOhfDL0+W4=;
 b=FLLQMncNFUPCJZM2OMdKOktN5LAguHiWCr+bDfWRs2K2tOrjC/E1lRcInc7YNbYTLC
 8EX569x6JE2+mREiGMfhXp/fLFVtRLPx2Cb3mMTvi+DTAR8Lw8gSHTJeO1wS/NyVsJ+t
 Un52MCvu1T9yp85rHtS60KqSLdrJICaZtN4z1x4lidEEXEUIvCjkQ1pqe5yOWyAKnnMJ
 UdAtFwRsG3ugnghbrZ0A0Z16y0Lbv30UVz0RD9Gnlh2dx+5jtDoFIqbsSiiFcaS3PaJv
 q5vLiT4PjRpZSvQzJDeZZTWWzNyNdZ8T1/fucPhQm4YGe/vci3M8BNUcqbkA4WYyWaxj
 lxyw==
X-Gm-Message-State: APjAAAVuEYNZDpyZmu5UFxLa+R8jELv0mod4u0NP3VrWCDD6SsjDhh2z
 seQzDpBYa/wwiMs5bkndCZ4=
X-Google-Smtp-Source: APXvYqwxRgBP0ZIxDctqmACMyxR9p3AFHJzbuu35s+akNwY41J0VnIjOIrpuBt1HtTVcBS5ed9Yglw==
X-Received: by 2002:a63:1918:: with SMTP id z24mr11793524pgl.94.1562954113120; 
 Fri, 12 Jul 2019 10:55:13 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id z24sm17831011pfr.51.2019.07.12.10.55.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 10:55:12 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6627bc48-cdda-dace-b7a9-6e6eb5530d72@grimberg.me>
Date: Fri, 12 Jul 2019 10:55:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_105514_783307_22944AE8 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/nvmf-autoconnect/70-nvmf-autoconnect.rules b/nvmf-autoconnect/70-nvmf-autoconnect.rules
> new file mode 100644
> index 0000000..b241b12
> --- /dev/null
> +++ b/nvmf-autoconnect/70-nvmf-autoconnect.rules
> @@ -0,0 +1,18 @@
> +#
> +# nvmf-autoconnect.rules:
> +#   Handles udev events which invoke automatically scan via discovery
> +#   controller and connect to elements in the discovery log.
> +#
> +#
> +
> +# Events from persistent discovery controllers or nvme-fc transport events
> +ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
> +  ENV{NVME_CTLR_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
> +  ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
> +  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--quiet\t--device=$env{NVME_CTLR_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"

NVME_CTRL_NAME

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
