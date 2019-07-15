Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7139A69B1E
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 21:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxKswj+DWxn7P94yyzzS7+MyJDNBVodeMLd41LR+6IQ=; b=ckYUkIhJgEEqDz7WNNAcDcUu3
	91jxB34PVWdsfGnlO+KlK5nbsmhLF6MllvmjLi0DdDfxqaXaNJ9drR/7vQcmVIUnqQ+AAeCVh2hNB
	ZjOJu5VKV6wrpInfdZtx0fQDdrO6xtDcxxsqgke0b9T90dryIZPaG7iP8G+KorxWSZVHMNKBaUd0E
	xUHWx9BFZvMUJAJIKoCYimu9n2CSEjX9WQNSTOaml3PnT1GYgPJSr+6CkN7nEUdt97LNimBaBQlD+
	IsJc3Qow6oJ7Dsa/lFfoLsS6AyVtJX5wA7F7P1u++yFOeFz7LE4GY4/yUgNyL7X3a3AwQ2WR2RQAU
	Jprgut8WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn6HK-0005Ni-SO; Mon, 15 Jul 2019 19:04:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn6HC-0005N8-5R
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 19:04:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so7844219pfe.11
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 12:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ltV9CQUaB1T73FiS4i1w5L10HDHmOf+s/iH16WDj9Ek=;
 b=Oz8SHKIkNnOxI+DR8Id2qempuCHtQTmaEiq80y81uMIHJwqEnWdepHglyUIPrcQ5dC
 4gFnK8bggMy7G/RFMX6OSpVqgOxMuSQk7a9StZqJOrYhoARV4jhvDMuvpoEewhYPWson
 6NPaD7EzAQlVK6PnOJEqV2tNRUwvHYmvXdF7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ltV9CQUaB1T73FiS4i1w5L10HDHmOf+s/iH16WDj9Ek=;
 b=dip2SG3d+pPK9kvP/kmH8NwTOB2OiJ3dCaZqSDp+6ZgLKuRMaR5pY23MSj+5UFU4al
 Lnp/x1cOfylKODp6DzFnC8N9ghbEPTolEJDlZKUN+STssxUYTt/axkpddk41bxV+FYBM
 XuxZkcBKZ4zRTTDDZwODdKZOb5JMlRdditzUIhepCKnxyJXAFn8nygdWQQu92c8gs+3x
 d1tkJF/v/IlZrpUwEORK/mFBNnLNXmAiu6ZKWt1vVTl0li19QtiSbAXWE+phR2uLDk49
 ILvhihB9wlZxBKMg3G9Agoz9TjGVhmccozlIKOkk5WYac63h6skuFo8dZqNb+WiOc2sf
 2eFw==
X-Gm-Message-State: APjAAAUgJeD6ljIyAU+SFial9eQomZ6pxMiOMwKFs2KhCRxrv6i7TI/Z
 vSK2mWrXBnJ27x2SABWwFBq88VA5O6E=
X-Google-Smtp-Source: APXvYqxijh9iqPvamNWoAx1UhrIAlpOj5y4slWa+dajV4PnoHeV2WShLMZXEHEB1PSepijmQMtnpnw==
X-Received: by 2002:a17:90a:350c:: with SMTP id
 q12mr31087175pjb.46.1563217480905; 
 Mon, 15 Jul 2019 12:04:40 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j15sm19204589pfr.146.2019.07.15.12.04.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 12:04:39 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <9c08054d-751e-fdc0-4ea1-64cfa388e439@grimberg.me>
 <e45db042-2cf0-2922-cceb-ff593711e42f@broadcom.com>
 <3999132d-498d-e2ef-f52d-a81fdb37f914@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e5511415-2a4b-ed12-7f2b-8b144174e392@broadcom.com>
Date: Mon, 15 Jul 2019 12:04:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3999132d-498d-e2ef-f52d-a81fdb37f914@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_120442_208533_994CB4CA 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xNS8yMDE5IDEwOjIxIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+IE9uIDcvMTIv
MjAxOSAxMDo1OCBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPj4+Cj4+Pj4gZGlmZiAtLWdpdCBh
L01ha2VmaWxlIGIvTWFrZWZpbGUKPj4+PiBpbmRleCBkYjU5NGEzLi40ZWE4YjQxIDEwMDY0NAo+
Pj4+IC0tLSBhL01ha2VmaWxlCj4+Pj4gKysrIGIvTWFrZWZpbGUKPj4+PiBAQCAtOCw2ICs4LDEw
IEBAIERFU1RESVIgPQo+Pj4+IMKgIFBSRUZJWCA/PSAvdXNyL2xvY2FsCj4+Pj4gwqAgU1lTQ09O
RkRJUiA9IC9ldGMKPj4+PiDCoCBTQklORElSID0gJChQUkVGSVgpL3NiaW4KPj4+PiArTElCRElS
ID89IC91c3IvbGliCj4+Pj4gK1NZU1RFTURESVIgPz0gJChMSUJESVIpL3N5c3RlbWQKPj4+PiAr
VURFVkRJUiA/PSAkKExJQkRJUikvdWRldgo+Pj4KPj4+IFVERVZESVIgbmVlZHMgdG8gYmUgYnVp
bHQgZnJvbSAkKFNZU0NPTkZESVIpL3VkZXYgYXMgTElCRElSIG1pZ2h0IGJlCj4+PiAvdXNyL2xv
Y2FsL2xpYiBhbmQgdWRldiBkb2Vzbid0IGxvb2sgdGhlcmUuCj4+Cj4+IEkgcmVhbGx5IHdvdWxk
IGxpa2UgdG8gY2hhbmdlIHByZWZpeCB0byAvdXNyLCBzbyB0aGF0IGl0IG1hdGNoZXMgd2hhdCAK
Pj4gaXMgaW4gbnZtZS5zcGVjLmluIHdoZXJlIHRoZSAlaW5zdGFsbCBwYXJhZ3JhcGggc2V0cyBQ
UkVGSVggdG8gCj4+IC91c3IuwqDCoCBXZSBoYXZlIHR3byBzZXBhcmF0ZSBwbGFjZXMgc2V0dGlu
ZyBhIHZhbHVlIGFuZCB0aGV5IGFyZSBpbiAKPj4gY29uZmxpY3QuCj4+Cj4+IEJhc2VkIG9uIHRo
ZSBzcGVjIGZpbGUgc2V0dGluZyAtIHRoZSBvbmx5IG1ha2UgdGFyZ2V0cyB0aGF0IG1hdGNoIAo+
PiBQUkVGSVggb3V0c2lkZSBvZiB0aGUgaW5zdGFsbCB0YXJnZXRzIGlzIHRoZSBwa2cgdGFyZ2V0
IHdoaWNoIGlzIAo+PiBtYWlubHkgbWFuIGZpbGVzIGFuZCBhIGNvcHkgb2YgbnZtZS7CoCBUaGUg
bWFuIGZpbGVzIHBlcmhhcHMgd291bGQgYmUgCj4+IHVuZGVyIC91c3IvbG9jYWwsIGJ1dCBldmVy
eXRoaW5nIGVsc2Ugd2UncmUgdGFsa2luZyBhYm91dCB3b3VsZCBiZSAKPj4gdmVyeSBvZGQgdW5k
ZXIgL3Vzci9sb2NhbC7CoMKgIFBlcmhhcHMgYSBiZXR0ZXIgYW5zd2VyIGlzIFBSRUZJWD0vdXNy
IAo+PiAod2hpY2ggYWxzbyBzZXQgU0JJTkRJUiBmb3IgdGhlIG52bWUgY29weSksIExJQkRJUj0k
KFBSRUZJWCkvbGliLCAKPj4gb3RoZXIgdmFyaWFibGVzIHRoZSBzYW1lLCBhbmQgYWRkIGEgTUFO
UFJFRklYPS91c3IvbG9jYWwgZm9yIHRoZSBtYW4gCj4+IGZpbGVzLgo+Cj4gV2h5IG5vdCBqdXN0
IHBsYWNlIGl0IGluIC9ldGM/IGl0cyBlcXVpdmFsZW50IGFuZCB3b3JrcyByZWdhcmRsZXNzLgoK
eW91IGxvc3QgbWUuwqAgIi9ldGMiPwoKSSBrbm93IG9mIG5vIHJlYXNvbiBub3QgdG8gc2V0IFBS
RUZJWCB0byAvdXNyLiBBcyB0aGlzIHBhY2thZ2UgYmVjb21lcyAKc3RhbmRhcmQsIGl0IGlzIC8g
d2lsbCBiZSB0aGVyZS4gVG9kYXkncyBudm1lIHV0aWxpdHkgaXMgaW5zdGFsbGVkIGluIAovdXNy
LsKgIC91c3IvbG9jYWwgZG9lcyBub3Qgc2VlbSBjb3JyZWN0LgoKLS0gamFtZXMKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
