Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B59E9B47D
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 18:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hjyLslRGjA+kveZTSbFFbKZCq9mgmoxzviO7AM0ecps=; b=hYlOkw7ojeLJHW04gLAFVUTiV
	/FyJ2HXnhWImKceIEQU6UpUmKUPW1Y1P/287J1N1H4SJ6K/6UaQVxKeCTsXj1V5sRp+FULqvygvm/
	G+WsgudzpId+V6d4mAXoG1oy6OMvs1Gay2mKtGuUAnw69wH6K/sMDUkT73EHEz6bt7rCT8xj/AR0t
	0ZziwUu8IyqDijM8drYO0reDjYJXHy4BCnMhUMMNSghjUF37PsiW+5Vlda8RR22RRBNtAVBBlXeaO
	aLQEWF+yX+WYiH07p66iQJOIJtppivOfT37/+/HuKqLN9dsiCRL0wXRn0e5Mzi9E+cRpCd/4AsHvP
	BipKs6CFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CUf-0000U3-4b; Fri, 23 Aug 2019 16:32:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CUa-0000Te-6S
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 16:32:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id v12so6780899pfn.10
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 09:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=EjC2pW4B8J+JT9CMfIkQmrrFe0li+Zn4uh/ZyySOMvk=;
 b=TXhe1mRzKXoIKjDTsrsEHrr56262xD9bhw2RbPtdmPk3VpveDAM/tezD7VRiTCNblX
 xdYi70RqQ3zpP6kTuSELeUoVQLkRV8Q0FmfIUcs9PgRw8Xsio6nO7goDE5tDT7bcRy/a
 xYaRwQivoz1F8Der01JvfeJBlaSYtZaHd78+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=EjC2pW4B8J+JT9CMfIkQmrrFe0li+Zn4uh/ZyySOMvk=;
 b=EF/2HM4cjqGNDF8sCMwP3wV2uBUh6gB8kMQPdfdE8RQ5drRwsNn3NdYJbC5vzOXWOG
 q4w6cgXf16BC19nhke3NWXxEB8lKgbjMAfdvn+12Ymw3Thj5W25cozP3rqEGi75mmgvy
 YHsFs77wh5h2NYrHgXfNp+/ynvrnFtV3ZKMIcYgrWl3qTMdlkn7jjuO1RQc9PYHTy9fA
 ngV08ZCNsNzyVXk951OPRYTvHnfXMlhx6kV4zJQ7XSolI7DsVblCxqEEaksel8LLo1UL
 /M6c9qFPVQ+plAGcPmdB5qF2QC6zoe7LDk+h3mjuKgUeOGR8Vm3QxnxsMYr3HyvxhNEI
 PurA==
X-Gm-Message-State: APjAAAUmN9FvDbCXzB7UF8C3OuFcn/z9CKeahFAVMoYtiw4cTJ38JJXh
 9U8WVgx1FlSXp2EQQ1tQ5K4AqA==
X-Google-Smtp-Source: APXvYqz4AiExO5cU+lRZRWVeoCRlk0jto5ovclWmH3WSwIYmovTBgQIr/yYY7D2ImCvQkmbrjIxt7Q==
X-Received: by 2002:a62:ac0d:: with SMTP id v13mr6134242pfe.129.1566577967330; 
 Fri, 23 Aug 2019 09:32:47 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k5sm2614878pjs.1.2019.08.23.09.32.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:32:46 -0700 (PDT)
Subject: Re: [PATCH 1/3] make: install udev rules in sysconfdir
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190822220937.8021-1-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <bd8a86a7-a445-8300-ecb0-b9e295e3126c@broadcom.com>
Date: Fri, 23 Aug 2019 09:32:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822220937.8021-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_093248_246126_40256E8D 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8yMi8yMDE5IDM6MDkgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gV2hlbiB0aGUgbGli
ZGlyIGlzIHNldCB0byAvdXNyL2xpYiB0aGUgbnZtZiBjb25uZWN0IHVkZXYgcnVsZXMgYXJlCj4g
aWdub3JlZCwgd2hlbiBwbGFjaW5nIGl0IGluIC9ldGMvdWRldiBydWxlcyBhcmUgd29ya2luZyBh
cyBleHBlY3RlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJl
cmcubWU+Cj4gLS0tCj4gICBNYWtlZmlsZSB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFr
ZWZpbGUKPiBpbmRleCA2NDA5YzllMTNhODcuLjY0Njg0YTg4ZDlmOSAxMDA2NDQKPiAtLS0gYS9N
YWtlZmlsZQo+ICsrKyBiL01ha2VmaWxlCj4gQEAgLTEwLDcgKzEwLDcgQEAgU1lTQ09ORkRJUiA9
IC9ldGMKPiAgIFNCSU5ESVIgPSAkKFBSRUZJWCkvc2Jpbgo+ICAgTElCRElSID89ICQoUFJFRklY
KS9saWIKPiAgIFNZU1RFTURESVIgPz0gJChMSUJESVIpL3N5c3RlbWQKPiAtVURFVkRJUiA/PSAk
KExJQkRJUikvdWRldgo+ICtVREVWRElSID89ICQoU1lTQ09ORkRJUikvdWRldgo+ICAgRFJBQ1VU
RElSID89ICQoTElCRElSKS9kcmFjdXQKPiAgIExJQl9ERVBFTkRTID0KPiAgIAoKVGhpcyBhcHBl
YXJzIHRvIGJlIGZpbmUuCgpSZXZpZXdlZC1ieTrCoCBKYW1lcyBTbWFydCA8amFtZXMuc21hcnRA
YnJvYWRjb20uY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
