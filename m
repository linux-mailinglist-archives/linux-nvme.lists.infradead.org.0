Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EAB18856
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 12:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JAZH0LgNLNiUsC6pnO+RoFqzxclnk+6jXiVwqJKExiM=; b=g555PVka4ZyWpH+7TfFanR4it
	GExu7aS0bE39y0o9wAQk2Qh9O/2YsItK7Zvg6k0e81fd/GxwAh/1n0dD+4nluiaVffOpxU7beoIIn
	paPsSzx4epJ9+uqHlK2Ft3ZZDXK77N2CIuKteUEWvnPgs35Anq6UR73pUMtpctTMIH3wCPpkwqrVM
	aiQ2Zgn18ebqzJp/p+J7RLyNJ8ABOISn3NJHyBZZU+oJVrxqLJvn/RBxRf+LpygOv5CprSNa27uyG
	zvF0su8RaR10GS+QHM3NiQ+7YlraN3cSGiCK1JHdmxms792wCPKPwT+/TqectOL6VQzuwr7PEZW/2
	cJn9GaCow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgI9-0001E2-C9; Thu, 09 May 2019 10:28:45 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgI4-0001DZ-Cn
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 10:28:42 +0000
Received: from mail-pl1-f200.google.com ([209.85.214.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hOgI2-0000af-17
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 10:28:38 +0000
Received: by mail-pl1-f200.google.com with SMTP id g11so1285646plt.23
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 03:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iqO4jAPKI5EtPAMUNTTqbiH8EXREdlEaOkeV8WUNd4o=;
 b=pY149eSx/oICupSnHwHpBG6FBvP/nwYfDsE6opPNTfRhALSWv6qkM8s5ygKqH1Yd74
 a7DVFJKyM2c6KQnKsRCGdbI1pRkSn8HdSlZECxOB0tK3Kw0IkJ0sRlro75SXYP8OPqqc
 IaIRhc3h6x9I60lLc5pe+vYs/lNtqL/c8Uqro41EmiC83oSHPB+DwG6kLFMZ4KvI143M
 oKXWdKq9aLSfdUtEvBaNns2l83idIhLDcAgeQrgofeQ8onisPgnIAQZ9SxpaAEp1+qzj
 gidzUIowOOYBziTGSB15wxnD9P7b85ef2XRWH20yaFRDHLvQhYDji43e+9qB86ZaXG40
 5MZg==
X-Gm-Message-State: APjAAAX60wR/k+W7Caxf1YSjQowbxkKeAFS+DvuPlpv9DB5fyZQgCSOJ
 0FXxiQ82zn0SuAj2JzwSNlStzLa50gVoDp3B/+haKIfycPsJA6MipCbela38fcc8A0XIrrJTV3F
 B4/QP+gYWideD70TCxknzXop/5yYEu4iUqsJYYQsR5fKU
X-Received: by 2002:a17:902:9002:: with SMTP id
 a2mr3830420plp.43.1557397716748; 
 Thu, 09 May 2019 03:28:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyirYEaLJu/laJ4c1rSpRcvUuVa2X9DdCx+9zraOT/K7aD24GwK2dDRqBBw+jE7Tbbvs7nkUw==
X-Received: by 2002:a17:902:9002:: with SMTP id
 a2mr3830334plp.43.1557397716088; 
 Thu, 09 May 2019 03:28:36 -0700 (PDT)
Received: from 2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:f0ba:4a15:3e79:97f9])
 by smtp.gmail.com with ESMTPSA id b144sm2638855pfb.68.2019.05.09.03.28.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 03:28:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190509095601.GA19041@lst.de>
Date: Thu, 9 May 2019 18:28:32 +0800
Message-Id: <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
To: Christoph Hellwig <hch@lst.de>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_032840_575279_9E8F7555 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMTc6NTYsIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKCj4gT24gVGh1
LCBNYXkgMDksIDIwMTkgYXQgMDU6NDI6MzBQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToK
Pj4+IFRoYXQgd291bGQgYmUgYSBzZXQgb2YgNiBuZXcgc3VzcGVuZCBhbmQgcmVzdW1lIGNhbGxi
YWNrcywgbWluZCB5b3UsCj4+PiBhbmQgdGhlcmUncyBxdWl0ZSBhIGZldyBvZiB0aGVtIGFscmVh
ZHkuICBBbmQgdGhlIG1ham9yaXR5IG9mIGRyaXZlcnMKPj4+IHdvdWxkIG5vdCBuZWVkIHRvIHVz
ZSB0aGVtIGFueXdheS4KPj4KPj4gSSB0aGluayBzdXNwZW5kX3RvX2lkbGUoKSBhbmQgcmVzdW1l
X2Zyb21faWRsZSgpIHNob3VsZCBiZSBlbm91Z2g/Cj4+IFdoYXQgYXJlIG90aGVyIDQgY2FsbGJh
Y2tzPwo+Pgo+Pj4gQWxzbywgcGxlYXNlIG5vdGUgdGhhdCwgcG9zc2libHkgYXBhcnQgZnJvbSB0
aGUgZGV2aWNlIHBvd2VyIHN0YXRlCj4+PiBzZXR0aW5nLCB0aGUgUzJJIGFuZCBTMlIgaGFuZGxp
bmcgcmVhbGx5IGFyZW4ndCB0aGF0IGRpZmZlcmVudCBhdCBhbGwuCj4+PiBZb3UgYmFzaWNhbGx5
IG5lZWQgdG8gY2Fycnkgb3V0IHRoZSBzYW1lIHByZXBhcmF0aW9ucyBkdXJpbmcgc3VzcGVuZAo+
Pj4gYW5kIHJldmVyc2UgdGhlbSBkdXJpbmcgcmVzdW1lIGluIGJvdGggY2FzZXMuCj4+Cj4+IEJ1
dCBmb3IgdGhpcyBjYXNlLCBpdOKAmXMgcXVpdGUgZGlmZmVyZW50IHRvIHRoZSBvcmlnaW5hbCBz
dXNwZW5kIGFuZAo+PiByZXN1bWUgY2FsbGJhY2tzLgo+Cj4gTGV0J3MgdGhpbmsgb2Ygd2hhdCBj
YXNlcyB3ZSBuZWVkZWQuCj4KPiBUaGUgImNsYXNzaWMiIHN1c3BlbmQgaW4gdGhlIG52bWUgZHJp
dmVyIGJhc2ljYWxseSBzaHV0cyBkb3duIHRoZQo+IGRldmljZSBlbnRpcmVseS4gIFRoaXMgaXMg
dXNlZnVsIGZvcjoKPgo+ICBhKSBkZXZpY2UgdGhhdCBoYXZlIG5vIHBvd2VyIG1hbmFnZW1lbnQK
PiAgYikgU3lzdGVtIHBvd2VyIHN0YXRlcyB0aGF0IGV2ZW50dWFsbHkgcG93ZXIgb2ZmIHRoZSBl
bnRpcmUgUENJZSBidXMuCj4gICAgIEkgdGhpbmsgdGhhdCB3b3VsZDoKPgo+ICAgICAgLSBzdXNw
ZW5kIHRvIGRpc2sgKGhpYmVybmF0ZSkKPiAgICAgIC0gY2xhc3NpYyBzdXNwZW5kIHRvIHJhbQo+
Cj4gVGhlIHdlIGhhdmUgdGhlIHNlcXVlbmNlIGluIHlvdXIgcGF0Y2guICBUaGlzIHNlZW1zIHRv
IGJlIHJlbGF0ZWQgdG8KPiBzb21lIG9mIHRoZSBNUyB3b3JkaW5nLCBidXQgSSdtIG5vdCBzdXJl
IHdoYXQgZm9yIGV4YW1wbGUgdGVhcmluZyBkb3duCj4gdGhlIHF1ZXVlcyBidXlzIHVzLiAgQ2Fu
IHlvdSBleHBsYWluIGEgYml0IG1vcmUgd2hlcmUgdGhvc2UgYml0cwo+IG1ha2UgYSBkaWZmZXJl
bmNlPwoKQmFzZWQgb24gbXkgdGVzdGluZyBpZiBxdWV1ZXMgKElSUSkgYXJlIG5vdCBkaXNhYmxl
ZCwgTlZNZSBjb250cm9sbGVyIHdvbuKAmXQgIApiZSBxdWllc2NlZC4KU3ltcHRvbXMgY2FuIGJl
IGhpZ2ggcG93ZXIgZHJhaW4gb3Igc3lzdGVtIGZyZWV6ZS4KCkkgY2FuIGNoZWNrIHdpdGggdmVu
ZG9ycyB3aGV0aGVyIHRoaXMgYWxzbyBuZWNlc3NhcnkgdW5kZXIgV2luZG93cy4KCj4KPiBPdGhl
cndpc2UgSSB0aGluayB3ZSBzaG91bGQgdXNlIGEgIm5vLW9wIiBzdXNwZW5kLCBqdXN0IGxlYXZp
bmcgdGhlCj4gcG93ZXIgbWFuYWdlbWVudCB0byB0aGUgZGV2aWNlLCBvciBhIHNpbXBsZSBzZXR0
aW5nIHRoZSBkZXZpY2UgdG8gdGhlCj4gZGVlcGVzdCBwb3dlciBzdGF0ZSBmb3IgZXZlcnl0aGlu
ZyBlbHNlLCB3aGVyZSBldmVyeXRoaW5nIGVsc2UgaXMKPiBzdXNwZW5kLCBvciBzdXNwZW5kIHRv
IGlkbGUuCgpJIGFtIG5vdCBzdXJlIEkgZ2V0IHlvdXIgaWRlYS4gRG9lcyB0aGlzIOKAnG5vLW9w
4oCdIHN1c3BlbmQgaGFwcGVuIGluIE5WTWUgIApkcml2ZXIgb3IgUE0gY29yZT8KCj4KPiBBbmQg
b2YgY291cnNlIHRoYW4gd2UgaGF2ZSB3aW5kb3dzIG1vZGVybiBzdGFuZGJ5IGFjdHVhbGx5IG1h
bmRhdGluZwo+IHJ1bnRpbWUgRDMgaW4gc29tZSBjYXNlLCBhbmQgdmFndWUgaGFuZHdhdmluZyBt
ZW50aW9ucyBvZiB0aGlzIGJlaW5nCj4gZm9yY2VkIG9uIHRoZSBwbGF0Zm9ybXMsIHdoaWNoIEkn
bSBub3QgZW50aXJlbHkgc3VyZSBob3cgdGhleSBmaXQKPiBpbnRvIHRoZSBhYm92ZSBwaWN0dXJl
LgoKSSB3YXMgdG9sZCB0aGF0IFdpbmRvd3MgZG9lc27igJl0IHVzZSBydW50aW1lIEQzLCBBUFNU
IGlzIHVzZWQgZXhjbHVzaXZlbHkuCgpLYWktSGVuZwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
