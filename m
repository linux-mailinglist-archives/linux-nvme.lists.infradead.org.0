Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D826399E
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 18:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fqkisnNgie17EHY2CYb63CRB5oluqK1Y7CJjM7EUR64=; b=bCc4ISh1ppaMZtEQsio2zIo2s
	+bV0T1k/Sp71KD8eI+xMuTcbfQMfOkYCiBccci4/Nu1ZYnmG3XIbHm9rZKAT5uiFGQ6l059uLlboo
	2o1+cKw/IwaoihMawdeRVBB7Lf2LH7WRpRB/JKi/djwvfsIH9bwoSsnwn2ph2sahJUvfKmTyc9nUB
	eMbQVNpWjFz9tSWnJBQAP5b1b+B1rG/rEP2skxoAS2JYiimxVqJaYyERIqPigUyAmcXjh3kR4JZZZ
	7NAQmPAj9Sc7sTKPielXpDZKC9no2DBWSm9MFZ8MTqlz0Fudu6Su39YGBoWLFFurMR1pMpy6hJ2jn
	omq0kc3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktCc-0004WP-At; Tue, 09 Jul 2019 16:42:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktCA-0004Lp-Ct
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 16:42:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id o101so20595734ota.8
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 09:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/BSTdv393xzrkQWFziHaeRXeQ9QdszYNQlRnom77gfU=;
 b=pOIn7GzymJZ4Et/pWljkdNadTWsyHvv+gCzJr+x71iNYoxNTPw3W8UyiQPg0xbNXtt
 VbhSpIHl0fgyqf32UJYDSQ7Lfgus5+fzTfXaD9xG/4uN0P+ijY2EWknM7/lMo+Z6jRsV
 Ers29TruRWBggxE1Bi/YCMiGI8TuAxihBuLhHYxwIDjSuDnBPhLukiuW9aiCE9vL8RsI
 Eub++iVmKof5gTwsOf/dzZD+GQNSpgUpSlvFdchkkr45JCLzXiatreHnswmcUPMm6OCW
 QXmTjYPG2Lbben4dHT7S84KqOroo99aZjSixP0LDkkhbX7cWdlHgbmeFWZkHB4erncEX
 LJ2w==
X-Gm-Message-State: APjAAAUED+qlENDjJmKg6nj8b4YFAVvcZrBfgZ9oO0RTXM7aNqAGHLy9
 pnQ8LJO9Dlu57FjgZDlg4MQ=
X-Google-Smtp-Source: APXvYqwYlivuA2VJZdVbnxu7S0/jcuyYI0ZNN2zbsZqRYOl2Lvj4/oa+KYasuT9nWbe1n4pzaMWOOw==
X-Received: by 2002:a9d:3d8a:: with SMTP id l10mr18923360otc.343.1562690541382; 
 Tue, 09 Jul 2019 09:42:21 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g93sm4558296otb.39.2019.07.09.09.42.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 09:42:20 -0700 (PDT)
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
To: Bart Van Assche <bvanassche@acm.org>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
 <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9d060ad8-0b47-7f4e-4a39-a11883a6d1ec@grimberg.me>
Date: Tue, 9 Jul 2019 09:42:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_094222_469957_AB6AA821 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvbmZpZ2ZzLmMgCj4+IGIvZHJp
dmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jCj4+IGluZGV4IDA4ZGQ1YWYzNTdmNy4uY2Q1MmI5
ZjE1Mzc2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvbmZpZ2ZzLmMKPj4g
KysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jCj4+IEBAIC01ODgsOCArNTg4LDEw
IEBAIHN0YXRpYyBzdHJ1Y3QgY29uZmlnX2dyb3VwICpudm1ldF9uc19tYWtlKHN0cnVjdCAKPj4g
Y29uZmlnX2dyb3VwICpncm91cCwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiDC
oMKgwqDCoMKgIHJldCA9IC1FSU5WQUw7Cj4+IC3CoMKgwqAgaWYgKG5zaWQgPT0gMCB8fCBuc2lk
ID09IE5WTUVfTlNJRF9BTEwpCj4+ICvCoMKgwqAgaWYgKG5zaWQgPT0gMCB8fCBuc2lkID09IE5W
TUVfTlNJRF9BTEwpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHByX2VycigiaW52YWxpZCBuc2lkICUj
eCIsIG5zaWQpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+ICvCoMKgwqAgfQo+
PiDCoMKgwqDCoMKgIHJldCA9IC1FTk9NRU07Cj4+IMKgwqDCoMKgwqAgbnMgPSBudm1ldF9uc19h
bGxvYyhzdWJzeXMsIG5zaWQpOwo+IAo+IElmIExpbnV4IHVzZXJzIHdhbnQgdG8gZmlndXJlIG91
dCB3aGljaCBjb2RlIHJlcG9ydGVkIGFuIGVycm9yIG1lc3NhZ2UgCj4gdGhleSBzb21ldGltZXMg
cnVuIGdyZXAgb3ZlciB0aGUgTGludXgga2VybmVsIHNvdXJjZSBjb2RlLiBTZWVpbmcgdGhlIAo+
IGFib3ZlIG1lc3NhZ2UgbWFrZXMgbWUgd29uZGVyIHdoZXRoZXIgZW5vdWdoIGNvbnRleHQgaW5m
b3JtYXRpb24gaXMgCj4gcHJvdmlkZWQgdG8gYWxsb3cgdXNlcnMgdG8gZmlndXJlIG91dCB1bmFt
YmlndW91c2x5IHdoaWNoIGNvZGUgcmVwb3J0ZWQgCj4gdGhlIGVycm9yIG1lc3NhZ2U/IEhhdmUg
eW91IGNvbnNpZGVyZWQgdG8gaW5jbHVkZSB0aGUgZnVuY3Rpb24gbmFtZSBpbiAKPiB0aGUgZXJy
b3IgbWVzc2FnZT8KCkkgZG9uJ3QgdGhpbmsgd2UgbmVlZCB0aGF0LCB0aGUgc2FtZSBhcmd1bWVu
dCBjYW4gYmUgbWFkZSBmb3IgYWxtb3N0IGFueQplcnJvciBwcmludCwgYW5kIGl0cyBwcmV0dHkg
b2J2aW91cyB0aGF0IHRoaXMgaXMgdGhlIG5zIGNyZWF0aW9uCmZhaWx1cmUuCgpUaGUgbG9jYXRp
b24gY2FuIGJlIHJldHJpZXZlZCBmcm9tOgpncmVwIC1ySW4gImludmFsaWQgbnNpZCIgZHJpdmVy
cy9udm1lL3RhcmdldC8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
