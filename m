Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9931318A6
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Jan 2020 20:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jBx6kxJ/Lz7OcN0iWEsuOwkOaSy4EwLJXaxBj2IW6a0=; b=MfTuaie9IRNwsdF+oYaiNvPZP
	2iYDXlQUdK09z9jcpLGuUP79dRJv3UHEkDhsMjndvmhPaQkiuy9N0KAu3FsfPGTc3Ndhz9nGxE8Da
	a1yM6DeljVp0S/vZVI0rPvTnq9r0jALvu3HHHn+XxPfO2Im7ofwipuIJgjY3vzNQRRd1uKTdeJoFm
	jYoxET53kyGQxwoKOvhSyrjLbCLuA8SklOfuEEgdFAGfPzh1CW40t36UI5/VyeGg0M9r40kKNycjv
	KwazPKjt6+XQrKuhNAg0KgQnxLJ793Zl9+b+OzV/2W2NNibst0kAD/x/Xb0pMsnNR62D9LmWqRBIx
	G6/24FK6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXxt-0005qC-K4; Mon, 06 Jan 2020 19:23:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXxp-0005pp-OD
 for linux-nvme@lists.infradead.org; Mon, 06 Jan 2020 19:22:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so38399818wru.4
 for <linux-nvme@lists.infradead.org>; Mon, 06 Jan 2020 11:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=TU+3yejSdhU+oIuGfJVTyTU5zFaXa3QhtxyW4P29jSA=;
 b=AXBlxbQAYgIzV4NCHPGFNfsjLI1RGBh6rX00g+d5gXU0W1xcZ8SEZyHL5UEunoHEuK
 JwyUm8bwjjUDbGMD6NrruJurS13CNIboIyvGlLcWdfKa1pH7J2b0uKyYA8Y8VEZ/ya7t
 Hjh3tcGZFW6dXI8K4I0JlujCNccabX65aI+ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TU+3yejSdhU+oIuGfJVTyTU5zFaXa3QhtxyW4P29jSA=;
 b=U8o4XoE2HzeE1xXWyTsBYLQVKgMMsZI92wvRmvNS6QKVjqoJaStFMAtHBGXJnJ3HGB
 mz3xRKqmInsjHhECffCUQGWPAm3ZSG+tb1QTQRHyovQaKbXWL31VKfJXOJx/5aRVQNCz
 qNu9+1k/uKu6LgAPZPANLkGjr3w+EILuSFXVfJ7BrVTHy/FWMEvLejtNFPqI0/t/Cagr
 M6tnNNRZiLehz0JTcPbuFm5Kn4WD0zgFh+1IsoXAHQTl//hGmRAkJsHR+kEVY9DWqAB8
 5W0A/bWpzNkp8KRHnxrlDgSesfuUeKzODQAjc6q8q8XakSa9Y8rms+97DdKngklMNIfs
 62Pw==
X-Gm-Message-State: APjAAAUESUFAUMX6F7YWzY+Klz/3A8zDhOCxDMUa6m1mtoWFed7t3KKC
 cwclsvDzBzx6AfYbDsoHkH49QUDLsbN1tqdiybpl/RgZO8AwjJS0Jjr3b10mO15THpUa/rrobRP
 2ljqM7gXPwKNqG6gI+pYA4mg1DlL74gXjALzembpavg2hViOt+A/dFu7kqv2W76ZV/HBRoIDOyM
 hnj/QTJA==
X-Google-Smtp-Source: APXvYqyj+ZZJYDhHBMMBoB1nulLCKQNa16f6eACGT6v79f0snUDqIwub3wkC5pYfCdKJzAlGAHPnqQ==
X-Received: by 2002:adf:f7c4:: with SMTP id a4mr101101055wrq.332.1578338572434; 
 Mon, 06 Jan 2020 11:22:52 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i5sm73568891wrv.34.2020.01.06.11.22.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 11:22:51 -0800 (PST)
Subject: Re: [PATCH] nvme-cli: Fix systemd service script use of CONNECT_ARGS
 env var
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20191219190534.11673-1-jsmart2021@gmail.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <daffcde4-256f-807c-9099-53a1196ab197@broadcom.com>
Date: Mon, 6 Jan 2020 11:22:49 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191219190534.11673-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_112257_789704_1C4F00C4 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ping...

On 12/19/2019 11:05 AM, James Smart wrote:
> In testing, some environments are not properly expanding CONNECT_ARGS.
>
> Change systemd service file use of CONNECT_ARGS to be encapsulated by
> apostrophes and parens.
>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>   nvmf-autoconnect/systemd/nvmf-connect@.service | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/nvmf-autoconnect/systemd/nvmf-connect@.service b/nvmf-autoconnect/systemd/nvmf-connect@.service
> index 10fb3aa..c60f146 100644
> --- a/nvmf-autoconnect/systemd/nvmf-connect@.service
> +++ b/nvmf-autoconnect/systemd/nvmf-connect@.service
> @@ -11,4 +11,4 @@ Requires=nvmf-connect.target
>   [Service]
>   Type=simple
>   Environment="CONNECT_ARGS=%i"
> -ExecStart=/bin/sh -c "nvme connect-all --quiet `/bin/echo -e $CONNECT_ARGS`"
> +ExecStart=/bin/sh -c "nvme connect-all --quiet `/bin/echo -e '${CONNECT_ARGS}'`"


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
