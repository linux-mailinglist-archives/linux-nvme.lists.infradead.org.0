Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF3B2E835
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/zeO68X+1fB0MRvueA51B8He3LexUbk8TCcdQMs4X3I=; b=UsA2XDF/KAfcH7HPk2Kj4fylE
	6Lr9jsVoc3iI5qx4gonNckuzZq5O/3KU/godJxqN6EvaKu8IxNw1XGZyYkK07HxuwK4ftKzZ4j/Cy
	AEscLZFo3IEte9FYmHuCJ4HiUBGsrf8ihCfshwWj2y64eiJ/pxMiPJl0Saq6JgNONTIIf4d1K51P7
	X9LcDf8sK7exEdq42/BJhkdiLy8RsK6Jo9ITDCUnudlCwhVzVFD9E8pW6RRBKwmUxNrnauLqeOwir
	2+geayl+X50dTn5CKyCjVFA2GW9jATK8Ucs74O/ZO7gdeOGeiDulfuTyUbPvud5Uk9HYjnYukCz5Z
	bd4pI/xCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW72w-0000pt-D2; Wed, 29 May 2019 22:27:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW72q-0000p8-Vg
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:27:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id x7so667017plr.12
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wSvYi4aVV0f8GgdoqzbJZCDKzs4jzbB05ELxyPaUCBg=;
 b=euw99r6o1/teAmQCSOcO+XusidsrCcslABEnQ44HJcGn9V4WeDzGGYoydIxQ395Vnr
 3V5vPKSPIM+0ULTkCsDwCcTDYOUao4knUm6btRF8JtroW8CNGhJfXDSg3ynS8KaQE/FI
 BzAr1jJC5F/aTUoRfUgIrs8mOFWi0ds9hJCd+B6nDAdWYjaPGy6/pV6cvQ+qzFWojFMR
 CSHWAXxvS4hYdjRH2Pc3BdpTpXEw5DkUo+ImGhH6d1ssBhdgurVrTfnOuUs6oGfcavhX
 21g1GWQJmfmuWeIr+KSf5k2PgypKy39kyz7gCSBtXCYP1QqHzuo4ONoeMtJYHG/ang0E
 jAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wSvYi4aVV0f8GgdoqzbJZCDKzs4jzbB05ELxyPaUCBg=;
 b=cIpEZMX7U4zqjraL6ToLGLOkY6mXmPmSM7P5IIt0nUdlYmhzXkfV2NP2S5DNyRmT0P
 HnPDPsczfy55WBr4oIeCSQ2K1HmrIx5xozJ424tp7vgErcOi0S/XdjThIZ4QBzJN9AAo
 eji+BUdl1gnNNjPZUY4A6d1Wm+rVwKEisiw7NC4RpOqBnjV0SrjF+JWppGxFz3UpshYh
 MwR03rtyntiWaetHLtDdMSIp1MMOLzUCeodgtAgI+wKmjYJ/reA4etONeoiMzNEVvBV6
 3+t65UYR3ye3t1DFuy2M5qdLpwP4/++9Rc7mCDrwED92jn/KhyGQ/mjhpKB0pqX6AOfF
 F8Mg==
X-Gm-Message-State: APjAAAX8L/42o63JmTVWZVWciN4Q6prygh7F8bql59iy4GKFG0RBfTBx
 CWpo19GtHRHa+sCOeMhCl8o=
X-Google-Smtp-Source: APXvYqzNrV31iTFZ64CbDw6B7eZ1rYagAT4lLxt3JjX2bQv+WfXRFPbZgyUkPvbktajjdOpPpmW5mw==
X-Received: by 2002:a17:902:6a83:: with SMTP id
 n3mr296969plk.109.1559168857809; 
 Wed, 29 May 2019 15:27:37 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e10sm725801pfm.137.2019.05.29.15.27.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:27:37 -0700 (PDT)
Subject: Re: [PATCH v2 1/7] nvmet: add transport discovery change op
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <20190514215808.10572-2-jsmart2021@gmail.com>
 <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <72f17092-e068-a13c-9088-59afafcd6157@gmail.com>
Date: Wed, 29 May 2019 15:27:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_152741_024969_0454515F 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

T24gNS8yOS8yMDE5IDM6MjEgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2Rpc2NvdmVyeS5jIAo+PiBiL2RyaXZlcnMvbnZtZS90
YXJnZXQvZGlzY292ZXJ5LmMKPj4gaW5kZXggNWJhZjI2OWYzZjhhLi44ZWZjYTI2YjQ3NzYgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvZGlzY292ZXJ5LmMKPj4gKysrIGIvZHJp
dmVycy9udm1lL3RhcmdldC9kaXNjb3ZlcnkuYwo+PiBAQCAtNDEsNiArNDEsMTAgQEAgdm9pZCBu
dm1ldF9wb3J0X2Rpc2NfY2hhbmdlZChzdHJ1Y3QgbnZtZXRfcG9ydCAqcG9ydCwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIF9fbnZtZXRfZGlzY19jaGFuZ2VkKHBvcnQsIGN0cmwpOwo+PiDCoMKgwqDC
oMKgIH0KPj4gwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJm52bWV0X2Rpc2Nfc3Vic3lzLT5sb2Nr
KTsKPj4gKwo+PiArwqDCoMKgIC8qIElmIHRyYW5zcG9ydCBjYW4gc2lnbmFsIGNoYW5nZSwgbm90
aWZ5IHRyYW5zcG9ydCAqLwo+PiArwqDCoMKgIGlmIChwb3J0LT50cl9vcHMgJiYgcG9ydC0+dHJf
b3BzLT5kaXNjb3ZlcnlfY2hnKQo+PiArwqDCoMKgwqDCoMKgwqAgcG9ydC0+dHJfb3BzLT5kaXNj
b3ZlcnlfY2hnKHBvcnQpOwo+IAo+IFNvIHlvdSBhcmUgc2hvb3RpbmcgZm9yIGJvdGggdHJhbnNw
b3J0IGFuZCBkaXNjIGFlbiB0byBoYXBwZW4KPiBhdCB0aGUgc2FtZSB0aW1lPwoKdGhleSBjb3Vs
ZCBpZiB0aGUgZGlzY292ZXJ5IGNvbnRyb2xsZXIgaXMgYSBwZXJzaXN0ZW50IG9uZS4KCi0tIGph
bWVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
