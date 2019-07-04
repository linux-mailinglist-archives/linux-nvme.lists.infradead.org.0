Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA56C5F7B4
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 14:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hn9vqEayHhQIFeZGhTKuWbZNgYhyjnr2kjeZ6h/+qq8=; b=OeYFefjhUPWxYe
	vzxRD7SMafegTj0EF7zRBTKpWniIUNk33Bz8AsO6x6fZVkcqkwij48BRYAEkFdk4spv+WxBZfuJho
	qf0+j3Q+g7khOet3ZR50lpbaPF+8dpQtGnkxarwNmB27z78syiVwLgUsbBz8a97upc7zND9kJcSRY
	TfpS2Dxs4Q2id/kdllukEJq31ZTe8eUzx3bzSRLfRq2ldq+Xw3Qmnz+/b9XClai0DxjbUDEYcZdZw
	Qf1KKIhwoRajpYu7hXk2XH2XwIOHaRf9UBSzHcr28qDWLcWVz6eE6RsD1MwBIvfwSoBtCubRGhScS
	cWGfQA9ovG+LYOdUG3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0Yk-0007Uz-Eb; Thu, 04 Jul 2019 12:09:54 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0YV-0007UN-Hn
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 12:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1562242173;
 s=strato-dkim-0002; d=rohdewald.de;
 h=References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=BpgYVkPfZBFi8s1ezOd/3WuNBVf5cuI70chU89RJUe8=;
 b=QonCSMJaMBuzu5F19Kf/rdxrBYsVqXP69mYZrCqh76RN+BtjV58NkTLPtMNdgMY4p+
 uK/okFlVbfDfZYOKX3h8EkCPmT7w7SyvFCXAch+4TeQeNqW86Nz5mVU8fYfK6K0JqV6y
 2E7QVR9hFzZl+2H7iQf85YTSeTxAOaWsTB/Dyg7+BxHgl+UYLCyxEg4pqjnAijw3Sw/H
 WTQNE/Qs8+9o1ktON6yoYy4On3L85P4zpuiaWhBRi27J1dBhGUV6EaCevJgPSt0N1kPT
 socKQhpfJLHNdCgfzbUytPUh78tLONjzwkIqjiTVHgK+WMq8iA0cUFIn5X5MFItQPa11
 MpNg==
X-RZG-AUTH: ":O2MIc0epdfgAjoV+frHI3UhxNCLBO5P+YT7khnlEaB0/xTIC/6v6hbEcd4F3zIbh4ScT1vedvQ=="
X-RZG-CLASS-ID: mo00
Received: from skull.fritz.box by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id K00eaav64C9Q7Un
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 4 Jul 2019 14:09:26 +0200 (CEST)
Message-ID: <10ac1082dc1c5061628a62f9bf2692886f8fbbb0.camel@rohdewald.de>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
From: Wolfgang Rohdewald <wolfgang@rohdewald.de>
To: Ming Lei <ming.lei@redhat.com>
Date: Thu, 04 Jul 2019 14:09:24 +0200
In-Reply-To: <20190626012654.GA23698@ming.t460p>
References: <92778741dff3723fc94cd75df3043adc9c8bf21a.camel@rohdewald.de>
 <20190625091704.GA30606@ming.t460p>
 <CAOSXXT5PgPJqouD0G7qJjar5tmy-9z+wWdFMqpD2K1=5vQZ+HA@mail.gmail.com>
 <20190625094532.GA11214@ming.t460p> <20190625095013.GA1353@lst.de>
 <336692273232ee2441e30e7e2a1c542201854010.camel@rohdewald.de>
 <20190625132900.GA22428@ming.t460p>
 <6e23e6656188778c22e4aef04b6572c247103972.camel@rohdewald.de>
 <20190626012654.GA23698@ming.t460p>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_050940_192122_9064DE98 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@gmail.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gTWksIDIwMTktMDYtMjYgYXQgMDk6MjYgKzA4MDAsIE1pbmcgTGVpIHdyb3RlOgo+IEkgY2Fu
IHVuZGVyc3RhbmQgdGhlIGlzc3VlIG5vdywgYW5kIHRoZSBpc3N1ZSBpc24ndCByZWxhdGVkIHdp
dGggYmlvCj4gc3BsaXQsIGFuZCBpdCBpcyBpbiB0aGUgbm9ybWFsIGJpbyBtZXJnZSBjb2RlOiBi
aW92ZWNfcGh5c19tZXJnZWFibGUoKQo+IHdoaWNoIG1lcmdlcyB0d28gYmlvcyBpZiB0aGVpciBi
dmVjcyBhcmUgcGh5c2ljYWxseSBjb250aW51b3VzLCBhbmQgbm90IGNvbnNpZGVyCj4gbWF4IHNl
Z21lbnQgc2l6ZSBsaW1pdCwgd2hpY2ggaXMgc3RpbGwgYXBwbGllZCBpbiBibGtfYnZlY19tYXBf
c2coKSwKPiB0aGVuIHNnIHdpdGggdW5hbGlnbmVkIHZpcnQgYm91bmRhcnkgaXMgbWFkZS4KPiAK
PiBDaHJpc3RvcGgncyBwYXRjaCAwOTMyNGQzMmQyYTA4ICgiYmxvY2s6IGZvcmNlIGFuIHVubGlt
aXRlZCBzZWdtZW50IHNpemUgb24gcXVldWVzCj4gd2l0aCBhIHZpcnQgYm91bmRhcnkiKSBjYW4g
Zml4IHRoZSBpc3N1ZSwgYnV0IGFub3RoZXIgcmVncmVzc2lvbiBtaWdodCBiZQo+IGNhdXNlZCBi
ZWNhdXNlIG9mIHRvbyBiaWcgc2VnbWVudCBzaXplIGZyb20gdmlldyBvZiBJT01NVS4KPiAKPiBB
bmQgdGhlIGZvbGxvd2luZyBwYXRjaCBzaG91bGQgZml4IHRoZSA1LjEgaXNzdWUgdG9vOgo+IAo+
IGRpZmYgLS1naXQgYS9ibG9jay9ibGstbWVyZ2UuYyBiL2Jsb2NrL2Jsay1tZXJnZS5jCj4gaW5k
ZXggMWM5ZDRmMGY5NmVhLi5mZjY5YjdkZDIxNzkgMTAwNjQ0Cj4gLS0tIGEvYmxvY2svYmxrLW1l
cmdlLmMKPiArKysgYi9ibG9jay9ibGstbWVyZ2UuYwo+IEBAIC02MCw3ICs2MCw4IEBAIHN0YXRp
YyBpbmxpbmUgYm9vbCBiaW9fd2lsbF9nYXAoc3RydWN0IHJlcXVlc3RfcXVldWUgKnEsCj4gICAg
ICAgICAgKi8KPiAgICAgICAgIGJpb19nZXRfbGFzdF9idmVjKHByZXYsICZwYik7Cj4gICAgICAg
ICBiaW9fZ2V0X2ZpcnN0X2J2ZWMobmV4dCwgJm5iKTsKPiAtICAgICAgIGlmIChiaW9zX3NlZ3Nf
bWVyZ2VhYmxlKHEsIHByZXYsICZwYiwgJm5iKSkKPiArICAgICAgIGlmIChiaW9zX3NlZ3NfbWVy
Z2VhYmxlKHEsIHByZXYsICZwYiwgJm5iKSAmJiBwcmV2LT5iaV9zZWdfYmFja19zaXplICsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBuZXh0LT5iaV9zZWdfZnJvbnRfc2l6ZSA8IHF1ZXVlX21h
eF9zZWdtZW50X3NpemUocSkpCj4gICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiAgICAg
ICAgIHJldHVybiBfX2J2ZWNfZ2FwX3RvX3ByZXYocSwgJnBiLCBuYi5idl9vZmZzZXQpOwo+ICB9
CgpJIHdvbmRlciB3aHkgdGhpcyBpcyBub3QgaW4gNS4xLjE2CgotLSAKbWl0IGZyZXVuZGxpY2hl
biBHcsO8c3NlbgoKV29sZmdhbmcgUm9oZGV3YWxkCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
