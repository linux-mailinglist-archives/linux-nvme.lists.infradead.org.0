Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBE16A6D5
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 12:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMxnIk5/H6+IBMt3h653qlMyO+/lRhKFiwXzrnQjyHE=; b=kVqkuu+Kc38Q/N
	sLtvL7HBxSboRYz1iCXstcVydJaVM8MD58EDdU2aIlbq+/WV4uZBjgjNx5FdVpAvH40oDUdKGIH9s
	UqH99CBDOiKySvDPFcpfzkvbPp9YPO9qcxpbncoYYMiBC0K7bhpJdAzEXXhfrEay8616Ff/n9lJer
	37KOn3j31RbNZ/STN4M0FqVzc8Iiya7y9XQi37SZhNYzQlAD0bbiGKeDbmfOfvZn6a+vXrV0t+WTG
	lCIuh85Sw6cWzvUpylNdyd2MNs0waZtMXvrLCK/eqIa/OPoTJS3CxLW46BIZvmdcEwnArT76kxG8W
	QHqDZ+lAfc5Y+3JUVONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnL7Q-00020D-Kn; Tue, 16 Jul 2019 10:55:36 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnL74-0001tL-An
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 10:55:16 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6GAt4Tw022402;
 Tue, 16 Jul 2019 05:55:05 -0500
Message-ID: <f446941bd5d670e5d771c7003ad8278e424b4da1.camel@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>, Ming Lei <tom.leiming@gmail.com>
Date: Tue, 16 Jul 2019 20:55:03 +1000
In-Reply-To: <20190716093617.GB32562@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <20190716093617.GB32562@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_035514_803785_770ADD7A 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA3LTE2IGF0IDExOjM2ICswMjAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90
ZToKPiBPbiBUdWUsIEp1bCAxNiwgMjAxOSBhdCAwMzoxMjowNlBNICswODAwLCBNaW5nIExlaSB3
cm90ZToKPiA+IEl0IHNob3VsZCBiZSBjYXVzZWQgYnkgdGhlIGZvbGxvd2luZyBjb21taXQsIGFu
ZCB0aGF0IHBhdGNoIHVzZXMKPiA+IHNpbmdsZSBtYXBwaW5nIHNpemUgdG8gbGltaXQgbWF4IGh3
IHNlY3RvcnMsIGFuZCBsb29rcyB0aGF0IHdheQo+ID4gaXMgd3JvbmcuIEZvciBleGFtcGxlLCBv
biBxZW11LCBtYXhfaHdfc2VjdG9ycyBpcyBkZWNyZWFzZWQgdG8KPiA+IDUxMi4gWW91IGNhbiB0
cnkgdG8gcmV2ZXJ0IHRoZSBwYXRjaCBhbmQgc2VlIGlmIGl0IG1ha2VzIGEgZGlmZmVyZW5jZS4K
PiA+IAo+ID4gSSBmZWVsIHdlIG1pZ2h0IG5lZWQgdGhlIG1heCBzZWdtZW50IHNpemUgbGltaXQg
dG9vLgo+IAo+IE5vLCB3aXRoIHN3aW90bGIgaXQgcmVhbGx5IGlzIHRoZSB3aG9sZSByZXF1ZXN0
IHNpemUgdGhhdCDRlnMgbGltaXRlZAo+IGJ5IHRoZSBzd2lvdGxiIGJ1ZmZlciBzaXplLiAgU2lt
aWxhciBmb3IgcG90ZW50aWFsIGlvbW11cyB3aGVyZQo+IGFnYWluIGl0IGlzIHRoZSB3aG9sZSB0
aGluZy4KPiAKPiBCdXQgbG9va2luZyBhdCB0aGUgaW1wbGVtZW50YXRpb24gb2YgZG1hX2RpcmVj
dF9tYXhfbWFwcGluZ19zaXplIEkKPiB0aGluayB3ZSBuZWVkIHRvIHJlbGF4IGl0IC0gaXQgY3Vy
cmVudGx5IGxpbWl0cyB0aGUgc2l6ZSBhcyBzb29uCj4gYXMgc3dpb3RsYiBpcyBlbmFibGVkLCBh
bmQgbm90IGp1c3QgaWYgd2UgbmVlZCBpdCBmb3IgYSBnaXZlbiBkZXZpY2UuCj4gCj4gV2UgaGF2
ZSBzb21lIG9wZW4gY29kZWQgdmVyc2lvbnMgb2YgdGhvc2UgY2hlY2tzIGVsc2V3aGVyZSwgbGV0
IG1lCj4gY29vayB1cCBhIHNlcmllcyB0byBzb3J0IHRoYXQgbWVzcyBvdXQuCj4gCj4gQmVuLCBp
biB0aGVuIG1lYW50aW1lIGNhbiB5b3UgdHJ5IGEgcmV2ZXJ0IG9mIHRoZSBjb21taXQgTWluZyBp
ZGVudGlmaWVkPwo+IFRoYXQgaXMgb2J2aW91c2x5IG5vdCB0aGUgcHJvcGVyIGZpeCwgYnV0IGl0
IHdvdWxkIGhlbHAgdmFsaWRhdGluZyB0aGUKPiBoeXBvdGhlc2lzLgoKU3VyZSBJIHdhcyBnb2lu
ZyB0byBkbyBpdCBhbnl3YXlzLiBJIHNjcmV3ZWQgdXAgbXkgcmVtb3RlIGFjY2Vzcwp0b25pZ2h0
IHNvIGl0IHdpbGwgaGF2ZSB0byB3YWl0IGZvciB0b21vcnJvdyB0aG91Z2guCgpDaGVlcnMsCkJl
bi4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
