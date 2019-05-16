Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E38D20CDF
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cHEy1xhs0aN6PSXOHxXkRPkDLQ2WhFZLUPG9DBGZPeE=; b=ghxpeDsnxwo8MzAifyWYtRXk+
	Pqnf3zQ13dI/mKUkAT/2ImhHRufyKIBOe3DKg+2zY4Wji1fYGYmb5q8Uf8F8YyZRaumurRowfHfJf
	binVm5PXE4ErVlGhOczToEe/iNbLwWX+DZzbPqi9Ssj7A6/K5UobeZ3GK/VHs5bf/jesv1a9Owxum
	4Bc/DV+xK12ymp0MOG1ANtrgkb1q161/HvgpPB9LODmgL9KtBB2nJBmr33hyzOgG2KzMmMK4pOtDl
	Vinrnn9yEUMs6EFWj1NkgEvuHk5gpagwjoSeLnYWv7owkR0XScZu8kKLG5m3BepiTVO4gi0w9Bj6K
	oaKOezz7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJB8-0005jb-RH; Thu, 16 May 2019 16:24:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJB0-0005dK-Vn
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:24:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so2124621pfk.0
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Shul2nJETRGtmiOS6hk1krODxd0iShhKHCQpMj1Ughs=;
 b=C/4PtCj6x5T4FGEBhcrC2KU3RhjljKXx6mhn3eyu0ZJYckJnh/yYVoQVISbrOG9uXg
 PoKgUS/ySyMK4yCzAp326Xrnr7T7q/yPrfqPNHVcyTpenXOUHrSDoB6q3Nq09FUBYgn4
 ibFTcSAsUuZVxwk2oOaH0sE8xJrkpJXYiHItM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Shul2nJETRGtmiOS6hk1krODxd0iShhKHCQpMj1Ughs=;
 b=WP0AdpcxHoWoST0Xb0BrPyKIFLcuHIpbXlR115V8JxN/zov6CXWvr2juCRC5OP36ca
 WaxgA+nDDjskF5X3TP8jns8R5KBVhgwduVnh/nngRlmG1EqdAJn03J74PrQ4V5EViUQA
 KAgkpB2Q3vXKfbmXBpfup5PT28PQjp53Vk+TrcaJ4nvSd2yR0O64a28q9oV5AN+OlYeo
 kgSDCHGjyUTnnfCd2VthtP8Z4rufBCAy0gqIt9T5M6GnVBkupM1JSeEg3s5CMg/CLx/j
 1OlOQTJvXtMXoeHf53bJCOxTEeezP4Vv8JyUY0nqdUnidO0dz3GFK/Es9vbcwTq4gsPr
 YHNA==
X-Gm-Message-State: APjAAAV9U+VkM/stLIGH4FK+lmtb4msvat4JhGGOXypdHS+KbzdfYsv1
 bsa11Q99SSKBzEUpCtpP6onpdg==
X-Google-Smtp-Source: APXvYqxOAe1wyxUehhkq1jB8CTTAyIGe+0RiKdvxEJkAHrPhXRgqxT33R279LFj9ZHAxkZGBzGU6jQ==
X-Received: by 2002:a63:3:: with SMTP id 3mr50258747pga.360.1558023854179;
 Thu, 16 May 2019 09:24:14 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id j22sm7456496pfn.121.2019.05.16.09.24.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:24:13 -0700 (PDT)
Subject: Re: [PATCH 2/3] nvme-fc: track state change failures during reconnect
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-3-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <491d8e0b-23f1-0a94-4030-2fbf45f4b2bd@broadcom.com>
Date: Thu, 16 May 2019 09:24:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516083740.95894-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092415_334143_0A7DB72D 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzE2LzIwMTkgMTozNyBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IFRoZSBudm1l
LWZjIGRyaXZlciBoYXMgc2V2ZXJhbCBzaXR1YXRpb24gdW5kZXIgd2hpY2ggYW4gZXhwZWN0ZWQK
PiBzdGF0ZSB0cmFuc2l0aW9uIGZhaWxzLCBidXQgZG9lc24ndCBwcmludCBvdXQgYW55IG1lc3Nh
Z2VzIGlmCj4gdGhpcyBoYXBwZW5zLgo+IFRoZSBwYXRjaCBhZGRzIGxvZ2dpbmcgZm9yIHRoZXNl
IHNpdHVhdGlvbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3Vz
ZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9mYy5jIHwgOSArKysrKysrLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPgoKUmV2
aWV3ZWQtYnk6wqAgSmFtZXMgU21hcnTCoMKgIDxqYW1lcy5zbWFydEBicm9hZGNvbS5jb20+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
