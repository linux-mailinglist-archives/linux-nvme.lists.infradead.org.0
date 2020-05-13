Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA271D1E84
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 21:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZtTaKzme0hgg+or0LtnAcIWz9c1PoIA/7Rm7f0Cfm+g=; b=h78OldZ50mPljfAZ3EhkmEm24
	2ISHHjKG+1quGWOXd11glKZP6V1lTnOPnrNZLcS1GDokjr5xqQ+S/o4KARrNiM7VbZTeaPO3mE8h2
	UukiNCMgKsjuUB7W3DLQPYme0j1Pze1rnLdWf1PdrPLWo7VT95VMF+w1PCwZ/6qbuonTWiqpmSeCT
	DDn1fPYDOqF4MZG7XVaCfQeoC6y+BJPGb38t06k0pvYNvEHv/PplrnQc6KW3FmRMw/aQuoxnF/gaS
	HPoIeaAraNPhABmP2zppryPg96nsqGS+pwKZz6jCWECVP/szYNQsO30oprsYXGBGFdR4s/A5OVtQI
	sULz94TUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwhC-0006Sz-O4; Wed, 13 May 2020 19:05:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwh8-0006SS-44
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 19:05:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id u22so185279plq.12
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 12:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=h7aC2ES11IdXfx5MfJ7pMe7oTFNqtL4saSwjrK4SPVs=;
 b=KPOq1T44W7PjVrt22qOWDZgcC7gPU5wwW/9EAQFtb7EkJaE5u79v/KFDD+x4R0Sh+G
 z9qUDESRuwY7BEagMS07uruDWI+5dOq9SLLnls+J/pAriFC5SCei0vAAuPHiaTK+35nr
 PGRmufx5dfYc7BVJwG2s8L3AbbjDWDWpa5XXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=h7aC2ES11IdXfx5MfJ7pMe7oTFNqtL4saSwjrK4SPVs=;
 b=Nq9WuFMe4iJC+WtwqiXrZsP+AgSjejruq+31GoHcBI+wZN1R5ducyPA5YqzU7LuIIN
 bK8Ajpi1lcl5dZikQvj+SO7UR18UGTtDexp/PVTy+4mUaLw4t+g007lDWQfwmEY5hkwL
 zLuX+UgMc5wKoMaHlVCqRaKPASQPp4IWjy5zAzftHMkJ9Qw9aHW8MxRBUwu8cDb+KbnD
 zJOLuqtHCbVLMvkBO3roJ7jX+O50rqv29uxX820QFxO4acPQdulqCfs87gmrSBfsK8cw
 0f0YcZFM1NUqUw7Lm8OFms1LFD1dbxDp7VxAASlyMZzBbwe5sHKlmKMKX/NP/ZYvV1gX
 gObQ==
X-Gm-Message-State: AOAM533MHCQgaHO9ys+HPZYhOP38eeaCr4YDuRqr9EsNJOUQXkTPLpfT
 jrvNP6+xe4hBHRu14onLnVLbtQ==
X-Google-Smtp-Source: ABdhPJzObP9S6pfgygLPiCx7AU5F7RdvgxKSs8E6wwti9SYu7CuYoNxnDPI7IMpcNNV5qBPKTDRw/Q==
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr640214plq.0.1589396729338; 
 Wed, 13 May 2020 12:05:29 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u17sm361401pgo.90.2020.05.13.12.05.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:05:28 -0700 (PDT)
Subject: Re: [PATCH 07/16] nvme: introduce NVME_INLINE_METADATA_SG_CNT
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-8-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <45eb964a-7f4f-23f3-5a85-b6493ae5cd44@broadcom.com>
Date: Wed, 13 May 2020 12:05:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-8-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_120530_162226_7EE05568 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzQvMjAyMCA4OjU3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4gRnJvbTogSXNyYWVs
IFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+Cj4gU0dMIHNpemUgb2YgbWV0YWRhdGEg
aXMgdXN1YWxseSBzbWFsbC4gVGh1cywgMSBpbmxpbmUgc2cgc2hvdWxkIGNvdmVyCj4gbW9zdCBj
YXNlcy4gVGhlIG1hY3JvIHdpbGwgYmUgdXNlZCBmb3IgcHJlLWFsbG9jYXRlIGEgc2luZ2xlIFNH
TCBlbnRyeQo+IGZvciBtZXRhZGF0YS4gVGhlIHByZWFsbG9jYXRpb24gb2Ygc21hbGwgaW5saW5l
IFNHTHMgZGVwZW5kcyBvbiBTR19DSEFJTgo+IGNhcGFiaWxpdHkgc28gaWYgdGhlIEFSQ0ggZG9l
c24ndCBzdXBwb3J0IFNHX0NIQUlOLCB1c2UgdGhlIHJ1bnRpbWUKPiBhbGxvY2F0aW9uIGZvciB0
aGUgU0dMLiBUaGlzIHBhdGNoIGlzIGEgcHJlcGFyYXRpb24gZm9yIGFkZGluZyBtZXRhZGF0YQo+
IChUMTAtUEkpIG92ZXIgZmFicmljIHN1cHBvcnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBJc3JhZWwg
UnVrc2hpbiA8aXNyYWVsckBtZWxsYW5veC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF4IEd1cnRv
dm95IDxtYXhnQG1lbGxhbm94LmNvbT4KPiBSZXZpZXdlZC1ieTogTWFydGluIEsuIFBldGVyc2Vu
IDxtYXJ0aW4ucGV0ZXJzZW5Ab3JhY2xlLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBsc3QuZGU+Cj4gLS0tCj4KClJldmlld2VkLWJ5OsKgIEphbWVzIFNtYXJ0IDxq
YW1lcy5zbWFydEBicm9hZGNvbS5jb20+CgotLSBqYW1lcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
