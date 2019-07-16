Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA436A8E7
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 14:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX1bj/CwlhfZDONRu3T8kR/GY28IUgYako4p5Ts2LEM=; b=LUj1eRj5m4p8x0
	BZ0tqt6+LvfdHP8V4rhtz4o4GhoVNmbi6bSlm3R4Fy+h5GZJTAHh/1mt2Y/jT45P9vjf69mbcbO6K
	Hq9jBxxi4iBk3qzjxnBGvN6LVq5n5n263fbcsOky0xVetioV+t9dcfmc0Ye4baHE6DkJleWP+IL0C
	Ru2Ojh1Fv0gpa+LGTQJdK962QpgPKfVuS3eZft+UJ1tr892LrAYQPCui9ooCBfMCtFFBkXtKGYU/H
	pnOT5b2VvZtEP8otn4rYEC5BlYhsnzfHHGKQFdGVKYdvxkycFnm/MJ47ELtIUOeW/2rHarUsgHl2M
	ryOuQkJpzOTXx10Kppvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMsD-0000z3-Ud; Tue, 16 Jul 2019 12:48:02 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMs7-0000yX-0s
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 12:47:56 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E8096308FB93;
 Tue, 16 Jul 2019 12:47:53 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ED8719C59;
 Tue, 16 Jul 2019 12:47:47 +0000 (UTC)
Date: Tue, 16 Jul 2019 20:47:42 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: nvme-5.3 ssd performance regression
Message-ID: <20190716124741.GA2853@ming.t460p>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <20190716093617.GB32562@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716093617.GB32562@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 16 Jul 2019 12:47:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_054755_086965_493CE258 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-nvme <linux-nvme@lists.infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMTE6MzY6MTdBTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDM6MTI6MDZQTSArMDgwMCwgTWlu
ZyBMZWkgd3JvdGU6Cj4gPiBJdCBzaG91bGQgYmUgY2F1c2VkIGJ5IHRoZSBmb2xsb3dpbmcgY29t
bWl0LCBhbmQgdGhhdCBwYXRjaCB1c2VzCj4gPiBzaW5nbGUgbWFwcGluZyBzaXplIHRvIGxpbWl0
IG1heCBodyBzZWN0b3JzLCBhbmQgbG9va3MgdGhhdCB3YXkKPiA+IGlzIHdyb25nLiBGb3IgZXhh
bXBsZSwgb24gcWVtdSwgbWF4X2h3X3NlY3RvcnMgaXMgZGVjcmVhc2VkIHRvCj4gPiA1MTIuIFlv
dSBjYW4gdHJ5IHRvIHJldmVydCB0aGUgcGF0Y2ggYW5kIHNlZSBpZiBpdCBtYWtlcyBhIGRpZmZl
cmVuY2UuCj4gPiAKPiA+IEkgZmVlbCB3ZSBtaWdodCBuZWVkIHRoZSBtYXggc2VnbWVudCBzaXpl
IGxpbWl0IHRvby4KPiAKPiBObywgd2l0aCBzd2lvdGxiIGl0IHJlYWxseSBpcyB0aGUgd2hvbGUg
cmVxdWVzdCBzaXplIHRoYXQg0ZZzIGxpbWl0ZWQKPiBieSB0aGUgc3dpb3RsYiBidWZmZXIgc2l6
ZS4gIFNpbWlsYXIgZm9yIHBvdGVudGlhbCBpb21tdXMgd2hlcmUKPiBhZ2FpbiBpdCBpcyB0aGUg
d2hvbGUgdGhpbmcuCgpEb2N1bWVudGF0aW9uL0RNQS1BUEkudHh0OgoKCQlzaXplX3QKCQlkbWFf
bWF4X21hcHBpbmdfc2l6ZShzdHJ1Y3QgZGV2aWNlICpkZXYpOwoJCglSZXR1cm5zIHRoZSBtYXhp
bXVtIHNpemUgb2YgYSBtYXBwaW5nIGZvciB0aGUgZGV2aWNlLiBUaGUgc2l6ZSBwYXJhbWV0ZXIK
CW9mIHRoZSBtYXBwaW5nIGZ1bmN0aW9ucyBsaWtlIGRtYV9tYXBfc2luZ2xlKCksIGRtYV9tYXBf
cGFnZSgpIGFuZAoJb3RoZXJzIHNob3VsZCBub3QgYmUgbGFyZ2VyIHRoYW4gdGhlIHJldHVybmVk
IHZhbHVlLgoKQW5kIGRtYV9tYXBfc2luZ2xlKCkgJiBkbWFfbWFwX3BhZ2UoKSBpcyB1c3VhbGx5
IGZvciBtYXBwaW5nIHNpbmdsZQplbGVtZW50IG9mIFNHTCwgaW5zdGVhZCBvZiB3aG9sZSBTR0wu
CgpUaGFua3MsCk1pbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
