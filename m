Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0A62DFF6
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 16:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+EW0Tn6z+Ywof2k3K0pCTgUNz63XjTQ7mBLPxqbB+s=; b=NMbL5RgfMBLQXC
	fkDIf8dMwbL1z29vpzADhYgjKjmA9vo2JNd2W2hscfuWMMfztfb10LXU/nekWIdsltCij0Np+oO/n
	kYSgIckaIt8/oksg595t2gj3kdy8SHgXa4rc5033pGVbrvmOMkyEL1/45dC9GNPz7VTbs551kiqne
	5lVTT7AP/GbN7rduaXtzbwctRepo/wBC0dnw1fKkafTpyoMgZn4g5bL4ya8ipG168TXk3028VmhKB
	LT5Pircv028T4DlglSfIPjEnDl2Sb7MBMtN0lp/TKZXkJmpmY1d24a6K8Omf9P0Jlh1YZByTZSjiv
	FQcVoqsjeTX9bqPUtq6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzkA-000670-96; Wed, 29 May 2019 14:39:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzk5-0005vp-Gp
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 14:39:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id u17so1773890pfn.7
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 07:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fu6SvGE6jZlqJ4hrABO6VQNoU4SQBpiYEFF/5S0DUAY=;
 b=DMvE8RYHibCFQrjGd9JHyrMoFP3XZcjUqXY6UZXCXDWhUtovD/qOG9XTjUuSUOs4+o
 2DiRdxTZRq5S6T2dK3mx91H0PRjENhGSqAbxCeiYBCPTC2RhzXejrhLRLxweOpL/RYCC
 zYbzEG4z0iOvC9nsL8wt3oFJn48i2X8oTgmgc/QR/oaQfBURwiQw8KYHBZWiwCJzxthL
 UF3UARqG02uz5lalQ2EoEZV6XPQBNzN37G54LEZpxjsHFh5x1GS+fvkyrsvYxlt2FMnR
 WzncwFD1FyE1pFPy7jXTtvaHE784A9ZjHAhvl7/aahUzReepNx+dYJYxEcDWbEC3pnHE
 Zn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fu6SvGE6jZlqJ4hrABO6VQNoU4SQBpiYEFF/5S0DUAY=;
 b=ghjwUiXK1CgIWS1hsT8MytO8PfzQHUGmJ2SpCczpkYozgcdmg2Ij3MSh0LMXVzExY2
 HKkUuXuGc8zcCJmFr1DHp9HNyQ3YsjZ1fO2PeZOGenCAOMwoJKZJc6D3ocJYuXm71y7r
 rYZumJYVYsNvYkVP566wDliRliJWgzPyxhr3/hU5KFlvqnXhZJ0nNfJJsW+PAVTZox87
 ztbjVdmrfnySW518/rDsyJAn5Kjr9APniY0sIrCa8UYkMdcjweYsUyR8+bPaJSwS6QJn
 wRGeijmY9efDY5aL8Sp8Aqj5bV1NmkGdZJ19Vo43I+N0IFBFZ0CS56LVC0E1ZrCeawNt
 6C+Q==
X-Gm-Message-State: APjAAAUVMHzbEe9swzfr08SOvcEgbasUFl0XLH2Xsi55Ta1aJGq907YP
 DBVlL2iyYrLhe8JigG8z7OwoBBQoNwTxcFyKZnI=
X-Google-Smtp-Source: APXvYqycHTt80sywd+2+knbILIR2vhGJO+a7KZ0cPZA7R71ZFYqIS2BZDm8XL5d+WzCb3HxqlFaJ/j46dVGc7nTPD5A=
X-Received: by 2002:a62:585:: with SMTP id 127mr128788123pff.231.1559140780467; 
 Wed, 29 May 2019 07:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <8cb23080-b7ab-f773-2d25-e39b36501e3d@oracle.com>
In-Reply-To: <8cb23080-b7ab-f773-2d25-e39b36501e3d@oracle.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 29 May 2019 23:39:29 +0900
Message-ID: <CAC5umyiqy82saDbTAtR8w99ahe-sH=r1hvt2jMtjnFE9AufqNw@mail.gmail.com>
Subject: Re: [PATCH 0/2] nvme: enable to inject errors into admin commands
To: Thomas Tai <thomas.tai@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_073949_596803_68E60BAA 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyOeaXpSjmsLQpIDI6NDcgVGhvbWFzIFRhaSA8dGhvbWFzLnRhaUBvcmFjbGUu
Y29tPjoKPgo+IE9uIDUvMjgvMTkgMTowMyBQTSwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gQ3Vy
cmVubHR5IGZhdWx0IGluamVjdGlvbiBzdXBwb3J0IGZvciBudm1lIG9ubHkgZW5hYmxlcyB0byBp
bmplY3QgZXJyb3JzCj4gPiBpbnRvIHRoZSBjb21tYW5kcyBzdWJtaXR0ZWQgdG8gSS9PIHF1ZXVl
cy4KPiA+Cj4gPiBUaGlzIGVuYWJsZXMgdG8gaW5qZWN0IGVycm9ycyBpbnRvIHRoZSBjb21tYW5k
cyBzdWJtaXR0ZWQgdG8gdGhlIGFkbWluCj4gPiBxdWV1ZS4KPiA+Cj4gPiBJdCBpcyB1c2VmdWwg
dG8gdGVzdCBlcnJvciBoYW5kbGluZyBpbiB0aGUgY29udHJvbGxlciBpbml0aWFsaXphdGlvbi4K
PiA+Cj4gPiAgICAgICAjIGVjaG8gMTAwID4gL3N5cy9rZXJuZWwvZGVidWcvbnZtZTAvZmF1bHRf
aW5qZWN0L3Byb2JhYmlsaXR5Cj4gPiAgICAgICAjIGVjaG8gMSA+IC9zeXMva2VybmVsL2RlYnVn
L252bWUwL2ZhdWx0X2luamVjdC90aW1lcwo+ID4gICAgICAgIyBlY2hvIDEwID4gL3N5cy9rZXJu
ZWwvZGVidWcvbnZtZTAvZmF1bHRfaW5qZWN0L3NwYWNlCj4gPiAgICAgICAjIG52bWUgcmVzZXQg
L2Rldi9udm1lMAo+ID4gICAgICAgIyBkbWVzZwo+Cj4gSGkgQWtpbm9idSwKPiBUaGF0IHNvdW5k
cyBsaWtlIGEgZ29vZCBpZGVhLiB3b3VsZCB5b3Uga2luZGx5IHVwZGF0ZSB0aGUgZG9jdW1lbnQg
aW4KPiBEb2N1bWVudGF0aW9uL2ZhdWx0LWluamVjdGlvbi9udm1lLWZhdWx0LWluamVjdGlvbi50
eHQgd2l0aCB5b3VyIGV4YW1wbGU/CgpTdXJlLiBJJ2xsIGFkZCB0aGUgZm9sbG93aW5nIGV4bXBs
ZS4KCkV4YW1wbGUgMzogSW5qZWN0IGFuIGVycm9yIGludG8gdGhlIDEwdGggYWRtaW4gY29tbWFu
ZAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
CmVjaG8gMTAwID4gL3N5cy9rZXJuZWwvZGVidWcvbnZtZTAvZmF1bHRfaW5qZWN0L3Byb2JhYmls
aXR5CmVjaG8gMTAgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9udm1lMC9mYXVsdF9pbmplY3Qvc3BhY2UK
ZWNobyAxID4gL3N5cy9rZXJuZWwvZGVidWcvbnZtZTAvZmF1bHRfaW5qZWN0L3RpbWVzCm52bWUg
cmVzZXQgL2Rldi9udm1lMAoKRXhwZWN0ZWQgUmVzdWx0OgoKQWZ0ZXIgTlZNZSBjb250cm9sbGVy
IHJlc2V0LCB0aGUgcmVpbml0aWFsaXphdGlvbiBtYXkgb3IgbWF5IG5vdCBzdWNjZWVkLgpJdCBk
ZXBlbmRzIG9uIHdoaWNoIGFkbWluIGNvbW1hbmQgaXMgYWN0dWFsbHkgZm9yY2VkIHRvIGZhaWwu
CgpNZXNzYWdlIGZyb20gZG1lc2c6Ci4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
