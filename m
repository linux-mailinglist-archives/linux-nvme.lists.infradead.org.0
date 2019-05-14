Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED5F1CCEE
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 18:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJo5IKR8uLfZdDliFMa8A86OkvlZouunQODGYd4Ojn8=; b=QEpqQAaMHeUHlD
	6UoeGjIIx4YYL3SinBhYbZzlchJq0efcNja25zPqqoPQWutleaJB4TcQ/YXUbr+lkBE3QlytN+NvY
	xiTm2mvfpY6towBuy6ufD/SAZciQo5dZMKAT41XH77S91dQabjfLBlu/fK5CAVkxaa7RbjxfgZvR6
	aUuxNFdMJyStvU3ROSPe603+Kk/BB2FFEx+wOcxf9hg2NXqo4a1jkKHYpHy/2/Nej3fZqqZGG130J
	mITYh1YWFLvGfuoX+QIWMf7w4l5SJXUo/JK7TPVdtrFUqcCFQH56Y5tUY5j89eB/K4iLziD5WeQR1
	gDYUK1QF820t3AvftA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQaHS-0002zm-JS; Tue, 14 May 2019 16:27:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaHN-0002zP-53
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 16:27:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id r18so3751641pls.13
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 09:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c0b7S9S9ymoAPBXPOapnZRjSN8VfXkgLwRc2Qt27Qnw=;
 b=FqAMcDxknGJ++YhskJM3d8qLA7u/l2/TdWvGTLRShuP8TaM3oGhkfnOpRC4lnun+ok
 fdik5gJwVVi4lUFnCI60SwECuUcWcS+pqzcPxCTWKzsFt/N9WMmb0Pp3RZKK1Zw3GW6P
 sQqXx+LUONgEN5IyUcTApBWURGovVrOKSuFsfCt3pvOETd7ow69aLMoAYG9KB3eNZEAi
 +BBTYDXdIQY/BEZZ7f4oC84XevqnXir7eN3N3LTSmNWw7to47vWcXLuQoFIvGCT7tOI8
 ciu7HvknsmcLc/vc7cNeE0kaIgmFYDNUi+mjcYH6HAR6BAE9fW4M3jO8yQRKbdy85dFf
 52xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c0b7S9S9ymoAPBXPOapnZRjSN8VfXkgLwRc2Qt27Qnw=;
 b=drxXJ4OVa4fU44h6+Usr1bQzC25FAVKr0gh2Cw+A0iS9YHmnwWuVQE54IGqj4VfIVM
 JH5iAJsVtQN5CDT+V/OMucLn/4uu/USUCnkJnoV9Xf+eGASf0Q79pefkXppnzxlKzLgP
 tRph0HPKrv8F6bRXqyHpJamAOAiEVTn2b/jSp89XLKAcA+JshwoBsSiVPuszCadJdXrV
 lyiDxYhwdoRSUgxLd5N2GvF7CYSwBJPRIMBTVvom4kblRP7WdjDlwTaU3ZwIpgCFmgie
 uoYfkmJKy+SS8qm97NZY15RO7Lqyue9DbZaI1Y3gq30I08p1iwuyxHkSPUdDbkS0p5xG
 6MwQ==
X-Gm-Message-State: APjAAAX3uqvLGtZQzP1ec7Xbl9JYbD/BU7Yh9BEha7v1Kb95KVgppDz7
 B+uldIJcibk57Pb5ulMgJ4flNlRQK4T2P+wrNWrRDpYi
X-Google-Smtp-Source: APXvYqyEkZ8qMzY0R3c5Usfxyd15b2HU1lACZUXbgDWrPJAeI7h6Ygr+CplVE1k8PyXBN56MWKHHX+Y+zTCF0O1jjxA=
X-Received: by 2002:a17:902:b094:: with SMTP id
 p20mr16370127plr.164.1557851267727; 
 Tue, 14 May 2019 09:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
 <70b80155-d4a8-b53e-7022-0f5f704b1338@acm.org>
In-Reply-To: <70b80155-d4a8-b53e-7022-0f5f704b1338@acm.org>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 15 May 2019 01:27:36 +0900
Message-ID: <CAC5umyi6GQh38R2q5xpBXisJjFVgkkEcPxnJ-geo1fKHYOLAuw@mail.gmail.com>
Subject: Re: [PATCH] nvme-cli: align comments for struct telemetry_log_page_hdr
To: Bart Van Assche <bvanassche@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_092749_215622_D57B7686 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNeaXpSjmsLQpIDA6MjIgQmFydCBWYW4gQXNzY2hlIDxidmFuYXNzY2hlQGFj
bS5vcmc+Ogo+Cj4gT24gNS8xNC8xOSA1OjE0IFBNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gPiBB
bGlnbiB0aGUgZmllbGQgbWVtYmVyIGNvbW1lbnRzIGZvciBzdHJ1Y3QgdGVsZW1ldHJ5X2xvZ19w
YWdlX2hkci4KPiA+IFRoaXMgYWxzbyB1c2VzIHRhYnMgaW5zdGVhZCBvZiBzcGFjZXMgdG8gYWxp
Z24gZmllbGQgbWVtYmVycy4KPgo+IEhpIEFraW5vYnUsCj4KPiBIYXZlIHlvdSBjb25zaWRlcmVk
IHRvIHVzZSB0aGUga2VybmVsLWRvYyBzeW50YXggaW5zdGVhZCBvZiBhbGlnbmluZyB0aGUKPiBj
b21tZW50cz8gU2VlIGFsc28KPiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9Eb2N1bWVudGF0
aW9uL2tlcm5lbC1kb2MtbmFuby1IT1dUTy50eHQuCgpJIHBlcnNvbmFsbHkgcHJlZmVyIHRvIHVz
ZSB0aGUga2VybmVsLWRvYyBzeW50YXguICBTbyBpZiBubyBvbmUgY29tcGxhaW5zLApJIHdpdGhk
cmF3IHRoaXMgcGF0Y2ggYW5kIHdpbGwgc2VuZCBhIHBhdGNoIHRvIGNvbnZlcnQga2VybmVsLWRv
YyBzeW50YXguCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
