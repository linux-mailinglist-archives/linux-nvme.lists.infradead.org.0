Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A5291CE
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 09:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1d3g8wR7ZDxOKbdQyN8i4D2yuNLe9aUThG9DAVkBUiU=; b=THZ0QXiNKWIhvbEzV+vRMpwUl
	gFB+vLOx6//WfMI9mp3N9DGFOF1wViGIsluLs9A8TlnERpBWFAGP4/14APkZp5T3DROOSux/OAwgu
	0f9TG789NQxZRDflcwl+29Fw9OKsZTRABBqxeb5P/m//vMc6hQ1NvA66liMpSArxakFb83h1FUR7U
	y2G8PmpwzqPw8qfivDDkvwenfi7cCXqvO9LCYwyMAiDMGI8K/OTbpslJKh75dAoPriVxpMdZdp/3z
	1kZL5Z4K7sg7C3OIpaJ2YYK8kPRt0CnBbZi0F9kXUB2t/fNkSeSrZW6YdZ1L+KXm1rU2Y5yWuo2bh
	UO13grzQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4iB-0000jH-84; Fri, 24 May 2019 07:33:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4i5-0000ir-U4
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 07:33:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 64A5BAF38;
 Fri, 24 May 2019 07:33:45 +0000 (UTC)
Subject: Re: [PATCH 1/4] nvme: separate out nvme_ctrl_state_name()
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-2-hare@suse.de>
 <58613917-e96b-a325-7de4-75eaf8a2a138@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <b6932c29-9f69-a372-9a31-f0c465fad78f@suse.de>
Date: Fri, 24 May 2019 09:33:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <58613917-e96b-a325-7de4-75eaf8a2a138@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_003350_112487_E3060830 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yNC8xOSA4OjQ2IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiArY29uc3QgY2hh
ciAqbnZtZV9jdHJsX3N0YXRlX25hbWUoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPj4gK3sKPj4g
K8KgwqDCoCBpZiAoKHVuc2lnbmVkKWN0cmwtPnN0YXRlIDwgQVJSQVlfU0laRShudm1lX2N0cmxf
c3RhdGVfbmFtZXMpICYmCj4+ICvCoMKgwqDCoMKgwqDCoCBudm1lX2N0cmxfc3RhdGVfbmFtZXNb
Y3RybC0+c3RhdGVdKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIG52bWVfY3RybF9zdGF0ZV9u
YW1lc1tjdHJsLT5zdGF0ZV07Cj4+ICvCoMKgwqAgcmV0dXJuICJ1bmtub3duIHN0YXRlIjsKPiAK
PiBNYXliZSBqdXN0ICJ1bmtub3duIj8KPiAKPiBPdGhlcndpc2UgbG9va3MgZmluZS4uCgpXZWxs
LCB0aGUgb3JpZ2luYWwgY29kZSBoYWQgJ3Vua25vd24gc3RhdGUnLgpTbyBJIHRob3VnaHQgdG8g
a2VlcCB0aGlzIGJlaGF2aW91ci4KQnV0IHllYWgsIEkgbGlrZSB0aGUgJ3Vua25vd24nIGJldHRl
ciwgdG9vLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFt
bGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICAr
NDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7D
vHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgK
SFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
