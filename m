Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBE767F6B
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 16:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U+A6dpUy2L6mliYQsTfAoIx0v9jYA+XCv5geqIJqeAk=; b=IAifKfbznSgmeSjU7TRM89PYT
	+Ml33x7dMG0xZoLI/YaIeMeSJ4PXezlw6Cr7w0Wb+ZGz3sajptB+una4jMivyHH7M92pqQd+hPpLO
	DyFcWFa5Unis0XOBVx2GEGOAIzOQCiTMkPNBYsbe9a3I8IoHG4Cm1hFGISEZlc5GTSFoCCyGm7Sra
	7phtPis2EEMIYBfnQ+gk3/93ekI0XZw0/NBGAUtBRY5bbDPAmwMG4m1yzIPsgupJSGKMioB0OENrf
	xpsJSNGzltSmPQi0fGj8ADCbLtMOmLrjw2+Ez8YBuLKftvy1OVb21JxsLhXVguAo6PFyWMvFPoVus
	n245VsnkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfn2-0004NH-A2; Sun, 14 Jul 2019 14:47:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfmu-0004Mt-Lt
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 14:47:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so7036349plp.2
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 07:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=5W+OJ3N9xjsBrYzxI/58SbGaa/FhK1oCrHn2GV6xeFs=;
 b=JWVp6JuPALebMsBE6YshoXuet4Vnmq/4K67TXoHoVD4cH9MDOILVHkCJlPWjOoYOgP
 IerAXKWl/22QUmA4vqirypxQJ1HBLm0L9ZSRq4TTNHgYuXZkfFSTxTtLQrlreewswAw3
 PkjbBuocJWQln2F66TgBV7vMe/er9Cad498ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5W+OJ3N9xjsBrYzxI/58SbGaa/FhK1oCrHn2GV6xeFs=;
 b=h9fwqE5Y08/wkZVIX/RRGXkrFk2ILMvhnxjn0D8g5JqP8ejC/7ZO3RnvdOO0SM1pKZ
 vpF++p9ODEvbVKEMG/OjM9oXbUOk6hgLpUN/QaP0PSqre6aIqaFjOIh/NGzhw7tVc6mH
 KLH6xpauPqNFPP1y/+vfrRAnfgjR5N0qAK3tAmZCO0lFdkXQmCCNJ7BxA+CyPuKBKa6l
 +8X6Qaw2ZBZYIdI/OEgiZ79PBg7iEN5zcrYXE2FkMb/kqbmAR53DgVClE11gb5L6o9Ru
 AmsHE/B4kbYId1nbKzS5SOF2q6hmzWBajm4MIqxo+Hi0Glj3rWa2zM5iaiO/5Zmj9O5m
 cc1w==
X-Gm-Message-State: APjAAAVezydNC+FOse2tZiH9AwT4lUZzeNc9hJT6oTTvSBJ/ZWby1YGI
 YioOqxL9cBgHIPbqGsXuKpvxYA==
X-Google-Smtp-Source: APXvYqzERfjsrSfHB7iitWxZhhrSzNOnIg33zV3hyzNy35YGJ6xo54Nik6CLy/JkkT7adaYMbXpAcg==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr23094459plq.67.1563115659304; 
 Sun, 14 Jul 2019 07:47:39 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s15sm14524033pfd.183.2019.07.14.07.47.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 07:47:38 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <a97cd8d1-b36f-828f-12b7-975d3fe219ca@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e57dd0cb-2ef0-4705-083a-ac81cffeb0d2@broadcom.com>
Date: Sun, 14 Jul 2019 07:47:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a97cd8d1-b36f-828f-12b7-975d3fe219ca@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_074740_722853_ABBA4C84 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/12/2019 10:26 AM, Sagi Grimberg wrote:
>
>> +ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all `/usr/bin/echo -e 
>> $CONNECT_ARGS`"
>
> Lets lose the nvme full path, sh allows us to have that (can be in
> /usr/local/sbin or somewhere else). and not /bin/echo?

For nvme, echo or both ?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
