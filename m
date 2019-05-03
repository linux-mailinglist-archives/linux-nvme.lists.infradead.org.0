Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D90512686
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 05:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPzNBmBPf0712ZGqcoFYkHteThPgA8DWxYNO55a38O0=; b=p1/zLX4Dg19lEK
	UIRD8mgivwmtDy0ZHjD2lsm86+S1+R4qbWoDj2KTSaihX72AbcOpKHHcRO6pZHhGJHYLbt2JVxb5X
	Caz37WJEJMtqNg0BrDctihP6h6fvvjvf+YBuLctBllAAGgnlajQc8wIkryx+o5LUB0c4+5BVUxpRS
	WTNxrlPlOBZsUeKOaNLJc+K6GmoIFk2FdwyRFx35fT5QxFcncYgTEfZrhCdOaNSrBoitTJpbR0m59
	iHxY5j4+mmwajAuNETWjLkP3rWXjYICV4G1sxSwXLM+IYJd79JiQ8wogBcgGATV6SoNbAnHj28uw9
	aOC9wbQKMdqtpPytC5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMP57-0004O8-8J; Fri, 03 May 2019 03:41:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMP52-0004Nk-5K
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 03:41:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id t87so1611883pfa.2
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 20:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O622YIhyxrmf2r9JTZlsen0SoxQsmKCxpBoUMTPKsKo=;
 b=Ihd2aO2JJgnMbncKxuJMRhZ1ZCDwmjp0EM5wZO5qzawVYJUNL0OkfI/G8VzvM87v5n
 0lfdBae25fqMlpvTBR2iVtGW60vB9dikdysFqwRKbqWrnC7/LhtyTa+VeTqq2VUqurGw
 Mmi4fqFRSoLXvHG7JQWOxW2a976o4C5tnkTOBegI/Q2SJ1fN8fbe76//91G69mNewv8p
 6dtz5wb0A3BIcUU51v+n0r3M0YwYbCN9vecxd/uE4OTs+7I7DOfjCRIeRHKGxrgEHE4c
 hhpJ8dTXfmLkSw2qZhrokmm0Dg3gxnGX02ldpV1TrC/Ad0qngibj5fgwe87/+hwendZ3
 PwQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O622YIhyxrmf2r9JTZlsen0SoxQsmKCxpBoUMTPKsKo=;
 b=bL0B5Re/hlQUV7sqLRw18yhSbGtj4Mu+gmAoCqpUTXIeXcYrdQwPXZJMuMVvQEvmVR
 YVqCkravx2Dj5k2fKP+GYbsfJCopJR84OqSt/hIHvl63pgUanicwLgBnBDfUDqRVk7cT
 BuQ5XIejRbLx2JOAY5VlSY4+PB7ZrxKXEyA4PsEI0DYgc4+I6K3b1zIz6/+ppyDtiIkd
 L2eQ+HVucEb61lcpryoS8cB8/Spp4Jr8kao7WXBUQXHoefpRNp+LqwWIqRqEOpkqZ0yB
 F6fHWIGTQyUHJCRNeYJ6hMC6FJRbhozjxlpye/KQ66q4LfN4ElLx6D1gnMTx4Fzq20Rz
 sF1w==
X-Gm-Message-State: APjAAAVtCreLRpZbqNb2+r6b+EOEweUQ4QSY+unAFs17C6k1CjUCFhEp
 Go/JukzMmyNsAZpE1AHmbD6u9Np1uElxLJ8YY6A=
X-Google-Smtp-Source: APXvYqzjgnX+D9rLrQlfRkw/onVis/I8/ZL4xiaVaWMGXPNMN7QErsZfqJZACA+5aMAx0Ma2t0cnhYBi87ggcwlWtQM=
X-Received: by 2002:a65:5289:: with SMTP id y9mr7787613pgp.52.1556854907327;
 Thu, 02 May 2019 20:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-3-git-send-email-akinobu.mita@gmail.com>
 <f0f772e5e33519dac93672be26fa7995f8109721.camel@sipsolutions.net>
In-Reply-To: <f0f772e5e33519dac93672be26fa7995f8109721.camel@sipsolutions.net>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Fri, 3 May 2019 12:41:36 +0900
Message-ID: <CAC5umyhyVNA63OUQsw=SSP_poPOwQ+Y7sPRRpGLaJXb7T-C3Ug@mail.gmail.com>
Subject: Re: [PATCH 2/4] devcoredump: allow to create several coredump files
 in one device
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_204148_252481_C382FFB6 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgy5pelKOacqCkgMjE6NDcgSm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29s
dXRpb25zLm5ldD46Cj4KPiBPbiBUaHUsIDIwMTktMDUtMDIgYXQgMTc6NTkgKzA5MDAsIEFraW5v
YnUgTWl0YSB3cm90ZToKPiA+Cj4gPiAgc3RhdGljIHZvaWQgZGV2Y2RfZGVsKHN0cnVjdCB3b3Jr
X3N0cnVjdCAqd2spCj4gPiAgewo+ID4gICAgICAgc3RydWN0IGRldmNkX2VudHJ5ICpkZXZjZDsK
PiA+ICsgICAgIGludCBpOwo+ID4KPiA+ICAgICAgIGRldmNkID0gY29udGFpbmVyX29mKHdrLCBz
dHJ1Y3QgZGV2Y2RfZW50cnksIGRlbF93ay53b3JrKTsKPiA+Cj4gPiArICAgICBmb3IgKGkgPSAw
OyBpIDwgZGV2Y2QtPm51bV9maWxlczsgaSsrKSB7Cj4gPiArICAgICAgICAgICAgIGRldmljZV9y
ZW1vdmVfYmluX2ZpbGUoJmRldmNkLT5kZXZjZF9kZXYsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmRldmNkLT5maWxlc1tpXS5iaW5fYXR0cik7Cj4gPiArICAgICB9
Cj4KPiBOb3QgbXVjaCB2YWx1ZSBpbiB0aGUgYnJhY2VzPwoKT0suICBJIHRlbmQgdG8gdXNlIGJy
YWNlcyB3aGVyZSBhIHNpbmdsZSBzdGF0ZW1lbnQgYnV0IG11bHRpcGxlIGxpbmVzLgoKPiA+ICtz
dGF0aWMgc3RydWN0IGRldmNkX2VudHJ5ICpkZXZjZF9hbGxvYyhzdHJ1Y3QgZGV2X2NvcmVkdW1w
bV9idWxrX2RhdGEgKmZpbGVzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGludCBudW1fZmlsZXMsIGdmcF90IGdmcCkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZGV2
Y2RfZW50cnkgKmRldmNkOwo+ID4gKyAgICAgaW50IGk7Cj4gPiArCj4gPiArICAgICBkZXZjZCA9
IGt6YWxsb2Moc2l6ZW9mKCpkZXZjZCksIGdmcCk7Cj4gPiArICAgICBpZiAoIWRldmNkKQo+ID4g
KyAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICsKPiA+ICsgICAgIGRldmNkLT5maWxlcyA9
IGtjYWxsb2MobnVtX2ZpbGVzLCBzaXplb2YoZGV2Y2QtPmZpbGVzWzBdKSwgZ2ZwKTsKPiA+ICsg
ICAgIGlmICghZGV2Y2QtPmZpbGVzKSB7Cj4gPiArICAgICAgICAgICAgIGtmcmVlKGRldmNkKTsK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiArICAgICB9Cj4gPiArICAgICBkZXZj
ZC0+bnVtX2ZpbGVzID0gbnVtX2ZpbGVzOwo+Cj4gSU1ITyBpdCB3b3VsZCBiZSBuaWNlciB0byBh
bGxvY2F0ZSBhbGwgb2YgdGhpcyBpbiBvbmUgc3RydWN0LCBpLmUuIGhhdmUKPgo+IHN0cnVjdCBk
ZXZjZF9lbnRyeSB7Cj4gICAgICAgICAuLi4KPiAgICAgICAgIHN0cnVjdCBkZXZjZF9maWxlIGZp
bGVzW107Cj4gfQo+Cj4gKGFuZCB0aGVuIHVzZSBzdHJ1Y3Rfc2l6ZSgpKQoKU291bmRzIGdvb2Qu
Cgo+ID4gQEAgLTMwOSw3ICszMzksNDEgQEAgdm9pZCBkZXZfY29yZWR1bXBtKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IG1vZHVsZSAqb3duZXIsCj4gPiAgIHB1dF9tb2R1bGU6Cj4gPiAgICAg
ICBtb2R1bGVfcHV0KG93bmVyKTsKPiA+ICAgZnJlZToKPiA+IC0gICAgIGZyZWUoZGF0YSk7Cj4g
PiArICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZpbGVzOyBpKyspCj4gPiArICAgICAgICAgICAg
IGZpbGVzW2ldLmZyZWUoZmlsZXNbaV0uZGF0YSk7Cj4gPiArfQo+Cj4gYW5kIHRoZW4geW91IGRv
bid0IG5lZWQgdG8gZG8gYWxsIHRoaXMga2luZCBvZiB0aGluZyB0byBmcmVlCj4KPiBPdGhlcndp
c2UgbG9va3MgZmluZS4gSSdkIHdvcnJ5IGEgYml0IHRoYXQgZXhpc3RpbmcgdXNlcnNwYWNlIHdp
bGwgb25seQo+IGNhcHR1cmUgdGhlICdkYXRhJyBmaWxlLCByYXRoZXIgdGhhbiBhIHRhcmJhbGwg
b2YgYWxsIGZpbGVzLCBidXQgSSBndWVzcwo+IHRoYXQncyBzb21ldGhpbmcgeW91J2QgaGF2ZSB0
byB3b3JrIG91dCB0aGVuIHdoZW4gYWN0dWFsbHkgZGVzaXJpbmcgdG8KPiB1c2UgbXVsdGlwbGUg
ZmlsZXMuCgpZb3VyIHdvcnJ5aW5nIGlzIGNvcnJlY3QuICBJJ20gZ29pbmcgdG8gY3JlYXRlIGEg
ZW1wdHkgJ2RhdGEnIGZpbGUgZm9yIG52bWUKY29yZWR1bXAuICBBc3N1bWluZyB0aGF0IGRldmNk
KiBhbHdheXMgY29udGFpbnMgdGhlICdkYXRhJyBmaWxlIGF0IGxlYXN0LAp3ZSBjYW4gc2ltcGx5
IHdyaXRlIHRvICdkYXRhJyB3aGVuIHRoZSBkZXZpY2UgY29yZWR1bXAgaXMgbm8gbG9uZ2VyIG5l
ZWRlZCwKYW5kIHByZXBhcmUgZm9yIHRoZSBuZXdlciBjb3JlZHVtcC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
