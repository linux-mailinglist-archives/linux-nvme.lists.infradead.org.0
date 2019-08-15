Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC6D8F1B3
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlOcT3qW9GfQtLvXFmfa4VrHGWpsz1138JB+5KoecRg=; b=W1/C7J92US8IO2LB2Zk7iB5XO
	BesgYtHPrh8yacgHujoJ6/X0r+di5ANJrd1o//kn42n75ZwW+VZioHdw1nty82tusP6b24kDAen7/
	CkVlo6jRRpBBNf+ChQpQuemwQ9MOfGW8mV015tAm7DhTB4YZdiH9ZcDZgWfuhRekOsJNPHoFNwM7q
	a7MzNupz5jW8e/y/R8zmKnRFBHn9IKZfzk8/P150w7o4qaIRqQRMoy3baniGobb6OaaO0IFdgwdg3
	jGJB6iIkLWN1OnEIFc+x6sZfaXspKNpk5a8jYDSBj7WaenyVnuozkLoAFIifRXjkL7Q1qah0SFW7Y
	fQBJKDb3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJJz-0005hP-Os; Thu, 15 Aug 2019 17:13:55 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJJo-0005gq-Ud
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:13:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id r20so7126756ota.5
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:13:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qamtjquwH/MznauYkBE/5Aox0RjaP3oraMmi5y8hLJQ=;
 b=WbfKeH3BA2KW9E0V9GcXE/qGbHsbh3PlKAoB2iVYbEpidyCrqGs7kQ7iv3e0p3vJD2
 N7AjvCN6JoAA2lweBtm9TP+AOkI7D2wy12adrPkjcYwvLPPM0wZWbaBpgovxAgAPapFE
 8BpyHEj5XA/4fYw6avIMDNQ9DcaVM9sAtsdhZBN+/5oFx1PLPE7Vn9cCXANWdOXQT9c/
 Nn9WqkhGOyVAlOjnSiTQJCZYh/kWjCquCwJfUu/zHDxtwcYtyt7DKixq2Fjwh0uDuZQX
 DNVgkqc2KIsPlpBLsjL/e5Wti9CvCelwjxc547LwNZNSswF41PKRzjvBgB+yciksQIgj
 Nt6g==
X-Gm-Message-State: APjAAAXsGnt4hbY42lba0deSygPEPwFW/iuC4yqcs30f7QTh2GF/HIgb
 QLYQTQ86fEe5XhReLpxqnMh76hn7
X-Google-Smtp-Source: APXvYqxhI1QvVXENLAjQMjcjEGaHm35B3PboZnX4hmSJoz3ccI+1QHgobFJOFITM3c15CG+m15m6Rw==
X-Received: by 2002:a9d:909:: with SMTP id 9mr4462682otp.261.1565889217720;
 Thu, 15 Aug 2019 10:13:37 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r130sm624581oib.41.2019.08.15.10.13.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:13:37 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
To: James Smart <james.smart@broadcom.com>, Max Gurtovoy <maxg@mellanox.com>, 
 Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-2-git-send-email-israelr@mellanox.com>
 <33ddd40f-14a8-9506-01dc-65a049f8bb5f@grimberg.me>
 <a447b0ba-31ea-6a12-2fb4-6cef0b95da96@mellanox.com>
 <d44bfcb2-08c8-d621-6d9f-17c3da9c40d2@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fde884a9-323c-a40d-27ed-0a3464c02ca1@grimberg.me>
Date: Thu, 15 Aug 2019 10:13:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d44bfcb2-08c8-d621-6d9f-17c3da9c40d2@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101344_991439_7BA3944D 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4gQWRkZWQgJ3RvcycgdG8gJ2Nvbm5lY3QnIGNvbW1hbmQgc28gdXNlcnMgY2FuIHNwZWNp
ZnkgdGhlIHR5cGUgb2YgCj4+Pj4gc2VydmljZS4KPj4+Pgo+Pj4+IHVzYWdlIGV4YW1wbGVzOgo+
Pj4+IG52bWUgY29ubmVjdCAtLXRvcz0wIC0tdHJhbnNwb3J0PXJkbWEgLS10cmFkZHI9MTAuMC4x
LjEgLS1ucW49dGVzdC1udm1lCj4+Pj4gbnZtZSBjb25uZWN0IC1UIDAgLXQgcmRtYSAtYSAxMC4w
LjEuMSAtbiB0ZXN0X252bWUKPj4+Cj4+PiBTdGlsbCBkb24ndCBzZWUgaG93IHRoaXMgaXMgaGFu
ZGxlZCBpZiB0aGUga2VybmVsIGRvZXMgbm90IHN1cHBvcnQKPj4+IHRvcyB5ZXQuCj4+Cj4+IGhv
dyBhbnkgb3RoZXIgZmVhdHVyZSB3ZSBhZGRlZCB0byBjb25uZWN0IGNvbW1hbmQgd2lsbCBhY3Qg
d2l0aCBvbGQgCj4+IGtlcm5lbCA/IChlLmcuIHF1ZXVlX3NpemUvbnJfcXVldWVzKQo+Pgo+PiBp
dCB3aWxsIGZhaWwgdG8gZ2V0IHRva2VuICJ0b2tlbiA9IG1hdGNoX3Rva2VuKHAsIG9wdF90b2tl
bnMsIGFyZ3MpOyIgCj4+IGFuZCByZXR1cm7CoCAtRUlOVkFMLgo+Pgo+PiBJc3JhZWwgY2hlY2tl
ZCB0aGF0Lgo+IAo+IEkgdGhpbmsgd2hhdCBTYWdpJ3MgZ2V0dGluZyBhdCBpczogaXQgd291bGQg
YmUgcmVhbGx5IG5pY2UgdG8gbm90IGZhaWwgCj4gdGhlIHdob2xlIGNvbm5lY3QgcmVxdWVzdCBp
ZiBhbiBhcmd1bWVudCBjYW4ndCBiZSBwYXJzZWQuIEUuZy4gYSBuZXdlciAKPiBjbGksIHVzZWQg
b24gYW4gb2xkZXIga2VybmVsLCBzaG91bGQgYmUgZnVuY3Rpb25hbCB3aXRoIG9yIHdpdGhvdXQg
dGhlIAo+IHRvcyBhcmd1bWVudC4KPiAKPiBJZiBzby0gYXMgSSBkb3VidCB0aGUgY2xpIGtub3dz
IHdoYXQgd2FzIGludmFsaWQgb3Igd2hpY2ggYXJndW1lbnQgd2FzIAo+IGludmFsaWQgYW5kIGl0
IHdvdWxkIGJlIHJlYWxseSBvZGQgKGVzcGVjaWFsbHkgb3ZlciB0aW1lKSB0byBiYWNrIG91dCAK
PiBhcmd1bWVudHMgYW5kIHRyeSBhZ2FpbiAtIHdlIG5lZWQgdG8gdXBkYXRlIHRoZSBrZXJuZWwg
dG8gd2FybiB0aGF0IGFuIAo+IGFyZ3VtZW50IHdhcyBub3QgcGFyc2VkIGFuZCB3YXMgaWdub3Jl
ZCwgYnV0IGF0dGVtcHQgdG8gdXNlIHdoYXQgaXQgZG9lcyAKPiByZWNvZ25pemUgYW5kIG5vdCBy
ZXR1cm4gZmFpbHVyZSB0byB0aGUgY2xpLsKgIFNhZ2kgPwoKQWN0dWFsbHksIEkgdGhpbmsgaXRz
IGZpbmUuIEkgZ290IGl0IGNvbmZ1c2VkIHdpdGggYW5vdGhlciBjYXNlIHdoZXJlCm52bWUtY2xp
IGdlbmVyYXRlcyB0aGlzIGFyZ3VtZW50IG9uIGl0cyBvd24gZnJvbSB0aGUgZGlzY292ZXJ5IGxv
ZwpwYWdlIChsaWtlIHRoZSBzcWZsb3dfZGlzYWJsZSB0aGluZykuCgpJIHRoaW5rIHdlJ3JlIGZp
bmUgaGVyZSwgd2UgY2FuIGlnbm9yZSBteSBjb21tZW50Li4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
