Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A35A7D838
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 11:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QqDQACC0cEeOAKyw60hnYxUzjX2B0WKFuek9uhWmfRI=; b=tn58aMgD2iQqWs0Bby3sYDaub
	VKnw94Xb/Ur8/bThsuGmyJ1QNzbVgFC2YF1ctkZ+Ze9t3ZAMqIiU7pO5sh16LBvUSYddcbXnGC1zj
	L0jtySUyQWW3Lj5llvEqOPOIokFDtQ8oyk+cUV2ZDyf/CvoPPJcMf5vT52BLNCedXofN1QX9sBPUK
	nOnIs4TUxGOevobjTkii0IPLw9l8AHYZTD1QG3rj3aEHPxPBv1W2jrhNV3TskTeW65Do+lxIPhgOX
	P3UsSGaRF5ORMXAF4eWiOCrBZYacknS2MDWV642kgs84HWMayT/El5sETyo7waZAdia3aXlZYuq0+
	/mu5wkQew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht72H-0000hE-DB; Thu, 01 Aug 2019 09:06:09 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht72C-0000gL-Ak
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 09:06:05 +0000
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1ht728-0007Tk-20
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 09:06:00 +0000
Received: by mail-pg1-f198.google.com with SMTP id p15so1146202pgl.18
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 02:05:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CE/jIvfMb8MGoIQ8tRgk5BgnN9f/9L2WwMekkyWaOOI=;
 b=EeF7T7t+NFAXq+41YaqameLImUX35Ne1m2yv4/rsFIOqUjRaBAkzo4i8NMWihvbex5
 HLzRZenu+sWaH6szl2zGNq/E3NVz74Vw9gxZ/rRDSJUFoCjj7Xbnkoj6yE8CQqQaCErh
 PZg5aPM+UDHg04HvOLjvn41e/hHWhpJDTYvnrwPSllZPH74dduZT9tEr9VR6X/OXULaX
 p21sD3x+QOV+pP5uCXziuGliMBQP1aelrpvAmrTb9gyxZb1G3oEY5Ps+06bxJaVMF7Bu
 2CTx2lmNTmbMMxPpRc9Qe6+uZ90DUyFOpwCVWTyRS9UTYLTGdA7N1dMLey/Oh1+UroCs
 f4sg==
X-Gm-Message-State: APjAAAVEMONlt6GncJTv47d8V/s2YdDnkaZBtMLo7RuHIONwSi68KJfV
 74SfGyhz8r203ayeUsNT0tNeuDX9hSNX+cBhthY6fJejV3vCp35kRhm5FXxQNVboyWpsEFJ3ROL
 fYZdJYgnRvW8r8d4Aq315jUJz7UgyIqqwSHnvBwC+J0FP
X-Received: by 2002:a17:902:23:: with SMTP id 32mr37995694pla.34.1564650358686; 
 Thu, 01 Aug 2019 02:05:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAXl4RJjTfmo0Fjo42W3mWvcZyKw/aanim8XYIpsdISoCCH8mQj5GW8+GFyrYPLhWNDtgylw==
X-Received: by 2002:a17:902:23:: with SMTP id 32mr37995661pla.34.1564650358329; 
 Thu, 01 Aug 2019 02:05:58 -0700 (PDT)
Received: from 2001-b011-380f-37d3-ac53-c2c3-6814-e821.dynamic-ip6.hinet.net
 (2001-b011-380f-37d3-ac53-c2c3-6814-e821.dynamic-ip6.hinet.net.
 [2001:b011:380f:37d3:ac53:c2c3:6814:e821])
 by smtp.gmail.com with ESMTPSA id s7sm3536097pjn.28.2019.08.01.02.05.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 02:05:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
Date: Thu, 1 Aug 2019 17:05:54 +0800
Message-Id: <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
 <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_020604_505352_D980E823 
X-CRM114-Status: GOOD (  14.38  )
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
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMDY6MzMsIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+
IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTI6MjIgQU0gS2VpdGggQnVzY2ggPGtidXNjaEBrZXJu
ZWwub3JnPiB3cm90ZToKPj4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTE6MjU6NTFQTSArMDIw
MCwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4+PiBBIGNvdXBsZSBvZiByZW1hcmtzIGlmIHlv
dSB3aWxsLgo+Pj4KPj4+IEZpcnN0LCB3ZSBkb24ndCBrbm93IHdoaWNoIGNhc2UgaXMgdGhlIG1h
am9yaXR5IGF0IHRoaXMgcG9pbnQuICBGb3IKPj4+IG5vdywgdGhlcmUgaXMgb25lIGV4YW1wbGUg
b2YgZWFjaCwgYnV0IGl0IG1heSB2ZXJ5IHdlbGwgdHVybiBvdXQgdGhhdAo+Pj4gdGhlIFNLIEh5
bml4IEJDNTAxIGFib3ZlIG5lZWRzIHRvIGJlIHF1aXJrZWQuCj4+Pgo+Pj4gU2Vjb25kLCB0aGUg
cmVmZXJlbmNlIGhlcmUgcmVhbGx5IGlzIDUuMiwgc28gaWYgdGhlcmUgYXJlIGFueSBzeXN0ZW1z
Cj4+PiB0aGF0IGFyZSBub3QgYmV0dGVyIG9mZiB3aXRoIDUuMy1yYyB0aGFuIHRoZXkgd2VyZSB3
aXRoIDUuMiwgd2VsbCwgd2UKPj4+IGhhdmUgbm90IG1hZGUgcHJvZ3Jlc3MuICBIb3dldmVyLCBp
ZiB0aGVyZSBhcmUgc3lzdGVtcyB0aGF0IGFyZSB3b3JzZQo+Pj4gb2ZmIHdpdGggNS4zLCB0aGF0
J3MgYmFkLiAgSW4gdGhlIGZhY2Ugb2YgdGhlIGxhdGVzdCBmaW5kaW5ncyB0aGUgb25seQo+Pj4g
d2F5IHRvIGF2b2lkIHRoYXQgaXMgdG8gYmUgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCA1LjIg
YW5kIHRoYXQncwo+Pj4gd2hlcmUgbXkgcGF0Y2ggaXMgZ29pbmcuICBUaGF0IGNhbm5vdCBiZSBh
Y2hpZXZlZCBieSBxdWlya2luZyBhbGwKPj4+IGNhc2VzIHRoYXQgYXJlIHJlcG9ydGVkIGFzICJi
YWQiLCBiZWNhdXNlIHRoZXJlIHN0aWxsIG1heSBiZQo+Pj4gdW5yZXBvcnRlZCBvbmVzLgo+Pgo+
PiBJIGhhdmUgdG8gYWdyZWUuIEkgdGhpbmsgeW91ciBwcm9wb3NhbCBtYXkgYWxsb3cgUENJIEQz
Y29sZCwKPgo+IFllcywgaXQgbWF5LgoKU29tZWhvdyB0aGUgOTM4MCB3aXRoIFRvc2hpYmEgTlZN
ZSBuZXZlciBoaXRzIFNMUF9TMCB3aXRoIG9yIHdpdGhvdXQgIApSYWZhZWzigJlzIHBhdGNoLgpC
dXQgdGhlIOKAnHJlYWzigJ0gczJpZGxlIHBvd2VyIGNvbnN1bXB0aW9uIGRvZXMgaW1wcm92ZSB3
aXRoIHRoZSBwYXRjaC4KCkNhbiB3ZSB1c2UgYSBETUkgYmFzZWQgcXVpcmsgZm9yIHRoaXMgcGxh
dGZvcm0/IEl0IHNlZW1zIGxpa2UgYSBwbGF0Zm9ybSAgCnNwZWNpZmljIGlzc3VlLgoKPgo+PiBJ
biB3aGljaCBjYXNlIHdlIGRvIG5lZWQgdG8gcmVpbnRyb2R1Y2UgdGhlIEhNQiBoYW5kbGluZy4K
Pgo+IFJpZ2h0LgoKVGhlIHBhdGNoIGFsb25lIGRvZXNu4oCZdCBicmVhayBITUIgVG9zaGliYSBO
Vk1lIEkgdGVzdGVkLiBCdXQgSSB0aGluayBpdOKAmXMgIApzdGlsbCBzYWZlciB0byBkbyBwcm9w
ZXIgSE1CIGhhbmRsaW5nLgoKS2FpLUhlbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
