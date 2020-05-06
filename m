Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A471C725B
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 16:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZBFlvOf6FmBtbw5JmJDIlzvMGiyqYI5LgY99D1woMQ=; b=gdWpeYTBXazWIK
	EYsFaWojUbPyHuzC87fGWt/NKtAz41qkktcG0H19r8n3zrgZD92vzjwZVCpPPmD7L1CB/oxEDX/+v
	5APzHlJBkIjoUrtY5oHPUM+WejMpA1JBY8QcTaVixCX0hyfEdNknh6lcJ+GYz0HmiQB27jjBACdWJ
	R038fWH/CEStTbw5Vadbn5L61aSOEYK3JiOx9B6hWtXvblVIqcoz+OY1l2MEud4YIjZnhNXnHtnoO
	xvzeA1Hev2O/7UeF2L80EIlzLqTa+IqZhAwKyaEJkLdcyzXuNxs2iT+UiBvvhlgcqbMnL3UbYGCTY
	C1aVyYxl+Joc82P4tQMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKc2-0008FL-CY; Wed, 06 May 2020 14:01:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKbx-0008EI-Fk
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 14:01:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id i15so1906251wrx.10
 for <linux-nvme@lists.infradead.org>; Wed, 06 May 2020 07:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Qcz1NcIgg2o+Yg1o2cV0md2TFDyngEncOQmN4hgyURo=;
 b=g6A+j4+/xDZldfzH9kfduu9lWBnYOE9PCDte3nGzgqZeJjA873LGWheNobyNRL94Pe
 H2rAI77tFFOLDyUAOnFtSg/M3tdlmL5QX0qKKd5nfVD9S8uewVfA2ZkxLmrAJ3bTVs8d
 swkC0UbL1rHlrWt4mAEHqTx3DWH32oJv7tOB9eStWjCtqpRsJqd3b/dYxGjLRPAHxm2c
 dmLda4nyscEuUgKxFJBHEhmH+POu1+goId7VBHYjy/CoPTVqn0xN8BMljLCEGf+y3ook
 Y1WPmmW5RMIxR+KGA9qFtUtRmWVzJ0Fopbyzsn/Uw3kzgFq1bNzVUSaKgtRJ8Z1YfHv5
 rotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Qcz1NcIgg2o+Yg1o2cV0md2TFDyngEncOQmN4hgyURo=;
 b=UbfYx0Gbv0l9E3Xx32tBw/KbZcEE7ZEy1593L0oEuWzaArkYiSX9V19pS4WnhfXAbZ
 /8tX2QkEL5pKcoV6xFXy7GfYFxtZyCngSXpv0owwUbmxWgOC466aMNeEbYI7L0Y3FtoI
 07LEBpjP2R1CcAOkwTkJ2JxEVc1Q0wVGUuG+ZEP+Q32EDvntp2tIDo3N2sWqYNAuTymI
 Ng/ogZybRxZ4lvBdl11upI6E8kK8BZQQQmCKyvodRplvreLm+RpScplizAvrd2PVxna/
 vYZfKdYWBRgOdsa6uvdpOBOzPq2bGp1Jqf0xZQpIvbZru/NrvDn5uMPpyOKrGV6fqROd
 b0QQ==
X-Gm-Message-State: AGi0Pub2xQYfQGj9mpzVQVqTYZOa+JBDJM8bIq4WXyVLnGZD8iSZ45op
 jQOXa3daijMnOafmd/HVFg==
X-Google-Smtp-Source: APiQypKSdkWC/NfyJ3KUrsYEArNx8uZYOoZjoocU4ZrzSY0/xzCdRt65Ry0yGQ0IvPF4A1x9kRvUXQ==
X-Received: by 2002:adf:94a6:: with SMTP id 35mr9521863wrr.420.1588773679939; 
 Wed, 06 May 2020 07:01:19 -0700 (PDT)
Received: from avx2 ([46.53.250.199])
 by smtp.gmail.com with ESMTPSA id t67sm3437442wmg.40.2020.05.06.07.01.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 07:01:18 -0700 (PDT)
Date: Wed, 6 May 2020 17:01:17 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200506140117.GA21997@avx2>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
 <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_070121_547239_CCAC2D3C 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [adobriyan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, axboe@fb.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDI6NDQ6NTBQTSArMDEwMCwgSm9obiBHYXJyeSB3cm90
ZToKPiBPbiAwNi8wNS8yMDIwIDE0OjI0LCBBbGV4ZXkgRG9icml5YW4gd3JvdGU6Cj4gPiBPbiBX
ZWQsIE1heSAwNiwgMjAyMCBhdCAwNjo0NzowMUFNIC0wNjAwLCBLZWl0aCBCdXNjaCB3cm90ZToK
PiA+PiBPbiBXZWQsIE1heSAwNiwgMjAyMCBhdCAxMjowMzozNVBNICswMTAwLCBKb2huIEdhcnJ5
IHdyb3RlOgo+ID4+PiBPbiAyOS8wMi8yMDIwIDA1OjUzLCBLZWl0aCBCdXNjaCB3cm90ZToKPiA+
Pj4+IE9uIEZyaSwgRmViIDI4LCAyMDIwIGF0IDA5OjQ1OjE5UE0gKzAzMDAsIEFsZXhleSBEb2Jy
aXlhbiB3cm90ZToKPiA+Pj4+PiAgICBzdGF0aWMgaW5saW5lIHZvaWQgbnZtZV91cGRhdGVfY3Ff
aGVhZChzdHJ1Y3QgbnZtZV9xdWV1ZSAqbnZtZXEpCj4gPj4+Pj4gICAgewo+ID4+Pj4+IC0JaWYg
KG52bWVxLT5jcV9oZWFkID09IG52bWVxLT5xX2RlcHRoIC0gMSkgewo+ID4+Pj4+ICsJaWYgKCsr
bnZtZXEtPmNxX2hlYWQgPT0gbnZtZXEtPnFfZGVwdGgpIHsKPiA+Pj4KPiA+Pj4gSSBmaWd1cmUg
bW9tZW50YXJpbHkgbnZtZXEtPmNxX2hlYWQgbWF5IHRyYW5zaXRpb24gdG8gZXF1YWwgbnZtZXEt
PnFfZGVwdGgKPiA+Pj4gYW5kIHRoZW4gdG8gMCwgd2hpY2ggY2F1c2VzIGFuIG91dC1vZi1ib3Vu
ZHMgYWNjZXNzIGhlcmU6Cj4gPj4+Cj4gPj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBudm1lX2NxZV9w
ZW5kaW5nKHN0cnVjdCBudm1lX3F1ZXVlICpudm1lcSkKPiA+Pj4gewo+ID4+PiAJcmV0dXJuIChs
ZTE2X3RvX2NwdShudm1lcS0+Y3Flc1tudm1lcS0+Y3FfaGVhZF0uc3RhdHVzKSAmIDEpID09Cj4g
Pj4+IAkJCW52bWVxLT5jcV9waGFzZTsKPiA+Pj4gfQo+ID4+Cj4gPj4gVGhhbmtzIGZvciB0aGUg
bm90aWNlLCB5b3VyIGFuYWx5c2lzIHNvdW5kcyBjb3JyZWN0IHRvIG1lLgo+ID4+Cj4gPj4gSWRl
YWxseSB3ZSB3b3VsZG4ndCBsZXQgdGhlIGlycSBjaGVjayBoYXBwZW4gd2hpbGUgdGhlIHRocmVh
ZGVkCj4gPj4gaGFuZGxlciBpcyBydW5uaW5nLCBidXQgdGhhdCBpcyBhIGJpdCByaXNreSB0byBp
bnRyb2R1Y2UgYXQgdGhpcwo+ID4+IHBvaW50LiBJJ20gb2theSB3aXRoIHJldmVydGluZyB0byBm
aXggdGhpcyBpc3N1ZS4KPiA+IAo+ID4gUHJlLWluY3JlbWVudCBpcyBzdGlsbCBiZW5lZmljaWFs
LCBzaG91bGQgYmUgZG9uZSBpbiByZWdpc3Rlci4KPiA+IFBsZWFzZSwgdGVzdC4KPiAKPiBJJ2Qg
cmF0aGVyIGhlYXIgdGhlIG1haW50YWluZXLigJlzIG9waW5pb24gYmVmb3JlIGJvdGhlcmluZyB0
ZXN0aW5nIHRoaXMuLi4KPiAKPiBBbmQgeW91IGhhdmUgbm90IGdpdmVuIGFueSBzaWduaWZpY2Fu
dCBqdXN0aWZpY2F0aW9uIGZvciB5b3VyIGZpeCBvdmVyIGEgCj4gcmV2ZXJ0LgoKSXQgaXMgaW4g
dGhlIGNvbW1lbnQ6IHdoYXRldmVyIGdldHMgd3JpdHRlbiB0byAtPmNxX2hlYWQgbXVzdCBiZQpp
biBbMCwgLT5xX2RlcHRoKSByYW5nZS4KCj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2ku
Ywo+ID4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiA+IEBAIC05NzMsOSArOTczLDE2
IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBudm1lX2hhbmRsZV9jcWUoc3RydWN0IG52bWVfcXVldWUg
Km52bWVxLCB1MTYgaWR4KQo+ID4gICAKPiA+ICAgc3RhdGljIGlubGluZSB2b2lkIG52bWVfdXBk
YXRlX2NxX2hlYWQoc3RydWN0IG52bWVfcXVldWUgKm52bWVxKQo+ID4gICB7Cj4gPiAtCWlmICgr
K252bWVxLT5jcV9oZWFkID09IG52bWVxLT5xX2RlcHRoKSB7Cj4gPiArCS8qCj4gPiArCSAqIENh
bid0IHByZS1pbmNyZW1lbnQgLT5jcV9oZWFkIGRpcmVjdGx5Lgo+ID4gKwkgKiBJdCBtdXN0IGJl
IGluIFswLCAtPnFfZGVwdGgpIHJhbmdlIGF0IGFsbCB0aW1lcy4KPiA+ICsJICovCj4gPiArCXUx
NiB0bXAgPSBSRUFEX09OQ0UobnZtZXEtPmNxX2hlYWQpOyA+ICsJaWYgKCsrdG1wID09IG52bWVx
LT5xX2RlcHRoKSB7Cj4gPiAgIAkJbnZtZXEtPmNxX2hlYWQgPSAwOwo+ID4gICAJCW52bWVxLT5j
cV9waGFzZSBePSAxOwo+ID4gKwl9IGVsc2Ugewo+ID4gKwkJbnZtZXEtPmNxX2hlYWQgPSB0bXA7
Cj4gPiAgIAl9Cj4gPiAgIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
