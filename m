Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A81010EC0
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 23:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LxlIYppyuEkZoiDRCbXIX6Z3ee0qng4H8NGcQTnsYsY=; b=ngG/ucg21h8eIr2Kn8wpRUjmi
	jwmQ0Z+UNUNAagmVvT3zHAsQNES1Yyqu38PPPFj/nokLdzYlNEmlFUpuWwpZk+lojoFob8FQhwBt/
	hW1TritPyhwAIxNZVocNNJeFggHbaUHpgi9nQOnXDJJrLoR5N+ruOvI1BN57nSnDdutT+l945Aj+Z
	sllnC15yhyGH/x9MlJ3RPYfFluYKI8m+Mt9aExW8eVkU/luwSZ7SgOQrL34Em/ma9PxK4s0/6vwV+
	AgsTQa/NoYdBMT/0wHG11XDsboiHPzQthtecwG2pURAApTlWHGWmyXNICAw3cyHLIeACNosAuEc59
	3xbyDoQKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLx72-0004g9-CE; Wed, 01 May 2019 21:50:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLx6x-0004fo-Cc
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 21:49:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id e24so53238pfi.12
 for <linux-nvme@lists.infradead.org>; Wed, 01 May 2019 14:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Oo0hcjQMqkyj7iFa8n/BnQEbC2H/FizF28c3pM6p3BY=;
 b=UgeB9Te244JHeZtrUHWSP0jr+4GfRxj0DhyPN4OBdEHFkTFQOi06k+osC9yQSHK/mP
 8rBujP13w+OLWp93emvAPajFhvZY8NVX1DwvZGFbLE6WxjZ+wIjot1P+aSU/NyzKw5zo
 MUviotpS+lI6Y9rqjkhelD1BauykcEkuTrJsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Oo0hcjQMqkyj7iFa8n/BnQEbC2H/FizF28c3pM6p3BY=;
 b=lulPWpANZ6UdhU2BVZ2OJ79vH2FMioEgXaSUkzSCyFfnFBHADRpGN7aenJqd3Yk6RD
 mYS2bnST6E+Ok5kp+10V6ikYdABnK0xTzLPMaGNYEcuKxuSQGJ6BMOTQh7a1YsHqx7/O
 /fzZMhxXnzst3ug1s6HoLKJpO+GL4DFzOXRnlIVJT53Zxsv1jsXgrprNOwY5PzbDQ0Gd
 F5LWKzAqeYGQxmK1C4n9X2DvVLMZcK4HrrANkOjK4LNrstWch9GZm7mvJmP3vRJWwqdr
 n5RWg25i7nR+GkIzebAeqd+QlgI+BEv8FlbZ7fWSlrrwp2JY/Z7SeskIQQQPj5OZQy5G
 08lw==
X-Gm-Message-State: APjAAAWpulqZr8NaFU5dpxY4WH3RScFQdlEyCpu51TD7iWvJUfasYzG5
 QgIkE/m9Q1gi2dDQzSFOI1KZLQ==
X-Google-Smtp-Source: APXvYqwNnJubMnM2D1y445liC+tQgSztnNfx9aIufTkE6yC/tAP/0KZdKSc6Dzbdkl0p/OBmM7NWKA==
X-Received: by 2002:a65:4342:: with SMTP id k2mr336247pgq.178.1556747394204;
 Wed, 01 May 2019 14:49:54 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id r197sm47341028pfc.178.2019.05.01.14.49.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 14:49:52 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
 <785558d1-519d-78c1-0a1b-7517f771c1e2@grimberg.me>
 <b4f9b6e4-f0b4-312f-1eeb-4c292a8f9af1@suse.de>
 <e060385b-7695-d5b1-d4ca-2357e016219d@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <9614e100-3919-581c-0919-8e263e5633a5@broadcom.com>
Date: Wed, 1 May 2019 14:49:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e060385b-7695-d5b1-d4ca-2357e016219d@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_144955_433975_C482FC1C 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA0LzMwLzIwMTkgMTI6MzQgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4+IEVmZmVj
dGl2ZWx5IHllcywgYnV0IGRlZmFyZ3MgZG9lcyBub3QgYWxsb3cgCj4+PiB0cmFuc3BvcnQsdHJh
ZGRyLHRyc3ZjaWQsbnFuCj4+PiBwYXJhbWV0ZXJzICh3aGljaCBkb24ndCBtYWtlIHNlbnNlKSwg
YW5kIGRpc2NvdmVyeS5jb25mIGlzIGRlc2lnbmVkIHRvCj4+PiBob2xkIGV4YWN0bHkgdGhvc2Uu
IFNvIGluIHByYWN0aWNlIHRoZXkgc2hvdWxkIG5vdCBvdmVybGFwLgo+Pj4KPj4gVWgtb2guIEkg
X2RvXyBrbm93IG9mIGNhc2VzIHdoZXJlIGRpc2NvdmVyeS5jb25mIGlzIHVzZWQgZm9yIAo+PiBw
cmVjaXNlbHkgdGhpcyBwdXJwb3NlLCBpZSBob2xkaW5nIF9hbGxfIGFyZ3VtZW50cy4KPgo+IFRo
YXQncyBmaW5lLi4gaXQgd2FzIG5ldmVyIGRlc2lnbmVkIGZvciB0aGlzIHB1cnBvc2UgdGhvdWdo
Li4uCj4KPj4gQW5kIGluIHRoZSBhYnNlbnNlIG9mIGFueSBvdGhlciB3YXkgZXhpc3RpbmcgaW1w
bGVtZW50YXRpb25zIHdpbGwgYmUgCj4+IHVzaW5nIGEgdmVyeSBzaW1pbGFyIHRoaW5nLgo+Cj4g
QWdhaW4sIHRoaXMgd291bGQgd29yay4KPgo+Pj4gQWxzbywgd2Ugb25seSBnbyB0byBkaXNjb3Zl
cnkuY29uZiBpZiB3ZSBkaWQgbm90IGdldCBhIHRyYW5zcG9ydCt0cmFkZHIKPj4+ICh3aGljaCBh
cmUgbWFuZGF0b3J5KS4gU28gaXRzIG5vdCBleGFjdGx5IHRoZSBvcmRlciB5b3UgbWVudGlvbmVk
LCBtb3JlCj4+PiBsaWtlOgo+Pj4KPj4+IGRlZmFyZ3MuY29uZgo+Pj4gPGNtZGxpbmU+Cj4+PiBp
ZiB0cmFuc3BvcnQrdHJhZGRyIG5vdCBnaXZlbgo+Pj4gZGlzY292ZXJ5LmNvbmYKPj4+Cj4+IEhv
dyB2ZXJ5IGN1cmlvdXMgLi4uCj4+IEkgd291bGQgaGF2ZSBleHBlY3RlZCB0aGF0IGFueSBjb21t
YW5kLWxpbmUgYXJncyB3b3VsZCBvdmVyd3JpdGUgYW55IAo+PiBhcmd1bWVudHMgZ2l2ZW4gaW4g
dGhlIGNvbmZpZ3VyYXRpb24gZmlsZXMuCj4+IEJ1dCBnaXZlbiB0aGF0IGRpc2NvdmVyeS5jb25m
IGNhbiBjb250YWluIHNldmVyYWwgbGluZXMgSSBjYW4gc2VlIHRoZSAKPj4gcHJvYmxlbS4KPgo+
IEV4YWN0bHkuIGRpc2NvdmVyeS5jb25mIHdhcyBzaW1wbHkgYWRkZWQgc3VjaCB0aGF0IHlvdSBj
YW4gcnVuIG52bWUKPiBjb25uZWN0LWFsbCB3aXRob3V0IGV4cGxpY2l0bHkgcGFzc2luZyBwYXJh
bWV0ZXJzIHNvIHlvdSBjYW4gYnVpbGQKPiBhdXRvLWNvbm5lY3Qgc2NyaXB0cyBvbiB0b3Agb2Yu
Cgp3aXRoIG15IHN1Z2dlc3Rpb24gaXQgd291bGQgYmU6CiDCoMKgIDxwYXJzZSBjbWRsaW5lIGZv
ciBjb25uZWN0IGFkZHJlc3NpbmcgYXJncz4KIMKgwqAgaWYgdHJhbnNwb3J0K3RyYWRkciBub3Qg
Z2l2ZW46wqAgcHVsbCB0aGVtIGZyb20gZGlzY292ZXJ5LmNvbmYgbm90ZTogCmlmIG5vbi1hZGRy
ZXNzaW5nIGFyZ3MgcHJlc2VudCwgcmVtZW1iZXIgdGhlbQogwqDCoCBwYXJzZSBhZGRyZXNzaW5n
IGFyZ3MgdnMgY29ubmVjdGFyZ3MuY29uZsKgIChha2EgZGVmYXJncy5jb25mKQogwqAgPGFwcGx5
IG5vbi1hZGRyZXNzaW5nIGFyZ3MgZnJvbSBkaXNjb3ZlcnkuY29uZj4KIMKgIDxhcHBseSBjbWRs
aW5lIG5vbi1hZGRyZXNzaW5nIGFyZ3M+CgotLSBqYW1lcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
