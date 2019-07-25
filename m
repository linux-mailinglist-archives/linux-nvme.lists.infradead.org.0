Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C3575044
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Yr364T22ynnhgx8LUWVdRX4z0WYR8qV8pfclE36Sk0=; b=hG5NyE491DALb1
	BfBIJeZrjJmNRKlQ2q0UQBMeSGR7MCtIiVLfbZxbz4fFlYOJmcHChNopKTwZ0SF753nXznG7nVY6+
	XkCzIykEY6xCUlu0XJ/J/vCATKaLkwJb8tgVB0Ou5L10U96PpSX1OD64H8B8rb6AtYdcXmF+F/s8W
	wtjclrxQOvodJReGkJzbAwo02uMU2dlkRRKsBR4Qb2VgFSauBuYmHmwHWHiVBCbfe0HHKEUdGB7nP
	TOLM4AblEMHSy822tbkdKKDaqS26xB5rlxogCiCoHc7SPD8M3m43xKc9qPxY63m9uo6e/iJrhzvKf
	Mz1mhNwUMl+gkhSfRL0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeCP-0000ix-0s; Thu, 25 Jul 2019 13:54:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeBy-0000LG-3p
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:54:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so22776738pfe.11
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6e1GKBRrdkolVKsQGtfkXSo5QHD9RZ18tyP1V6Q4QNE=;
 b=TRqrb9RvYCrHyGeONPduoVd+9eqjNY6cRzUjSpOlMK13caeAP4FT10BQu3H0KrwYVf
 lCYabu4/Z1QmzG8r8wDvuXxIvii6Dsg78CDcXzyLupUqaRctQPe685wFl+CR89giqvaT
 GBaak547Xq2SIBz2K0zHjil2acxy+Ke7rte8ZOG3aFhNuDCUeKFEdhlwgl9YChVsTx02
 QaPfJIiBPq4A5Z46xop/zl/Y4FnpOGBsKcwTQec2RIbkzdwiHCTMUumPJ/ZVR+K0aZ71
 Yi5bf3u1BKXsP1zAsBDjxzhRt6x7jb+MiOqXU+f/cCd/YOttxGlDVwbKVv9364dSe5g+
 doUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6e1GKBRrdkolVKsQGtfkXSo5QHD9RZ18tyP1V6Q4QNE=;
 b=niqKNddF82BYlQfBPJRCIz6mD29y3pnKiRNrcUMkGtBkrIMTUP2ZGQrTZOYXmfl1+Z
 O8mfZhgZeKFi1a+oV6uhHQ8Rn6tm4u4j/fK0eeYBMb+KdFiAQ8pdHskLrVDcN4DBT0Rc
 GEymItRWbTGCorMFb5FgWL/FGI3Zo8WKlf9ED9N9h2b6MYs+C38NanaPjW7C1vaQr+wm
 /ioEi+p4jYB53HwslOG10rLuvE/bmxey+evyrYxqptSbh3GUIu2CZMDn8pOA32CuFO+5
 /TDFcoaOxXERKfKRbLBifnElwVPB0KX9dX8GJDtLdzfjEeEBs2tcjCkeFPpjHqBmRdXe
 UH+w==
X-Gm-Message-State: APjAAAVIjzKllvB4PCN71x1F2QddQocvgQBeyxjqzK6KapNXE2osZFr+
 7WYLsGz+6zm/CmwMWo4b2t8=
X-Google-Smtp-Source: APXvYqxkCytQhDYs/29I3NgPhc3IQznnPpG2/QsJwANfdy2x+7nLc5q8fwkXZiXUL8E6BZYtekW4qg==
X-Received: by 2002:a63:e54:: with SMTP id 20mr84585270pgo.244.1564062837420; 
 Thu, 25 Jul 2019 06:53:57 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id s5sm25176262pfm.97.2019.07.25.06.53.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:53:56 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:53:54 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 5/5] lnvm: introduce alias geometry for id-ns for lnvm
Message-ID: <20190725135354.GE3018@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-6-minwoo.im.dev@gmail.com>
 <519420f6-350d-05e9-4938-45bc529b9a26@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <519420f6-350d-05e9-4938-45bc529b9a26@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_065358_170433_DA8D2EAA 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTWF0aWFzLAoKT24gMTktMDctMjQgMTQ6Mjk6MzgsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6
Cj4gT24gMjMvMDcvMjAxOSAyMC4zNiwgTWlud29vIEltIHdyb3RlOgo+ID4gTm93IHdlIGhhdmUg
Mi4wIE9DU1NEIHNwZWMgd2hpY2ggaW50cm91ZGNlcyBHZW9tZXRyeSBjb21tYW5kIGluc3RlYWQg
b2YKPiA+IElkZW50aXR5IG9yIHNvbWV0aGluZyBlbHNlLiAgVGhpcyBwYXRjaCBqdXN0IGFkZHMg
YW4gYWxpYXMgZm9yIHRoaXMKPiA+IGNvbW1hbmQgZm9yIHRoZSBnaXZlbiBOVk1lIG5hbWVzcGFj
ZSB3aXRoIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkuCj4gPiAKPiA+IENjOiBLZWl0aCBCdXNjaCA8
a2J1c2NoQGtlcm5lbC5vcmc+Cj4gPiBDYzogTWF0aWFzIEJqb3JsaW5nIDxtYkBsaWdodG52bS5p
bz4KPiA+IFNpZ25lZC1vZmYtYnk6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICAgcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5oIHwgMiArLQo+ID4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaCBiL3BsdWdpbnMvbG52bS9sbnZtLW52bWUu
aAo+ID4gaW5kZXggZjA5MWY3Yi4uMjg3OWEwYiAxMDA2NDQKPiA+IC0tLSBhL3BsdWdpbnMvbG52
bS9sbnZtLW52bWUuaAo+ID4gKysrIGIvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5oCj4gPiBAQCAt
MTEsNyArMTEsNyBAQCBQTFVHSU4oTkFNRSgibG52bSIsICJMaWdodE5WTSBzcGVjaWZpYyBleHRl
bnNpb25zIiksCj4gPiAgIAlDT01NQU5EX0xJU1QoCj4gPiAgIAkJRU5UUlkoImxpc3QiLCAiTGlz
dCBhdmFpbGFibGUgTGlnaHROVk0gZGV2aWNlcyIsIGxudm1fbGlzdCkKPiA+ICAgCQlFTlRSWSgi
aW5mbyIsICJMaXN0IGdlbmVyYWwgaW5mb3JtYXRpb24gYW5kIGF2YWlsYWJsZSB0YXJnZXQgZW5n
aW5lcyIsIGxudm1faW5mbykKPiA+IC0JCUVOVFJZKCJpZC1ucyIsICJMaXN0IGdlb21ldHJ5IGZv
ciBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2lkX25zKQo+ID4gKwkJRU5UUlkoImlkLW5zIiwgIkxp
c3QgZ2VvbWV0cnkgZm9yIExpZ2h0TlZNIGRldmljZSIsIGxudm1faWRfbnMsICJnZW9tZXRyeSIp
Cj4gPiAgIAkJRU5UUlkoImNodW5rLWxvZyIsICJDaHVuayBpbmZvcm1hdGlvbiBieSBHZXQgTG9n
IFBhZ2UiLCBsbnZtX2NodW5rX2xvZykKPiA+ICAgCQlFTlRSWSgiaW5pdCIsICJJbml0aWFsaXpl
IG1lZGlhIG1hbmFnZXIgb24gTGlnaHROVk0gZGV2aWNlIiwgbG52bV9pbml0KQo+ID4gICAJCUVO
VFJZKCJjcmVhdGUiLCAiQ3JlYXRlIHRhcmdldCBvbiB0b3Agb2YgYSBMaWdodE5WTSBkZXZpY2Ui
LCBsbnZtX2NyZWF0ZV90Z3QpCj4gCj4gSGkgTWlud29vLAo+IAo+IEhvdyBhYm91dCBhbHNvIHJl
d29yZGluZyB0aGUgdGV4dCB0bzoKPiAKPiBMaXN0IGdlb21ldHJ5IHN0cnVjdHVyZSBmb3IgTGln
aHROVk0gZGV2aWNlPwoKTm8gcHJvYmxlbSB3aXRoIHRoYXQuICBOb3QgYSBuYXRpdmUgc3BlYWtl
ciBzbyBhbHdheXMgd2VsY29tZSB0aGlzIGtpbmQKb2YgcmV2aWV3IDopCgo+IEFsc28sIGRvIHdl
IHdhbnQgdG8gdXNlIGEgc2hvcnQgaGFuZCAoaW5zdGVhZCBvZiB3cml0aW5nIGdlb21ldHJ5IGlu
IGZ1bGwpPwoKWW91IG1lYW4gbGlrZSAiZ2VvIiBvciBzb21ldGhpbmcgbGlrZSB0aGlzPwoKPiBI
b3cgaXMgaXQgZG9uZSBlbHNld2hlcmUgaW4gdGhlIG52bWUtY2xpIGNvZGU/CgpBY3R1YWxseSBv
bmx5IHBsYWNlIHRoYXQgaGFzIHRoaXMga2luZCBvZiBfYWxpYXNfIGlzIGZ3LWNvbW1pdApzdWJj
b21tYW5kOgoKYGBgYwoJRU5UUlkoImZ3LWNvbW1pdCIsICJWZXJpZnkgYW5kIGNvbW1pdCBmaXJt
d2FyZSB0byBhIHNwZWNpZmljIHNsb3QgKGZ3LWFjdGl2YXRlIGluIG9sZCB2ZXJzaW9uIDwgMS4y
KSIsIGZ3X2NvbW1pdCwgImZ3LWFjdGl2YXRlIikKYGBgCgpUaGUgZmlybXdhcmUgY29tbWl0IGNv
bW1hbmQgaGFzIGJlZW4gcmVuYW1lZCB0byAiZnctYWN0aXZhdGUiIHNvIHRoYXQKdGhpcyBraW5k
IG9mIGFsaWFzIGhhcyBiZWVuIGFwcGxpZWQuCgpCdXQgaW4gdGhpcyBwYXRjaCdzIGNhc2UsIEkg
anVzdCB3YW50ZWQgdG8gbWFrZSBzdXJlIHRoYXQgdGhlICJpZC1ucyIKc3ViY29tbWFuZCBpcyBm
b3IgR2VvbWV0cnkgY29tbWFuZCB0aGF0IHdoYXQgdGhlIFNQRUMgZXhhY3RseSBzYXlzLgoKWW91
IGhhdmUgYW55IG90aGVyIHdvcmRzIGluIHlvdXIgbWluZD8gIEl0IHdvdWxkIGJlIGdyZWF0IGlm
IHlvdSBjYW4KcHJvcG9zZSBoZXJlIDopICBPUiBkbyB5b3Ugd2FudCBpdCBhcyBpdCBpcyB3aXRo
ICJpZC1ucyIgb25seT8KCj4gUmVnYXJkcywKPiAKPiBNYXRpYXMKPiAKClRoYW5rcyEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
