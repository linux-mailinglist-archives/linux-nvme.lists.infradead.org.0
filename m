Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B385C74FDF
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oxZ4pFFUVbp29Unw+d42PbsoaTwM5vTkhyj0NePxWQ=; b=FtxUjgEAX2+f/M
	WJsyZR9CXN4hMo4cCz9uAEIgEquMs+sYRekc2raCBT6lhbQrA5t9263S13ucEcYqhCi6GR/OL1vjN
	pC56vaYrbzRqCMdHi7z21KS8wHzn4ROcNw5hIADCM7NH/FFV4vCPx6BV+OVQ71xl1gTXm/buESAop
	sXHR4+sPUwR2wKsDhIBGecAY/YeEGujkUtknyRcxg585BLo5B6ihvmNIpsvrD0ZcnAyeuB+nk4FRu
	S7pml8taOVcth/69i8uWIDMRk5r070J7KJtOV7cQkM6Z6Z0xZoQH1j56LNNDYE5cti8KFLDoNIM8T
	J4y4gRW+7V5ifX0jGDww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqe25-00018G-Lj; Thu, 25 Jul 2019 13:43:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqe1v-00017u-OR
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:43:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so23060864pgp.12
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=VW6uHbsy+FjndYc2C9L3A1h5KGIPFmDewCBeou3x1RI=;
 b=Ij1vFusJjGeEjg/Nr7uXYD96Oh9kvS9j3gySqgnsw9oYgMSqkreRVjMaeVTW1AUWnz
 RovXXwLA6Al40KD/GCAJQWU/ZSEtlT0WFvvmnLkvld70vuPdTuMIhTnZXqNntAWQxJ2Q
 tWv437AR9WkJkl3dMPScb/VtAUm8WflEpH/vlYIHs+c77AgdK+IEjhMBerf7O/V+UW3b
 QEhNRJrvH3RP6b+eupE7nj+1a2qyXQLXJB2iKRxyYQzDQDLGwJlRSqY1GuPowRLzOjET
 854sStBnfrrTbicLNEW+erstBKWN9duL9+zt1AfVE+VO2+bqo1Ui0FWkts9GBkwsHBA2
 ShQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VW6uHbsy+FjndYc2C9L3A1h5KGIPFmDewCBeou3x1RI=;
 b=fF8A4Bm8h+O0DH/x/0KnTqNJCKPLBVbINUgTkVSWpruSfIRdExxZ8nCVbAdYPej9gT
 iSlpzG3ptDOfbe7adH6WpaaEFQqKQgTjVFDuvtlHW70+3iDKqwomoXh7hTuSAZ8idCEP
 esXdPlqnj1g3jGJP+On0TzGbIxBu26kv3TJUFFSDkqgTlZyPNPAYmAmNxwfpPugS7H6o
 ihHXdCm3yvohdCb+kPnZRKUX61SK9x2+n/sVxSGAImwmR6IYzhnRm66l8riccN8/Yx1H
 Aacdd7nWj+34Cxo4iZsH4/eMCPNqhG8JiKERDjo5Ecb2TL2rrmECmGL5s+oAFYInUSN7
 LDEQ==
X-Gm-Message-State: APjAAAXWdrGPlNaaC1CJYv2bLpOHPoXia6bN6/UJWrn+HXL6QH7dOHk7
 RTUDvy5H+B9pWmyUBRv1RLU=
X-Google-Smtp-Source: APXvYqw2LZ/DYvZIawIBoOUg4acQcdHolKmQ1X839vGxdV0PbeteNY2Zr17CwIJqeKG+yn3k/wY+KQ==
X-Received: by 2002:a17:90a:8b98:: with SMTP id
 z24mr93905875pjn.77.1564062214883; 
 Thu, 25 Jul 2019 06:43:34 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm77896636pfg.166.2019.07.25.06.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:43:34 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:43:32 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Message-ID: <20190725134332.GC3018@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_064335_820472_8D5ED2B3 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

SGkgTWF0aWFzLAoKT24gMTktMDctMjQgMTQ6Mjc6MTAsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6
Cj4gT24gMjMvMDcvMjAxOSAyMC4zNiwgTWlud29vIEltIHdyb3RlOgo+ID4gVG8gcmV0cmlldmUg
dGhlIGNodW5rIGluZm9ybWF0aW9uIGZyb20gdGhlIG52bWUgbmFtZXNwYWUgZm9yIHRoZSBnaXZl
bgo+ID4gT0NTU0QsIHdlIGNhbiBqdXN0IGRvIGxpa2U6Cj4gPiAJbnZtZSBsbnZtIGNodW5rLWxv
ZyAvZGV2L252bWUwbjEgLS1vdXRwdXQtZm9ybWF0PW5vcm1hbAo+ID4gCj4gPiBUaGlzIHdpbGwg
Y2FsY3VsYXRlIHRoZSBkYXRhIGxlbmd0aCBmcm9tIHRoZSBnZW9tZXRyeSBkYXRhIHN0cnVjdHVy
ZQo+ID4gd2hpY2ggbWlnaHQgYmUgcmV0cmlldmVkIGJ5IGEgR2VvbWV0cnkgY29tbWFuZChJZGVu
dGl0eSBmb3IgMS4yIHNwZWMuKS4KPiA+IFRoZW4gaXQgd2lsbCByZXF1ZXN0IGdldCBsb2cgcGFn
ZSBBUEkgZm9yIDEuMyBOVk1lIHNwZWMgdG8gZ2V0IHRoZQo+ID4gZW50cmllcyB3aGljaCBpbmRp
Y2F0ZSBjaHVuayBpbmZvcm1hdGlvbi4KPiA+IAo+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hA
a2VybmVsLm9yZz4KPiA+IENjOiBNYXRpYXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgo+ID4g
U2lnbmVkLW9mZi1ieTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gZGlmZiAtLWdpdCBhL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaCBiL3BsdWdpbnMvbG52
bS9sbnZtLW52bWUuaAo+ID4gaW5kZXggM2Q1Y2JjNS4uZjA5MWY3YiAxMDA2NDQKPiA+IC0tLSBh
L3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaAo+ID4gKysrIGIvcGx1Z2lucy9sbnZtL2xudm0tbnZt
ZS5oCj4gPiBAQCAtMTIsNiArMTIsNyBAQCBQTFVHSU4oTkFNRSgibG52bSIsICJMaWdodE5WTSBz
cGVjaWZpYyBleHRlbnNpb25zIiksCj4gPiAgIAkJRU5UUlkoImxpc3QiLCAiTGlzdCBhdmFpbGFi
bGUgTGlnaHROVk0gZGV2aWNlcyIsIGxudm1fbGlzdCkKPiA+ICAgCQlFTlRSWSgiaW5mbyIsICJM
aXN0IGdlbmVyYWwgaW5mb3JtYXRpb24gYW5kIGF2YWlsYWJsZSB0YXJnZXQgZW5naW5lcyIsIGxu
dm1faW5mbykKPiA+ICAgCQlFTlRSWSgiaWQtbnMiLCAiTGlzdCBnZW9tZXRyeSBmb3IgTGlnaHRO
Vk0gZGV2aWNlIiwgbG52bV9pZF9ucykKPiA+ICsJCUVOVFJZKCJjaHVuay1sb2ciLCAiQ2h1bmsg
aW5mb3JtYXRpb24gYnkgR2V0IExvZyBQYWdlIiwgbG52bV9jaHVua19sb2cpCj4gCj4gQ2h1bmsg
SW5mb3JtYXRpb24gTG9nIFBhZ2UgPwoKU3VyZSwgSSdtIGZpbmUgd2l0aCB0aGF0IGFsc28uCgo+
ID4gICAJCUVOVFJZKCJpbml0IiwgIkluaXRpYWxpemUgbWVkaWEgbWFuYWdlciBvbiBMaWdodE5W
TSBkZXZpY2UiLCBsbnZtX2luaXQpCj4gPiAgIAkJRU5UUlkoImNyZWF0ZSIsICJDcmVhdGUgdGFy
Z2V0IG9uIHRvcCBvZiBhIExpZ2h0TlZNIGRldmljZSIsIGxudm1fY3JlYXRlX3RndCkKPiA+ICAg
CQlFTlRSWSgicmVtb3ZlIiwgIlJlbW92ZSB0YXJnZXQgZnJvbSBkZXZpY2UiLCBsbnZtX3JlbW92
ZV90Z3QpCj4gCj4gSGkgTWlud29vLAo+IAo+IENvdWxkIHlvdSBzcXVhc2ggcGF0Y2ggMiwgMyBh
bmQgNCB0b2dldGhlciAoNCBiZWluZyB0aGUgbWFpbiBwYXRjaCkgLSBUaGV5Cj4gYmVsb25nIHRv
Z2V0aGVyIHRvIGltcGxlbWVudCBvbmUgZmVhdHVyZS4KPiAKPiBBcyBhIHNpZGUtbm90ZSwgd2Ug
aGF2ZSB0aGUgc2FtZSBjb21tYW5kIGZvciBaTlMgKHRoYXQgd2lsbCBiZSBwdXNoZWQgd2hlbgo+
IHRoZSBaTlMgVFAgaXMgcmF0aWZpZWQpIC0gSW4gdGhhdCwgd2UndmUgYWxzbyBhZGRlZCBzdXBw
b3J0IGZvciBzdXBwbHlpbmcKPiBzdGFydCBsYmEgYW5kIG51bWJlciBvZiBjaHVua3MgKHpvbmVz
KSB0byByZXR1cm4uIENvdWxkIHlvdSBhZGQgdGhhdCBhcyB3ZWxsCj4gdG8gdGhpcz8gVGhlbiB0
aGVyZSBpcyBjb2hlcmVuY3kgYmV0d2VlbiB0aGUgdHdvPwoKVGhhbmtzIGZvciB0aGUgcmV2aWV3
LiAgWWVzIEkgd2lsbCBpZiB0aGUgVFAgaGFzIGJlZW4gcmF0aWZpZWQuICBBbHNvCkknbGwgcHJl
cGFyZSBhIG5ldyBzZXJpZXMgd2l0aCBzcXVhc2hlZCB3aGF0IHlvdSBqdXN0IG1lbnRpb25lZCBo
ZXJlIDopCgpUaGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
