Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9F375081
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 16:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Drud+v5Pln1i7r78ZNIs7dPlVKdBC8OiEmUVXnUuN1U=; b=giRHY5u41cUQidkisD8g8QJdg
	pOinjv1nADZv6V60AoQqi9K2b5s0eub5D7QcPOPeAVW+b6s8IweX5JeXn6CylJqlCQ8N/Ke/EpyIH
	jiEiKwTkEyOMPNifhy3ZwIDQj16p5iC/wPy+lYX/FmI6rvzQXAUF6Wtgwgt8kBEM4EB1DlSQrbBLJ
	MCLwtoR3EwILcUYZcmcuyYr1TjDcY4G323WjajA0VNXXGNuMTLdHwtfYLMnFDgJaSrewH5py/Fpfy
	6TjtH3Q1OYrHdMFTdkTJevY28ImaS8nDXnFk9T2L6wYw53aIv2Csa9hDlyNXxltarp4dfBOJf7aDJ
	ngkb7GqBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeKf-0006Wh-Jl; Thu, 25 Jul 2019 14:02:57 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeKU-0006Vu-Hn
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 14:02:47 +0000
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hqeKR-0002tc-7m
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 14:02:43 +0000
Received: by mail-pg1-f197.google.com with SMTP id x19so30745813pgx.1
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 07:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dRGqqRdc8tkI0wtRj4b9pGjBs0cS4r9SniesDI0dk5k=;
 b=c9FRUdtoIWNuF1A4v0MqNiHJwYynCRz56v1sa0YsnYsvRgHHN1DgKqggkmCNTTRti5
 +4ZPMLSI1UKRZ1dP168+ZsTA1dQ1fSR0cGtfbC7Pof5cwNwWLhW+ewhLVkTLIo7LrbNh
 sX1haqWQiGzxTCkcEOgpZIAa3QZbYp6OS+r3oyBMfl2qmoVWRNrksZT4ROU4I2jxDkOL
 MP7W+mvQpwosrsuzacqO1oT1kKylcul2YLahWFI2kpvfYZMrfGIDUlICox33vJ9qa4TE
 AbvbMrfNse8WpuUpYiy7XhQzxVkEC+6i992zbiNPezJRR2WVMBxmbU+adm0XORugbXFZ
 QLjw==
X-Gm-Message-State: APjAAAWcMALADg9g1ya4JXDOcfr6/zlQIO/JPuwl5dAG07BeRj9OL/q6
 8Ng9dmt3ulw/zU/i1Bwpuz6x3PMAh49Y5/bu+pgB3BxzyDXux7V0lSuohaLneRJv2mRDG2PWiR0
 krUrPZRUtZ4TVf380z+rNj70nSc8YfHiv4yeP4fSKIquM
X-Received: by 2002:a63:9e54:: with SMTP id r20mr52056710pgo.64.1564063361878; 
 Thu, 25 Jul 2019 07:02:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzqyGieoMSzMW+cs+usTVtQ0tbDQ4xtlJACIElsyAMlDRT8SdSAUIjRG0amm82rcIJMkeA+5A==
X-Received: by 2002:a63:9e54:: with SMTP id r20mr52056676pgo.64.1564063361539; 
 Thu, 25 Jul 2019 07:02:41 -0700 (PDT)
Received: from 2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net
 (2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c20:160:ac1c:9209:b8ff])
 by smtp.gmail.com with ESMTPSA id e124sm80839839pfh.181.2019.07.25.07.02.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 07:02:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <2332799.izEFUvJP67@kreacher>
Date: Thu, 25 Jul 2019 22:02:37 +0800
Message-Id: <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
References: <2332799.izEFUvJP67@kreacher>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_070246_715935_DD019C91 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgUmFmYWVsLAoKYXQgMTc6NTEsIFJhZmFlbCBKLiBXeXNvY2tpIDxyandAcmp3eXNvY2tpLm5l
dD4gd3JvdGU6Cgo+IEhpIEtlaXRoLAo+Cj4gVW5mb3J0dW5hdGVseSwKPgo+IGNvbW1pdCBkOTE2
YjFiZTk0YjZkYzhkMjkzYWJlZDI0NTFmMzA2MmY2YWY3NTUxCj4gQXV0aG9yOiBLZWl0aCBCdXNj
aCA8a2VpdGguYnVzY2hAaW50ZWwuY29tPgo+IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAy
MDE5IC0wNjAwCj4KPiAgICAgbnZtZS1wY2k6IHVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUg
Zm9yIHN1c3BlbmQKPgo+IGRvZXNuJ3QgdW5pdmVyc2FsbHkgaW1wcm92ZSB0aGluZ3MuICBJbiBm
YWN0LCBpbiBzb21lIGNhc2VzIGl0IG1ha2VzICAKPiB0aGluZ3Mgd29yc2UuCj4KPiBGb3IgZXhh
bXBsZSwgb24gdGhlIERlbGwgWFBTMTMgOTM4MCBJIGhhdmUgaGVyZSBpdCBwcmV2ZW50cyB0aGUg
cHJvY2Vzc29yICAKPiBwYWNrYWdlCj4gZnJvbSByZWFjaGluZyBpZGxlIHN0YXRlcyBkZWVwZXIg
dGhhbiBQQzIgaW4gc3VzcGVuZC10by1pZGxlICh3aGljaCwgb2YgIAo+IGNvdXJzZSwgYWxzbwo+
IHByZXZlbnRzIHRoZSBTb0MgZnJvbSByZWFjaGluZyBhbnkga2luZCBvZiBTMGl4KS4KPgo+IFRo
YXQgY2FuIGJlIHJlYWRpbHkgZXhwbGFpbmVkIHRvby4gIE5hbWVseSwgd2l0aCB0aGUgY29tbWl0
IGFib3ZlIHRoZSAgCj4gTlZNZSBkZXZpY2UKPiBzdGF5cyBpbiBEMCBvdmVyIHN1c3BlbmQvcmVz
dW1lLCBzbyB0aGUgcm9vdCBwb3J0IGl0IGlzIGNvbm5lY3RlZCB0byBhbHNvICAKPiBoYXMgdG8g
c3RheSBpbgo+IEQwIGFuZCB0aGF0ICJibG9ja3MiIHBhY2thZ2UgQy1zdGF0ZXMgZGVlcGVyIHRo
YW4gUEMyLgo+Cj4gSW4gb3JkZXIgZm9yIHRoZSByb290IHBvcnQgdG8gYmUgYWJsZSB0byBnbyB0
byBEMywgdGhlIGRldmljZSBjb25uZWN0ZWQgIAo+IHRvIGl0IGFsc28gbmVlZHMKPiB0byBnbyBp
bnRvIEQzLCBzbyBpdCBsb29rcyBsaWtlIChhdCBsZWFzdCBvbiB0aGlzIHBhcnRpY3VsYXIgbWFj
aGluZSwgYnV0ICAKPiBtYXliZSBpbgo+IGdlbmVyYWwpLCBib3RoIEQzIGFuZCB0aGUgTlZNZS1z
cGVjaWZpYyBQTSBhcmUgbmVlZGVkLgo+Cj4gSSdtIG5vdCBzdXJlIHdoYXQgdG8gZG8gaGVyZSwg
YmVjYXVzZSBldmlkZW50bHkgdGhlcmUgYXJlIHN5c3RlbXMgd2hlcmUgIAo+IHRoYXQgY29tbWl0
Cj4gaGVscHMuICBJIHdhcyB0aGlua2luZyBhYm91dCBhZGRpbmcgYSBtb2R1bGUgb3B0aW9uIGFs
bG93aW5nIHRoZSB1c2VyIHRvICAKPiBvdmVycmlkZSB0aGUKPiBkZWZhdWx0IGJlaGF2aW9yIHdo
aWNoIGluIHR1cm4gc2hvdWxkIGJlIGNvbXBhdGlibGUgd2l0aCA1LjIgYW5kIGVhcmxpZXIgIAo+
IGtlcm5lbHMuCgpJIGp1c3QgYnJpZWZseSB0ZXN0ZWQgczJpIG9uIFhQUyA5MzcwLCBhbmQgdGhl
IHBvd2VyIG1ldGVyIHNob3dzIGEgMC44fjAuOVcgIApwb3dlciBjb25zdW1wdGlvbiBzbyBhdCBs
ZWFzdCBJIGRvbuKAmXQgc2VlIHRoZSBpc3N1ZSBvbiBYUFMgOTM3MC4KCkNhbiB5b3UgcGxlYXNl
IHByb3ZpZGUgdGhlIG91dHB1dCBvZiBgbnZtZSBpZC1jdHJsIC9kZXYvbnZtZSpgIGFuZCBJ4oCZ
bGwgIAp0ZXN0IHRoZSBOVk1lIGNvbnRyb2xsZXIgb24gWFBTIDkzODAuCgpLYWktSGVuZwoKPgo+
IENoZWVycywKPiBSYWZhZWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
