Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D14E67F71
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 16:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASrIDXxoCa6i1Cn834BSJpi9fdQ2OOQt58zwhzBJoZo=; b=LMZSnHa7zWBOfjzzMKAyfVMSP
	RgHc2NrHQKYwOZTG1/S6bwtvqyyo6hCEqM3qOJ1yQ6Kkki1mBqlz/GP9LCfLrBH8s5UV7FSllnR6C
	Ia4zcFNXQfpc1HROY6cEYc0rmIOwwhvx+S84d/3su8NmNsOwxVt0403Pn2zXmkYaBAhepXJpxVl9z
	/Syjk7PuF8sweKoZY9O7ZA+mJtcQpl4XxppNhT0sLGflJod4WhTRvlS0O4SMRZ3UbEtN8kXYAE2Rz
	SkMybBNgsHthrO3nlYIRLbomYIqDzcou5q42FrJuo898EjFqlpJYqoX6BCYzm+eaUtZFw4Ir4M17O
	ME2UQ3zcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfp7-0004mP-7l; Sun, 14 Jul 2019 14:49:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfow-0004lq-0f
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 14:49:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so6267444pfg.10
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 07:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Sk+ibqGH58Ho7DDvi7vzIYQLTE4+VTGdzjH8ri8d9GM=;
 b=LhrxUPf22wt13h1nGk5++ZmhMOp6TzCJtxIFWnVnl+Fro5C/rsiJNkNWcgGRqj3IIF
 qVmyaBNDaqofh7W1/xO7qc/b7PNU7inZZcjaSsE5gBUAI+L9AeCL7HOn/Nndnz/aobcy
 lySUSfcTnSbtO3HG98MSc/es5C8S72kzAL4yo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Sk+ibqGH58Ho7DDvi7vzIYQLTE4+VTGdzjH8ri8d9GM=;
 b=M5lQWb/kpHBO6IGC4+jkWcS1mS7S9T07RKYoa1CkCcrvuSR9RJI3fJrN8VBVXR6VLM
 k7RwhwlVBNV8sQVoOJ64IhevrTFAKpocTCyOHw3PhOsetUSA9iRLPNVA7wmy3gm7fNT2
 oaj1NqKL+zox0gyweSgNs/VPx8wafI0CU93cY+0usq0sRwMLN3DV5vSktNc2GDNG5tL2
 iXAfCR18NiFQIae7JWF2wqLKCQssH1+92pcPXJcGfd/peGBSpFhHT2/DMilCfnhA0nuv
 c0326yhJKyw3I+vW3YII5pb+NAgg2NOzwmQAVr1n75UYSMYSSo+sVrRlW4V4X6FCyoNP
 KiOQ==
X-Gm-Message-State: APjAAAWX7qGjTIqknUKxJQMMsq+7996D14Moz//Z6Q5orn9FZtNmPhs2
 jRdGG7OhRg1p2ZR5+oHxhMbHNR1G06s=
X-Google-Smtp-Source: APXvYqzHRexxfU1lM79WVLkK/xXgzH2GXaPK+17hEWYfw71kVXOntN/XKqCeS94+hhFhNtzusejhxg==
X-Received: by 2002:a63:6904:: with SMTP id e4mr21715677pgc.321.1563115785112; 
 Sun, 14 Jul 2019 07:49:45 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s20sm16515568pfe.169.2019.07.14.07.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 07:49:44 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <6627bc48-cdda-dace-b7a9-6e6eb5530d72@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <b3ba9d5a-4a9f-be5a-7a16-0fb31c0dad37@broadcom.com>
Date: Sun, 14 Jul 2019 07:49:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6627bc48-cdda-dace-b7a9-6e6eb5530d72@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_074946_065414_DF0D719F 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpPbiA3LzEyLzIwMTkgMTA6NTUgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gZGlmZiAt
LWdpdCBhL252bWYtYXV0b2Nvbm5lY3QvNzAtbnZtZi1hdXRvY29ubmVjdC5ydWxlcyAKPj4gYi9u
dm1mLWF1dG9jb25uZWN0LzcwLW52bWYtYXV0b2Nvbm5lY3QucnVsZXMKPj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMC4uYjI0MWIxMgo+PiAtLS0gL2Rldi9udWxsCj4+ICsr
KyBiL252bWYtYXV0b2Nvbm5lY3QvNzAtbnZtZi1hdXRvY29ubmVjdC5ydWxlcwo+PiBAQCAtMCww
ICsxLDE4IEBACj4+ICsjCj4+ICsjIG52bWYtYXV0b2Nvbm5lY3QucnVsZXM6Cj4+ICsjwqDCoCBI
YW5kbGVzIHVkZXYgZXZlbnRzIHdoaWNoIGludm9rZSBhdXRvbWF0aWNhbGx5IHNjYW4gdmlhIGRp
c2NvdmVyeQo+PiArI8KgwqAgY29udHJvbGxlciBhbmQgY29ubmVjdCB0byBlbGVtZW50cyBpbiB0
aGUgZGlzY292ZXJ5IGxvZy4KPj4gKyMKPj4gKyMKPj4gKwo+PiArIyBFdmVudHMgZnJvbSBwZXJz
aXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVycyBvciBudm1lLWZjIHRyYW5zcG9ydCAKPj4gZXZl
bnRzCj4+ICtBQ1RJT049PSJjaGFuZ2UiLCBTVUJTWVNURU09PSJudm1lIiwgRU5We05WTUVfRVZF
TlR9PT0iZGlzY292ZXJ5IixcCj4+ICvCoCBFTlZ7TlZNRV9DVExSX05BTUV9PT0iKiIsIEVOVntO
Vk1FX1RSVFlQRX09PSIqIiwgCj4+IEVOVntOVk1FX1RSQUREUn09PSIqIiwgXAo+PiArwqAgRU5W
e05WTUVfVFJTVkNJRH09PSIqIiwgRU5We05WTUVfSE9TVF9UUkFERFJ9PT0iKiIsIFwKPj4gK8Kg
IFJVTis9Ii91c3IvYmluL3N5c3RlbWN0bCAtLW5vLWJsb2NrIHN0YXJ0IAo+PiBudm1mLWNvbm5l
Y3RALS1xdWlldFx0LS1kZXZpY2U9JGVudntOVk1FX0NUTFJfTkFNRX1cdC0tdHJhbnNwb3J0PSRl
bnZ7TlZNRV9UUlRZUEV9XHQtLXRyYWRkcj0kZW52e05WTUVfVFJBRERSfVx0LS10cnN2Y2lkPSRl
bnZ7TlZNRV9UUlNWQ0lEfVx0LS1ob3N0LXRyYWRkcj0kZW52e05WTUVfSE9TVF9UUkFERFJ9LnNl
cnZpY2UiCj4KPiBOVk1FX0NUUkxfTkFNRQo+Cm9rCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
