Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC01699A6
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 19:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DCkQzJYIhhjDk9pk30UYxettO+/486ln1jwOrCHW1x8=; b=M4RsCW1LQhPLeTx1sMwtYd10K
	IzK2Dt+9TlIK0QgC8wuLRA54T4WDOgQEngJVB2yH4yiCZMxb8S8a565/3JP9f1Yny9ljbmPrOIWWj
	VaUpqTVPeyOZ/krIkaO6axmpzbfOmBZre2wFbfDrYJJ2jfOoX9PG8ijddJj1M1AnTTFidUkotCytJ
	uOCG87R74tGXRhbd7kWW7xz5qfYFGuEk3jLvbgZEU3vG0gJMav75qHgU/TjQ3Q+JtFBJhU63y5l2g
	YWt5FUfkF7JlF5Ze95PupubLih1L1xWs9zF1ziXL+xbey8d8PfODrPx75M8Tu/FNKhLHNssg5dieU
	G/Zxm8WEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4fm-00062D-9A; Mon, 15 Jul 2019 17:21:58 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4fc-00061n-PN
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 17:21:50 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so13285597oil.1
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 10:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7efG1hffh/TwgqWuXvONzjLxNYFxKpFGHq6ZXVJftgg=;
 b=Assp98ni1X0jwYj8SXr4PbIltIWIhdD/wuWd/v54nGX3hsQK+cdgSoWMcrewkllmBc
 JJiQLqdCU5LarEgyLXeWPIemKXbkn9CMHrQpea0tHDK8Q0MTxgTTXdh0lNhlE2QvldjW
 PL2ixbedOuzC2n4oQr/yssYbqucHpvrlpOnoH1q5BDbZxXljnXlT823+BoHiZyZZWhJd
 W+/rs3uO28Sycxfny2BmwTlFc7dbQrtucWJz6cF1+0HiW3fHCggVR54VBtRDQ/psfm/0
 pZR1cryeg4HkMfsEouT4X4OBhqP0UWHneq4CrgLWriAhczTkrF1+Qkq9UhpZ+2z8NiVf
 LVuw==
X-Gm-Message-State: APjAAAVGGWeEOLiEJHAxrPzORf9OItsf9agB6ozB6KS+DPl2Ighsqs07
 knYR2gHfEq9raA/atOZ/qfA=
X-Google-Smtp-Source: APXvYqz3PEGQVFejtyeNKNKYAem9RDirbVrLkr6BP2OR3g7iX79NCKs6/IvTxkccmE/W37kuT5gfGw==
X-Received: by 2002:aca:6185:: with SMTP id
 v127mr14360200oib.163.1563211307617; 
 Mon, 15 Jul 2019 10:21:47 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m7sm6457692otm.5.2019.07.15.10.21.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:21:47 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <9c08054d-751e-fdc0-4ea1-64cfa388e439@grimberg.me>
 <e45db042-2cf0-2922-cceb-ff593711e42f@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3999132d-498d-e2ef-f52d-a81fdb37f914@grimberg.me>
Date: Mon, 15 Jul 2019 10:21:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e45db042-2cf0-2922-cceb-ff593711e42f@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102148_832667_49E8D413 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <keith.busch@intel.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gT24gNy8xMi8yMDE5IDEwOjU4IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPj4+IGluZGV4IGRiNTk0YTMuLjRlYThiNDEg
MTAwNjQ0Cj4+PiAtLS0gYS9NYWtlZmlsZQo+Pj4gKysrIGIvTWFrZWZpbGUKPj4+IEBAIC04LDYg
KzgsMTAgQEAgREVTVERJUiA9Cj4+PiDCoCBQUkVGSVggPz0gL3Vzci9sb2NhbAo+Pj4gwqAgU1lT
Q09ORkRJUiA9IC9ldGMKPj4+IMKgIFNCSU5ESVIgPSAkKFBSRUZJWCkvc2Jpbgo+Pj4gK0xJQkRJ
UiA/PSAvdXNyL2xpYgo+Pj4gK1NZU1RFTURESVIgPz0gJChMSUJESVIpL3N5c3RlbWQKPj4+ICtV
REVWRElSID89ICQoTElCRElSKS91ZGV2Cj4+Cj4+IFVERVZESVIgbmVlZHMgdG8gYmUgYnVpbHQg
ZnJvbSAkKFNZU0NPTkZESVIpL3VkZXYgYXMgTElCRElSIG1pZ2h0IGJlCj4+IC91c3IvbG9jYWwv
bGliIGFuZCB1ZGV2IGRvZXNuJ3QgbG9vayB0aGVyZS4KPiAKPiBJIHJlYWxseSB3b3VsZCBsaWtl
IHRvIGNoYW5nZSBwcmVmaXggdG8gL3Vzciwgc28gdGhhdCBpdCBtYXRjaGVzIHdoYXQgaXMgCj4g
aW4gbnZtZS5zcGVjLmluIHdoZXJlIHRoZSAlaW5zdGFsbCBwYXJhZ3JhcGggc2V0cyBQUkVGSVgg
dG8gL3Vzci7CoMKgIFdlIAo+IGhhdmUgdHdvIHNlcGFyYXRlIHBsYWNlcyBzZXR0aW5nIGEgdmFs
dWUgYW5kIHRoZXkgYXJlIGluIGNvbmZsaWN0Lgo+IAo+IEJhc2VkIG9uIHRoZSBzcGVjIGZpbGUg
c2V0dGluZyAtIHRoZSBvbmx5IG1ha2UgdGFyZ2V0cyB0aGF0IG1hdGNoIFBSRUZJWCAKPiBvdXRz
aWRlIG9mIHRoZSBpbnN0YWxsIHRhcmdldHMgaXMgdGhlIHBrZyB0YXJnZXQgd2hpY2ggaXMgbWFp
bmx5IG1hbiAKPiBmaWxlcyBhbmQgYSBjb3B5IG9mIG52bWUuwqAgVGhlIG1hbiBmaWxlcyBwZXJo
YXBzIHdvdWxkIGJlIHVuZGVyIAo+IC91c3IvbG9jYWwsIGJ1dCBldmVyeXRoaW5nIGVsc2Ugd2Un
cmUgdGFsa2luZyBhYm91dCB3b3VsZCBiZSB2ZXJ5IG9kZCAKPiB1bmRlciAvdXNyL2xvY2FsLsKg
wqAgUGVyaGFwcyBhIGJldHRlciBhbnN3ZXIgaXMgUFJFRklYPS91c3IgKHdoaWNoIGFsc28gCj4g
c2V0IFNCSU5ESVIgZm9yIHRoZSBudm1lIGNvcHkpLCBMSUJESVI9JChQUkVGSVgpL2xpYiwgb3Ro
ZXIgdmFyaWFibGVzIAo+IHRoZSBzYW1lLCBhbmQgYWRkIGEgTUFOUFJFRklYPS91c3IvbG9jYWwg
Zm9yIHRoZSBtYW4gZmlsZXMuCgpXaHkgbm90IGp1c3QgcGxhY2UgaXQgaW4gL2V0Yz8gaXRzIGVx
dWl2YWxlbnQgYW5kIHdvcmtzIHJlZ2FyZGxlc3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
