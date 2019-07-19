Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5F6EB7F
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 22:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTLBQzOvhcdT+0boaWK/N6u4NJgJakEmPPusfjE+nAM=; b=Z7Ze2O3di8Io7zR/IO7EiKCSV
	L6vLSewxSzgZFQMBm5aqpLdAJ+eJ2lljmVcHR0kk09igmWSeSCjBzue1pTfqTVkRCSIKQAfeEr5ac
	YYM5j54SthcA239kNVLmOmJxxAADFZQCU8HhfjsikUMOW+sXbfVRSGdvkjb7WklTjINxz7AbX1sB+
	FQ+q6J7ZZ6AVPDcoPlFhbCnZU1ovPsL1B6AcOnXn4qOcNPDr90eGYKaSJUOnAQF5f7RKm+KloqVtT
	8wdPG96Cf3s58In8OKNV2bVKuRJzdztXiMK5xP55J/8ASaD3rK5eOzAUEJtmwWGU4nzAmOqH8X91q
	fmRSWcVqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoZIb-0000Qo-1m; Fri, 19 Jul 2019 20:16:13 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoZIJ-0000QN-Te
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 20:15:57 +0000
Received: by mail-ot1-f65.google.com with SMTP id z23so5695766ote.13
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 13:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kkpL/Yq6hsmshdWJXQRmWbef4HDFrUIMo3dW6QtsBOU=;
 b=Ej32QABSoT3LeqUdzhNFgB72sJ60yEtsMY3AtW8svcYDetMD4IQEO5jZMqxa0B0E8n
 F0MGAvROuQLxOtzZtpz2zVuMbZmSP9CgBZiEPPyjD424gCHE7dBGCD7yvI0TyhxTVrsG
 0Wgarh3HnRFObGMRCTyWloI3c+dbMq8GAkMawQjhlxljII6IxiVWa426qCEnUI1p6d09
 3qYHeMFpx8b/B7ZrUi5wr06ofKSldKRCd3pGTzuLWum+7b0s5mfK6JrFGoLwQWxAZoqt
 SLLEQOkwHwY9MV1SZK4FGGCFMGzVvg/ZibgRj2fzSKoJcV5XZUsGFbCuqA4CQE3S1bJI
 YQJw==
X-Gm-Message-State: APjAAAVFcUnD57lgaWE9/5ChtP5UCeewWheUv7yiZxEWwqUtX6MwtrRx
 pC132gKJ5nNXQkdtqtEEKnA=
X-Google-Smtp-Source: APXvYqz7EYdCm82iMo376gSzheRtPm1ARvAvJv85wvLvZKPbuwQ1NT8A7vSMqRZGif0NVaoqIQe5Ng==
X-Received: by 2002:a05:6830:c9:: with SMTP id
 x9mr33170188oto.332.1563567353487; 
 Fri, 19 Jul 2019 13:15:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id f125sm10938514oia.44.2019.07.19.13.15.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 13:15:52 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
From: Sagi Grimberg <sagi@grimberg.me>
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
 <ba6d1a56-8f86-4060-a167-6d67435e1a88@grimberg.me>
Message-ID: <e516395c-7741-af1a-42a9-2bd528b3976c@grimberg.me>
Date: Fri, 19 Jul 2019 13:15:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <ba6d1a56-8f86-4060-a167-6d67435e1a88@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_131555_957926_F0EFC2C8 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IFsxXToKPiBPciBhY3R1YWxseToKPiAtLSAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggNzZjZDNkZDg3
MzZhLi5hMGUyMDcyZmU3M2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5j
Cj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gQEAgLTM1NzYsNiArMzU3NiwxMiBA
QCB2b2lkIG52bWVfcmVtb3ZlX25hbWVzcGFjZXMoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiAg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IG52bWVfbnMgKm5zLCAqbmV4dDsKPiAgwqDCoMKgwqDCoMKg
wqAgTElTVF9IRUFEKG5zX2xpc3QpOwo+IAo+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmY3Ry
bC0+c2Nhbl9sb2NrKTsKPiArwqDCoMKgwqDCoMKgIGxpc3RfZm9yX2VhY2hfZW50cnkobnMsICZj
dHJsLT5uYW1lc3BhY2VzLCBsaXN0KQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChudm1lX21wYXRoX2NsZWFyX2N1cnJlbnRfcGF0aChucykpCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGtibG9ja2Rfc2NoZWR1bGVfd29yaygmbnMtPmhl
YWQtPnJlcXVldWVfd29yayk7Cj4gK8KgwqDCoMKgwqDCoCBtdXRleF9sb2NrKCZjdHJsLT5zY2Fu
X2xvY2spOwoKVGhpcyBzaG91bGQgYmUgbXV0ZXhfdW5sb2NrIG9mIGNvdXJzZS4uLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
