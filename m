Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FC32E89B
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6YLKv9Ub2A3RAk+vpXH5T1WtKs+Js5jNN5rEN63v/lM=; b=Tc00QyWbnaB8VY5/p4fof5mdh
	JfgVI03k3Cwj1InFhO9X6dNQwXUDcWxJF0ZbXYr11ks8+JOsuvLUUXWTii8UtF5wH/h9H5oHtLMmL
	DbVTP9KjgOvsNmqZlIeg4/hwJrSQy2Ccys710wUvCy/7x2RPyZUQKH7Kqof+2D6HNUhaRq+Bm7j3v
	eO7hjvJ1OKK/M/G6xA5/H8UvevZbnvgrF/+wzgsAyf7WIWfcfoJ5n2QSYPOtc9XKEynVwWXk1STtA
	yxMU4Fqiz2adlpJVLrmanjgg0UDYN87zUkCL3u0ppGdKC0juaS1j3mCAGWrjQRig7BcWzgKPh6Owb
	YqULOWYmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7Wm-00056m-My; Wed, 29 May 2019 22:58:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7Wh-00056Q-I7
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:58:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id d30so756795pgm.7
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IAt77wUX6TQrCmU7i4WVO7j56C1Vgk0EvlC8Hx4LmRY=;
 b=I/jhWWR8/VDPNUogHT77+OrItmZ0AaXEnUITxp+hJ6JnC0GRJWithA7ISAfHeKXPPt
 O1TMnzzfmEJ3nnWX3Tl4DbZi1XjHkTnaql+HwaBf6nLHx6oBQ85LYgROok7szQ3R9XHC
 /J3Sl5X8bA3JG6PV8DdFyno+oHKnBxribNhPlRl5HEtof44gHasJG0TP8YjawkxD3AcG
 pxkPhBBIbHYaGB8X6/Z2axs2U+qgxwwxV5X0BQO0D0xVgOd1Hz+PvCW1uJw6GxMESOBc
 ivqo2MznBtH4bTVzeJVwZ8LHuppYJFbyvxByV/jrUXRbIUIgAL0pzjQDaRb36yr61jdH
 35xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IAt77wUX6TQrCmU7i4WVO7j56C1Vgk0EvlC8Hx4LmRY=;
 b=qNb6UZZZDjsZMfJgc0t+z1g0qdfWqUHdiTr3MQk+d9kZEtn/c0QfLyKn3unMJL0ByB
 u1t2HANAXC6Hk+n8f0tO0sK1IOzAWTT9T3QqJUJGtXo1sSzzXvuKpalyeCVmgucUB9xK
 rwuywijOfG4JJONptKpYBbImhzUcrxNlMJQLbLMy2ZKxTm3PMJzyYB8nAGsreN1n9OQd
 SHTra5oPhuvy1n5mOkf5bOo7Sw+vutoMWwPFAYf4t9a1kZAH/m5QWvwn/MRc+No6kwb5
 QKWoa4KLqKo0DJvcs28Kry3zJRbiSgjuc6Mcd5L6xGl0V3iiys1S30gBq3LVjx6nY4Lp
 19Dg==
X-Gm-Message-State: APjAAAU+mBGLsSFPe+kfrT1pIxqaXkUNCuPjQx7nXLeOJqyrF/ncz4s4
 1Xp2UsiFmN92rsN7gPHHq3Qf/40g
X-Google-Smtp-Source: APXvYqxqrOeuYrgjAf+fZn6gVvNCTc3MPiyUdQDEx7ZJ1HJQOuEwtvGukpdgZ7kuFEx54GfbCoI5ZQ==
X-Received: by 2002:a17:90a:aa88:: with SMTP id l8mr124998pjq.65.1559170710950; 
 Wed, 29 May 2019 15:58:30 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t187sm466665pfb.64.2019.05.29.15.58.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:58:30 -0700 (PDT)
Subject: Re: [PATCH v2 1/7] nvmet: add transport discovery change op
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <20190514215808.10572-2-jsmart2021@gmail.com>
 <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
 <72f17092-e068-a13c-9088-59afafcd6157@gmail.com>
 <05fce470-7524-aa9f-355c-bff007b9e91f@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <a62e584f-41af-b1d7-686c-ec4144676a38@gmail.com>
Date: Wed, 29 May 2019 15:58:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <05fce470-7524-aa9f-355c-bff007b9e91f@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_155831_601309_63625F79 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yOS8yMDE5IDM6NDIgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvZGlzY292ZXJ5LmMgCj4+Pj4gYi9kcml2ZXJzL252
bWUvdGFyZ2V0L2Rpc2NvdmVyeS5jCj4+Pj4gaW5kZXggNWJhZjI2OWYzZjhhLi44ZWZjYTI2YjQ3
NzYgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9kaXNjb3ZlcnkuYwo+Pj4+
ICsrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvZGlzY292ZXJ5LmMKPj4+PiBAQCAtNDEsNiArNDEs
MTAgQEAgdm9pZCBudm1ldF9wb3J0X2Rpc2NfY2hhbmdlZChzdHJ1Y3QgbnZtZXRfcG9ydCAKPj4+
PiAqcG9ydCwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgX19udm1ldF9kaXNjX2NoYW5nZWQocG9y
dCwgY3RybCk7Cj4+Pj4gwqDCoMKgwqDCoCB9Cj4+Pj4gwqDCoMKgwqDCoCBtdXRleF91bmxvY2so
Jm52bWV0X2Rpc2Nfc3Vic3lzLT5sb2NrKTsKPj4+PiArCj4+Pj4gK8KgwqDCoCAvKiBJZiB0cmFu
c3BvcnQgY2FuIHNpZ25hbCBjaGFuZ2UsIG5vdGlmeSB0cmFuc3BvcnQgKi8KPj4+PiArwqDCoMKg
IGlmIChwb3J0LT50cl9vcHMgJiYgcG9ydC0+dHJfb3BzLT5kaXNjb3ZlcnlfY2hnKQo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBwb3J0LT50cl9vcHMtPmRpc2NvdmVyeV9jaGcocG9ydCk7Cj4+Pgo+Pj4g
U28geW91IGFyZSBzaG9vdGluZyBmb3IgYm90aCB0cmFuc3BvcnQgYW5kIGRpc2MgYWVuIHRvIGhh
cHBlbgo+Pj4gYXQgdGhlIHNhbWUgdGltZT8KPj4KPj4gdGhleSBjb3VsZCBpZiB0aGUgZGlzY292
ZXJ5IGNvbnRyb2xsZXIgaXMgYSBwZXJzaXN0ZW50IG9uZS4KPiAKPiBUaGF0J3MgZmluZSBJIHN1
cHBvc2UuCj4gCj4gU28gdGhlIHNlcmllcyBsb29rcyBwcmV0dHkgcmVhc29uYWJsZSB0byBtZS4g
QW55IGZlZWRiYWNrIGZyb20KPiB0aGUgRkMgZm9sa3M/CgppbiB3aGF0IHdheSA/CgpubyBkaXNh
Z3JlZW1lbnRzIGhlcmUgb24gdGhlIGxpc3QuIEFscmVhZHkgcHJlc2VudCBpbiB0aGUgRkMtTlZN
RSBzcGVjLgoKLS0gamFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
