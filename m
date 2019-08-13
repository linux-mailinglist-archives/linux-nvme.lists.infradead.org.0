Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF40B8AFF3
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q8o4PtZkm8GItFW19wUTQStcFsta3R3H4cnMgrk+VDI=; b=ANZ2M4vfXkw3E+pgw364OCsgB
	iXI3Gj/qX27j1p/fq+LImMVc76RR7zRWbXOgcLWKDD8gy2gLV4cZuIgK5s0ZvlBAr7GXuLYtm8W8R
	zDd+F7n4ynFYGRaWs6ps+1DXoMbeKGRPPlrGRZAZGwXVfcRJLI4tEmf39UGB0DJ77il4hHqF9YqXO
	+vVhzWJZ+tjI8pwifGPjUoXud+3bjCSDYqUYkAPd+/PGGTvkzLErNjkK9BcUmxN/hmkkCtFWcCdeC
	EbK30qP44+wt0287dnL+PRtiJIEX/oa+th8VOYYspjT8sAsI/Vujly5aysD0pZQovXaU3fhyUONVW
	B4pZ+PFww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQMD-0001fC-W0; Tue, 13 Aug 2019 06:32:34 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQM4-0001er-Fq
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 06:32:25 +0000
Received: by mail-pf1-f196.google.com with SMTP id q139so2711512pfc.13
 for <linux-nvme@lists.infradead.org>; Mon, 12 Aug 2019 23:32:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=++aT7OPfjJJ6IACwHTaiCCDnfjnvj2ffwpSNeZ4GNUs=;
 b=mw3c99Sig4fsAylr+VZXAoPjI8QGHfLmwH8MAoQVR9FLpDT83Hc5Fcc3P7Ynze7r4Y
 ZUddkPcxOiN9SezvDDTFVY8wMDXbdW/UWGAxX7nxK7HzYwCHcoDr5hbMEUVF3/HQ7AVj
 V3Ozt773Xa3WwbhYNnKC/FIjvFVK/8CoL+OutxbMBbKEyQi7NmYggEgIfBcqnS0HQLVC
 J9v6yDe36e/gLTzIs6vV3KJ4Xia3J3MLTvl3SE++9TCCz9T1fvOlGj4NfCmzKHESzE5E
 FWXbvp8EnS8Xoh5oAl1z+k8884KKXRCJIN0QUMEVNo7glABeJadxj/kN6waCpo3lJDrd
 Dtfw==
X-Gm-Message-State: APjAAAWKjt3+mFHdEG6hFBeMtV6ycaUkAeaa7qm5unt1FXqerHb/T9WH
 sv90Iw0t3/Aj/oLSHvOEZ9jB5eit
X-Google-Smtp-Source: APXvYqyk6zCkcqUsctoa7GhaVrWoxEjU1rJGD0zlqiFZdr0JTGlkzjiF/v4ew6epMCiNZo3l3v4Baw==
X-Received: by 2002:a63:5f95:: with SMTP id
 t143mr32925939pgb.304.1565677942720; 
 Mon, 12 Aug 2019 23:32:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id a189sm3971468pfa.60.2019.08.12.23.32.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:32:21 -0700 (PDT)
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190812075147.79598-1-hare@suse.de>
 <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1f2025d7-b79e-ad46-df73-66fdff1b5f28@grimberg.me>
Date: Mon, 12 Aug 2019 23:32:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_233224_534043_59BBC558 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzEyLzE5IDQ6MzcgUE0sIE5hZG9sc2tpLCBFZG11bmQgd3JvdGU6Cj4gT24gOC8xMi8y
MDE5IDE6NTEgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gSWYgdGhlIEROUiBiaXQgaXMg
c2V0IHdlIHNob3VsZCBub3QgcmV0cnkgdGhlIGNvbW1hbmQsIGV2ZW4gaWYKPj4gdGhlIHN0YW5k
YXJkIHN0YXR1cyBldmFsdWF0aW9uIGluZGljYXRlcyBzby4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
SGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jIHwgMjEgKysrKysrKysrKysrKy0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+IGlu
ZGV4IGNjMDliODFmYzdmNC4uNWUxMzA5NzA5OTE3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252
bWUvaG9zdC9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+IEBAIC0y
NjcsMTUgKzI2NywyMCBAQCB2b2lkIG52bWVfY29tcGxldGVfcnEoc3RydWN0IHJlcXVlc3QgKnJl
cSkKPj4gwqDCoMKgwqDCoCBpZiAobnZtZV9yZXEocmVxKS0+Y3RybC0+a2FzKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgbnZtZV9yZXEocmVxKS0+Y3RybC0+Y29tcF9zZWVuID0gdHJ1ZTsKPj4gLcKg
wqDCoCBpZiAodW5saWtlbHkoc3RhdHVzICE9IEJMS19TVFNfT0sgJiYgbnZtZV9yZXFfbmVlZHNf
cmV0cnkocmVxKSkpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmICgocmVxLT5jbWRfZmxhZ3MgJiBS
RVFfTlZNRV9NUEFUSCkgJiYKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX3BhdGhfZXJy
b3Ioc3RhdHVzKSkgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2ZhaWxvdmVyX3Jl
cShyZXEpOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICvCoMKgwqAgaWYg
KHVubGlrZWx5KHN0YXR1cyAhPSBCTEtfU1RTX09LKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KG52bWVfcmVxX25lZWRzX3JldHJ5KHJlcSkpIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKChyZXEtPmNtZF9mbGFncyAmIFJFUV9OVk1FX01QQVRIKSAmJgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGJsa19wYXRoX2Vycm9yKHN0YXR1cykpIHsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2ZhaWxvdmVyX3JlcShyZXEpOwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWJsa19xdWV1ZV9keWluZyhyZXEt
PnEpKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbnZtZV9yZXRyeV9yZXEo
cmVxKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gLQo+PiAtwqDC
oMKgwqDCoMKgwqAgaWYgKCFibGtfcXVldWVfZHlpbmcocmVxLT5xKSkgewo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBudm1lX3JldHJ5X3JlcShyZXEpOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KG52bWVfcmVxKHJlcSktPnN0YXR1cyAmIE5WTUVfU0NfRE5SKSB7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJsa19tcV9lbmRfcmVxdWVzdChyZXEsIEJMS19TVFNfVEFSR0VUKTsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+
PiDCoMKgwqDCoMKgIH0KPiAKPiBUaGlzIHNlZW1zIHJlZHVuZGFudCwgdG8gcmUtY2hlY2sgdGhl
IE5WTUVfU0NfRE5SIGhlcmUsIGFmdGVyIGp1c3QgCj4gY2hlY2tpbmcgaXQgaW4gbnZtZV9yZXFf
bmVlZHNfcmV0cnkoKS4KCkluZGVlZCwgd2h5IGRvIHdlIG5lZWQgdGhpcyBhdCB0aGlzIHBvaW50
PyB3ZSBjYW4gc2ltcGx5IGNvbnRpbnVlIGFuZAplbmQgdGhlIHJlcXVlc3QgZG93biBpbiB0aGUg
ZnVuYyAoYWZ0ZXIgd2UgdHJhY2UgaXQgYXMgd2VsbCkuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
