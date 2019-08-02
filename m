Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78977FF68
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 19:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e9tqIupfXmCYduevlk9TQkORVXYFL63uD/xSxNKx120=; b=HkOiIbXgBPHigDeLvHxpk0UpP
	hVQpt/HeojtKLWQorGFf4FhOMYDwvavAs/OqcPldXPmtIJqK8PwlVpzeMc3rEFO0Wb8YveQceOwVD
	42dU5V2nOf3A6fEgkfGnIOK5xF+FkmDT7ZHpt934RhLyrXJRnnlPvEjyRjUw82uD4PCbV0DcrUEHc
	DQQLe9ZxKNTwqgP3hv9xYxXy5MuPneFpIhnY2hPMS5WZ1D6lOtcF2LBQ9LkO1vkGCeW42XNm4p5Dc
	XaQvhMmRD7xinHXa5F+4iITZP7mYvbuysJ5wdvlDCDgLyspCgS5IY9trm/7S+4OG/i7phJAbKB+r6
	hYcKMZRIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htbDh-0001Vp-KM; Fri, 02 Aug 2019 17:19:57 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htbDc-0001VV-5a
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 17:19:55 +0000
Received: by mail-pf1-x432.google.com with SMTP id t16so36329057pfe.11
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 10:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=MgfLeYe/Np/9ciVQzLknNT6rdPdLBtgZ7mlVlwCXceo=;
 b=Sh68ce3kpjHg9KraQRaVh4ZHr9/xb5eZT3zsZAJ6ksmYQQ7C3qZq+3nyVxVaKFBVvV
 sbs/Y9OsKWucvLqDFVSZN5edMAXUsxGlJbzuwy1+yRPGCqKsu1nf6DwPrDZXPR8wDCUc
 zqCoKgWNxbpkvsAeVkiypvOaQPcqtFuespCTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MgfLeYe/Np/9ciVQzLknNT6rdPdLBtgZ7mlVlwCXceo=;
 b=E+T3kVa/YUTu8Byoa9m1zu9oEu/f5GLoxu8MxMHSQAzH2iM8SkyQAWoaWflUKwtWXF
 iwnnoQx5klgQYa4afrhbURyRvyJNK4aDI0+ThdgVFPdF6QIpYjkqpjWOyuEgyqw8QWQf
 kl+oNpAiq6Z+xzvJYMOwXbG8SuvyMN1YvfT6eFdU9VfEAftL/mrZwxpN4YwHjYLEEMqG
 vzRAZS6KIbM/Z3eF04teCS/raens5wcq7C0NfnNN9rYagnClt1Ccfst62tbJ+pdXg1os
 r9OSQfE/YI+miaIIQMVC29lLF9oobg0eTjgCrFYahAcIVAMDc+Gn3JjFFOdaDh2Ok1NS
 HdKw==
X-Gm-Message-State: APjAAAWE+9VkWg6GRPFNfj8KjhCpyaMy/mSgLio68Uv4ULVqqbyUzLCy
 s1BMp/7uMWjGy7A5lf2dfSGpb1+Tlj7CciugLZePqSysZAMgZTonHp94bsMjGEA/cpRJsLWSNQB
 b3M2DXKPMtXlLj9CsM8oDps4nIHtU4xDozxGH0r/JlyWAtAcQbVZIom1g1sukkoP7rQ4gft3utl
 44zYqn/g==
X-Google-Smtp-Source: APXvYqwUNDAwA1PVhEWpVFajx4QDDUuIORfb+1/k0QuWiSqQYtqF46GDSm1A/5jhCbCbil2/4S0SoA==
X-Received: by 2002:aa7:86cc:: with SMTP id h12mr53700973pfo.2.1564766389022; 
 Fri, 02 Aug 2019 10:19:49 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f20sm89583487pgg.56.2019.08.02.10.19.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 10:19:48 -0700 (PDT)
Subject: Re: [PATCH v3 00/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@intel.com>,
 James Smart <jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
 <20190802155003.GB18214@localhost.localdomain>
 <2b2cc452-269d-baa8-14bc-15989fec9fda@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e247e3f5-583d-08fe-c9e4-97f0210dcaf5@broadcom.com>
Date: Fri, 2 Aug 2019 10:19:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2b2cc452-269d-baa8-14bc-15989fec9fda@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_101952_223207_50BCE0DB 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhhbmtzIGFsbCBhcm91bmQuLi4gSGFubmVzIGFuZCBTYWdpIGVzcGVjaWFsbHkuwqAgVGhpcyBv
bmUgd2FzIGEgbG9uZyAKdGltZSBpbiBjb21pbmcuCgotLSBqYW1lcwoKT24gOC8yLzIwMTkgOToz
NCBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiBUaGFua3MgSmFtZXMuLgo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1udm1lIG1haWxp
bmcgbGlzdAo+IExpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
