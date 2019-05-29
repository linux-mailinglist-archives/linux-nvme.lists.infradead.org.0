Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5180E2E3F7
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 19:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yc/KmocdXCZTJr7N2WOs5kf82/pOw8dQrIEbq5clclk=; b=hQvYqxTp8a6udx0t05f9yDLNS
	wr7F/wT8lcQdwrsMIBwhBosVaWSWhGm2VqMQ71AgKWgywLhhgcsAIhHdbyShtUgiICBUl+GGsb+8J
	Ti4r8s1kp1fweRnACcXBNZl0xBjsYEiybR5L2cvHFUXmBu1PhGVNHztHH/GghWTmX6gP8zuZzUEBY
	kD/FjJGU//PXVcza27uCLXZ2RrO9HD+r3p96AUtD5xgnrOMN/B4uz7zfpH9ryiHmYlR9NJm6gPBZG
	C56teRwB5uKgVxDaZcV7hBhR3q2ncq43vM0XlLIo2E254uH3RdPk1zeWrYzr3Wk4NIO4Lx4DOiCVU
	s9HZDRzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2qr-0002oc-JC; Wed, 29 May 2019 17:59:01 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2qm-0002nv-64
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 17:58:57 +0000
Received: by mail-wr1-f65.google.com with SMTP id r7so2390542wrr.13
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 10:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L64IOtxOo0AWsxIXtCdyeeaEfBYNkDKi9HLwrUgoJ+k=;
 b=tmrFN+LoR7wL6A33Wmk/U9orwUVywz681jcbIotxAoWAELoT8UabDZK2HA9a43MfFB
 07YnHxf8DQjvS1I1puLL9tUuG9kN9AsKh7RdWgf6XVAzd059GffW+gif3iV8VcDH9KjS
 SRzrSHKZfxKnDI4WjwpytxDi9nExEruwOIQG0touWYCNTSod78vFEK7fCB/L5egLtOO/
 ZgJRJTzXHjJewyXr9DvRX+cudr5NMW/3b9agW7uj4zpuyqCAU98d374vZN6P0vvWSwJW
 IeJtb10bt80vxyYyYB+86yhop3v28Z1YdCiJUH8mUWa2nnJAs5cHBzqqLfFpKQvOYttC
 Prvg==
X-Gm-Message-State: APjAAAX+OborJiTxSTQnJLmju2B3JXrlONeGMCvgAOfK3ZkYFdFsCGrL
 2ECVskTqsWt4l7II6TpVH6o=
X-Google-Smtp-Source: APXvYqzecQlNlW7eIdo8PHqnhajn6wgX+NJf3QFJCvgqUU0iUPlJYka+crrqmhrJJNxhJkPdjMbZcA==
X-Received: by 2002:a5d:4f0d:: with SMTP id c13mr16414625wru.117.1559152734411; 
 Wed, 29 May 2019 10:58:54 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id b12sm124176wmg.27.2019.05.29.10.58.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 10:58:53 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190529054905.16279-1-sagi@grimberg.me>
 <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
Date: Wed, 29 May 2019 10:58:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_105856_227403_E858D4C3 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IEBAIC0xNzgxLDE2ICsxNzk4LDIyIEBAIHN0YXRpYyBpbnQgbnZtZV9yZG1hX21hcF9xdWV1
ZXMoc3RydWN0IAo+PiBibGtfbXFfdGFnX3NldCAqc2V0KQo+PiDCoMKgwqDCoMKgIGJsa19tcV9y
ZG1hX21hcF9xdWV1ZXMoJnNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXSwKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY3RybC0+ZGV2aWNlLT5kZXYsIDApOwo+PiAtwqDCoMKgIGlmIChjdHJs
LT5jdHJsLm9wdHMtPm5yX3BvbGxfcXVldWVzKSB7Cj4+ICvCoMKgwqAgaWYgKG9wdHMtPm5yX3Bv
bGxfcXVldWVzICYmIGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF0pIHsKPj4gK8KgwqDC
oMKgwqDCoMKgIC8qIG1hcCBkZWRpY2F0ZWQgcG9sbCBxdWV1ZXMgb25seSBpZiB3ZSBoYXZlIHF1
ZXVlcyBsZWZ0ICovCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzZXQtPm1hcFtIQ1RYX1RZUEVfUE9M
TF0ubnJfcXVldWVzID0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJs
LT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc2V0LT5t
YXBbSENUWF9UWVBFX1BPTExdLnF1ZXVlX29mZnNldCA9Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9ERUZBVUxUXTsKPj4gLcKgwqDC
oMKgwqDCoMKgIGlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVlcykKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc2V0LT5tYXBbSENUWF9UWVBFX1BPTExdLnF1ZXVlX29mZnNldCAr
PQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tIQ1RY
X1RZUEVfUkVBRF07Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tI
Q1RYX1RZUEVfREVGQVVMVF0gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5pb19x
dWV1ZXNbSENUWF9UWVBFX1JFQURdOwo+IAo+IGluIGNhc2Ugb2Ygc2hhcmVkIHF1ZXVlc8KgIGN0
cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUkVBRF0gIT0gCj4gc2V0LT5tYXBbSENUWF9UWVBFX1JF
QURdLm5yX3F1ZXVlcy4KPiAKPiBTaG91bGRuJ3Qgd2UganVtcCBvdmVyICh0aGUgcXVldWVfb2Zm
c2V0KSB0aGUgc2V0LT5tYXAgdmFsdWVzID8KClRoaXMgaXMgZXhhY3RseSB3aHkgd2Ugc2hvdWxk
bid0LiBJbiB0aGUgc2hhcmVkIGNhc2UsIHdlIG9ubHkgaGF2ZQpIQ1RYX1RZUEVfREVGQVVMVCBh
bmQgSENUWF9UWVBFX1JFQUQgaXMgemVybyBzbyB0aGlzIGNhc2UganVtcHMKZXhhY3RseSBob3cg
bXVjaCBpdCBuZWVkcyB0by4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
