Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA1D5A78C
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 01:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t+8oS8JlN4dxY64pAA6MChomJoUAx0ni4NrSqjS9b6I=; b=Lf9F5V+S62eE/dOfLPj0/GgHM
	yhPy9Ey0h+dxYmaZSwtHjmrYV5mDuP59jGG6jFUztKbmmoacz4Ec7oB78CKDnVzN+k6LdOywKDxhH
	P5VoMio7dwfW1Qr1jZ7NkuF+uoUgR1fW7gp1jBu7Th2nqueJkHC56DGQpRM0vpSjDkaIccLMhDMXT
	J++ekSEgGfagRHA2OgmkJAtrSwvh1QgetUcQlKTUxSdrkh7mRjvY3y2PLZ3phj2lnL0jf+V5FUZYO
	BVeXJTjVaLYOCWt+lLT85ASOFU/8dwWZ4R61Xh+ZvchYBZNq9pLYK1SoNkl36eoywMPLhbnpFBWi6
	WvVFfmJNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0GC-00077k-R3; Fri, 28 Jun 2019 23:26:28 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0G6-00077L-GG
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 23:26:23 +0000
Received: by mail-pl1-f194.google.com with SMTP id a93so4072316pla.7
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 16:26:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dr0OyZzq10RYFvOfmCElh1X9byPkOnSQ48Qd0ZYl70U=;
 b=X/ZrdGQ/otoqAfBVnEWNgT1xWlwSyUOMmJFiGRel5wVt0nslcCJ2ueZxjt34KKhgox
 Wl+pGhrkJc3Zjn2NqOlNZ/rAzZlRCTaxtWTPaunxjkXyEif+rgtNubptYV9ccTMhJKEe
 oX4PEIwNs9Vq5WoVogSW4NngiwM4xnES0mttR7QHgCOvTxbR1pj7ClUTwrtSy2LtGWt/
 aOS6VVmpP6Efh/kt2qzE38SfVFacQjdzAIbk/4fLmMpM8TxPRTvcYNTkusKfgW/yw4Dp
 svKdpRMuAD0GTbwZMubfag8eAYid8XhB9pW2e57irCRZLrn5ZzvJeGLsajFNvY0ROhiL
 2aRA==
X-Gm-Message-State: APjAAAX7XVj2VxHHQitlmCmSioCyz1cD5NQ4qwtx/Tw4vWDn+BgZUT2/
 zSqfL6v0Ct+B+tZkAbNpT6HBX9Ahwfo=
X-Google-Smtp-Source: APXvYqyO3t9IklfYGQVTBaJRTpE+3x/9hfDt81A1DegF8UrhLdVNt+P83EmmUJwM26ulMd1MgesXCQ==
X-Received: by 2002:a17:902:6b02:: with SMTP id
 o2mr13365212plk.99.1561764380942; 
 Fri, 28 Jun 2019 16:26:20 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id j1sm3288808pfe.101.2019.06.28.16.26.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 16:26:20 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: fix module unloads while lports still pending
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190628231621.15867-1-jsmart2021@gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <b07da70f-770c-db0d-bf4e-7997c890c67b@acm.org>
Date: Fri, 28 Jun 2019 16:26:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628231621.15867-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_162622_544900_6726D554 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/28/19 4:16 PM, James Smart wrote:
> @@ -237,6 +242,7 @@ nvme_fc_free_lport(struct kref *ref)
>   	put_device(lport->dev);
>   
>   	kfree(lport);
> +
>   }

Spurious whitespace?

> +static void
> +nvme_fc_cleanup_for_unload(void)
> +{
> +	struct nvme_fc_lport *lport;
> +	struct nvme_fc_rport *rport;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&nvme_fc_lock, flags);
> +	list_for_each_entry(lport, &nvme_fc_lport_list, port_list) {
> +		list_for_each_entry(rport, &lport->endp_list, endp_list) {
> +			nvme_fc_delete_controllers(rport);
> +		}
> +	}
> +	spin_unlock_irqrestore(&nvme_fc_lock, flags);
> +
> +	pr_info("%s: waiting for ctlr deletes\n", __func__);
> +	wait_for_completion(&nvme_fc_unload_proceed);
> +	pr_info("%s: ctrl deletes complete\n", __func__);
> +}
> +
>   static void __exit nvme_fc_exit_module(void)
>   {
> -	/* sanity check - all lports should be removed */
> +	unsigned long flags;
> +	bool need_cleanup = false;
> +
> +	spin_lock_irqsave(&nvme_fc_lock, flags);
> +	nvme_fc_waiting_to_unload = true;
> +	init_completion(&nvme_fc_unload_proceed);
>   	if (!list_empty(&nvme_fc_lport_list))
> -		pr_warn("%s: localport list not empty\n", __func__);
> +		need_cleanup = true;
> +	spin_unlock_irqrestore(&nvme_fc_lock, flags);
> +	if (need_cleanup)
> +		nvme_fc_cleanup_for_unload();

Can the nvme_fc_lport_list list become empty after nvme_fc_exit_module() 
has unlocked nvme_fc_lock and before nvme_fc_cleanup_for_unload() is 
called? If so, shouldn't nvme_fc_cleanup_for_unload() be called 
unconditionally and shouldn't the 
wait_for_completion(&nvme_fc_unload_proceed) call depend on whether or 
not nvme_fc_cleanup_for_unload() has deleted any controllers?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
