Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D2918077
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ufJ/3r9EIWE3/H5hzDCs1mMRaLxCFAqNy4DPPzrck6Q=; b=FiqzZciMJ23W5lw6eNrJPNSBl
	GMod0RvgHyI5gpBDSmZ10A2JdfcuvQb4at51RNV57ndprYSFJtPiZln7SqczChdMdAHzewsWstsDk
	Bi2WoUPnLvgQeuYqx+Of32q9JXHs7n2Ww8CtGlI6lk5JCtyWyEeb9BD8qKm6fZppBNv5v2lnmCY6i
	tkyg6aCc7l8GVVMCTc3kbAWcQWyDPfCaELMpaYjLqtQSdrZiF0R5R7TLLt+5xoQUi9Y0hDzzcODFm
	d6idqjyfYrClpI9rQQ9Wfp184AQx/gACJtgPsDY1AM3Wtm5sK+EhkNBKhdJ9xl/AwCBujOV5KVc6K
	6eTDus6OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSHw-0007kU-CD; Wed, 08 May 2019 19:31:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSHq-0007k1-HC
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:31:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so11003895pfa.3
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 12:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=OB2l3YBkVmUgNdlXnowzJZ7hV3Ai9QLCJlwuaEZjvWQ=;
 b=ZmoEm+VOTUmo1yXvlbWe23kUSR7fxGLMyV6ec/l/dGX0cM2HiE01QAsny7nZ8jAwF4
 0d0vnKZTNmEXAUsASR98i4E13rSlNmuKlEPZS6V1M0nLwmHOGnV2Toha7nPUi4DCXWuw
 3MK9JB2dJ+y4+kQR4RHDQQ6JTRcNVP+U7gjMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=OB2l3YBkVmUgNdlXnowzJZ7hV3Ai9QLCJlwuaEZjvWQ=;
 b=mJP1myt0FUJI34pJvWkwnOkNaVmHgps4e3xkBX+/+x8UGzs2vZ2oVYDPABVPJ4o6BL
 caYwhdi1b+ryvuiFE1a+V0XDCm7HjBYW1RW9g5nyiYDzgrWj9WyKJ+0YnfkFsq5RSiBh
 kYtQAhAZHxRwo4uwRmyc4K9qhpmw2km3SQVYqMmJogmgNGI3tpD8RvLivqjMWh5t3fMI
 YHAM1fg5SMeicTYjxQUgtgZ6R1J2vOPD9AD1K5E6mL2+JX2Fy/O49Vo0lcupM3lGs7l+
 TIvnMMdu6MsFYU/UC/7Yuv+GHdhVdo1W6pv7o7ByRww4dA2jCZloCITb2chzwda0LGjx
 bYiQ==
X-Gm-Message-State: APjAAAWjljDYxuqVt4JmILFDrZIuksYnM2OjUIOEpwsv2LQMsXc+Fgg8
 toMmve6D3lPz+7KpyTVh6txjY9BYdTM=
X-Google-Smtp-Source: APXvYqxif/SNmb/jB9sUislNPvwEL4zNL5PmeNfLa9V0KH2o1aASlrs1USbSkK63eSB/2AYj/mcT5w==
X-Received: by 2002:a62:520b:: with SMTP id g11mr49649247pfb.215.1557343889674; 
 Wed, 08 May 2019 12:31:29 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id c17sm22006423pfn.173.2019.05.08.12.31.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 12:31:28 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: Hannes Reinecke <hare@suse.de>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
 <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <3f84d637-4d04-45e1-ce49-59238c2aaea8@broadcom.com>
Date: Wed, 8 May 2019 12:31:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_123130_581305_B254C47F 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzcvMjAxOSAxMToxMCBQTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IE9uIDUvNy8x
OSA2OjU2IFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPj4KPj4gV2VsbCwgdGhpcyBpcyB3aGVyZSB3
ZSdyZSBhdCBvZGRzLsKgIFdlIG5lZWQgdG8gZGVjaWRlIGlmIHdlIHNob3VsZCAKPj4gY3JlYXRl
IGFub3RoZXIgZnVsbCBjb250cm9sbGVyIGluc3RhbmNlIHdoZW4gdGhlIGV2ZW50IG9jY3Vycywg
d2hpY2ggCj4+IGlzIHdoYXQgRkMgZG9lcyB0b2RheSAoY2FuIGhhdmUgbXVsdGlwbGUgcnVubmlu
ZyBjb25jdXJyZW50bHkpLCBvciAKPj4gd2hldGhlciB3ZSB3YW50IHRvIHJldXNlIHRoZSBwZXJz
aXN0ZW50IG9uZS4gSSB3b3VsZCB0aGluayAKPj4gaW1wbGVtZW50ZXJzIG9mIHRoZSBwZXJzaXN0
ZW50IGRpc2NvdmVyeSBjb250cm9sbGVyIHdvdWxkIHdhbnQgeW91IHRvIAo+PiByZXVzZSBpdCBh
bmQgbm90IGhhdmUgdG8gc3VwcG9ydCBtb3JlIGNvbmN1cnJlbnQgZGlzY292ZXJ5IGNvbnRyb2xs
ZXIgCj4+IGluc3RhbmNlcy7CoCBUaGUgInJldXNlIiBjYXNlIGlzIHdoeSBwYXNzaW5nIHRoZSAt
LWRldmljZSBhcmcgbWFrZXMgaXQgCj4+IHZlcnkgc3RyYWlnaHQgZm9yd2FyZC7CoCBXZSBjb3Vs
ZCBhbHdheXMgaGF2ZSB0aGUgdXRpbGl0eSBnZXQgdGhlIAo+PiBhZGRyZXNzaW5nIGluZm8gYW5k
IGxvb2sgYXQgZXhpc3RpbmcgY29udHJvbGxlciBhbmQgZGVjaWRlIHRvIHVzZSBhbiAKPj4gZXhp
c3Rpbmcgb25lIC0gSSBhc3N1bWUgd2Ugd291bGQgb25seSBzZWxlY3QgcGVyc2lzdGVudCBvbmVz
IGluIG9yZGVyIAo+PiB0byBhdm9pZCBkZWxldGUgcmFjZSBjb25kaXRpb25zLCBidXQgc2VlbXMg
bGlrZSBhIGxvdCBvZiB3b3JrIGZvciAKPj4gd2hhdCB0aGUgQUVOIGFscmVhZHkga25vd3MuwqAg
SSBkbyBoYXZlIGEgbGl0dGxlIGNvbmNlcm4gdGhhdCB0aGVyZSdzIAo+PiBhbHdheXMgYSB3aW5k
b3cgZnJvbSB3aGVuIHRoZSBldmVudCBpcyBwb3N0ZWQgdG8gd2hlbiB0aGUgL2RldiAKPj4gZGV2
aWNlbmFtZSBpcyBvcGVuZWQsIHdoaWNoCj4+IGFsbG93cyBmb3IgdGhlIGRldmljZSBuYW1lIHRv
IGJlIHRlcm1pbmF0ZWQgYW5kIHBvc3NpYmx5IHJldXNlZCBmb3IgCj4+IHNvbWV0aGluZyBlbHNl
LCBidXQgSSBndWVzcyB3ZSdyZSB3aWxsaW5nIHRvIGxpdmUgd2l0aCB0aGlzLgo+Pgo+IE15IGNv
bmNlcm4gaGVyZSBpcyB0aGF0IGl0J2xsIGJlIHF1aXRlIGhhcmQgdG8gdXNlIHRoZSAtLWRldmlj
ZSBhcmd1bWVudAo+IGZyb20gd2l0aGluIHRoZSB1ZGV2IGV2ZW50OyB0aGUgZXZlbnQgaXRzZWxm
IGRvZXNuJ3Qgc3BlY2lmeSB0aGUgZGV2aWNlLAo+IG1ha2luZyBpdCByZWFsbHkgaGFyZCB0byB1
c2UgdGhlbSBpbiB0aGUgZmlyc3QgcGxhY2UuCj4gUHJlY2lzZWx5IGR1ZSB0byB0aGUgcmFjZSBp
c3N1ZXMgeW91IG1lbnRpb25lZC4KCnVldmVudCBkb2VzIHNwZWNpZnkgdGhlIGRldmljZSAodGhl
IC0tZGV2aWNlIGFyZ3VtZW50KS4gSSBkb24ndCBrbm93IAphYm91dCBoYXJkIC0gc2ltcGx5IGJ1
aWxkIHVwIGEgc3RyaW5nIHdpdGggIm52bWUiICsgY3RybCBpbnN0YW5jZSAjIMKgIMKgIAogwqAg
ZXhhbXBsZTogbnZtZTUKCj4KPiBCdXQgbm93IGl0IGJlY29tZXMgYSBiZSBxdWlya3k7IHdlIG5l
ZWQgdG8gaGF2ZSB0aGUgcGVyc2lzdGVudCAKPiBjb25uZWN0aW9uIHRvIGdldCB0aGUgQUVOcyAo
aWUgd2UgZG8gaGF2ZSBhIGRldmljZSBub2RlKSwgYnV0IHdlIAo+IGNhbm5vdCB1c2UgdGhlbSBm
cm9tIHRoZSB1ZXZlbnQsIGFuZCBoYXZlIHRvIGNyZWF0ZSBhIG5ldyBvbmUuCgo/PyBub3Qgc3Vy
ZSBJIGZvbGxvdy4gWW91IHNlZW1lZCB0byBzYXkgLSB3ZSB3b24ndCBhdHRlbXB0IHRvIHVzZSB0
aGUgCmV4aXN0aW5nIGRldmljZSBhbmQgd291bGQgY3JlYXRlIGEgbmV3IG9uZS4KCj4KPiBTbyB0
aGlzIGlzIG15IGlzc3VlIGhlcmU6IF9pZl8gd2UgaGF2ZSBhIHBlcnNpc3RlbnQgY29ubmVjdGlv
biB3aGljaCAKPiBnZW5lcmF0ZXMgQUVOcywgd2Ugc2hvdWxkIGJlIHVzaW5nIHRoZSB2ZXJ5IHNh
bWUgY29ubmVjdGlvbiB0byBnZXQgdGhlIAo+IGRpc2NvdmVyeSBpbmZvcm1hdGlvbiBpbiB0aGUg
Y29ubmVjdC1hbGwgY2FsbC4KPgo+IFdoaWNoIG1lYW5zIHdlIHByb2JhYmx5IGhhdmUgdG8gdXBk
YXRlIHRoZSBkaXNjb3ZlcnkgQUVOIHVldmVudHMgdG8gCj4gaW5jbHVkZSBhIGRldmljZSBuYW1l
OyB0aGVuIHRoZSB1ZXZlbnQgd2lsbCBjYXJyeSB0aGUgaW5mb3JtYXRpb24sIGFuZCAKPiB0aGUg
cHJlc2VuY2Ugb2YgdGhlIGRldmljZSBpbiB0aGUgdWV2ZW50IHdpbGwgdGVsbCB1cyB3aGV0aGVy
IHRvIHVzZSAKPiB0aGUgcGVyc2lzdGVudCBjb25uZWN0aW9uIG9yIG5vdC4KPgoKSSB0aG91Z2h0
IHRoYXQncyB3aGF0IHdlIHNhaWQuwqAgV2UncmUgZGVhbGluZyB3aXRoIGEgcGVyc2lzdGVudCAK
Y29udHJvbGxlciB0aGF0IHdhcyBjcmVhdGVkIGF0IHNvbWUgdGltZSB0aGF0IGV2ZW50dWFsbHkg
Z2VuZXJhdGVzIGFuIApBRU4uIEFuZCB0aGUgY3VycmVudCBwcm9wb3NhbCBpcyBmb3IgdGhlIEFF
TiB0byBnZW5lcmF0ZSBhIHVkZXYgZXZlbnQgCnRoYXQgd2lsbCBjb250YWluIC0tZGV2aWNlPW52
bWU8aW5zdGFuY2UjPiAoY29ycmVzcG9uZGluZyB0byB0aGUgCnBlcnNpc3RlbnQgY29udHJvbGxl
cikgd2hpY2ggd2lsbCBkbyBhIGNvbm5lY3QtYWxsLsKgIFRoZSBjbGksIHNlZWluZyB0aGUgCmRl
dmljZSBhcmd1bWVudCB3aWxsIHNraXAgdHJ5aW5nIHRvIGNyZWF0ZSBhIGNvbnRyb2xsZXIgYW5k
IGluc3RlYWQgb3BlbiAKdGhlIGRldmljZSBhbmQgdGhlbiByZXN1bWUgbm9ybWFsIGNvbm5lY3Qt
YWxsIHNjYW5uaW5nL3Byb2Nlc3NpbmcuwqAgV2UgCmFyZSBpbiBhZ3JlZW1lbnQgb24gdGhpcyA/
CgpXaGljaCBsZWF2ZXM6CmEpIGhvdyBkb2VzIHRoZSBwZXJzaXN0ZW50IGNvbnRyb2xsZXIgZ2V0
IGNyZWF0ZWQgaW4gdGhlIGZpcnN0IHBsYWNlOsKgIAp3aGljaCBJIGFuc3dlciB3aXRoIGFkbWlu
IHNjcmlwdGluZywgbWFudWFsIGFjdGlvbiwgb3IgdHJhbnNwb3J0IGV2ZW50IApnZW5lcmF0aW9u
LgphbmQKYikgaWYgcGVyZm9ybWluZyBhIGNvbm5lY3QtYWxsLCBhbmQgYSBkaXNjb3ZlcnkgbG9n
IHdhcyByZWFkIHdpdGggYSAKZGlzY292ZXJ5IGNvbnRyb2xsZXIgYXMgYSBsb2cgZW50cnksIGhv
dyBzaG91bGQgdGhlIGNsaSBrbm93IHdoZXRoZXIgdG8gCmNyZWF0ZSB0aGUgY29udHJvbGxlciBh
cyBwZXJzaXN0ZW50IG9yIG5vdDrCoCB3aGljaCBJIHByb3Bvc2VkIHRoYXQgaXQgYmUgCm9uZSBv
ZiB0aGUgZm9sbG93aW5nOiBhKSBpdCBkb2Vzbid0LCBvbmx5IG1hbnVhbCBhY3Rpb25zL3Njcmlw
dGluZyB3b3VsZCAKc2V0IHRoZSBwYXJhbWV0ZXI7IGIpIHRoZSBuZXcgZGVmYXVsdHMgZmlsZSBw
cm9jZXNzaW5nIGNhbiBmaWd1cmUgb3V0IAp0aGF0IGl0IG5lZWRzIHRvIGFkZCB0aGUgYXJndW1l
bnQ7IG9yIGMpIHdlIGNoYW5nZSB0aGUgZGVmYXVsdCBhY3Rpb24gCndoZW4gY29ubmVjdGluZyB0
byBhIGRpc2NvdmVyeSBjb250cm9sbGVyIHRvIGxvb2sgYXQgdGhlIEtBUyBmaWVsZCB0byAKc2Vl
IGlmIGthdG8gaXMgc3VwcG9ydGVkLCBhbmQgaWYgc28sIGFsd2F5cyBlbmFibGUgdGhlIHBlcnNp
c3RlbnQgb3B0aW9uIAooaW4gd2hpY2ggY2FzZSwgbm8gLS1wZXJzaXN0ZW50IGFyZ3VtZW50IGlz
IG5lY2Vzc2FyeSkuCgotLSBqYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbnZtZQo=
