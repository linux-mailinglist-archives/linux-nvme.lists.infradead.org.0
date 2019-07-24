Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA3C72EEA
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 14:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g4fpRgKVZQ3UdpIyrPHY+qwCIQKmO3s/sZq5Z3Rduug=; b=IorR0PwE3IHNdp4lx6f9XBA0C
	uI7dJZ7S3jzVOIt765eUDM/SmVISLTbIRxUbeByzZFQibshwGI/8LL7bSqGuXpUHzF83H21TbEW7A
	zsahPeln4wdmY1wXNALy0dUap6Ip+CO2lPHHbv39gxVlNnb8DFbIMHBYqMwUZv3It/82bbuYXORII
	rpmhK0AA4yKCyHvaQF6cet6RieOPOX76Te1WPN6P6IihKS2L3TpuvAO5tH9/AGAfgo56/Us87964n
	enmtbGyFiDvAWe0FlYzJnajIAPwaCMNiBr7GukErs0gItsRpzCHpSWRiczC0ybFaIhdJ9s9X8/bz9
	zd4MH+jug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGSq-0000Fy-P2; Wed, 24 Jul 2019 12:33:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGSj-0000FQ-SP
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 12:33:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so44413373ljn.4
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 05:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=GaoCDSXmyFrm7VxWm7BtgHVYzHfueL/lVunnCb5uN9o=;
 b=DGxxUyURfsOCT3oV4yv1nfWODdW1wZ7LrghyMHQ0OznWQAI+JY1ZdRoPQrkBKNGVGj
 VtsYROvfvnOS2PViqJjLouUzYgBpDu39pH++l7WhHMAPBayAc0QUjIw01Li5SASErTQj
 oE38PjbfUfzEiGbSV7dk3uv/BM6cnL4TLxvi1bYnR1xO+2NzGQVryjFv4zG6VWHY8yRT
 XaXVlWPxZMPg/SMy1lOHo69Eqxrxb6/flV9BZqHZHDqyb2FJkKhJF7+WCszDA3F4Ym9k
 dmmi6l97nh+qZbkO4wzeR5nouq8gTUBc0cnpl7UOMqI2eHm2ZMjpi/WNfIgAV7UUwHGo
 OmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GaoCDSXmyFrm7VxWm7BtgHVYzHfueL/lVunnCb5uN9o=;
 b=l1z00Vcg7u8j6VPTgwv+ziDnynH7lTtPvb0KQZ2IK3muC2EAWFyGMPPCOIgWgDyA/r
 Y6irER5iIlRkVQXhyj+cElWEdnU5Mmky0SRKUt4zobzNyMnBUz48xKa6zGm3M7CJBgud
 uVmyOwT3M7Hd4jIi39RfJ56T+4s1rKWRh4MqtMSLK7Au1qsGyqmQ47VWdsrwx/mFXetB
 AGIAkcQke2zvrHCIYW1SOK4xDsLq0/F/PIOApSRYhN31jB/0citcjUgRj8Jzyuu8YzYQ
 hJgIoE2u/M0u6rWxuxFwFI0H4doHUfSY/8cBVpKHD7lizFn98AVSoQS6ht2Uqi1/759s
 auxA==
X-Gm-Message-State: APjAAAX/1FF4itoNTCTPwf3MdV8WP+tsqugo1149U4OJxln+wYDAADYD
 2FQi9h1K1HKW4jNpviEidqs=
X-Google-Smtp-Source: APXvYqwSuvGV6/Su8Cajcdns2Ffj39Dm9vnLpBkYKuLDXOloFJ9fRNSFp55b8kz8YAMxXoQB+59VVA==
X-Received: by 2002:a2e:9213:: with SMTP id k19mr40120613ljg.237.1563971620077; 
 Wed, 24 Jul 2019 05:33:40 -0700 (PDT)
Received: from [192.168.0.12] (2-111-91-225-cable.dk.customer.tdc.net.
 [2.111.91.225])
 by smtp.gmail.com with ESMTPSA id b68sm9718973ljb.0.2019.07.24.05.33.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 05:33:39 -0700 (PDT)
Subject: Re: [PATCH 1/5] lnvm: make data_len to sizeof() instead of magic
 number
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-2-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <80d59219-12b7-47da-d37e-9fd9941260de@lightnvm.io>
Date: Wed, 24 Jul 2019 14:33:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723183601.29370-2-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053341_919651_FAC22D88 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <birkelund@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMjMvMDcvMjAxOSAyMC4zNSwgTWlud29vIEltIHdyb3RlOgo+IFdlIGNhbiBoYXZlIGl0IGFz
IGEgc2l6ZW9mKCkgaW5zdGVhZCBvZiB0aGUgaGFyZC1jb2RlZCB2YWx1ZSBmb3IgdGhlCj4gZGF0
YSBzdHJ1Y3R1cmUuCj4KPiBDYzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPgo+IENj
OiBNYXRpYXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgo+IFNpZ25lZC1vZmYtYnk6IE1pbndv
byBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4gLS0tCj4gICBudm1lLWxpZ2h0bnZtLmMg
fCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9udm1lLWxpZ2h0bnZtLmMgYi9udm1lLWxpZ2h0bnZtLmMKPiBpbmRl
eCAwYjk5Nzg2Li5lOGNkY2NkIDEwMDY0NAo+IC0tLSBhL252bWUtbGlnaHRudm0uYwo+ICsrKyBi
L252bWUtbGlnaHRudm0uYwo+IEBAIC00NDIsNyArNDQyLDcgQEAgc3RhdGljIGludCBsbnZtX2dl
dF9pZGVudGl0eShpbnQgZmQsIGludCBuc2lkLCBzdHJ1Y3QgbnZtZV9udm1faWQgKm52bV9pZCkK
PiAgIAkJLm9wY29kZQkJPSBudm1lX252bV9hZG1pbl9pZGVudGl0eSwKPiAgIAkJLm5zaWQJCT0g
bnNpZCwKPiAgIAkJLmFkZHIJCT0gKF9fdTY0KSh1aW50cHRyX3QpbnZtX2lkLAo+IC0JCS5kYXRh
X2xlbgk9IDB4MTAwMCwKPiArCQkuZGF0YV9sZW4JPSBzaXplb2Yoc3RydWN0IG52bWVfbnZtX2lk
KSwKPiAgIAl9Owo+ICAgCj4gICAJcmV0dXJuIG52bWVfc3VibWl0X3Bhc3N0aHJ1KGZkLCBOVk1F
X0lPQ1RMX0FETUlOX0NNRCwgJmNtZCk7CgpXb3JrcyBmb3IgbWUuCgpQbGVhc2UgdXNlIHVzZSBt
eSBTaWduZWQtb2ZmLWJ5IGluc3RlYWQgb2YgUmV2aWV3ZWQtYnkgLSB0cmFkaXRpb25hbGx5IApL
ZWl0aCBoYXMgYmVlbiBraW5kIHRvIHdhaXQgdG8gcHVsbCBpbiBwYXRjaGVzIHVudGlsIEkgZ290
IGEgY2hhbmNlIHRvIApsb29rIGF0IHRoZW0gb24gR2l0aHViLiBIYXZpbmcgdGhlIHJldmlldyBo
ZXJlIG9uIHRoZSBtYWlsaW5nIGxpc3QgYW5kIApsYXRlciBhcyBhIHB1bGwgcmVxdWVzdCBvbiBn
aXRodWIgbWFrZXMgaXQgZXhwbGljaXQgdGhhdCBJIHNpZ25lZCBvZmYgb24gaXQuCgpTaWduZWQt
b2ZmLWJ5OiBNYXRpYXMgQmrDuHJsaW5nIDxtYXRpYXMuYmpvcmxpbmdAd2RjLmNvbT4KClRoYW5r
IHlvdSEKCi0gTWF0aWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
