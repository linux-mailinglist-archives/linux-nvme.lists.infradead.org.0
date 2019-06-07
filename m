Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FA838261
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 03:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jm/zoUuFIIPYrlMfA6ApUPjPGDwfb35svdU3RJCB3K4=; b=hBLx1ydAmFtqN6/eK4B/+FPod
	1XOg1xDqhRH80ogs2R0EswFYd1HD6n5f7aIQpa3ElFkRf5/LuJA0gxagZKgAdK4dBn831Ep38r+p5
	dI+tCBBMZNJI3MeyUrIFrQ/vIWRKKUH6UJkhb8ASJ+rc/LatHMh/UcdYoTNvoxZPSrlxO0KwIt8X1
	bHMAroR3JFNVzxkvUxUclZw6sAQc9n784bKZ1IkhKu4fRgWY0jOA33LsNjGafSJcM3Hg8Vbpan2Nv
	B7HgQMMyco5DZUjonEpGQMVfMRthhurplPmkd97KuxcPndUYJsd/vWtfme1tTdx8fWR6XIHb31WEY
	ybgLri88g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ3Xp-0003iv-Nz; Fri, 07 Jun 2019 01:19:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ3Xg-0003iN-Nh
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 01:19:42 +0000
Received: by mail-ot1-f66.google.com with SMTP id z23so362589ote.13
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 18:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bkn9t2jUClM5DQVEpCueJnAWadpz+eScvtQzEq+SqeI=;
 b=kgkS/z73EzZFtCSq9Jt4xiyKmA74x/+rHw+6MduVUo1JnHrqU2vBWXJjx/MXbH7BZj
 W2PUMkE3sTC94bOnSpwzcbn7RMv069qg5qnEzFsLoRngUiY6b2CDM3bk6c0NMc2/OhkG
 /BIBETrp8EfG1kY44UEGF8b7Cd35CbDNHhhuKWhBQZcyjL9b/0o4Hibw8An44Vh6ZhIX
 Fq6ES4QiCk87lEGyobNBny8ze68YATQ8Jlp/DV1uoi+nzTUTRXXp957iE0ntI2LDlihO
 mZZngF5n7mJsnW1P8K6ZiksRw4Xd6CRTHDRZZC7k7M2R1+VJxULYBlpBbP5q5Vi02kzy
 BPJA==
X-Gm-Message-State: APjAAAX0QSYkKXFggbFpUCWrGXDwfALS5OXTnG+APh/AKPJ1E3v5GeyB
 nnBuejFRuZH4hv3cg89OIgY=
X-Google-Smtp-Source: APXvYqycsUwwtbn94+PrWgFRlBDvfOnUCDoINPXlYXonYUh3zoxcctWdXaqZ0b76EnAPYLQo2mX4yg==
X-Received: by 2002:a9d:630f:: with SMTP id q15mr7477593otk.21.1559870375713; 
 Thu, 06 Jun 2019 18:19:35 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 3sm262545otl.42.2019.06.06.18.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 18:19:35 -0700 (PDT)
Subject: Re: nvme: build failure report for nvme_sync_queues()
To: Keith Busch <keith.busch@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190606184620.GA1676@minwooim-desktop>
 <20190606192420.GA17774@minwooim-desktop>
 <CAOSXXT78U_CmaK_YqQR2D3OKJ5GSy+KtrN6ab4iMQHwn0aROQQ@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2e8830ce-e650-84e9-5cf9-023a5f6ca368@grimberg.me>
Date: Thu, 6 Jun 2019 18:19:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOSXXT78U_CmaK_YqQR2D3OKJ5GSy+KtrN6ab4iMQHwn0aROQQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_181940_775193_46B546F6 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4gSSdkIGhhdmUgdG8gcmVwb3J0IGEgYnVpbGQgZmFpbHVyZSBk
dWUgdG8gdGhlIGZvbGxvd2luZyBjb21taXQ6Cj4+PiBDb21taXQgZTdhZTZkMWU3YzVmICgibnZt
ZS1wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUgZm9yIHN1c3BlbmQiKQo+Pj4KPj4+
IE1lc3NhZ2U6Cj4+PiBkcml2ZXJzL252bWUvaG9zdC9wY2kuYzoyODc2OjI6IGVycm9yOiBpbXBs
aWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhudm1lX3N5bmNfcXVldWVz4oCZOyBkaWQg
eW91IG1lYW4g4oCYbnZtZV9zdG9wX3F1ZXVlc+KAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rp
b24tZGVjbGFyYXRpb25dCj4+PiAgICBudm1lX3N5bmNfcXVldWVzKGN0cmwpOwo+Pj4gICAgICBe
fn5+fn5+fn5+fn5+fn5+Cj4+Pgo+Pj4gSXMgdGhlIGZvbGxvd2luZyBwYXRjaCBhcHBsaWVkIHRv
IHRoaXMgYnJhbmNoID8KPj4+ICAgIFtQQVRDSHY0IDEvNF0gbnZtZTogU3luYyByZXF1ZXN0IHF1
ZXVlcyBvbiByZXNldDoKPj4+ICAgIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFp
bC9saW51eC1udm1lLzIwMTgtSnVseS8wMTkxNjYuaHRtbAo+Pj4KPj4+IElmIEkgbWlzcyBzb21l
dGhpbmcgaGVyZSwgcGxlYXNlIGxldCBtdyBrbm93Lgo+Pj4KPj4+IFRoYW5rcywKPj4KPj4gU29y
cnkgSSBmb3Jnb3QgdG8gbWVudGlvbiB0aGUgYnJhbmNoIG5hbWU6IG52bWUtNS4zCj4gCj4gTG9v
a3MgbGlrZSB0aGUgNS4zIGJyYW5jaCBmb3JrZWQgZWFybHkgZW5vdWdoIHRvIG1pc3MgdGhpcyBv
bmUgZnJvbQo+IHRoZSA1LjItcmMyIGJyYWNoOgo+IAo+ICAgIGh0dHA6Ly9naXQuaW5mcmFkZWFk
Lm9yZy9udm1lLmdpdC9jb21taXRkaWZmL2Q2MTM1YzNhMWVjMGNkZGRhN2I4YjhlMWI1YjRhYmVl
YWZkOTgyODkKCnJlYmFzZWQgbnZtZS01LjMgb24gbnZtZS01LjItcmMyIChhbmQgZm9yY2UtcHVz
aGVkIGl0IG91dCkKCmRvbid0IHNlZSBhIGJ1aWxkIGVycm9yIG5vdy4uLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
