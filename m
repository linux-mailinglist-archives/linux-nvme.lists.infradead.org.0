Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED7167F7D
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 16:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dRY55BNCZnwyAX12rupOKcXzNIazPNH4ITNgEBFNVNg=; b=mFzyKZSG5BOG686jVTFHbATns
	vM7Lqqg8rFqbJsQWg2cuwVUGeJ97BsWVp52kKldaXHOoXYdqeJtDI4eT35J/MtOCObElEwBjvh1oK
	4WO3G8/ON3hoVEGyJRCbgj1ClRfIwAdrlJod2jy9Fv063UTFQXCd0cMKNez9IL92f7f/a8/zys4qO
	GcXgda4sKXTqtT4E/6D8tty6FOYcVxh86P1i2poJwNpG786C3x/pdB8GkXXL9+y3HT6Kef3eE5rqR
	ADenOk97uCCjQ+IOnHYGuVMjWEaJiCVVJ2l2p7rKPOKSnMHs8rM/1Zm0rraDDNuH9CxCzEU31h0yo
	ecI7OeqZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfwu-0008Dw-5T; Sun, 14 Jul 2019 14:58:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfwk-0008DL-Nc
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 14:57:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so6530095pgj.7
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 07:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dwyqYauQ30Hk942np6kDSiBaTJK0u3SMUAxhNTK9J4k=;
 b=a4qfRp9pLtOrBew1HD3+NC5shOn6dMYbiCMRym8aoJd0Lo1uywitFYFOujMjhbF5uY
 7CFZMHu5caC+DUbiNUx++5f7SNLANpO/4Dh8qE3v/5X4EaX4aajRp+fAZChIHV4xddsb
 JdUbb7brjh2Qg07aSNZ49OtjlzfyibNnbYbns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dwyqYauQ30Hk942np6kDSiBaTJK0u3SMUAxhNTK9J4k=;
 b=YF1E00gBm6RmUnhpVevFZQizetSyleksLwtL9Y3+OdT1oiJOPemJndLJAmpimbmCO5
 OQp4IkGzir08u4qezdWUNE7jhuflKeOydUZfI+1Y6XA/nxn/a67O/bq+zUxKtWLGvvWE
 HrwQ/Wnamk1siXln9exDWu7953/dgCNGp43WLLuDERL3dh89oxM8YKMeF5iHOIP9wj7l
 2CqHc9g6jJRi/Vhlr1UYXtuPoLOYiArxfLcB/mhRVwnoWTQOA3qQQ95L9vSrk1LbpCF0
 zB3ht1xrGYEcqtyZfqwSCELfGsHYSQoYCVXq+qOoLvtNMd1nQL7FmdMgvbmTnuKvwV4E
 dnIg==
X-Gm-Message-State: APjAAAXsWCe3c6IdQZMmg52FS1TOia3pu4DapJ1llV9MtsOhqAF/JLl2
 a33EyFHv8Viy5AzFTT+T3lA49I69vUY=
X-Google-Smtp-Source: APXvYqz21TjyWFYpxJsxQdgRP6bIx2u1jsktIiBF0S+9Sm0ukzv5+U05zBX7u1DD1hfHTfdcuRE42w==
X-Received: by 2002:a17:90a:db44:: with SMTP id
 u4mr23936448pjx.52.1563116270020; 
 Sun, 14 Jul 2019 07:57:50 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v13sm17339967pfe.105.2019.07.14.07.57.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 07:57:49 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
 <9c08054d-751e-fdc0-4ea1-64cfa388e439@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e45db042-2cf0-2922-cceb-ff593711e42f@broadcom.com>
Date: Sun, 14 Jul 2019 07:57:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9c08054d-751e-fdc0-4ea1-64cfa388e439@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_075750_776839_B8088C2D 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Keith Busch <keith.busch@intel.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzEyLzIwMTkgMTA6NTggQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gZGlmZiAt
LWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPj4gaW5kZXggZGI1OTRhMy4uNGVhOGI0MSAxMDA2
NDQKPj4gLS0tIGEvTWFrZWZpbGUKPj4gKysrIGIvTWFrZWZpbGUKPj4gQEAgLTgsNiArOCwxMCBA
QCBERVNURElSID0KPj4gwqAgUFJFRklYID89IC91c3IvbG9jYWwKPj4gwqAgU1lTQ09ORkRJUiA9
IC9ldGMKPj4gwqAgU0JJTkRJUiA9ICQoUFJFRklYKS9zYmluCj4+ICtMSUJESVIgPz0gL3Vzci9s
aWIKPj4gK1NZU1RFTURESVIgPz0gJChMSUJESVIpL3N5c3RlbWQKPj4gK1VERVZESVIgPz0gJChM
SUJESVIpL3VkZXYKPgo+IFVERVZESVIgbmVlZHMgdG8gYmUgYnVpbHQgZnJvbSAkKFNZU0NPTkZE
SVIpL3VkZXYgYXMgTElCRElSIG1pZ2h0IGJlCj4gL3Vzci9sb2NhbC9saWIgYW5kIHVkZXYgZG9l
c24ndCBsb29rIHRoZXJlLgoKSSByZWFsbHkgd291bGQgbGlrZSB0byBjaGFuZ2UgcHJlZml4IHRv
IC91c3IsIHNvIHRoYXQgaXQgbWF0Y2hlcyB3aGF0IGlzIAppbiBudm1lLnNwZWMuaW4gd2hlcmUg
dGhlICVpbnN0YWxsIHBhcmFncmFwaCBzZXRzIFBSRUZJWCB0byAvdXNyLsKgwqAgV2UgCmhhdmUg
dHdvIHNlcGFyYXRlIHBsYWNlcyBzZXR0aW5nIGEgdmFsdWUgYW5kIHRoZXkgYXJlIGluIGNvbmZs
aWN0LgoKQmFzZWQgb24gdGhlIHNwZWMgZmlsZSBzZXR0aW5nIC0gdGhlIG9ubHkgbWFrZSB0YXJn
ZXRzIHRoYXQgbWF0Y2ggUFJFRklYIApvdXRzaWRlIG9mIHRoZSBpbnN0YWxsIHRhcmdldHMgaXMg
dGhlIHBrZyB0YXJnZXQgd2hpY2ggaXMgbWFpbmx5IG1hbiAKZmlsZXMgYW5kIGEgY29weSBvZiBu
dm1lLsKgIFRoZSBtYW4gZmlsZXMgcGVyaGFwcyB3b3VsZCBiZSB1bmRlciAKL3Vzci9sb2NhbCwg
YnV0IGV2ZXJ5dGhpbmcgZWxzZSB3ZSdyZSB0YWxraW5nIGFib3V0IHdvdWxkIGJlIHZlcnkgb2Rk
IAp1bmRlciAvdXNyL2xvY2FsLsKgwqAgUGVyaGFwcyBhIGJldHRlciBhbnN3ZXIgaXMgUFJFRklY
PS91c3IgKHdoaWNoIGFsc28gCnNldCBTQklORElSIGZvciB0aGUgbnZtZSBjb3B5KSwgTElCRElS
PSQoUFJFRklYKS9saWIsIG90aGVyIHZhcmlhYmxlcyAKdGhlIHNhbWUsIGFuZCBhZGQgYSBNQU5Q
UkVGSVg9L3Vzci9sb2NhbCBmb3IgdGhlIG1hbiBmaWxlcy4KCi0tIGphbWVzCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
