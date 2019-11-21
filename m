Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3703105528
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 16:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plBgkNS8aqTp7bDQyxxqL5SJGPfZFFGUFcpls+U1zVg=; b=BUPy9CLfMgxLrX
	A7UsSyjWWsK6xQ8EXrHyinr656Ct5wxWt3iW2UtHBca72ssjh8ESF7BAwiloYB174YLkZlH36GNdW
	OPLaQ8XZrbGNTd8CSbQTVxSh0Dqt0sq0/j2DhSL94tiCDdhgIIVwwomrfofO/Ci8tg4doVaYeSZFX
	1YhInRTZaAWXMxzFEQGE70IGXsNt22dU7ZUWEK1DM2HfHQz+ut1J62yZ/sfjeSFIZTatbDITrkFQf
	YIY94kvjk3EGpS17XUIfok2/z/uSOEHjPuc7whFe3BVRa9I7a13pejrzJruD7HsOfEtqf/pscH+a+
	uTz4Vv+e652eeiU+eW2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXoB5-0001HN-Lv; Thu, 21 Nov 2019 15:15:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXoB1-0001Gy-HY
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 15:15:24 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86D71206F4;
 Thu, 21 Nov 2019 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574349323;
 bh=fEHjqNm9XXSrwbG/QQt/3O3bpJbGuEfvd1JHCKJKC5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QoIdOpIANWLkgJlP3DULUqgquMoeEw2KOarXVhMhDdRoSFzg5RvBcvdNkBJEukHtC
 Kc4Se2O1DmlcXVvhkngksJ5wDdFojlyCsTBDO1OgTU01eiTRv9IZBT/WjwEhEqjWAV
 lYTwq7GGBVYbUOuA8bPy9L3rppC7nATbP5cOt7K8=
Date: Thu, 21 Nov 2019 08:15:20 -0700
From: Keith Busch <kbusch@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 1/2] nvme: hwmon: provide temperature min and max
 values for each sensor
Message-ID: <20191121151520.GA37858@C02WT3WMHTD6.wdl.wdc.com>
References: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
 <1573746001-20979-2-git-send-email-akinobu.mita@gmail.com>
 <20191120184827.GA12322@lst.de>
 <CAC5umyh8kbQTPh22CX6uEcR1jNEHxa+5HCjGDahnZ_i1k=cEPg@mail.gmail.com>
 <20191121142712.GC13249@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121142712.GC13249@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_071523_606138_4D43982D 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Akinobu Mita <akinobu.mita@gmail.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDY6Mjc6MTJBTSAtMDgwMCwgR3VlbnRlciBSb2VjayB3
cm90ZToKPiBPbiBUaHUsIE5vdiAyMSwgMjAxOSBhdCAxMDo0ODoyMVBNICswOTAwLCBBa2lub2J1
IE1pdGEgd3JvdGU6Cj4gPiAyMDE55bm0MTHmnIgyMeaXpSjmnKgpIDM6NDggQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBsc3QuZGU+Ogo+ID4gPgo+ID4gPiBPbiBGcmksIE5vdiAxNSwgMjAxOSBhdCAx
Mjo0MDowMEFNICswOTAwLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gPiA+ID4gKy8qIFRoZXNlIG1h
Y3JvcyBzaG91bGQgYmUgbW92ZWQgdG8gbGludXgvdGVtcGVyYXR1cmUuaCAqLwo+ID4gPiA+ICsj
ZGVmaW5lIE1JTExJQ0VMU0lVU19UT19LRUxWSU4odCkgRElWX1JPVU5EX0NMT1NFU1QoKHQpICsg
MjczMTUwLCAxMDAwKQo+ID4gPiA+ICsjZGVmaW5lIEtFTFZJTl9UT19NSUxMSUNFTFNJVVModCkg
KCh0KSAqIDEwMDBMIC0gMjczMTUwKQo+ID4gPgo+ID4gPiBEaWRuJ3Qgd2Ugd2FudCB0byBtb3Zl
IHRoaXMgdG8gYSBnZW5lcmljIGhlYWRlcj8KPiA+IAo+ID4gWWVzLiAgSSBzdGFydCBwcmVwYXJp
bmcgZm9yIDxsaW51eC90ZW1wZXJhdHVyZS5oPi4KPiA+IE9uY2UgdGhlIGNoYW5nZSBpcyBhY2Nl
cHRlZCwgSSdsbCBtb3ZlIHRoZSBtYWNyb3MgdG8gdGhlIGhlYWRlci4KPiAKPiBJIGFncmVlLCBp
dCBpcyBiZXR0ZXIgdG8ga2VlcCB0aGF0IGNoYW5nZSBzZXBhcmF0ZS4KCkkndmUgYWRkZWQgdGhl
c2UgdHdvIHBhdGNoZXMgYXMtaXMgZm9yIHRoZSBuZXh0IG52bWUtNS41IHB1bGwKcmVxdWVzdC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
