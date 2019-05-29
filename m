Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779EC2E80E
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/E2NEkLtJRc2yGqjzvI8SeuRhMl26njVoLgReK1UcVE=; b=s9SMfYSxsjTmn01d7rCo5FNL5
	76wNpINjzYTckRjcbInpwWC/ti/7RIDtIolPvfRrV//cyN3AB1K5zYJC4SJSpanRkTCDW1G8uoB0t
	gerOh00OnN7/jBD7GxeMfnuJ/lsgbWSzsbVspEX1C672ka1xEAzdAXGUzT2hkb0XgGqvy6b0KsdHS
	YV43R0Uzwf+znycTTHbZLkh9AowYJQIVts5Qwa1cIzQDRY/AaMvkggqJwO2O6kGBMuQWnLFge70EU
	Df8vuQySn6SZCGDR984EZF9G5K+w1Ca+KHWah14BGAxE5AqTQfapik63dLa4pY8vm7pWM/N40KSOT
	RrXz+P0sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6x4-0007FQ-H2; Wed, 29 May 2019 22:21:42 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6wy-0007F7-I1
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:21:37 +0000
Received: by mail-wm1-f68.google.com with SMTP id 15so2556466wmg.5
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bzVG35LiDIWDw6WKKsqZ3W/ydjjUL0nWa/rAO3XJqoE=;
 b=Wyp/J+ZNQ+PqVMohayLbsakozudwrgO9JAbbmNMq/ZxEEC/VUs2NBpH6K0cjzrK7fh
 SIBuYsWTmsASzcrWlpJffolpza06qsEQ9ZZ7KavvYLE0mhWVEsbCWEz6yiI3LQ72SHU2
 UzdEPCulxTtjbhmOdsFZFEo3X9ueEKHkHYtrv1EKRlBtXk04QqCV7CVDDbxmAQrJhxFx
 QgKV1KzYMA+DvSaEAEmX3XtwHDoDKX+k9yy5RqbVgKLuiIIA7H56+e+AFg2VajL+tn+E
 P4R70nMVXbOalcHx10wHmqN/6oHsECQ7ES7KufZSbc4P7x/phuHGAsQt4hJtwXcv+/Wq
 1tFg==
X-Gm-Message-State: APjAAAXbReooEOC3avbk9/J4Ei64QoIR87ALQj6L6/D4J6u/GEC9eQlz
 HYP/TT12A0q+7Xg+Bhjvi3xomw6M
X-Google-Smtp-Source: APXvYqxWHdpEI9UhH7qWhFeAHB/vfi+XTEtH6m6Pz0f+FyhzUoSAx5xtC2TN7yhy6KQAU+nGwiPBUA==
X-Received: by 2002:a1c:9957:: with SMTP id b84mr176132wme.165.1559168493597; 
 Wed, 29 May 2019 15:21:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l190sm1141568wml.16.2019.05.29.15.21.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:21:33 -0700 (PDT)
Subject: Re: [PATCH v2 1/7] nvmet: add transport discovery change op
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <20190514215808.10572-2-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
Date: Wed, 29 May 2019 15:21:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514215808.10572-2-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_152136_598221_FD7C72B8 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
> index 5baf269f3f8a..8efca26b4776 100644
> --- a/drivers/nvme/target/discovery.c
> +++ b/drivers/nvme/target/discovery.c
> @@ -41,6 +41,10 @@ void nvmet_port_disc_changed(struct nvmet_port *port,
>   		__nvmet_disc_changed(port, ctrl);
>   	}
>   	mutex_unlock(&nvmet_disc_subsys->lock);
> +
> +	/* If transport can signal change, notify transport */
> +	if (port->tr_ops && port->tr_ops->discovery_chg)
> +		port->tr_ops->discovery_chg(port);

So you are shooting for both transport and disc aen to happen
at the same time?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
