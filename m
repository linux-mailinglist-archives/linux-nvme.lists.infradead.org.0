Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B1967FB4
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 17:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUChQe918cloqM2SDKgsBjc4QVY761O/7qh/SKSY9yo=; b=Cifi4+PoaNMR0K3Fg46sQieUr
	diyM8SPVcC9isZrYhiISUlENsH8PJu7tfsDy2rHLz6uUpf5MK0ljws/v3ic7bl8jTvjzFZxuVau0a
	8n9bqBAzdiYHNEx95xM4gTAOxNh4tP0P3cXUCprGPoHMNvKij/F04VSaPxxmEZmkqtqepOpHGDimA
	G8hrsOIiJOCg8GINNPfwY24k1sK8epHEA+6R6tib+VEgVYHpMyCxNW/T11Hi9OMtKkEAWlhvnM+ZJ
	2lyshwOCMV0zEfu5i7DoXcBELqq/w6rWntCL1UWkAM8kBcQeHJIUW5D6kIHA33zR1xWqRVc4EywUS
	ALWDy7k1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmgCF-0004rL-Fe; Sun, 14 Jul 2019 15:13:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmgC6-0004r2-BX
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 15:13:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so6273697pfb.13
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 08:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=VYqs8Ex0XtUESBuQllz3xEL50aMlfiAwcR30dUGyj2Q=;
 b=BmqRC2CYp+C1TLHwTMhhex8ANZvlwIa19tao+rVv4IYDbXynziroWcNll4vxawQc1P
 cnMecjeoUSZPzUutKhAre9nWgBtWQs3cMqLOnFsRQKWzbaSzmnhPzZRSGM7pvGCEB5vp
 UZmFqCRUBtyeINZxGON/pKHzzXGwSzsf3eJxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VYqs8Ex0XtUESBuQllz3xEL50aMlfiAwcR30dUGyj2Q=;
 b=DFqKm6TXb7CfQYL6gGS7wTQT6JvJ+7vRl+UttIjyUDkpY4yY+fXPwSgq85+Ld2d0sq
 R+H9TVuPKAiwyALZcRTuDlSKj32KoxUMABSoEZbQLqlb2u66HUdQKBJ+cD+J3tcc0B8R
 6EYPPJU/RG49+DT/w2TtlUiLOauwRxEpEtY4cqvN2eTZrm/US+8i0unSuITYjYOq70W8
 WCvAiEmt9F0CIarJZih0CcvviAtlAiOqyEaaIZo2XSoVHfMIIDh7Q3kxUFKrEgwjkDis
 mxO8fj292NfhLXP4XKqnmyHDAEqwLubHM8pzRzrR5g4SgiS5cstxXdpCk1bvuYmcBCq4
 90Tw==
X-Gm-Message-State: APjAAAVcewU3aOolVlEot70UT6gWtlY2GYWV4lhwuH62E/IVZhHgwBWu
 eUjrMF9L6lPUlA32azLSdnofSg==
X-Google-Smtp-Source: APXvYqwovRWs0Mw2KpQjiWmCmsQnPWeCBvXeZQTC7CJKGE7XwpYZmj1MAzQ2Fogz3yklc10dgUZRpw==
X-Received: by 2002:a65:4841:: with SMTP id i1mr21949066pgs.316.1563117221747; 
 Sun, 14 Jul 2019 08:13:41 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c69sm17490847pje.6.2019.07.14.08.13.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 08:13:41 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <169826df-9eb2-57ab-1141-d2cdb5eefd68@broadcom.com>
Date: Sun, 14 Jul 2019 08:13:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712180211.26333-4-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_081342_410835_070CB3AB 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/12/2019 11:02 AM, Sagi Grimberg wrote:
> Provide userspace with nvme discovery controller device instance,
> controller traddr and trsvcid. We'd expect userspace to handle
> this event by issuing a discovery + connect.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 30 +++++++++++++++++++++++++++++-
>   1 file changed, 29 insertions(+), 1 deletion(-)
>
>


Reviewed-by: James Smart <james.smart@broadcom.com>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
