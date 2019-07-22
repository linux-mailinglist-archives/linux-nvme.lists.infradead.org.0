Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA6370C5F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 00:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sh2Uma4v5WpwTJRTxcEgEjfeuihfkXFC8dTmdci4CnE=; b=OAR1Wei1YABXOtgaPq9kIg4bK
	Bg3JxXkSc5Z4FbwDwPG4ZW5WZzkPsf2/7jdPuHQfWdGYYzu9cs3BXMxUfmoX5S9/970wDInAMF86S
	/fpbj7WaTZL81dYMnX1w1sGwUBDnNX2wZuMEaYYsIgmvziC4DdX1sfKu2Q2sH56Uq/RDYIwOYHKSM
	ZjrycYQurg9U1/RXqzxiziLHerKHXfCx7nDum9lW1bFiLV4rq8ysKDWzMVsadKEjhUdb/UrXyAfDq
	gJVk8j9luhIeHOrRxDj9AxHECbirFUB8Uzf4PWHslpPxyH8L43o/jmaFlo8enMgjAPK8ksPjGBh5R
	v3Wmy103g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgVH-0003t8-ML; Mon, 22 Jul 2019 22:09:55 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgUg-0003sX-UM
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 22:09:20 +0000
Received: by mail-oi1-f196.google.com with SMTP id v186so30775798oie.5
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 15:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W91lkZO+1m22Z8Voyv2hQnbZtUSm0nskwrUf/PW1Wpk=;
 b=gV9OF8YLBMBGmgOR4ygsmsmOBznoz/aEsO3QcSbXUNltF1x1dVuNoPxVZ2mm3WOF1H
 5gty/SxEX+BvA8Rq/wPEXDJSEOZ7rBJmkwr0nfs1Us1BtM/Nb959k2vweVTFlsH7ekSH
 db6yU2R32QwbHcuiWi4Wfxa4VAune4DsBnpajuPehaCNkkwzig1qftS8SvpUTasb+K0A
 2ymzrk2cyQYplLQf9Lo2U5R2o3xqWL3joi6AVHI57/42Q7jpdkw9phShQoNDE9E4xE/T
 4VCuPCPsXbg0Nww4C6R5JupCSdg+DxgmfwzizDq9yUd7Ga7htvo5ukpclwl4IkOikqVH
 hPwQ==
X-Gm-Message-State: APjAAAULRSuu0BQ+iq0T606GTcmSBqGnQUFlOwODdH4cJ+j/lwFXaVsY
 Td3Xp9BKXHWJknm1IdP0dK8=
X-Google-Smtp-Source: APXvYqyGemKjO7w1HjIZmkbY135eDLh8qEMdDLNZ7Mm9IVW/hVC9hy+lEbaG73spJnib/RnTUdZ0/w==
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr34451127oic.173.1563833357527; 
 Mon, 22 Jul 2019 15:09:17 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 103sm14304211otu.33.2019.07.22.15.09.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 15:09:16 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
To: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org
References: <20190719194256.23618-1-sagi@grimberg.me>
 <ef8149f9-b7e0-d2ba-6bcb-ff51d8e2a908@acm.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <045c47a4-0844-ec0f-bb5a-6d6c0bf386fe@grimberg.me>
Date: Mon, 22 Jul 2019 15:09:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <ef8149f9-b7e0-d2ba-6bcb-ff51d8e2a908@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_150918_985177_803A817D 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, lizhongfs@gmail.com,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYyBiL2RyaXZlcnMvbnZtZS9o
b3N0L3BjaS5jCj4+IGluZGV4IDRiNTA4ZDVlNDVjZi4uNTAwNjFhYmU0OWM2IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwo+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9w
Y2kuYwo+PiBAQCAtMTI3LDYgKzEyNyw3IEBAIHN0cnVjdCBudm1lX2RldiB7Cj4+IMKgwqDCoMKg
wqAgZG1hX2FkZHJfdCBob3N0X21lbV9kZXNjc19kbWE7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IG52
bWVfaG9zdF9tZW1fYnVmX2Rlc2MgKmhvc3RfbWVtX2Rlc2NzOwo+PiDCoMKgwqDCoMKgIHZvaWQg
Kipob3N0X21lbV9kZXNjX2J1ZnM7Cj4+ICvCoMKgwqAgYXN5bmNfY29va2llX3QgYXN5bmNfcHJv
YmU7Cj4+IMKgIH07Cj4+IMKgIHN0YXRpYyBpbnQgaW9fcXVldWVfZGVwdGhfc2V0KGNvbnN0IGNo
YXIgKnZhbCwgY29uc3Qgc3RydWN0IAo+PiBrZXJuZWxfcGFyYW0gKmtwKQo+PiBAQCAtMjc2NSw3
ICsyNzY2LDcgQEAgc3RhdGljIGludCBudm1lX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCAK
Pj4gY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmlkKQo+PiDCoMKgwqDCoMKgIGRldl9pbmZv
KGRldi0+Y3RybC5kZXZpY2UsICJwY2kgZnVuY3Rpb24gJXNcbiIsIAo+PiBkZXZfbmFtZSgmcGRl
di0+ZGV2KSk7Cj4+IMKgwqDCoMKgwqAgbnZtZV9nZXRfY3RybCgmZGV2LT5jdHJsKTsKPj4gLcKg
wqDCoCBhc3luY19zY2hlZHVsZShudm1lX2FzeW5jX3Byb2JlLCBkZXYpOwo+PiArwqDCoMKgIGRl
di0+YXN5bmNfcHJvYmUgPSBhc3luY19zY2hlZHVsZShudm1lX2FzeW5jX3Byb2JlLCBkZXYpOwo+
PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiBAQCAtMjgxMCw2ICsyODExLDggQEAgc3RhdGljIHZv
aWQgbnZtZV9yZW1vdmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4+IMKgIHsKPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgbnZtZV9kZXYgKmRldiA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsKPj4gK8KgwqDC
oCAvKiB3YWl0IGZvciBhc3luYyBwcm9iZSB0byBjb21wbGV0ZSAqLwo+PiArwqDCoMKgIGFzeW5j
X3N5bmNocm9uaXplX2Nvb2tpZShkZXYtPmFzeW5jX3Byb2JlICsgMSk7Cj4+IMKgwqDCoMKgwqAg
bnZtZV9jaGFuZ2VfY3RybF9zdGF0ZSgmZGV2LT5jdHJsLCBOVk1FX0NUUkxfREVMRVRJTkcpOwo+
PiDCoMKgwqDCoMKgIHBjaV9zZXRfZHJ2ZGF0YShwZGV2LCBOVUxMKTsKPiAKPiBIaSBTYWdpLAo+
IAo+IERvZXMgdGhlIGFzeW5jX3N5bmNocm9uaXplX2Nvb2tpZSgpIGNhbGwgd2FpdCB1bnRpbCBh
bGwgcHJldmlvdXNseSAKPiBzdGFydGVkIHByb2JlcyBoYXZlIGZpbmlzaGVkPyBJbiBvdGhlciB3
b3JkcywgZG9lcyB0aGUgY2hhbmdlIGluIAo+IG52bWVfcmVtb3ZlKCkgaW50cm9kdWNlIGEgZGVw
ZW5kZW5jeSBiZXR3ZWVuIHByb2JlIGFuZCByZW1vdmUgY2FsbHMgb2YgCj4gZGlmZmVyZW50IE5W
TWUgZGV2aWNlcz8gSXMgdGhhdCBkZXBlbmRlbmN5IGltcG9ydGFudD8gSWYgbm90LCBjYW4gaXQg
YmUgCj4gYXZvaWRlZCB0byBpbnRyb2R1Y2UgdGhhdCBkZXBlbmRlbmN5PwoKSXQgZG9lcyBjcmVh
dGUgZGVwZW5kZW5jeSBhcyB0aGV5IGFyZSBpbiB0aGUgc2FtZSBkb21haW4gSSBhc3N1bWUuIEdp
dmVuCnRoYXQgbnZtZV9yZW1vdmUoKSBpcyByZWFsbHkgYSBob3QtdW5wbHVnIG9wZXJhdGlvbiAo
b3Igc2h1dGRvd24pIEkgYW0Kbm90IHN1cmUgaWYgdGhpcyBkZXBlbmRlbmN5IGlzIGEgbGltaXRh
dGlvbiBpbiBhbnkgcmVhbCB1c2UtY2FzZQp0aG91Z2guLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
