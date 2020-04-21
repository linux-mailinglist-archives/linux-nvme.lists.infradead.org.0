Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD8D1B259D
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 14:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUm1vLRTYf5RLrolCCzEHxsk0XLmDypKd0vZWWCL8W4=; b=PxVZHB6ueVoq+6
	5Te1izfQkX1oII/pkYIRp0Z7bIxbCCo0YodWNEYk/Mx/TKB12Nne0NEequl2zybuSvsuw8D0WZH62
	haZqx1dLD1SI9yKhN7yiWoaYt3U3UV7sQ0mYrbwpA+TJuisYrgM166NiO4EaGjly8WsQGTdBW9nF9
	pgz15ADAA2ihn7KlHCRsl76feKQkznJdIzONIlcZSNABygYfMVn15V1W1YlgPodlvmHjC6wvkh80+
	K28/GxCyDmE8BJPa1WzktwQOVFsSAJ1SX6efd9MPMtl5wxC2bZQAM9H4/ucP/g+kipWTq53lOYkOS
	PxHthKRaiZbmAveFLd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrjD-0006jd-Nf; Tue, 21 Apr 2020 12:10:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrix-0006dn-D9
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 12:10:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6E6EE68C4E; Tue, 21 Apr 2020 14:09:57 +0200 (CEST)
Date: Tue, 21 Apr 2020 14:09:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 04/17] nvme: introduce max_integrity_segments ctrl
 attribute
Message-ID: <20200421120957.GE26432@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-6-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327171545.98970-6-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_050959_592521_02B6FD99 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCBNYXIgMjcsIDIwMjAgYXQgMDg6MTU6MzJQTSArMDMwMCwgTWF4IEd1cnRvdm95IHdy
b3RlOgo+ICsJLyoKPiArCSAqIE5WTWUgUENJIGRyaXZlciBkb2Vzbid0IHN1cHBvcnQgRXh0ZW5k
ZWQgTEJBIGZvcm1hdCBhbmQgc3VwcG9ydHMKPiArCSAqIG9ubHkgYSBzaW5nbGUgaW50ZWdyaXR5
IHNlZ21lbnQgZm9yIGEgc2VwYXJhdGUgY29udGlndW91cyBidWZmZXIKPiArCSAqIG9mIG1ldGFk
YXRhLgo+ICsJICovCgpUaGF0IGlzbid0IHN0cmljdGx5IHRydWUsIFBDSWUgY2FuIGFsc28gc3Vw
cG9ydCBTR0xzIGZvciBtZXRhZGF0YS4KCkknZCByYXRoZXIg0ZVheSBzb21ldGhpbmcgbGlrZToK
CgkvKgoJICogV2UgZG8gbm90IHN1cHBvcnQgYW4gU0dMIGZvciBtZXRhZGF0YSAoeWV0KSwgc28g
d2UgYXJlIGxpbWl0ZWQKCSAqIHRvIGEgc2luZ2xlIGludGVncml0eSBzZWdtZW50IGZvciB0aGUg
c2VwYXJhdGUgbWV0YWRhdGEgcG9pbnRlci4KCSAqLwoKRXhjZXB0IGZvciB0aGF0IHRoaXMgbG9v
a3MgZ29vZDoKClJldmlld2VkLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
