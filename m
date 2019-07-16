Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14CE6AF99
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 21:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AukIR7t3jJQVKncVIF+Na3LGfQuKWxZgf6usGtfRgNc=; b=QkPGNdtCC4BkK6
	LGk1PPrEfHVfbpS/ppOCRTEFTOXN8zzVWjNs0+lLf7SStrM9XILcLYgqfRP8HajLVCz2Jfyej7kFo
	Eo8LYZCcJDz2Y3tTjMXH7oozd3rEJfaPijLcpbqNHAxQJrr83XpTWI9LsrOiYzgF6QLlrLAoVfEby
	JDgBlZrs2hua7/br3ts3QHRNfy4A3Tk15tx4hsgvfzvPUCBETQgW02WP6H6szW3q3+oaoRA0lLojg
	shXTRYZT2Gm5wdwsBo6yMZmh8+zNXP7T9RY698xk4PxKLmN9vi/1F00Y5iWAofqUrIy0NjpXPP3Zs
	XjnSF4V+6TgHxxKyLUqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSsi-0001us-Ov; Tue, 16 Jul 2019 19:12:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSsW-0001uS-AZ
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 19:12:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B2A8D227A81; Tue, 16 Jul 2019 21:12:41 +0200 (CEST)
Date: Tue, 16 Jul 2019 21:12:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: nvme-5.3 ssd performance regression
Message-ID: <20190716191241.GA9666@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <20190716093617.GB32562@lst.de> <20190716124741.GA2853@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716124741.GA2853@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_121244_515271_64E6BDCE 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jens Axboe <axboe@fb.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDg6NDc6NDJQTSArMDgwMCwgTWluZyBMZWkgd3JvdGU6
Cj4gPiBObywgd2l0aCBzd2lvdGxiIGl0IHJlYWxseSBpcyB0aGUgd2hvbGUgcmVxdWVzdCBzaXpl
IHRoYXQg0ZZzIGxpbWl0ZWQKPiA+IGJ5IHRoZSBzd2lvdGxiIGJ1ZmZlciBzaXplLiAgU2ltaWxh
ciBmb3IgcG90ZW50aWFsIGlvbW11cyB3aGVyZQo+ID4gYWdhaW4gaXQgaXMgdGhlIHdob2xlIHRo
aW5nLgo+IAo+IERvY3VtZW50YXRpb24vRE1BLUFQSS50eHQ6Cj4gCj4gCQlzaXplX3QKPiAJCWRt
YV9tYXhfbWFwcGluZ19zaXplKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gCQo+IAlSZXR1cm5zIHRo
ZSBtYXhpbXVtIHNpemUgb2YgYSBtYXBwaW5nIGZvciB0aGUgZGV2aWNlLiBUaGUgc2l6ZSBwYXJh
bWV0ZXIKPiAJb2YgdGhlIG1hcHBpbmcgZnVuY3Rpb25zIGxpa2UgZG1hX21hcF9zaW5nbGUoKSwg
ZG1hX21hcF9wYWdlKCkgYW5kCj4gCW90aGVycyBzaG91bGQgbm90IGJlIGxhcmdlciB0aGFuIHRo
ZSByZXR1cm5lZCB2YWx1ZS4KPiAKPiBBbmQgZG1hX21hcF9zaW5nbGUoKSAmIGRtYV9tYXBfcGFn
ZSgpIGlzIHVzdWFsbHkgZm9yIG1hcHBpbmcgc2luZ2xlCj4gZWxlbWVudCBvZiBTR0wsIGluc3Rl
YWQgb2Ygd2hvbGUgU0dMLgoKLi4uIGFuZCBvdGhlcnMuICBBbmQgaWYgeW91IGxvb2sgYXQgdGhl
IGFjdHVhbCBzd2lvdGxiIGNvZGUgaXQgaXMKcHJldHR5IGNsZWFyIHRoYXQgdGhlIHdob2xlIHJl
cXVlc3QgY291bnRzLiAgQnV0IEknbGwgbWFrZSBzdXJlIHRvCm1ha2UgY2xhcmlmeSB0aGUgZG9j
dW1lbnRhdGlvbiB3aGVuIGZpeGluZyB0aGUgaXNzdWUuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
