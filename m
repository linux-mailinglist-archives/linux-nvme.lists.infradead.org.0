Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8331756C2
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yctggu7dPds2i6ZKlOFn14oR6OUhPoN4k3L9tOwRoSU=; b=rQLSMEEy6Hjoab/gY2K6vWo/b
	WmwCiNnJ02EkDqKNxU7t2lgaBEc3fDqaM5iweiYMUEhS9OFxIFI2unMMvJCqeb5xcxeUQbcQhVXCA
	bjWB3RN0QxpBJKl2swKgzdH2+1FWfpEZxz2lDPR+GQwq5FLza8J2cjVchh1wlvplb+iTg+L5RgIMi
	A3oNi1i+L1x/Vksi6/k/CUUu/xwjvEib7qiDT0aRgxtVJuo8NyBtydwMJemCDaRaYi+8O+vslEktm
	kiQeD5RRpI9nMqetyIAWr/0S7sp/OoEyByvXebJnjdkX3/zoKPB1l0CEk7Hp+NraVIRbqH2Ic3jAp
	lG0+mbmhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiM0-00050L-Tx; Thu, 25 Jul 2019 18:20:37 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiLr-000501-7R
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:20:28 +0000
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hqiLo-0003O2-QL
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:20:25 +0000
Received: by mail-pg1-f197.google.com with SMTP id 30so31197334pgk.16
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 11:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=yHwUWcK6j/+zNvZlc0CX0T3xuIfR8a85ZfPN65Yms3g=;
 b=HnNUN/N4LvM9a2qajVnoOk0v5JmSdwTSOEVEneXacypSO3p75dGwAPmJi+REifyfTH
 yc/vtsscyB7BeTOEM0jQHP2tH8Gm/yObs3lety1Vm1dNZB8kxQP+F8lZSHd4PXg5LzTT
 ehke7Mzo3nMqSDTTDZxeLIMjEOMVP2LUgiamp1ZIXOPMJBuDPgdlHIy8YP35U7igJHel
 iHCUZYNcafbN7aVLBAscOYBnnkTReFvBkLbLDWwwkhq/IH1JiXdCt3dflLJXEBkKtQOK
 SC+x/JBh3hfnovk3+7n7IZ1ngiAGGbd2k5V5068CmYOHC6lfzVC7rTHa9X5b2U5xyJhh
 w8GA==
X-Gm-Message-State: APjAAAX1zW+VBDslorVm+Pa287wZU8HelQIaXmUTbbuQJuyQcKFFWvzk
 E9qnurFMSs7wqeFVJLCEZG0J8iPENMVVX2JYUqKqD1XMimR7o5vEm8zdR+eJkOuFyMrLBVwEQSV
 kRJZYeicvVIp6ekcG/0B4Y6++BS3fq6Lqtj+COURXOhUM
X-Received: by 2002:a17:902:2926:: with SMTP id
 g35mr91872321plb.269.1564078823529; 
 Thu, 25 Jul 2019 11:20:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxi37g49T7GHIfRwJpako8OJ/ChT4uQFaHZ0fVnv2FoR0sjZP8k3dyyCZUHaqCLhBSId7/zeg==
X-Received: by 2002:a17:902:2926:: with SMTP id
 g35mr91872285plb.269.1564078823186; 
 Thu, 25 Jul 2019 11:20:23 -0700 (PDT)
Received: from 2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net
 (2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c20:160:ac1c:9209:b8ff])
 by smtp.gmail.com with ESMTPSA id j16sm38449307pjz.31.2019.07.25.11.20.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 11:20:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
Date: Fri, 26 Jul 2019 02:20:19 +0800
Message-Id: <46857EDA-081E-4622-A8D7-D337127A38DE@canonical.com>
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_112027_404902_44968AAA 
X-CRM114-Status: GOOD (  21.15  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMDE6MDMsIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+
IE9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDY6MjQgUE0gPE1hcmlvLkxpbW9uY2llbGxvQGRlbGwu
Y29tPiB3cm90ZToKPj4gK1JhamF0Cj4+Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
Pj4gRnJvbTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPgo+Pj4g
U2VudDogVGh1cnNkYXksIEp1bHkgMjUsIDIwMTkgOTowMyBBTQo+Pj4gVG86IFJhZmFlbCBKLiBX
eXNvY2tpCj4+PiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBTYWdpIEdyaW1i
ZXJnOyBsaW51eC0KPj4+IG52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZzsgTGltb25jaWVsbG8sIE1h
cmlvOyBMaW51eCBQTTsgTEtNTAo+Pj4gU3ViamVjdDogUmU6IFtSZWdyZXNzaW9uXSBDb21taXQg
Im52bWUvcGNpOiBVc2UgaG9zdCBtYW5hZ2VkIHBvd2VyICAKPj4+IHN0YXRlIGZvcgo+Pj4gc3Vz
cGVuZCIgaGFzIHByb2JsZW1zCj4+Pgo+Pj4KPj4+IFtFWFRFUk5BTCBFTUFJTF0KPj4+Cj4+PiBI
aSBSYWZhZWwsCj4+Pgo+Pj4gYXQgMTc6NTEsIFJhZmFlbCBKLiBXeXNvY2tpIDxyandAcmp3eXNv
Y2tpLm5ldD4gd3JvdGU6Cj4+Pgo+Pj4+IEhpIEtlaXRoLAo+Pj4+Cj4+Pj4gVW5mb3J0dW5hdGVs
eSwKPj4+Pgo+Pj4+IGNvbW1pdCBkOTE2YjFiZTk0YjZkYzhkMjkzYWJlZDI0NTFmMzA2MmY2YWY3
NTUxCj4+Pj4gQXV0aG9yOiBLZWl0aCBCdXNjaCA8a2VpdGguYnVzY2hAaW50ZWwuY29tPgo+Pj4+
IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAyMDE5IC0wNjAwCj4+Pj4KPj4+PiAgICAgbnZt
ZS1wY2k6IHVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUgZm9yIHN1c3BlbmQKPj4+Pgo+Pj4+
IGRvZXNuJ3QgdW5pdmVyc2FsbHkgaW1wcm92ZSB0aGluZ3MuICBJbiBmYWN0LCBpbiBzb21lIGNh
c2VzIGl0IG1ha2VzCj4+Pj4gdGhpbmdzIHdvcnNlLgo+Pj4+Cj4+Pj4gRm9yIGV4YW1wbGUsIG9u
IHRoZSBEZWxsIFhQUzEzIDkzODAgSSBoYXZlIGhlcmUgaXQgcHJldmVudHMgdGhlICAKPj4+PiBw
cm9jZXNzb3IKPj4+PiBwYWNrYWdlCj4+Pj4gZnJvbSByZWFjaGluZyBpZGxlIHN0YXRlcyBkZWVw
ZXIgdGhhbiBQQzIgaW4gc3VzcGVuZC10by1pZGxlICh3aGljaCwgb2YKPj4+PiBjb3Vyc2UsIGFs
c28KPj4+PiBwcmV2ZW50cyB0aGUgU29DIGZyb20gcmVhY2hpbmcgYW55IGtpbmQgb2YgUzBpeCku
Cj4+Pj4KPj4+PiBUaGF0IGNhbiBiZSByZWFkaWx5IGV4cGxhaW5lZCB0b28uICBOYW1lbHksIHdp
dGggdGhlIGNvbW1pdCBhYm92ZSB0aGUKPj4+PiBOVk1lIGRldmljZQo+Pj4+IHN0YXlzIGluIEQw
IG92ZXIgc3VzcGVuZC9yZXN1bWUsIHNvIHRoZSByb290IHBvcnQgaXQgaXMgY29ubmVjdGVkIHRv
ICAKPj4+PiBhbHNvCj4+Pj4gaGFzIHRvIHN0YXkgaW4KPj4+PiBEMCBhbmQgdGhhdCAiYmxvY2tz
IiBwYWNrYWdlIEMtc3RhdGVzIGRlZXBlciB0aGFuIFBDMi4KPj4+Pgo+Pj4+IEluIG9yZGVyIGZv
ciB0aGUgcm9vdCBwb3J0IHRvIGJlIGFibGUgdG8gZ28gdG8gRDMsIHRoZSBkZXZpY2UgY29ubmVj
dGVkCj4+Pj4gdG8gaXQgYWxzbyBuZWVkcwo+Pj4+IHRvIGdvIGludG8gRDMsIHNvIGl0IGxvb2tz
IGxpa2UgKGF0IGxlYXN0IG9uIHRoaXMgcGFydGljdWxhciBtYWNoaW5lLCAgCj4+Pj4gYnV0Cj4+
Pj4gbWF5YmUgaW4KPj4+PiBnZW5lcmFsKSwgYm90aCBEMyBhbmQgdGhlIE5WTWUtc3BlY2lmaWMg
UE0gYXJlIG5lZWRlZC4KPj4KPj4gV2VsbCB0aGlzIGlzIHJlYWxseSB1bmZvcnR1bmF0ZSB0byBo
ZWFyLiAgSSByZWNhbGwgdGhhdCB3aXRoIHNvbWUgZGlza3MgIAo+PiB3ZSB3ZXJlCj4+IHNlZWlu
ZyBwcm9ibGVtcyB3aGVyZSBOVk1FIHNwZWNpZmljIFBNIHdhc24ndCB3b3JraW5nIHdoZW4gdGhl
IGRpc2sgd2FzICAKPj4gaW4gRDMuCj4+Cj4+IE9uIHlvdXIgc3BlY2lmaWMgZGlzaywgaXQgd291
bGQgYmUgZ29vZCB0byBrbm93IGlmIGp1c3QgcmVtb3ZpbmcgdGhlICAKPj4gcGNpX3NhdmVfc3Rh
dGUocGRldikKPj4gY2FsbCBoZWxwcy4KPgo+IFllcywgaXQgZG9lcyBoZWxwLgo+Cj4+IElmIHNv
LCA6Cj4+ICogdGhhdCBtaWdodCBiZSBhIGJldHRlciBvcHRpb24gdG8gYWRkIGFzIGEgcGFyYW1l
dGVyLgo+PiAqIG1heWJlIHdlIHNob3VsZCBkb3VibGUgY2hlY2sgYWxsIHRoZSBkaXNrcyBvbmUg
bW9yZSB0aW1lIHdpdGggdGhhdCAgCj4+IHR3ZWFrLgo+Cj4gQXQgdGhpcyBwb2ludCBpdCBzZWVt
cyBzby4KPgo+Pj4+IEknbSBub3Qgc3VyZSB3aGF0IHRvIGRvIGhlcmUsIGJlY2F1c2UgZXZpZGVu
dGx5IHRoZXJlIGFyZSBzeXN0ZW1zIHdoZXJlCj4+Pj4gdGhhdCBjb21taXQKPj4+PiBoZWxwcy4g
IEkgd2FzIHRoaW5raW5nIGFib3V0IGFkZGluZyBhIG1vZHVsZSBvcHRpb24gYWxsb3dpbmcgdGhl
IHVzZXIgdG8KPj4+PiBvdmVycmlkZSB0aGUKPj4+PiBkZWZhdWx0IGJlaGF2aW9yIHdoaWNoIGlu
IHR1cm4gc2hvdWxkIGJlIGNvbXBhdGlibGUgd2l0aCA1LjIgYW5kIGVhcmxpZXIKPj4+PiBrZXJu
ZWxzLgo+Pj4KPj4+IEkganVzdCBicmllZmx5IHRlc3RlZCBzMmkgb24gWFBTIDkzNzAsIGFuZCB0
aGUgcG93ZXIgbWV0ZXIgc2hvd3MgYSAgCj4+PiAwLjh+MC45Vwo+Pj4gcG93ZXIgY29uc3VtcHRp
b24gc28gYXQgbGVhc3QgSSBkb27igJl0IHNlZSB0aGUgaXNzdWUgb24gWFBTIDkzNzAuCj4+Cj4+
IFRvIG1lIHRoYXQgY29uZmlybXMgTlZNRSBpcyBkb3duLCBidXQgaXQgc3RpbGwgc2VlbXMgaGln
aGVyIHRoYW4gSSB3b3VsZCAgCj4+IGhhdmUKPj4gZXhwZWN0ZWQuICBXZSBzaG91bGQgYmUgbW9y
ZSB0eXBpY2FsbHkgaW4gdGhlIG9yZGVyIG9mIH4wLjNXIEkgdGhpbmsuCgogRnJvbSB3aGF0IEni
gJl2ZSBvYnNlcnZlZCwgfjAuOFcgczJpZGxlIGlzIGFscmVhZHkgYmV0dGVyIHRoYW4gV2luZG93
cyAofjFXKS4KMC4zVyBpcyB3aGF0IEkgc2VlIGR1cmluZyBTNS4KCj4KPiBJdCBtYXkgZ28gdG8g
UEMxMCwgYnV0IG5vdCByZWFjaCBTMGl4Lgo+Cj4gQW55d2F5LCBJIHJ1biB0aGUgczJpZGxlIHRl
c3RzIHVuZGVyIHR1cmJvc3RhdCB3aGljaCB0aGVuIHRlbGxzIG1lCj4gd2hhdCBoYXMgaGFwcGVu
ZWQgbW9yZSBwcmVjaXNlbHkuCgpUaGUgWFBTIDkzNzAgYXQgbXkgaGFuZCBkb2VzIHJlYWNoIHRv
IHMwaXggZHVyaW5nIHMyaWRsZToKIyBjYXQgL3N5cy9rZXJuZWwvZGVidWcvcG1jX2NvcmUvc2xw
X3MwX3Jlc2lkZW5jeV91c2VjCjE1OTk4NDAwCgpTbyBJIHRoaW5rIGtlZXAgdGhlIHJvb3QgcG9y
dCBpbiBEMCBpcyBub3QgdGhlIGN1bHByaXQgaGVyZS4KTWF5YmUgc29tZXRoaW5nIGlzIHdyb25n
IG9uIHRoZSBBU1BNIHNldHRpbmdzPwoKS2FpLUhlbmcKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
