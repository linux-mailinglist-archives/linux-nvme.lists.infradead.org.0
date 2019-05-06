Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC4B154CF
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 22:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ByCXtbtOpsE/MFFur7pkDwNvMlwAe1R3fdKMnuWHKw=; b=tvO3Owx/347sKC86nm0Xa1Zpt
	Cgq8yA//Hk6FYXwQDxsqpsO8/ozFcuheSyGDTAVBqs14aBlUECgJSMsQelbTFQhXNFhdUwVtzeFWK
	TRs4giQvgATLYgTKNEpcBF0+uGipeECbu2PmnqQFo74ITkfVs+LMOT622L5JbTngygobory4QD54+
	WkY2drQunOHT2bKQbmrazAZqrac8f8559cTjoNXKYE+iN12QsLgy9F9pKKpcivTZfvCnXzdYwsgJM
	XgkjbAlOnINFoYvQvOIIVruolx9pHxWck0kGJsA+XQIw4+Wyxe8AnRcqfglDwOI9+wTguwa4Zd6WM
	DNnqN+hDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjz5-0006E5-O5; Mon, 06 May 2019 20:13:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjz0-00065x-TK
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 20:13:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so3301793pgp.8
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 13:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FdxMRVR3sNdM8SN6kFBJuI0oFnzpMCrw35bl/txvaPE=;
 b=B3rRjlwrVX6rV8C9rLso/OS24/SQbI1QRLifwuT4T8PJgeu4n3FMZNykw402sAuAIN
 EL4rfSkiC+cIk2PDI3Fa277TGIOHr6d3aueAjGTTHQKpXTDyA0EXMaI5UKuItRAjJcaU
 EviTZZSpwyeNnua5bVqhncVKNY0xI9v4HuHHyvX1nwRORrBTYJYhjBisr50JUidRDNH/
 XfUyaHjKl3qGIsEX5O/EoaNWFKynoW9yWmyxLa2STV4xdz/4XUx/EltgA+4m3Iah1N1x
 2u+1nXRy/fXhKJTfeqALNAYleLSlwSdNhpR5k/EvQOfbfXYQhVzm46JjLeXP0S4RqL08
 dQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FdxMRVR3sNdM8SN6kFBJuI0oFnzpMCrw35bl/txvaPE=;
 b=VlSy7QLnsAOGu8jB24ORzxQ/1lATujUMQIidR8F83ilZbZ8lFggb1ueMh85GAks8Js
 YM13uin/DL7LYRS7Fhjbm+/up4n20C65CwCWD6DNqklc+C8IoZWDNeyEorpiH0w9lC86
 j5N6CE3zfZvZYt/0F3dGqHJGHjoGtbKAnoSTc2oQjI2/yWNKnqmem//ep2rsFyc3FMyC
 XlAsi0KtyD6agr3YcX7xKMwFY9z9kHD3znXUX8/BdYrolNDk1VKXVkr9d5fnLrx5JsUr
 Knsb1MVZSYn0w3ddl7EJjG7OauDk+QHRMRGFcKVr33OU8YMK/iQg0Qj6JEGSxZ9asCzw
 YJgA==
X-Gm-Message-State: APjAAAUgwhCoO6vc94QmRKh4tZcP2dxLxuzAe8VdJVCE8LEWjl/iOANt
 /ub+pqtaxDRxZmPn2kFzIFI=
X-Google-Smtp-Source: APXvYqzumHQCvubh0KMw/O472DTpQbH+Xo5C9TqEWO7Dnfc7qJ1ZXhYjR+bCQwcz40LNITdumKOhpA==
X-Received: by 2002:a63:5c5b:: with SMTP id n27mr24718784pgm.52.1557173585892; 
 Mon, 06 May 2019 13:13:05 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y4sm12951415pgj.34.2019.05.06.13.13.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 13:13:04 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Omar Sandoval <osandov@osandov.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
Date: Tue, 7 May 2019 05:13:01 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_131306_982898_71F654FB 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> I wasn't clear enough.
> 
> It doesn't check for the return value for now. What needs to happen is :-
> 
> 1. Get rid of the variable strings which are not part of the discovery
>      log page entries such as Generation counter.
> 2. Validate each log page entry content.

Question again here.
Do you mean that log page entry contents validation should be in bash 
level instead of *.out comparison?

> 3. Check the return value.

nvme-cli is currently returning value like:
   > 0 :   failed with nvme status code (but the actual value may not be 
the same with status)
   == 0 : done successfully
   < 0 :   failed with -errno

But, ( > 0) case may be removed from nvme-cli soon due to [1] discuss. 
Anyway, if nvme-cli is going to return 0 for both cases: success, error 
with nvme status, then test case is going to be hard to check the error 
status by a return value.  It should be with output string parsing which 
would be great if it's going to be commonized.

[1] https://github.com/linux-nvme/nvme-cli/pull/492

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
