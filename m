Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E9373410
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 18:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yV+7DZtuUD6xgoFWs7y8qrN1aW2FFouJKkskNdEaGoA=; b=q2bcRyOaBhzEclsOFcp8sSqnG
	3pSzwQ00/HSqomVPlQ1X+heGg7gBw3rrho6aVJgeayUjvuk80IkZ/eJgmOHIHuLLcPAxTI/EoFmqa
	o0PH117CKP5+ZJJenQHTeDT4miSJXg0KQQeB00k8zkxkJwgmvjUc6Y80EUO7upJJj08j5wTOLRsCX
	DlhYz/ywsXWxh+31BKYhNz/2ZyxH+CEl5FJ9r2/qde4jOEtqeLaYUpq9HVJ5KjFZx/VJtGfhKmMCQ
	bQ8JfZ1o8cFWGk7MZgpkSZYlgS7BgLPNiv/Ghl2FXBT1zXgVY+C/dtJRiglPOucdfO0JDqDRdjo9e
	slozehw8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKI4-0000EK-Co; Wed, 24 Jul 2019 16:38:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKHx-0000DJ-GW
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 16:38:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so21215738pfb.13
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ylMMk6aH+05yB3zfY1cUecFXm6Db06aYG/2m0a5jI8o=;
 b=JgjXLj5AS0netlmg6KVjSkMWiONS1ayA5kS1XB6eQcvJ7ewMrEDZBL+V9OC1sqpUWb
 qDkwDzq9dRPGjy1YG6/6/1+fRcylVxgM1+XTpHVJ3/pfQ2uNgXZmBkYKaLWphojMmwBN
 E6UQc3k6VPSdjfbcFpR9F3l46Fkb3qJbSllps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ylMMk6aH+05yB3zfY1cUecFXm6Db06aYG/2m0a5jI8o=;
 b=njC9zPzyPIB7wZoIRGv44ifEKdGmaj2J16JU6Aeqtn7pfOV4J3xLMXxbRW+va9tNbt
 cZ2hD6jOa54Hfrj05oQDC585nkYpyrf0AixwExgzD6nEKxScY+d+ibXrxuLDt/padCuU
 BIHc9nEFYupuFBOp9lKgkXsDbtcRhKGcI7HFP8SHPhjgJL6NJzr6BOoKrsk2aKJJPcuX
 Z2mYYjyWJvhusFbhUYnevZWPm4z9N7Avg4Knj+7OgokWpnHJ5UbNC3ZJf6tk/Edft4Me
 4Hvkm1gMMf4xA2TjEo7VLe2QZAgG3BIZ6cAHaUDz3HrGKPlimeqC7lLmPW45Tlpi8seW
 a2nw==
X-Gm-Message-State: APjAAAUBjfWnm7f5ptT1dDfO007pUTiK6vVneNK4WZhuLJ7wtDRb88nE
 ws7f1LPpyXcAmFZlh0/hQFgc61gMyoQ=
X-Google-Smtp-Source: APXvYqzQvZN4LlwpaSsltV8UoFoJgGzAd6x3bjU1O9ART9C7uKiNkUJ2SOqG7pcPuSybIrj3CcaHoA==
X-Received: by 2002:a63:dd4e:: with SMTP id g14mr10072810pgj.227.1563986328138; 
 Wed, 24 Jul 2019 09:38:48 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n98sm47429985pjc.26.2019.07.24.09.38.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 09:38:47 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
 <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
 <2297e9f3-4a9d-e759-5633-aeefe736b09c@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1215e814-30f7-85e6-a9b9-fd7d2c725654@broadcom.com>
Date: Wed, 24 Jul 2019 09:38:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2297e9f3-4a9d-e759-5633-aeefe736b09c@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093849_551207_977497B7 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yMy8yMDE5IDEwOjMyIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+Pj4gKyMgRXZl
bnRzIGZyb20gcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxlcnMgb3IgbnZtZS1mYyAKPj4+
PiB0cmFuc3BvcnQgZXZlbnRzCj4+Pj4gK0FDVElPTj09ImNoYW5nZSIsIFNVQlNZU1RFTT09Im52
bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKPj4+PiArwqAgRU5We05WTUVfQ1RS
TF9OQU1FfT09IioiLCBFTlZ7TlZNRV9UUlRZUEV9PT0iKiIsIAo+Pj4+IEVOVntOVk1FX1RSQURE
Un09PSIqIiwgXAo+Pj4+ICvCoCBFTlZ7TlZNRV9UUlNWQ0lEfT09IioiLCBFTlZ7TlZNRV9IT1NU
X1RSQUREUn09PSIqIiwgXAo+Pj4+ICvCoCBSVU4rPSIvdXNyL2Jpbi9zeXN0ZW1jdGwgLS1uby1i
bG9jayBzdGFydCAKPj4+PiBudm1mLWNvbm5lY3RALS1kZXZpY2U9JGVudntOVk1FX0NUUkxfTkFN
RX1cdC0tdHJhbnNwb3J0PSRlbnZ7TlZNRV9UUlRZUEV9XHQtLXRyYWRkcj0kZW52e05WTUVfVFJB
RERSfVx0LS10cnN2Y2lkPSRlbnZ7TlZNRV9UUlNWQ0lEfVx0LS1ob3N0LXRyYWRkcj0kZW52e05W
TUVfSE9TVF9UUkFERFJ9LnNlcnZpY2UiIAo+Pj4+Cj4+Pgo+Pj4gSmFtZXMsIHNob3VsZG4ndCB0
aGlzIGJlIC9iaW4vc3lzdGVtY3RsPwo+Pgo+PiBJIGRvbid0IGJlbGlldmUgc28uwqDCoCBPbiB0
aGUgZGlzdHJvcyBJIGNoZWNrZWQsIC9iaW4vc3lzdGVtY3RsIGlzIGEgCj4+IHNvZnQgb3IgaGFy
ZCBsaW5rIHRvIC91c3IvYmluL3N5c3RlbWN0bAo+Cj4gTm90IGFsd2F5cyB0aGUgY2FzZS4gTGV0
cyBjaGFuZ2UgdGhhdCB0byAvYmluL3N5c3RlbWN0bC4KCkkgaGF2ZSBubyBwcm9ibGVtIGNoYW5n
aW5nIGl0LCBidXQgYW0gd29uZGVyaW5nIHdoYXQgcmVzb3VyY2UgaXMgZ2l2aW5nIAp5b3UgdGhl
IHJlZmVyZW5jZSBsb2NhdGlvbnMuIEkgY2FuJ3QgZmluZCBhbnl0aGluZyB0aGF0IGFjdHVhbGx5
IApzcGVjaWZpZXMgdGhlIGxvY2F0aW9uIHdpdGggc29tZSBoYXZpbmcgL2JpbiBhbmQgb3RoZXJz
IC91c3IvYmluLiBUaGUgCm90aGVyIGZpbGVzIHNlZW0gdG8gbGVhbiB0b3dhcmQgYSBwcmVmZXJl
bmNlIG9mIC91c3IvYmluLgoKLS0gamFtZXMKCnJlZmVyZW5jZXMgdGhhdCBkaWRuJ3QgaGVscDoK
aHR0cDovL3d3dy50bGRwLm9yZy9MRFAvTGludXgtRmlsZXN5c3RlbS1IaWVyYXJjaHkvaHRtbApo
dHRwczovL3d3dy5mcmVlZGVza3RvcC5vcmcvd2lraS9Tb2Z0d2FyZS9zeXN0ZW1kLwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
