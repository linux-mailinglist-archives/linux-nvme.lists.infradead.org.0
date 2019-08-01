Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF097D2DE
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rhq99N+p0GsrM429nnHjU9EiDSclLFmfozBhgoTUgak=; b=BiEF8urCfIue/6xEP2kBiW9/9
	sMJ6XLook867SrJPWKqtq1bYqjzT/khPzZoFzXYzYAeKSLPHWBWSSlpuxuV8r6nGpgbV/nT3zDGmg
	p6QEjKtcaKSrpYV1rxXTcMIv8ZSLukyNVMYA2Zr4qz/gBwk/IFPBrdjDeM1iZwKqBYiuUB1t+g/ZN
	kgkoGH4TyuQWWKn/TyZbY2lEKdFFKxEXSYruPtSTvsC0owzYrc85UP4zeNDF2TsfINuM+AvzfZLps
	glphEIqdbc3t8x7lp2PCO1NdGGoVEVHzQ1HbBwvPect6lYwwEYFPpn26Hxi4FjPW1p86TtforcBGw
	a1LqIXnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszwz-0005Zt-I8; Thu, 01 Aug 2019 01:32:13 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszwu-0005ZX-CT
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:32:09 +0000
Received: by mail-pg1-f195.google.com with SMTP id t132so33045535pgb.9
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GdvJXvmciud2N8gaHf1jzalUrRCRbNXxhwmehIpoHjI=;
 b=t+FIfu26D+PLYM6c1WyJFQXrz+HA9BruC053hrstEa1Zl9crzTWZwxxNKTXygapdh9
 unYXLdClSK+90j0UCP4PESMAc3c0c3ykT3RhqSpcay2I+7yYFez7CdiQta6Fvo91S/lu
 Q0RIxqUfLNDxuaWsnwM6ttEcSBzteU+Wqff6kC02BQDW34jedccaZrlGPgoi90a2lL9v
 1D5neHKXXj/zkh20KuiVdj2gr6XnE1NKF0N4iTJAz/1GfxN8vLf5uig3xfWfmIs7l0Yf
 WUfFLVvHDphI9goAeLYnq+9JvFvwRLv72l5YsA9+Fp8U4dJeNucTPZaDa9e2Temgarfg
 FroA==
X-Gm-Message-State: APjAAAXE4HSWPCPKByg5b8kR2ATKUJ97aDDA0klRmWISnYtLGPeofrLX
 PsN6gIi4gpO0IXWU0JEZ9hk=
X-Google-Smtp-Source: APXvYqx/NiboeDpxoeVHH4XvAkwOSAQyVTiVdK9nKT4FIpzrtVwtLpyqO3VJRn2t7dvn3887sw/yEQ==
X-Received: by 2002:a17:90a:8688:: with SMTP id
 p8mr5865484pjn.57.1564623127828; 
 Wed, 31 Jul 2019 18:32:07 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id g92sm7822964pje.11.2019.07.31.18.32.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:32:06 -0700 (PDT)
Subject: Re: [PATCH v2 0/3] Support discovery log change events
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190712180211.26333-1-sagi@grimberg.me>
Message-ID: <53ec841c-f71e-1789-1f7c-7ae3a0aa2d66@grimberg.me>
Date: Wed, 31 Jul 2019 18:32:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190712180211.26333-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_183208_427492_008BAA5B 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> We want to be able to support discovery log change events automatically
> without user intervention.
> 
> The definition of discovery log change events applies on "persistent" long
> lived controllers, so first we need to have discovery controllers to stay
> for a long time and accept kato value.
> 
> Then when we do happen to get a discovery log change event on the persistent
> discovery controller, we simply fire a udev event to user-space to re-query
> the discovery log page and connect to new subsystems in the fabric.
> 
> This works with James' latest nvme-cli patches.

James, I've applied this to nvme-5.4

Are you sending out the nvme-cli part? If you can make sure
that it works with what is in nvme-5.4 it will be great..

Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
