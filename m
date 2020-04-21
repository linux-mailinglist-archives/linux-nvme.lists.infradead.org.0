Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4C51B2571
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 13:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcMVl5Gz44Jefr7AiXKyEEFV9STPDaIFPHWFV4BfWdI=; b=fzgZ1n6jpzn/F7
	Cy/xyO5Z0pPT8YxyncnJD7KDUBunujQcksAulOADJEXO7BafowBn3TnZPKl6XpBz5tA+hlKif3Kbe
	VOGM3xPgommqwDvuDX4HJlrLgKD6ZQ3UBgO1gqqUryj8db0DceAlFKMcV+t5U8aPQpXxl890etXY8
	VKNS6uOOk08UrG9U0U+bHDkXpznOoVP3OEsocma9JBIJGkVLYBz68tcXj0oIwD9L3fPEywob49kR4
	FGZB1OUxWO6AAuM+cDEoEg/7o28cSh/sn/09auJfUC45ufKcAmh5RP2C6MTGHX4ip+jUABYaLIXqd
	eSzIewIVwKlFzKsRK6eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrYg-0007Cy-SN; Tue, 21 Apr 2020 11:59:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrYc-0007Bl-DU
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 11:59:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F1D9968C7B; Tue, 21 Apr 2020 13:59:12 +0200 (CEST)
Date: Tue, 21 Apr 2020 13:59:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 01/17] nvme: introduce namespace features flag
Message-ID: <20200421115912.GB26432@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-3-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327171545.98970-3-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_045918_753827_BE9EC098 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXIgMjcsIDIwMjAgYXQgMDg6MTU6MjlQTSArMDMwMCwgTWF4IEd1cnRvdm95IHdy
b3RlOgo+IEZyb206IElzcmFlbCBSdWtzaGluIDxpc3JhZWxyQG1lbGxhbm94LmNvbT4KPiAKPiBD
ZW50cmFsaXplIGFsbCB0aGUgbWV0YWRhdGEgY2hlY2tzIHRvIG9uZSBwbGFjZSBhbmQgbWFrZSB0
aGUgY29kZSBtb3JlCj4gcmVhZGFibGUuIEludHJvZHVjZSBhIG5ldyBlbnVtIG52bWVfbnNfZmVh
dHVyZXMgZm9yIHRoYXQgbWF0dGVyLgo+IFRoZSBmZWF0dXJlcyBmbGFnIGRlc2NyaXB0aW9uOgo+
ICAtIE5WTUVfTlNfRVhUX0xCQVMgLSBOVk1lIG5hbWVzcGFjZSBzdXBwb3J0cyBleHRlbmRlZCBM
QkEgZm9ybWF0Lgo+ICAtIE5WTUVfTlNfTURfSE9TVF9TVVBQT1JURUQgLSBOVk1lIG5hbWVzcGFj
ZSBzdXBwb3J0cyBnZXR0aW5nIG1ldGFkYXRhCj4gICAgZnJvbSBob3N0J3MgYmxvY2sgbGF5ZXIu
Cj4gIC0gTlZNRV9OU19NRF9DVFJMX1NVUFBPUlRFRCAtIE5WTWUgbmFtZXNwYWNlIHN1cHBvcnRz
IG1ldGFkYXRhIGFjdGlvbnMKPiAgICBieSB0aGUgY29udHJvbGxlciAoZ2VuZXJhdGUvc3RyaXAp
LgoKU28gd2hvbGUgSSBsaWtlIHRoZSAtPmZlYXR1cmVzIGZsYWcsIHRoZSBkZWZpbnRpb24gb2Yg
dGhlc2UgdHdvCm1ldGFkYXRhIHJlbGF0ZWQgZmVhdHVyZXMgcmVhbGx5IGNvbmZ1c2VzIG1lLgoK
SGVyZSBhcmUgbXkgdmFndWUgaWRlYXMgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uOgoKPiAtc3Rh
dGljIGlubGluZSBib29sIG52bWVfbnNfaGFzX3BpKHN0cnVjdCBudm1lX25zICpucykKPiAtewo+
IC0JcmV0dXJuIG5zLT5waV90eXBlICYmIG5zLT5tcyA9PSBzaXplb2Yoc3RydWN0IHQxMF9waV90
dXBsZSk7Cj4gLX0KClRoaXMgZnVuY3Rpb24gSSB0aGluayBpcyBnZW5lcmFsbHkgdXNlZnVsLCBJ
J2QgcmF0aGVyIGtlZXAgacWjLCBkb2N1bWVudAppdCB3aXRoIGEgY29tbWVudCBhbmQgcmVtb3Zl
IHRoZSBuZXcgTlZNRV9OU19NRF9DVFJMX1NVUFBPUlRFRApmbGFnLgoKPiAtCWlmIChucy0+bXMg
JiYgIW5zLT5leHQgJiYKPiAtCSAgICAobnMtPmN0cmwtPm9wcy0+ZmxhZ3MgJiBOVk1FX0ZfTUVU
QURBVEFfU1VQUE9SVEVEKSkKPiArCWlmIChucy0+ZmVhdHVyZXMgJiBOVk1FX05TX01EX0hPU1Rf
U1VQUE9SVEVEKQo+ICAJCW52bWVfaW5pdF9pbnRlZ3JpdHkoZGlzaywgbnMtPm1zLCBucy0+cGlf
dHlwZSk7Cj4gLQlpZiAoKG5zLT5tcyAmJiAhbnZtZV9uc19oYXNfcGkobnMpICYmICFibGtfZ2V0
X2ludGVncml0eShkaXNrKSkgfHwKPiAtCSAgICBucy0+bGJhX3NoaWZ0ID4gUEFHRV9TSElGVCkK
PiArCj4gKwlpZiAoKG5zLT5tcyAmJiAhKG5zLT5mZWF0dXJlcyAmIE5WTUVfTlNfTURfQ1RSTF9T
VVBQT1JURUQpICYmCj4gKwkgICAgICEobnMtPmZlYXR1cmVzICYgTlZNRV9OU19NRF9IT1NUX1NV
UFBPUlRFRCkgJiYKPiArCSAgICAgIWJsa19nZXRfaW50ZWdyaXR5KGRpc2spKSB8fCBucy0+bGJh
X3NoaWZ0ID4gUEFHRV9TSElGVCkKPiAgCQljYXBhY2l0eSA9IDA7CgpJIGZpbmQgdGhpcyB2ZXJ5
IGNvbmZ1c2luZy4gIENhbiB3ZSBkbyBzb21ldGhpbmcgbGlrZToKCgkvKgoJICogVGhlIGJsb2Nr
IGxheWVyIGNhbid0IHN1cHBvcnQgTEJBIHNpemVzIGxhcmdlciB0aGFuIHRoZSBwYWdlIHNpemUK
CSAqIHlldCwgc28gY2F0Y2ggdGhpcyBlYXJseSBhbmQgZG9uJ3QgYWxsb3cgYmxvY2sgSS9PLgoJ
ICovCglpZiAobnMtPmxiYV9zaGlmdCA+IFBBR0VfU0hJRlQpCiAgCQljYXBhY2l0eSA9IDA7CgoJ
LyoKCSAqIFJlZ2lzdGVyIGEgbWV0YWRhdGEgcHJvZmlsZSBmb3IgUEksIG9yIHRoZSBwbGFpbiBu
b24taW50ZWdyaXR5IE5WTWUKCSAqIG1ldGFkYXRhIG1hc3F1ZXJhZGluZyBhcyBUeXAgMCBpZiBz
dXBwb3J0ZWQsIG90aGVyd2lzZSByZWplY3QgYmxvY2sKCSAqIEkvTyB0byBuYW1lc3BhY2VzIHdp
dGggbWV0YWRhdGEgZXhjZXB0IHdoZW4gdGhlIG5hbWVzcGFjZSBzdXBwb3J0cwoJICogUEksIGFz
IGl0IGNhbiBzdHJpcC9pbnNlcnQgaW4gdGhhdCBjYXNlLgoJICovCglpZiAobnMtPm1zKSB7CgkJ
aWYgKElTX0VOQUJMRUQoQ09ORklHX0JMS19ERVZfSU5URUdSSVRZKSAmJgoJCSAgICAobnMtPmZl
YXR1cmVzICYgTlZNRV9OU19NRF9IT1NUX1NVUFBPUlRFRCkpCgkJCW52bWVfaW5pdF9pbnRlZ3Jp
dHkoZGlzaywgbnMtPm1zLCBucy0+cGlfdHlwZSk7CgkJZWxzZSBpZiAoIW52bWVfbnNfaGFzX3Bp
KG5zKSkKCQkJY2FwYWNpdHkgPSAwOwoJfQoKPiArCWlmIChucy0+bXMpIHsKPiArCQlpZiAoaWQt
PmZsYmFzICYgTlZNRV9OU19GTEJBU19NRVRBX0VYVCkKPiArCQkJbnMtPmZlYXR1cmVzIHw9IE5W
TUVfTlNfRVhUX0xCQVM7Cj4gKwo+ICsJCS8qCj4gKwkJICogRm9yIFBDSSwgRXh0ZW5kZWQgbG9n
aWNhbCBibG9jayB3aWxsIGJlIGdlbmVyYXRlZCBieSB0aGUKPiArCQkgKiBjb250cm9sbGVyLgo+
ICsJCSAqLwo+ICsJCWlmIChucy0+Y3RybC0+b3BzLT5mbGFncyAmIE5WTUVfRl9NRVRBREFUQV9T
VVBQT1JURUQpIHsKPiArCQkJaWYgKCEobnMtPmZlYXR1cmVzICYgTlZNRV9OU19FWFRfTEJBUykp
Cj4gKwkJCQlucy0+ZmVhdHVyZXMgfD0gTlZNRV9OU19NRF9IT1NUX1NVUFBPUlRFRDsKPiArCQl9
CgpNYXliZToKCj4gKwlpZiAobnMtPm1zKSB7Cj4gKwkJaWYgKGlkLT5mbGJhcyAmIE5WTUVfTlNf
RkxCQVNfTUVUQV9FWFQpCj4gKwkJCW5zLT5mZWF0dXJlcyB8PSBOVk1FX05TX0VYVF9MQkFTOwo+
ICsKPiArCQkvKgo+ICsJCSAqIEZvciBQQ0ksIEV4dGVuZGVkIGxvZ2ljYWwgYmxvY2sgd2lsbCBi
ZSBnZW5lcmF0ZWQgYnkgdGhlCj4gKwkJICogY29udHJvbGxlci4KPiArCQkgKi8KPiArCQlpZiAo
bnMtPmN0cmwtPm9wcy0+ZmxhZ3MgJiBOVk1FX0ZfTUVUQURBVEFfU1VQUE9SVEVEKSB7Cj4gKwkJ
CWlmICghKG5zLT5mZWF0dXJlcyAmIE5WTUVfTlNfRVhUX0xCQVMpKQo+ICsJCQkJbnMtPmZlYXR1
cmVzIHw9IE5WTUVfTlNfTURfSE9TVF9TVVBQT1JURUQ7Cj4gKwkJfQoKVGhpcyBsb29rcyBhIGxp
dHRsZSBzdHJhbmdlIG5vdywgYnV0IEkgZ3Vlc3MgaXQgd2lsbCBtYWtlIG1vcmUgc2Vuc2UKd2l0
aCB0aGUgZmFicmljcyBhZGRpdGlvbi4gIEknbGwgdGFrZSBhbm90aGVyIGxvb2sgbGF0ZXIgaW4g
dGhlIHNlcmllcy4KCj4gK2VudW0gbnZtZV9uc19mZWF0dXJlcyB7Cj4gKwlOVk1FX05TX0VYVF9M
QkFTID0gMSA8PCAwLAo+ICsJTlZNRV9OU19NRF9IT1NUX1NVUFBPUlRFRCA9IDEgPDwgMSwKPiAr
CU5WTUVfTlNfTURfQ1RSTF9TVVBQT1JURUQgPSAxIDw8IDIsCj4gK307CgpQbGVhc2UgZG9jdW1l
bnQgdGhlIG1lYW5pbmcgb2YgZWFjaCBmbGFnLiAgSSBhbHNvIHN1c3BlY3QgdGhhdCBqdXN0Cm1v
dmluZyBleHQgdG8gYSBmbGFnIGZpcnN0IGFuZCB0aGFuIGFkZGluZyB0aGUgTlZNRV9OU19NRF9I
T1NUX1NVUFBPUlRFRApiaXQgbWlnaHQgbWFrZSBtb3JlIHNlbnNlLiAgSSdkIGFsc28gcmVuYW1l
IE5WTUVfTlNfTURfSE9TVF9TVVBQT1JURUQKdG8gTlZNRV9OU19NRVRBREFUQV9TVVBQT1JURUQu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1u
dm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
