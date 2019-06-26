Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06085726B
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gwolF7Gp6WaPn2/qFf1aC0NzMXGdmgirp6SS9iRmLo=; b=WGjKbT7alpALzS
	q/gb8mD2ztpatFvoEemGqMGqTou4r33EIHPxQFARk29vTVZ9FJStKrbjvaWtlLGp/ljHogLvKJSpb
	VnoYziYoLObWG4B6pUjFgYr9/m+33Ariwx899S5BfH+ojkRhJd+ZKMRvs9S6O4iG8CnchbB/g4Q7q
	FaNGyYZWe3yTk4yRFnQnKDEiZ2e9hnQ5i0Sb+z80iOb7ZJ6yGaVczkLpwfvFkOIHskHglmdq3U6zv
	pQwa5KfJuuu9cty9YDEQTzaycBqM5Xrf9GRjZ/4XGHGg5eWc5g8jbTBK/aaPTeTlBlcYAFZFLvsp+
	KlCcj2jR5HZAWmsH6Gag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEN9-0002o6-Dw; Wed, 26 Jun 2019 20:18:27 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEN1-0002ne-3z
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1561580294;
 s=strato-dkim-0002; d=rohdewald.de;
 h=References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=85rv0CAA+UD5aYxQ0jPNgkqohdUXvbkDCM7wo02lt20=;
 b=WdUcPqoebnIqotmgZcWTAQhwE9xszufx1Q8Y+21uX+EfBloOMnGzAxHkfYul5lfJMb
 GbM1OgjcS/TyLkG6Q7ATGH9Ea0UYlbTJDPH25vb1G+qwa6gAVi2fGNnHVR5MnzeOdq5P
 oy6XiSDcmXmF5Gwh5zvzLH/0yYsLCnInTqbcTIaWOf9kFfycRRtMo6ZWbL/Ad8440/OW
 n5kNxJMej1xbipMXhHLt5uj+FeNDJoAGM3XUeZ/rcN70gZBovqWAb2Xb21H61fptGSTA
 q2fdUBhWsAAITdKV36HzOTJfVyegtwfqhhPj7KK5UekJMgXiqOzYllnSrcZmjPm842y+
 973Q==
X-RZG-AUTH: ":O2MIc0epdfgAjoV+frHI3UhxNCLBO5P+YT7khnlEaB0/xTIC/6v6hbEcd4t3zIbpGQPXJPtfE+RucQ=="
X-RZG-CLASS-ID: mo00
Received: from skull.home by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id K00eaav5QKI3bTy
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 26 Jun 2019 22:18:03 +0200 (CEST)
Message-ID: <701ee07140bda40badba5e188c32fe9fe971ead9.camel@rohdewald.de>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
From: Wolfgang Rohdewald <wolfgang@rohdewald.de>
To: Ming Lei <ming.lei@redhat.com>
Date: Wed, 26 Jun 2019 22:18:01 +0200
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
X-CRM114-CacheID: sfid-20190626_131819_759763_38085B77 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gTWksIDIwMTktMDYtMjYgYXQgMDk6MjYgKzA4MDAsIE1pbmcgTGVpIHdyb3RlOgo+IEFuZCB0
aGUgZm9sbG93aW5nIHBhdGNoIHNob3VsZCBmaXggdGhlIDUuMSBpc3N1ZSB0b286Cj4gCj4gZGlm
ZiAtLWdpdCBhL2Jsb2NrL2Jsay1tZXJnZS5jIGIvYmxvY2svYmxrLW1lcmdlLmMKPiBpbmRleCAx
YzlkNGYwZjk2ZWEuLmZmNjliN2RkMjE3OSAxMDA2NDQKPiAtLS0gYS9ibG9jay9ibGstbWVyZ2Uu
Ywo+ICsrKyBiL2Jsb2NrL2Jsay1tZXJnZS5jCj4gQEAgLTYwLDcgKzYwLDggQEAgc3RhdGljIGlu
bGluZSBib29sIGJpb193aWxsX2dhcChzdHJ1Y3QgcmVxdWVzdF9xdWV1ZSAqcSwKPiAgICAgICAg
ICAqLwo+ICAgICAgICAgYmlvX2dldF9sYXN0X2J2ZWMocHJldiwgJnBiKTsKPiAgICAgICAgIGJp
b19nZXRfZmlyc3RfYnZlYyhuZXh0LCAmbmIpOwo+IC0gICAgICAgaWYgKGJpb3Nfc2Vnc19tZXJn
ZWFibGUocSwgcHJldiwgJnBiLCAmbmIpKQo+ICsgICAgICAgaWYgKGJpb3Nfc2Vnc19tZXJnZWFi
bGUocSwgcHJldiwgJnBiLCAmbmIpICYmIHByZXYtPmJpX3NlZ19iYWNrX3NpemUgKwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIG5leHQtPmJpX3NlZ19mcm9udF9zaXplIDwgcXVldWVfbWF4X3Nl
Z21lbnRfc2l6ZShxKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ICAgICAgICAg
cmV0dXJuIF9fYnZlY19nYXBfdG9fcHJldihxLCAmcGIsIG5iLmJ2X29mZnNldCk7Cj4gIH0KClNv
IGZhciwgdGhpcyB3b3JrcyBmb3IgbWUgd2l0aCA1LjEuMTUuIEJlZm9yZSwgdGhlIGJ1ZyB3b3Vs
ZCB0cmlnZ2VyIHdpdGhpbiAKc2Vjb25kcyBhZnRlciBzdGFydGluZyB3aW5kb3dzIDEwIHVwZGF0
ZSBpbiB2aXJ0dWFsYm94IDYuMC42LCBub3cgaXQgZG9lcyBub3QuCgotLSAKbWl0IGZyZXVuZGxp
Y2hlbiBHcsO8c3NlbgoKV29sZmdhbmcgUm9oZGV3YWxkCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
