Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D76796CAC
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 01:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+gOAcbm8JV1AFZvPBeVm2B56pqEQVPL9BJ7YMbTIOE=; b=pEniSH+gRyKww2A6STAXoLb2f
	9UgqpXyZtP1PS6CKiMD9xPKv1gFO3Hu87P6M9Fju9l8lyXbAvY0MamHgTT7VEuVo8WvDBpi2NZoKa
	eETjIoKKSUUYE5P27XaQDaUx7WylqKZ+hchnlrsWlfLZvyH2jX9MkoAmHzLe9VDzi2pwlRPdW+wpF
	RpfP6PstQtvheYP3xtwEi1bKEzSOrPO9EOQBSIXd41ZNT4TQ75I7YR/ZSXzLiYFP21YEwJeYyNyPT
	1Tt5x+KI2opJuCSw1GPQrkv6iJOij1skiRhmeI1u5a7XOxYSkigd/UIVeywYSCdS93j1ijgvXCFZH
	RiKQQeyfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DCj-0002aO-11; Tue, 20 Aug 2019 23:06:17 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DCd-0002a3-Hc
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 23:06:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so70662pfc.13
 for <linux-nvme@lists.infradead.org>; Tue, 20 Aug 2019 16:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=s1aMDjpKl/ackAkzAHBBlqPsFl4j+qC6C5X13b6LDUE=;
 b=T/ELBqqoHLHL2CAXlC1/2YIZXgM8x2XS8sqZkL2VyOGVLIh9JZSc2dE0/yVLnhSSqn
 VBEUFcFdqIK2BLuXcYIAYvlEWq6WPUuPAmP7So6giMiN7wAszJvQ4OzG6phor7e8Ifv0
 ZRXRwLZc6P/Tr2TUtDTo95C4BBEyD6gz+bQig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=s1aMDjpKl/ackAkzAHBBlqPsFl4j+qC6C5X13b6LDUE=;
 b=A6hEnRIg5nLNPI5DH1XoOvp0zw46HnHzLtQKP0UucuDUAxvBIkE3nBjl7100JlvZod
 dHP4ykUa4iOd7Nm14G/4rDH5L25wpZYPMBRI5bVQqx5Lps2fbRlZX539u7KDSLQvVIAO
 WTUvXb6Kok1VRFVvmMOoBxcGQFp2xwzwmRo/Y8LX6ObzudNjXSje02iowvRr7Np0mv4i
 IMyId8zqkaoLwJFsviuPex/klo9Mv3YyINeu9f0gewTzp7sobPoHC5jL0HSSNdkjQf4D
 ljrwDHJpdfLjzTAcxyN3Yi7cch5vEoCjuiBCqOGMUh+R69tlx9ydrdf1V5pR0LcwfGJ9
 tU3Q==
X-Gm-Message-State: APjAAAVdWETmD14+3wQd7QHrPYknmSVE17a8KM5Zslv09HU3oQuwIxxi
 lL8WZmwBvr4qc+SfBR/2/p6dOg==
X-Google-Smtp-Source: APXvYqzcyIktOckZA5yqar/pTAHSFX7Y0GnS413dMvcoLxoe+jR0VHQ/zopB1AiQSK8WGGmGnDL85A==
X-Received: by 2002:a63:8a43:: with SMTP id y64mr26824704pgd.104.1566342370270; 
 Tue, 20 Aug 2019 16:06:10 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i11sm27146424pfk.34.2019.08.20.16.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 16:06:09 -0700 (PDT)
Subject: Re: [PATCH] nvme-multipath: fix ana log nsid lookup when nsid is not
 found
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190820230027.14025-1-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <03b75144-b5a5-b4bc-8666-f11aa329ff94@broadcom.com>
Date: Tue, 20 Aug 2019 16:06:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820230027.14025-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_160611_585120_F403DC80 
X-CRM114-Status: GOOD (  21.82  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>,
 Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzIwLzIwMTkgNDowMCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiBGcm9tOiBBbnRv
biBFaWRlbG1hbiA8YW50b25AbGlnaHRiaXRzbGFicy5jb20+Cj4KPiBBTkEgbG9nIHBhcnNpbmcg
aW52b2tlcyBudm1lX3VwZGF0ZV9hbmFfc3RhdGUoKSBwZXIgQU5BIGdyb3VwIGRlc2MuCj4gVGhp
cyB1cGRhdGVzIHRoZSBzdGF0ZSBvZiBuYW1lc3BhY2VzIHdpdGggbnNpZHMgaW4gZGVzYy0+bnNp
ZHNbXS4KPgo+IEJvdGggY3RybC0+bmFtZXNwYWNlcyBsaXN0IGFuZCBkZXNjLT5uc2lkc1tdIGFy
cmF5IGFyZSBzb3J0ZWQgYnkgbnNpZC4KPiBIZW5jZSBudm1lX3VwZGF0ZV9hbmFfc3RhdGUoKSBw
ZXJmb3JtcyBhIHNpbmdsZSB3YWxrIG92ZXIgY3RybC0+bmFtZXNwYWNlczoKPiAtIGlmIGN1cnJl
bnQgbmFtZXNwYWNlIG1hdGNoZXMgdGhlIGN1cnJlbnQgZGVzYy0+bnNpZHNbbl0sCj4gICAgdGhp
cyBuYW1lc3BhY2UgaXMgdXBkYXRlZCwgYW5kIG4gaXMgaW5jcmVtZW50ZWQuCj4gLSB0aGUgcHJv
Y2VzcyBzdG9wcyB3aGVuIGl0IGVuY291bnRlcnMgdGhlIGVuZCBvZiBlaXRoZXIKPiAgICBjdHJs
LT5uYW1lc3BhY2VzIGVuZCBvciBkZXNjLT5uc2lkc1tdCj4KPiBJbiBjYXNlIGRlc2MtPm5zaWRz
W25dIGRvZXMgbm90IG1hdGNoIGFueSBvZiBjdHJsLT5uYW1lc3BhY2VzLAo+IHRoZSByZW1haW5p
bmcgbnNpZHMgZm9sbG93aW5nIGRlc2MtPm5zaWRzW25dIHdpbGwgbm90IGJlIHVwZGF0ZWQuCj4g
U3VjaCBzaXR1YXRpb24gd2FzIGNvbnNpZGVyZWQgYWJub3JtYWwgYW5kIGdlbmVyYXRlZCBXQVJO
X09OX09OQ0UuCj4KPiBIb3dldmVyIEFOQSBsb2cgTUFZIGNvbnRhaW4gbnNpZHMgbm90ICh5ZXQp
IGZvdW5kIGluIGN0cmwtPm5hbWVzcGFjZXMuCj4gRm9yIGV4YW1wbGUsIGxldHMgY29uc2lkZXIg
dGhlIGZvbGxvd2luZyBzY2VuYXJpbzoKPiAtIG52bWUwIGV4cG9zZXMgbmFtZXNwYWNlcyB3aXRo
IG5zaWRzID0gWzIsIDNdIHRvIHRoZSBob3N0Cj4gLSBhIG5ldyBuYW1lc3BhY2UgbnNpZCA9IDEg
aXMgYWRkZWQgZHluYW1pY2FsbHkKPiAtIGFsc28sIGEgQU5BIHRvcG9sb2d5IGNoYW5nZSBpcyB0
cmlnZ2VyZWQKPiAtIE5TX0NIQU5HRUQgYWVuIGlzIGdlbmVyYXRlZCBhbmQgdHJpZ2dlcnMgc2Nh
bl93b3JrCj4gLSBiZWZvcmUgc2Nhbl93b3JrIGRpc2NvdmVycyBuc2lkPTEgYW5kIGNyZWF0ZXMg
YSBuYW1lc3BhY2UsIGEgTk9USUNFX0FOQQo+ICAgIGFlbiB3YXMgaXNzdWVzIGFuZCBhbmFfd29y
ayByZWNlaXZlcyBBTkEgbG9nIHdpdGggbnNpZHM9WzEsIDIsIDNdCj4KPiBSZXN1bHQ6IGFuYV93
b3JrIGZhaWxzIHRvIHVwZGF0ZSBBTkEgc3RhdGUgb24gZXhpc3RpbmcgbmFtZXNwYWNlcyBbMiwg
M10KPgo+IFNvbHV0aW9uOgo+IENoYW5nZSB0aGUgd2F5IG52bWVfdXBkYXRlX2FuYV9zdGF0ZSgp
IG5hbWVzcGFjZSBsaXN0IHdhbGsKPiBjaGVja3MgdGhlIGN1cnJlbnQgbmFtZXNwYWNlIGFnYWlu
c3QgZGVzYy0+bnNpZHNbbl0gYXMgZm9sbG93czoKPiBhKSBucy0+aGVhZC0+bnNfaWQgPCBkZXNj
LT5uc2lkc1tuXToga2VlcCB3YWxraW5nIGN0cmwtPm5hbWVzcGFjZXMuCj4gYikgbnMtPmhlYWQt
Pm5zX2lkID09IGRlc2MtPm5zaWRzW25dOiBtYXRjaCwgdXBkYXRlIHRoZSBuYW1lc3BhY2UKPiBj
KSBucy0+aGVhZC0+bnNfaWQgPj0gZGVzYy0+bnNpZHNbbl06IHNraXAgdG8gZGVzYy0+bnNpZHNb
bisxXQo+Cj4gVGhpcyBlbmFibGVzIGNvcnJlY3Qgb3BlcmF0aW9uIGluIHRoZSBzY2VuYXJpbyBk
ZXNjcmliZWQgYWJvdmUuCj4gVGhpcyBhbHNvIGFsbG93cyBBTkEgbG9nIHRvIGNvbnRhaW4gbnNp
ZHMgY3VycmVudGx5IGludmlzaWJsZQo+IHRvIHRoZSBob3N0LCBpLmUuIGluYWN0aXZlIG5zaWRz
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQW50b24gRWlkZWxtYW4gPGFudG9uQGxpZ2h0Yml0c2xhYnMu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4g
LS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYyB8IDggKysrKystLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlwYXRoLmMgYi9kcml2ZXJzL252bWUvaG9zdC9t
dWx0aXBhdGguYwo+IGluZGV4IGFmODMxZDNkMTVkMC4uMzBkZTdlZmVmMDAzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hv
c3QvbXVsdGlwYXRoLmMKPiBAQCAtNTA5LDE0ICs1MDksMTYgQEAgc3RhdGljIGludCBudm1lX3Vw
ZGF0ZV9hbmFfc3RhdGUoc3RydWN0IG52bWVfY3RybCAqY3RybCwKPgoKUmV2aWV3ZWQtYnk6wqDC
oCBKYW1lcyBTbWFydCA8amFtZXMuc21hcnRAYnJvYWRjb20uY29tPgoKLS0gamFtZXMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
