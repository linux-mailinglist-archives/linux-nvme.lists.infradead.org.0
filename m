Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6D02820E
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 18:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhaSGUYMVhcU4NfVkPZjx0YUi9ARyGC4BjesIJHSVmo=; b=J4ZaPoQCv1XRYsW58ehz0bOup
	6Zt9JR21jaMFmzDceEN9oJzpmA0WgCt84VOMPMY6xE0Nq3hD/K5cnvUvoICo4/rwSDNojBsQOivCs
	ioesGRuJpKa3BCNE9PYCVITY6P4CJZPvtl/+u/fdPF/C9f4XNdm/fJXoMzL0Be6whiYi2EtBqaIQz
	kscAUZQi11KMCb4+SuS+W9zHlQJt1phWmUYA08gr9+97a7a7P55DLItaVQH6hJNNmb9+I5olURBu3
	OL5Ca3pDxycREN/kZblPM6hsGjs0mvV4lvpkfvVXjbWrqZxouvG3kXGrQSOSbsAALnVgwVS9Rf5Lj
	C5zFTCeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTq9t-0005qg-1k; Thu, 23 May 2019 16:01:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTq9n-0005qB-T6
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 16:01:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so3369823pgl.5
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 09:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=73DYLUOgkpDdVVdhchAWwNSGtn3osrO90M67s8aYUoc=;
 b=R+C/acby7iiWV2xr62ZUkYGU9MiNRRFjExKqQxVv3/Wy0JeuPRiGzhEMgIacigMtTg
 ryJC0Tnsdnh0MCrw0uiV5lwUqiGwCYLp2dCl5gx4a/5omUgsXFaRY+GJDTiMQtwyZnP5
 zVvbifbS9ySlWI8K72c3AkXXrdklzSeB0CwAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=73DYLUOgkpDdVVdhchAWwNSGtn3osrO90M67s8aYUoc=;
 b=PcLuTHIzeX4kdBFGrcQ5E8YXDzowsLlfkuT2MYwG5zGZA1iFy2WLHCZUYc1lyulc8X
 0bxTbx+FR7IX9KP16dl5jY+87yo7heQ5qa8buyg48mKjhNu67hsF4jboAodk32eREeTV
 vS9n8pCN/u8Q1UEPUpzB5bButOayXP0qT+koqakuPMB2YIIsm49aZyW1vl+kGHNmFB9M
 SYaBmG3/5wR9KOSWTPbt6mABgr8cR6Y0QJUes6LkXTLvxsjyhSoapvyBiEUomMUfibN6
 h7pUbKcUB/BKuepfdNcgNUY55sQGqfgwkQcSyChUVWQBz17aZG7+qSi/ajaLtCzQOuzD
 uyew==
X-Gm-Message-State: APjAAAU5t6pNghwnBcrw+a0sRMtxQBTEXLaGSA9VQ4qqbFbyusHbOVyh
 kswlEng16rNGiuF4WixgfxHmPyU7tzXSRRXgL3Jyg0mJLCvwV6MAZ/YR5ulYhsJrTEzb/TtWHek
 su9K69opCUezZfE1YSG83KPGDRaBcM/aBGjIug02Sh/ZQBOUJE0T9G743wivCalLwWpc+LkqguF
 on1nGkHg==
X-Google-Smtp-Source: APXvYqzylxRCzjYdtx4SKw8UIpoGhxtkwrczGPRVXGdtZXsP53zADzaebNJAcMHemdtbgAvu/2X1jw==
X-Received: by 2002:a17:90a:2a8f:: with SMTP id
 j15mr2186866pjd.98.1558627286978; 
 Thu, 23 May 2019 09:01:26 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s77sm58501650pfa.63.2019.05.23.09.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 09:01:26 -0700 (PDT)
Subject: Re: [PATCH 4/4] nvme-fc: align nvme_fc_delete_association() with exit
 path
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-5-hare@suse.de>
 <20485830-ae6a-eae1-32f3-940ca2cc1bf3@broadcom.com>
 <6da3909f-cdaa-c6df-81fb-59f71d9f4f30@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <678d2403-150e-dcd3-359f-329015c7b588@broadcom.com>
Date: Thu, 23 May 2019 09:01:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6da3909f-cdaa-c6df-81fb-59f71d9f4f30@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_090127_951761_6E43D9CF 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

CgpPbiA1LzIyLzIwMTkgNzowMCBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IE9uIDUvMjEv
MTkgNjoyNSBQTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4+Cj4+IMKgIG5vLsKgIFRoaXMgaXMgcmVt
b3ZpbmcgdGhlIHVuZGVybHlpbmcgcXVldWVzIHdoaWxlIGJsay1tcSBpcyBzdGlsbCAKPj4gdHJ5
aW5nIHRvIHN1Ym1pdCB0byB0aGVtIC0gY2F1c2luZyB5ZXQgYSBkaWZmZXJlbnQgc2V0IG9mIGlz
c3VlcyBhcyAKPj4gdGhlIGRyaXZlciB3aWxsIGhhdmUgcmVsZWFzZWQgY29udGV4dHMgYnV0IHRo
ZSBjYWxsZG93bnMgYXJlIHN0aWxsIAo+PiBoYXBwZW5pbmcuIFlldCBhbm90aGVyIGRpZmZlcmVu
dCBzZXQgb2YgaXNzdWVzIHdvdWxkIGxpa2VseSBhcHBlYXIuwqDCoCAKPj4gbm8gbmVlZCBmb3Ig
dGhpcyByZW9yZy4KPj4KPiBBaC4gSG1tLiBXZWxsLCBJIHRob3VnaHQgYnkgaGF2aW5nIGJvdGgg
cGF0aHMgaWRlbnRpY2FsIHdlIGNhbiBlbnN1cmUgCj4gdGhhdCB0aGUgZXJyb3IgcGF0aCBpbiB0
aGUgZmlyc3Qgd291bGQgYWN0dWFsbHkgd29yay4KPiBOb3cgaXQncyBxdWl0ZSBoYXJkIHRvIHRl
c3QsIGxhdCBhbG9uZSB2YWxpZGF0ZS4KPgo+IEJ1dCBpZiB5b3UgaGF2ZSBvYmplY3Rpb25zIHdl
IGNhbiBzdXJlbHkgZHJvcCB0aGlzIHBhdGNoLgoKSSBkbyBiZWxpZXZlIHRoZSBmYWlsdXJlIGNh
c2UgdGhhdCB5b3UncmUgYWRkaW5nIGlzIGRpZmZlcmVudCAtIHdlIApoYXZlbid0IGNhbGxlZCBz
dGFydCBjb250cm9sbGVyLCBzbyBhbHRob3VnaCB0aGUgaW8gcXVldWVzIGFuZCB0aGVpciAKbGxk
ZCBodyBxdWV1ZXMgYXJlIGxpdmUsIHdlIGhhdmVuJ3QgZG9uZSBucyBzY2FubmluZyBhbmQgcmVs
ZWFzZSBvZiAKdGhlaXIgcXVldWVzIHRvIHB1c2ggdGhpbmdzIHRvIHRoZSBjb250cm9sbGVyIC0g
c28gdGhlcmUgd29uJ3QgYmUgbGl2ZSAKaW9zIGluIHRoZSBsbGQgdGhhdCBjb3VsZCBiZSByZWZl
cmVuY2luZyB0aGUgaHcgcXVldWVzLCBub3IgYW55IHBhdGggCnRoYXQgYWxsb3dzIHB1c2hpbmcg
b2YgaW9zIHRvIGFueXRoaW5nIG90aGVyIHRoYW4gdGhlIGFkbWluIHF1ZXVlLsKgwqAgVGhlIApu
dm1mX3JlYWR5IGNoZWNrcyBzaG91bGQgZmlsdGVyIG91dCBub3JtYWwgaS9vLCBlc3BlY2lhbGx5
IGFzIG91ciBzdGF0ZSAKaXMgbm90IHlldCBMSVZFLsKgIFNvIHRoYXQncyB0aGUgbWFpbiBkaWZm
ZXJlbmNlIHdpdGggdGhlIGdlbmVyaWMgY2hhbmdlIAppbiBkZWxldGUgYXNzb2NpYXRpb24uCgpX
ZWxsLCBpZiB3ZSByZWFsbHkgd2FudGVkIHRvIHRlc3QgaXQgcmlnaHQgLSBJIHdvdWxkIGVpdGhl
cjogYSkgYXZvaWQgCnRoZSBwYXJ0aWFsIHRlYXJkb3ducyBpbiB0aGUgZXJyb3IgcGF0aCBmb3Ig
dGhpcyBsYXN0IHN0YXRlIGNoYW5nZSBjaGVjayAKYW5kIGp1c3QgY2FsbCB0aGUgZGVsZXRlIGFz
c29jaWF0aW9uIHJvdXRpbmU7IG9yIGIpIGRvIHRoYXQsIGJ1dCBtYWtlIAp0aGUgZXJyb3IgcGF0
aCBhbHdheXMgY2FsbCBkZWxldGUgYXNzb2NpYXRpb24gYW5kIGRlbGV0ZSBhc3NvY2lhdGlvbiAK
a25vd3MgaG93IHRvIHRlYXIgZG93biB0aGUgcGFydGlhbGx5IGJ1aWx0IHVwIGFzc29jaWF0aW9u
ICh2cyBpdCBleHBlY3RzIAphIGZ1bGx5IGJ1aWx0IHVwIG9uZSBub3cuCgpCdXQgdGhhdCBzZWVt
cyB0byBiZSBhZGRpbmcgcXVpdGUgYSBiaXQgb2Ygd29yayBmb3IgdmVyeSBsaXR0bGUgcmV0dXJu
LsKgIApUbyBiZSBob25lc3QsIHRoZSBleGlzdGluZyBjb2RlLCB0aGF0IGRvZXNuJ3QgZmFpbCBv
dXQgaWYgTElWRSBjYW4ndCBiZSAKdHJhbnNpdGlvbmVkIHRvLCBpc24ndCBiYWQuIFRoZXJlIGlz
IG5vIHJlLWNvbm5lY3Qgc2NoZWR1bGVkIGFzIGl0IApjb21wbGV0ZXMgc3VjY2Vzc2Z1bGx5LiBT
byB0aGUgYXNzb2NpYXRpb24gaXMgZnVsbHkgYnVpbHQgdXAuIElmIHRoZSAKc3RhdGUgY2hhbmdl
IGZhaWxlZCAtIHRoZSBvbmx5IHN0YXRlIHRoYXQgY291bGQgaGF2ZSB0cmFuc2l0aW9uZWQgZnJv
bSAKQ09OTkVDVElORyB0byB0aGVuIGZhaWwgTElWRSBpcyB0aGUgREVMRVRJTkcgc3RhdGUsIGFu
ZCBpdHMgdmFsaWQgdG8gCmZpbmlzaCBvdXQgc3VjY2Vzc2Z1bGx5IGFuZCBsZXQgdGhlIGRlbGV0
ZSBwYXRoIGRvIGl0cyB0aGluZy4KCk15IHByZWZlcmVuY2UgaXMgdG8gbGVhdmUgdGhlIExJVkUg
dHJhbnNpdGlvbiBoYW5kbGluZyB0aGUgd2F5IGl0IGlzLiAKQnV0IEknbSBvayBpZiB5b3Ugd2Fu
dGVkIHRvIGFkZCB0aGUgTElWRS10cmFuc2l0aW9uIHBhdGNoIHlvdSBwcm9wb3NlZCwgCmJ1dCB0
aGlzIHBhdGNoIGluIGRlbGV0ZSBhc3NvY2lhdGlvbiBpc24ndCBuZWVkZWQuCgotLSBqYW1lcwoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
