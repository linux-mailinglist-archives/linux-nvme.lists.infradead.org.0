Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6823A753E0
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 18:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X45B56wJXpfk8S+psycebK2+85G0V2wTga8FMJg1E6M=; b=K+jD/BmbSe2k9X
	6JJhGrvFZxDzvlF8rBV8uHAWvygavWhnqsOJgPzOwQZaCa1hynGFSF2aE4iERsLdlsowqYOxzVuZZ
	6qAFTJGeG6FeyGcyQMWQhBUnvcmDn37C9uRtyx694062LK8k2KYN0CdDlQs9q/O5BcZjWYxQK5pY+
	UywDd4JZ9vnRJhYaJaoRnkTqFD2XjOl1dBhRCE5FyTROimtTaNKVt3q6fCaA0VXrjluafMfh1zhqd
	JpyNQ8fO5ao2l9gfkUhQt/w0zs1WD/FVLRo46GPnmfdUdAqd0V74ZFDbNMExnJf4hVPQaSdKorU1n
	3CoaXkxuhEBOxxEr5RAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgYU-0001uW-Ki; Thu, 25 Jul 2019 16:25:22 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgXe-0001jI-SN
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 16:24:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so11940142iom.7
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 09:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+VPzjzJbmRozJIvTKRd41RQ1wR4Ggz73XJuu/DaeZOI=;
 b=Aw4o5QSPeXfCC0cUBILFJ39Ujxpj2PDCQA58od61nHc9KeJHRB3XIaCcWsKI/+c4iP
 1xZ62E92cHcFPxZar05zfHc1RffcUAhok3vq04x1K3s4KfatrYAOySWqUA0lmNZCdvI0
 d8lpZgeYmu6RbVpWyYw1Jlf8eiW1ItmqCOwkIzdWJzLb906RSDnWu9i03actatrW7mWh
 6YHRfYGJqolyTjVyNejVg51ES4UyK1GR2a6XK2RW+q7BgjuxwvkZwl+Kbse5Ed4v6QPW
 pXfE8Ixyg+KJwjN54OhADvfEgZLAFMOH0y2PneIOGG2XTRbWnQrrK3n7I1b8XcGBziRJ
 Xb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+VPzjzJbmRozJIvTKRd41RQ1wR4Ggz73XJuu/DaeZOI=;
 b=r8Q3/RAF4BtCmc2g7/92lnNldGhIIyk/EH38yEHAA2YXj0hk60b/c9+WTq/AVujUBC
 t3wTH1Ffcs+I5hwCn5DuQJAv8pUF7yNHhD2DPxlmHjn/1eyTW7exDVJvL28OAIQDSJG9
 QWM3BtRkVq4ydyusFzsvDZJ7w3pJFyrni4iSGhYcKR1qVs+jzMvZmSaFN8WNup8THU4t
 m6E0YN2KV1adUhh38YMCwT18QK8KJT2lqbAAi04rhEnWeWR9OjWQqh8f6GF3N6Mqq5vS
 36ux1vYILNkUYC7+sGd/S5gHqrpjETEJfqqjbX+9LUEq1fysUhCGVGDJJWwluR4qp2aw
 /1og==
X-Gm-Message-State: APjAAAWdDVFbuv6Pa1PHWKkm6hyTAYtwxTsboT4CDD/bqWemXH0J7w+8
 JtGdrebxX5RZQDnvGfUgi3/Db89qydw=
X-Google-Smtp-Source: APXvYqzLbWGkPs++0ubPK5ICYVIG3stE+tmXo13HNSwsXkens1k99m8h9trJRSm59YMMoXLhCFO55Q==
X-Received: by 2002:a5d:9908:: with SMTP id x8mr32048739iol.304.1564071867888; 
 Thu, 25 Jul 2019 09:24:27 -0700 (PDT)
Received: from [192.168.1.57] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id c23sm41593655iod.11.2019.07.25.09.24.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:24:26 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.3
To: Christoph Hellwig <hch@infradead.org>
References: <20190725141245.GA4339@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f1bda303-27f9-8c5c-3cb1-a2bb58c91566@kernel.dk>
Date: Thu, 25 Jul 2019 10:24:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725141245.GA4339@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092431_067800_364C8FF1 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/25/19 8:12 AM, Christoph Hellwig wrote:
> 
> The following changes since commit 77ce56e2bfaa64127ae5e23ef136c0168b818777:
> 
>    drbd: dynamically allocate shash descriptor (2019-07-23 07:35:18 -0600)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.3
> 
> for you to fetch changes up to 8fe34be14ecb5eb0ef8d8d44aa7ab62d9e2911ca:
> 
>    Revert "nvme-pci: don't create a read hctx mapping without read queues" (2019-07-23 17:47:02 +0200)
> 
> ----------------------------------------------------------------
> Logan Gunthorpe (1):
>        nvme: fix memory leak caused by incorrect subsystem free
> 
> Marta Rybczynska (1):
>        nvme: fix multipath crash when ANA is deactivated
> 
> Misha Nasledov (1):
>        nvme: ignore subnqn for ADATA SX6000LNP
> 
> yangerkun (1):
>        Revert "nvme-pci: don't create a read hctx mapping without read queues"
> 
>   drivers/nvme/host/core.c      | 12 +++++-------
>   drivers/nvme/host/multipath.c |  8 ++------
>   drivers/nvme/host/nvme.h      |  6 +++++-
>   drivers/nvme/host/pci.c       |  6 +++---
>   4 files changed, 15 insertions(+), 17 deletions(-)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
