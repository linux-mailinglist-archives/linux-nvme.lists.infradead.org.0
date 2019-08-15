Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB308F64D
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lnl8qFlOABxUzKkhRwCXdiQEG4LBSnYRexGtYXyRmpw=; b=YAV26Jlfl5/aN6k1dNnMxdPeT
	a6ceoJS72uv2tdfNT+0HZVgKY2TpFHgAS2+uNP6V/mAFfsQKo0XGUFv4TQYCygwvJnfj2ea4PmLsv
	uPizTzOk2jKcEZl9ND3euwo69debTfc2h2yqUy7o6MyKnqi8FDFECLo12JOXOCXrjF9gPcnRH/ipD
	DWPhY0wGwfUXu5nl9B2K+nvlwVzNzi4yrBBNLw4iFdAr6tQDe4IMFvIKIMJDBlqGTFkVF9yIURxfw
	jrJP8ocjq2t6FumNdY1eGpeKTj0dd0DJ7316833XXLCXe3LUNgMcfvm2NFDqlfmwn5Z6A+mNeq1Da
	Yyi6M0HJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyN7f-000423-9w; Thu, 15 Aug 2019 21:17:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyN7V-00041i-Tc
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:17:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so1927388pfc.13
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=1v0CUZ67aGi7O1O3ThtPcRVXwHAUwG0q/uPhm13oH8A=;
 b=CtG+BenmglP9vBzWf5E9m2HWtLJbz9dl1rnBFAPC/zemLIwZkvN+9PK4IX957VoGZ1
 7cFpGO2swJHpdL5xDNrbrgzIwflaM0cyvQAtcpZuDc0QuXy97cEXLQC0xlrnjKacJmHV
 qWWNriLp8yru1paMo1yUjJcJnH1qhoVKYgwro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1v0CUZ67aGi7O1O3ThtPcRVXwHAUwG0q/uPhm13oH8A=;
 b=dZYwfbAMYdWDiqCsx+eGPeElSnBCp+V+QxzlTq6Px9qyoxq7mvCwnM023c0tuSm89+
 AEnEUurEniyPvm9GLTRLTG4CslWxQMIiNcJ3CENmXp5Gz103WSwq/+CX3YvNvGcGwgiS
 5PYpAvl1i4ea0c4I88qLa/uJyc/2wlLO7EbyYwB+3L/tv2jCxcpLQKt1x/FYqqGSLdfG
 3L29NmmDKJYG2J3Pm0xugTc5vFCeObNKkOb2XEIv/ighBB0nPPOW7uVs4+DFtMdpmTYr
 kPd8cJX6rtGCbfhhWPBdnVf6X5djuxRrcP0KQnSVFVwl9Z955Y/UP/vj1DTMyQZN2Bgi
 Ru1g==
X-Gm-Message-State: APjAAAWix9i2X1yity1LR6XflQ5gddOKW+sWiAjKZQeHq3Yzuh2mrJrX
 a+M5cmvrJwFxrsEpXHaypwyKwA==
X-Google-Smtp-Source: APXvYqxo2tG8aOHoK0XI0FokSOxgxsNxBAZhQ0OjYNSMsaeHBLSI4PyIqNy4/iM2RQChuMaRtH9XIw==
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr5096256pgr.62.1565903837140; 
 Thu, 15 Aug 2019 14:17:17 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j10sm3597588pfn.188.2019.08.15.14.17.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:17:16 -0700 (PDT)
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <a60abc02-d4d3-3803-f198-33c7047454e5@broadcom.com>
Date: Thu, 15 Aug 2019 14:17:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-8-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_141717_970128_3DEEB3B3 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzEyLzIwMTkgMTE6NDMgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gSWYgYSBjb250
cm9sbGVyIHJlc2V0IGlzIHJhY2luZyB3aXRoIGEgbmFtZXNwYWNlIHJldmFsaWRhdGlvbiwgdGhl
Cj4gcmV2YWxpZGF0aW9uIChhZG1pbikgSS9PIHdpbGwgc3VyZWx5IGZhaWwsIGJ1dCB3ZSBzaG91
bGQgbm90IHJlbW92ZSB0aGUKPiBuYW1lc3BhY2UgYXMgd2Ugd2lsbCBleGVjdXRlIHRoZSBJL08g
d2hlbiB0aGUgY29udHJvbGxlciBpcyBiYWNrIHVwLgo+IFNhbWUgZm9yIHNwdXJpb3VzIGFsbG9j
YXRpb24gZXJyb3JzIChyZXR1cm4gLUVOT01FTSkuCj4KPiBGaXggdGhpcyBieSBjaGVja2luZyB0
aGUgc3BlY2lmaWMgZXJyb3IgY29kZSB0aGF0IHJldmFsaWRhdGVfZGlzawo+IHJldHVybnMsIGFu
ZCBpZiBpdCBpcyBhIHRyYW5zaWVudCBlcnJvciAoZm9yIGV4YW1wbGUgRU5PTElOSyBjb3JyZWxh
dGVzCj4gdG8gQkxLX1NUU19UUkFOU1BPUlQgb3IgRU5PTUVNIGNvcnJlbGF0ZXMgdG8gQkxLX1NU
U19SRVNPVVJDRSBvciBhbgo+IGFsbG9jYXRpb24gZmFpbHVyZSksIGRvIG5vdCByZW1vdmUgdGhl
IG5hbWVzcGFjZSBhcyBpdCB3aWxsIGVpdGhlcgo+IHJlY292ZXIgd2hlbiB0aGUgY29udHJvbGxl
ciBpcyBiYWNrIHVwIGFuZCBzY2hlZHVsZSBhIHN1YnNlcXVlbnQgc2NhbiwKPiBvciB0aGUgY29u
dHJvbGxlciBpcyBnb2luZyBhd2F5IGFuZCB0aGUgbmFtZXNwYWNlcyB3aWxsIGJlIHJlbW92ZWQg
YW55d2F5cy4KPgo+IFRoaXMgZml4ZXMgYSBoYW5nIG5hbWVzcGFjZSBzY2FubmluZyByYWNpbmcg
d2l0aCBhIGNvbnRyb2xsZXIgcmVzZXQgYW5kCj4gYWxzbyBzcG9yaW91cyBJL08gZXJyb3JzIGlu
IHBhdGggZmFpbG92ZXIgY29kaXRpb25zIHdoZXJlIHRoZQo+IGNvbnRyb2xsZXIgcmVzZXQgaXMg
cmFjaW5nIHdpdGggdGhlIG5hbWVzcGFjZSBzY2FuIHdvcmsgd2l0aCBtdWx0aXBhdGgKPiBlbmFi
bGVkLgo+Cj4gUmVwb3J0ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSAgPGhhcmVAc3VzZS5kZT4KPiBS
ZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4KClRoaXMgbG9va3MgZmluZTrC
oMKgwqAgUmV2aWV3ZWQtYnk6IEphbWVzIFNtYXJ0IDxqYW1lcy5zbWFydEBicm9hZGNvbS5jb20+
CgpROiBkbyB3ZSBuZWVkIHRvIGRvIHNvbWV0aGluZyBhYm91dCBudm1lX3VwZGF0ZV9mb3JtYXRz
KCkgd2hpY2ggZG9lcyBhIApudm1lX3NldF9xdWV1ZV9keWluZygpIGlmIG52bWVfcmV2YWxpZGF0
ZV9kaXNrKCkgZmFpbHMgP8KgIEl0J3Mgbm90IApyZW1vdmFsLCBidXQuLi4uCgotLSBqYW1lcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
