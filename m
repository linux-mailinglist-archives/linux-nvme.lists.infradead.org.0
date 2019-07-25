Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72D57529A
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 17:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVcNMXChkkJ713MhBxgpBph4wEcIHweZWp+qG5iNdHQ=; b=loFfClkzRZLHlV
	HdBCbkyMmxQId/GfIF0waym+2cNbTuiQ/ICWeb71Jtf0Wu/tSbfCFE3J9TNb+bSpFHwooK+FR7KS1
	kNYUoSXU8I/GRqxwsRhIeZdIlsEi7/ufUDG/qqpBaQlVlJSy25GBUzJ3y2Mw35E5Kk13AGE3PM+Rp
	DIsJZrOKT7nU+SrFSM01Pq7q7bdhgHYdiVhWFlfN6JZMFvF9S9+7ljfX0GSIVGLAU3OOYi5NJmZyU
	YGkqaSfI8O7N7qLY71oKORVAH8774OSH7VuspYDqiN/QP4RaIgtN8twv8xdUfEUTFGZseUIyKotd1
	L80wtIAqUrjf68pj/veQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfga-00015B-7n; Thu, 25 Jul 2019 15:29:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfgR-00014d-2G
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 15:29:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id f20so13989782pgj.0
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 08:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Se57oE6QfM3G49L2Gkmu2Qd52KN6tIuCFsnVv4gvB4s=;
 b=Ry4waWUvoVLx0EvYAEQ166ATDj7Br8Ejb3H+JJoGcYP6tycLcWS+Xp++/ZKuW6soko
 +QAX3EgljTvFaWwHtb67Xewldo8ha807MBoVtpGEbxTXyyfOXWvRMhDHE+YBU6rqHveU
 KbgOcIWr90CgTIUBHP12jqsatr+YIa7Ez5Afuby0R4dqv3xTD7SgEJuwAzMBWto1eJc5
 eowGytrDeA9hK4a1fG4QEHbYNVTjPI8BU+oP/O2FWBZFTq6EvRrTh6R+G3YXJ9UUJiXu
 cXJc57KoFNzJP2RLwH441kgvNHJNaPHSxNUvIcdU0miaQXMdukpBqdrhV4THdoiJRkOp
 p80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Se57oE6QfM3G49L2Gkmu2Qd52KN6tIuCFsnVv4gvB4s=;
 b=SgOSXCdsAMfnNASZH2HMjFNk4KjyksMTorf+Vwd00AGD0bY7u7bOfOSJW0krbTGm7h
 YNAep0B1yYqgKIWOlP6U8W7XqyXQQVbdtRbsbnW/wouNg77U4dHSxm06/8jwoteRgBw0
 +6mFTl5Itow86jXudASFne0Et/ACjBY4mJvIZwQneUUAu291b6cbjaQS8113prDakNrn
 WzYqG6jHQY/smbLdd4q5HuExeCuPDuQQvmHTrZbiyiokbZXNGT8aBK63fMEkm6M7/VED
 XUsuv6TqdPzanipom3S0lERRCkSOGEfM8D/1zLxcG7IusvhSWO4IRCav3EvUAOKGQemy
 D6Mg==
X-Gm-Message-State: APjAAAVyfbD5tPNoGwJqEI5PpAlJRUvRXnI84SQqOQnWcrgOqMbqdCtF
 PrMP4Nt7T19krwWCMdQeI4ymHd5vd5c=
X-Google-Smtp-Source: APXvYqw8JzuY/4P8X1Tx7/9OHLlqXWii5EDjN8dbzf+XKq4NCH8VPRfnnnA5LH2UKTuzB8pSpyRWbQ==
X-Received: by 2002:a17:90a:ba94:: with SMTP id
 t20mr93491793pjr.8.1564068570069; 
 Thu, 25 Jul 2019 08:29:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f88sm49121454pjg.5.2019.07.25.08.29.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 08:29:29 -0700 (PDT)
Date: Fri, 26 Jul 2019 00:29:26 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Message-ID: <20190725152926.GF3018@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_082931_135238_FD9BFFCB 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDctMjQgMTQ6Mjc6MTAsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6Cj4gQ291bGQgeW91
IHNxdWFzaCBwYXRjaCAyLCAzIGFuZCA0IHRvZ2V0aGVyICg0IGJlaW5nIHRoZSBtYWluIHBhdGNo
KSAtIFRoZXkKPiBiZWxvbmcgdG9nZXRoZXIgdG8gaW1wbGVtZW50IG9uZSBmZWF0dXJlLgo+IAo+
IEFzIGEgc2lkZS1ub3RlLCB3ZSBoYXZlIHRoZSBzYW1lIGNvbW1hbmQgZm9yIFpOUyAodGhhdCB3
aWxsIGJlIHB1c2hlZCB3aGVuCj4gdGhlIFpOUyBUUCBpcyByYXRpZmllZCkgLSBJbiB0aGF0LCB3
ZSd2ZSBhbHNvIGFkZGVkIHN1cHBvcnQgZm9yIHN1cHBseWluZwo+IHN0YXJ0IGxiYSBhbmQgbnVt
YmVyIG9mIGNodW5rcyAoem9uZXMpIHRvIHJldHVybi4gQ291bGQgeW91IGFkZCB0aGF0IGFzIHdl
bGwKPiB0byB0aGlzPyBUaGVuIHRoZXJlIGlzIGNvaGVyZW5jeSBiZXR3ZWVuIHRoZSB0d28/CgpN
YXRpYXMsCgpJIGp1c3QgaGFkIGEgZGVlcCBsb29rIGF0IHlvdXIgc2xpZGUgYWJvdXQgdGhlIFpO
UyB3aGljaCBjYW4gYmUgZm91bmQgYXQKWzFdLiAgU29ycnksIEkgbWlzdW5kZXJzdG9vZCB5b3Vy
IG1lYW5pbmcgaGVyZS4KClRoaXMgcGF0Y2ggYWxyZWFkeSBpbnRyb2R1Y2VkIHRoZSBTTEJBIGlu
IGl0cyBjaHVuaywgYnV0IG5vIG5yX2NodW5rcyBpbgphIHNpbmdsZSBzdW1tYXJ5IGxpbmUuICBE
byB5b3Ugd2FudCBtZSB0byBwcmludCBpdCBsaWtlOgoKCXJvb3RAaG9zdDp+L252bWUtY2xpLmdp
dCMgbnZtZSBsbnZtIGNodW5rLWxvZyAvZGV2L252bWUwbjEKCW5yX2NodW5rczogNDgwCgkgWyAg
ICAwXSB7IGNzOiAweDIsIGN0OiAweDEsIHdsaTogMiwgc2xiYTogMHgwMDAwMDAwMDAwMDAwMDAw
LCBjbmxiOiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAwMDAwMDAwMDAwMDEwMDAgfQoJIFsg
ICAgMV0geyBjczogMHgyLCBjdDogMHgxLCB3bGk6IDEsIHNsYmE6IDB4MDAwMDAwMDAwMDAwMTAw
MCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3cDogMHgwMDAwMDAwMDAwMDAxMDAwIH0KCSBb
ICAgIDJdIHsgY3M6IDB4MSwgY3Q6IDB4MSwgd2xpOiAwLCBzbGJhOiAweDAwMDAwMDAwMDAwMDIw
MDAsIGNubGI6IDB4MDAwMDAwMDAwMDAwMTAwMCwgd3A6IDB4MDAwMDAwMDAwMDAwMDAwMCB9Cgkg
WyAgICAzXSB7IGNzOiAweDEsIGN0OiAweDEsIHdsaTogMCwgc2xiYTogMHgwMDAwMDAwMDAwMDAz
MDAwLCBjbmxiOiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAwMDAwMDAwMDAwMDAwMDAgfQoJ
IFsgICAgNF0geyBjczogMHgxLCBjdDogMHgxLCB3bGk6IDAsIHNsYmE6IDB4MDAwMDAwMDAwMDAw
NDAwMCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3cDogMHgwMDAwMDAwMDAwMDAwMDAwIH0K
CSBbICAgIDVdIHsgY3M6IDB4MSwgY3Q6IDB4MSwgd2xpOiAwLCBzbGJhOiAweDAwMDAwMDAwMDAw
MDUwMDAsIGNubGI6IDB4MDAwMDAwMDAwMDAwMTAwMCwgd3A6IDB4MDAwMDAwMDAwMDAwMDAwMCB9
CgkgWyAgICA2XSB7IGNzOiAweDEsIGN0OiAweDEsIHdsaTogMCwgc2xiYTogMHgwMDAwMDAwMDAw
MDA2MDAwLCBjbmxiOiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAwMDAwMDAwMDAwMDAwMDAg
fQoJLi4uCgkgWyAgNDc4XSB7IGNzOiAweDEsIGN0OiAweDEsIHdsaTogMCwgc2xiYTogMHgwMDAw
MDAwMDAwMWZhMDAwLCBjbmxiOiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAwMDAwMDAwMDAw
MDAwMDAgfQoJIFsgIDQ3OV0geyBjczogMHgxLCBjdDogMHgxLCB3bGk6IDAsIHNsYmE6IDB4MDAw
MDAwMDAwMDFmYjAwMCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3cDogMHgwMDAwMDAwMDAw
MDAwMDAwIH0KClRoYW5rcyEKClsxXSBodHRwczovL252bWV4cHJlc3Mub3JnL3dwLWNvbnRlbnQv
dXBsb2Fkcy9OVk1lQW5udWFsTWVldGluZzIwMTktWk5TdjMucHB0eAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
