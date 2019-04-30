Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF3EEFDE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 07:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=413Ty+mX97BZ//DePCq7q2drYDhg0r9jyRgB5ObzbKA=; b=oTHUw/Pvb8ckn8Aqr7P1S1mXi
	DRVdQk7pAR/CZzgOFfAkYPi2CXhLQGCwz6lDppr21Oz8PwCREfIyH5QvIJ3aaRCIaUrtTaZFZUz/T
	rpXdkx8t7QD8TJugfrfFQQcZQcf1LDF2jWzXy61am+Dc34IA8vUr/Kq+NPDWdmm9mCv0d9Gdqwqvp
	TBBmaBcumPnnSnxWN3zl9zwgnieEeaPnE/vvpq6eBmuNa2q/UGGlUASA9Z6zoVUVMbLvpdgKL9lWr
	ZaYuT28aWzfcBcMcL2Z4YW9FvVzzAv9krwKemQ7la1cTj2UkkWYYUzav8+XxFRWbyeJ+2L35nrWCK
	Q5sNUDSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLL9z-0000VG-Am; Tue, 30 Apr 2019 05:18:31 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLL9u-0000Ut-Vo
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 05:18:28 +0000
Received: by mail-pg1-f194.google.com with SMTP id l18so6278995pgj.6
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 22:18:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HphlcPZ/8NGo01WomgovylGaecV4Jr3jmQrwEEd2IlY=;
 b=Xq242oMql0CVGZrHt/wu1Xd6Fm3EvDdA/aGqy7749ST83Fcon4lsGPsyj4TPzzYSQR
 Uzlz4AEfATg4zWsatprfiBWVkTTHT2nXLsxv6F5+oBlncScSwBLJMFf2KAIHFD/L+uqR
 2Lql0G7tPiXsei2c2JrvFNCIbccih+PhTB+G889Yz0oAfaPC6d6NdctGQD44lQDQRbvY
 AkUnMrGknQQrejC1oZbozAn/z9Rg4K622hrnivP9oueDs5dMy+97A93ljcieNjaeZ8Et
 GUe/2gNDqX8RYput7Q2gCa/m7IEITFBbCF0yaVQXkhEB87Wuj+20K7JuxCuLR0H7yIsk
 sAqg==
X-Gm-Message-State: APjAAAUTUuLtHGGayF0sQJ8ydwfg7rOZz8EBD/dhKveJcWyaqQSXGQgl
 K1XjEOlyXpEAHy09WfWzYFI=
X-Google-Smtp-Source: APXvYqziGuMY1uRl3AtzE3+z7E7zIiAFjJZCKeE6GXI0CkadZ/r/tTfepDG0ahqtWwUWS1loHBO2UQ==
X-Received: by 2002:a63:3:: with SMTP id 3mr10273537pga.360.1556601505794;
 Mon, 29 Apr 2019 22:18:25 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:2546:74c6:68ba:516?
 ([2601:647:4800:973f:2546:74c6:68ba:516])
 by smtp.gmail.com with ESMTPSA id t9sm35334425pgp.66.2019.04.29.22.18.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 22:18:25 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <5c4f7927-7475-34dc-2876-5db2cfb0a259@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bd5354e8-1655-c873-d8e3-de393e886cd6@grimberg.me>
Date: Mon, 29 Apr 2019 22:18:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5c4f7927-7475-34dc-2876-5db2cfb0a259@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_221827_023162_4FF47257 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+ICvCoMKgwqDCoMKgwqDCoCBhcmdjID0gMDsKPj4gK8KgwqDCoMKgwqDCoMKgIGFyZ3ZbYXJn
YysrXSA9ICJkdW1teSI7Cj4+ICvCoMKgwqDCoMKgwqDCoCB3aGlsZSAoKHB0ciA9IHN0cnNlcCgm
YXJncywgIiA9XG4iKSkgIT0gTlVMTCkKPiAKPiBUaGVyZSBtaWdodCBiZSBhbiBpc3N1ZSBoZXJl
IGJlY2F1c2UgYXJncyB3aWxsIGJlIHVwZGF0ZWQgZWFjaCB0aW1lIHRvCj4gcG9pbnQgdG8gdGhl
IG5leHQgcG9zaXRpb24gaW4gdGhlIHN0cmluZyBhZnRlciB0aGUgY3VycmVudCB0b2tlbi4gV2hl
bgo+IHlvdSBnbyB0byAnZnJlZScgYXJncywgdGhlIHBvaW50ZXIgbWF5IG5vIGxvbmdlciBiZSB2
YWxpZC4KClllYS4uLiBXZSBuZWVkIGFub3RoZXIgcG9pbnRlciBmb3IgdGhhdC4uLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
