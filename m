Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D8388B31
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3NNNyATtkoI4xgZdIxajiNHM9wu8ZsACb/rv8wM+yg8=; b=SjG/DZb6KH4pPbdh5sklvSxEv
	42vaClfK6IVF1PzI2AAYhb38EaeIXyoW8trEnw7ZiIY1ad/jeRCKoyIHHebUiRGI/BtnNMhJHD1g6
	pIgZDKdSX3belSIuEx19evti2hRJ2T8EeRS/mTNAR9OJz9dmP/E8g8abMzzrZ3Avon5NjDHEKzpJ0
	OyYLUghRottFAGb2isCk1lGdPMCRBYzt5D/4A3mrDstCHRDYPgWzYWEW/gy1nopBSfNjt17FtYVU1
	amW3MhphGrWGYPpABcXy8r4VqWvHSSOqo7q39a+n/j6uvYUxykin8CagwOCIgxF9QBHHl9kDfQhBo
	mEX5fy1wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQ9N-0001G7-64; Sat, 10 Aug 2019 12:07:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQ94-0001Ec-6l
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:06:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CCBACACB7;
 Sat, 10 Aug 2019 12:06:48 +0000 (UTC)
Subject: Re: [PATCH v3 2/7] nvme: return nvme_error_status for sync commands
 failure
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-3-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <306e0f03-a3a9-afe0-dfee-b6ba34c91102@suse.de>
Date: Sat, 10 Aug 2019 14:06:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_050650_389057_05C49585 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IGNhbGxlcnMgc2hvdWxk
IG5vdCByZWx5IG9uIHJhdyBudm1lIHN0YXR1cywgYmxrX3N0YXR1c190Cj4gaXMgbW9yZSBhcHBy
b3ByaWF0ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJn
Lm1lPgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgNCArKy0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMK
PiBpbmRleCBkMmI0ZjU3ZmE2N2UuLmY0MzVjODVjNDA2MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAt
ODAzLDcgKzgwMyw3IEBAIGludCBfX252bWVfc3VibWl0X3N5bmNfY21kKHN0cnVjdCByZXF1ZXN0
X3F1ZXVlICpxLCBzdHJ1Y3QgbnZtZV9jb21tYW5kICpjbWQsCj4gICAJaWYgKG52bWVfcmVxKHJl
cSktPmZsYWdzICYgTlZNRV9SRVFfQ0FOQ0VMTEVEKQo+ICAgCQlyZXQgPSAtRUlOVFI7Cj4gICAJ
ZWxzZQo+IC0JCXJldCA9IG52bWVfcmVxKHJlcSktPnN0YXR1czsKPiArCQlyZXQgPSBudm1lX2Vy
cm9yX3N0YXR1cyhyZXEpOwo+ICAgIG91dDoKPiAgIAlibGtfbXFfZnJlZV9yZXF1ZXN0KHJlcSk7
Cj4gICAJcmV0dXJuIHJldDsKUGxlYXNlIHVwZGF0ZSB0aGUgZGVzY3JpcHRpb24gZm9yIHRoaXMg
ZnVuY3Rpb24sIHRvby4KCj4gQEAgLTg5NCw3ICs4OTQsNyBAQCBzdGF0aWMgaW50IG52bWVfc3Vi
bWl0X3VzZXJfY21kKHN0cnVjdCByZXF1ZXN0X3F1ZXVlICpxLAo+ICAgCWlmIChudm1lX3JlcShy
ZXEpLT5mbGFncyAmIE5WTUVfUkVRX0NBTkNFTExFRCkKPiAgIAkJcmV0ID0gLUVJTlRSOwo+ICAg
CWVsc2UKPiAtCQlyZXQgPSBudm1lX3JlcShyZXEpLT5zdGF0dXM7Cj4gKwkJcmV0ID0gbnZtZV9l
cnJvcl9zdGF0dXMocmVxKTsKPiAgIAlpZiAocmVzdWx0KQo+ICAgCQkqcmVzdWx0ID0gbGUzMl90
b19jcHUobnZtZV9yZXEocmVxKS0+cmVzdWx0LnUzMik7Cj4gICAJaWYgKG1ldGEgJiYgIXJldCAm
JiAhd3JpdGUpIHsKPiAKQnV0IGV2ZW4gd2l0aCB0aGlzIGNoYW5nZSB3ZSdsbCBiZSBsZWFraW5n
IGJsa19zdGF0dXNfdCBlcnJvciBjb2RlIHRvIAp0aGluZ3MgbGlrZSBudm1lX2lvY3RsKCkuIEkn
ZCByYXRoZXIgaGF2ZSBpdCBtYXBwZWQgdG8gcG9zaXggZXJyb3IgY29kZXMgCmhlcmUgYnkgY2Fs
bGluZyBibGtfc3RhdHVzX3RvX2Vycm5vKCkuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5u
ZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJl
QHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApT
VVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXgg
SW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xy
bmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
