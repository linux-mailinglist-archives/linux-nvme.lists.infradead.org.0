Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF03CFE2D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6sXQsqwGEVjqVCQnH5wqpA+AxXYU4MmBD5JUB9HZUmg=; b=bDhekGD0upbp49kLQaEJulfdU
	E67/263hWYpqWJ9TK9+z7TbAzA/FcC1QkG8cYgJ5uBK9KbTZMVvwBU6c00rOJGVKriOoMYGm58hyN
	KPMVChzN9/4Dl2prSaQTbz4Wvh4BzcRUfguOkEQiKAGaHeHE7S72yr+8OuJSKO0LR8vlxJOyvGyOg
	BTq7i3BpKoUP3Z19PPVbPoXI3t7kSOKeckbFh1HAPBErCcCIoHJzs/FIYTToVbtPQQn+Ni8hu9bDt
	4yhmKsoU/x6kdH17e3W/mgxQP0p2bmVxslMZopMdWLLX4WxdHBf77V7bJLock9GAKTMhkwaMK8zam
	SkWImAZAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW0b-0006y4-64; Tue, 30 Apr 2019 16:53:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW0V-0006xe-PM
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:53:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40B3DAE3C;
 Tue, 30 Apr 2019 16:53:26 +0000 (UTC)
Subject: Re: [PATCHv2] nvme-multipath: split bios with the ns_head bio_set
 before submitting
To: Keith Busch <kbusch@kernel.org>
References: <20190430162745.39204-1-hare@suse.de>
 <20190430163350.GA25542@localhost.localdomain>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <a500ac28-135f-229f-32fd-c39eed90d5e8@suse.de>
Date: Tue, 30 Apr 2019 18:53:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430163350.GA25542@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095327_973556_7D2A2539 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8zMC8xOSA2OjMzIFBNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBPbiBUdWUsIEFwciAzMCwg
MjAxOSBhdCAwNjoyNzo0NVBNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+ICsJLyoK
Pj4gKwkgKiBUaGUgbmFtZXNwYWNlIG1pZ2h0IGJlIGdvaW5nIGF3YXkgYW5kIHRoZSBiaW8gbWln
aHQKPj4gKwkgKiBiZSBtb3ZlZCB0byBhIGRpZmZlcmVudCBxdWV1ZSB2aWEgYmxrX3N0ZWFsX2Jp
b3MoKSwKPj4gKwkgKiBzbyB3ZSBuZWVkIHRvIHVzZSB0aGUgYmlvX3NwbGl0IHBvb2wgZnJvbSB0
aGUgb3JpZ2luYWwKPj4gKwkgKiBxdWV1ZSB0byBhbGxvY2F0ZSB0aGUgYnZlY3MgZnJvbS4KPj4g
KwkgKi8KPj4gKwlibGtfcXVldWVfc3BsaXQocSwgKmJpbyk7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIF5eXl4KPiAKPiBTaG91bGRuJ3QgdGhhdCBiZSAnJmJpbyc/Cj4gCkxlbW1lIGNo
ZWNrIC4uLgoKL21lIGNyb3NzLWNoZWNrcyB0aGUgYnVpbGQgbG9ncwoKYW5kIGluZGVlZCwgeW91
IGFyZSBjb3JyZWN0LgoKV2lsbCBiZSByZXNlbmRpbmcuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRy
LiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2lu
ZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArNDkgOTExIDc0MDUz
IDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjog
RmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChB
RyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
