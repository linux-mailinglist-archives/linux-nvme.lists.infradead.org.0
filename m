Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC4F109288
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 18:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=myEQPukXT1apoyEpNVQiWmtjrCzBZtWwgwjGaouWZ88=; b=qZYfDGPpwxXly6O3EcUQjXF5g
	biHDBOvlUa3QetgHxOg/08aVyT/3ifuFG9+uePCFe8FDaf3Kal7ev6Krmo5uZ45z3n9zlIZv3sYXu
	cee2Su3YnHzZ2yvxTOnP+qSM7d9gKa0Gmeshvp7RN8qOM5MzCW0AGNLit7ferIGXBWAC/geYhRmTy
	v3z/b1ERH4r+SUGRYs2usLOC5fIJkNEL35DRUKemMCglFULN8c3LoNiqGxm7RWsdN8jz6+UKn2MCl
	jVac1cjPFyhSPWqjo9GfwkNtYedT/RXRqvuqgvSIZhqqMbZIA816NI7+shBEujEV0CbT/9tU0Yx7q
	Mv91uv6Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHmo-00023q-LI; Mon, 25 Nov 2019 17:04:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHmj-00022z-My
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 17:04:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so19053840wrf.9
 for <linux-nvme@lists.infradead.org>; Mon, 25 Nov 2019 09:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=KG9sEk2tth3p1aSTlVirPKHoJki6IUCBOdnqK+wL0bA=;
 b=cZXjLK1HgFRLNaFjAI7mvoGn+MdD/01C+YtuP3/06bUqlftdJdfjczWxdWr3OJZNFE
 6caFfafFlxFvBXycT1vHAJyO6sR5QU7E8Ks2d3c/smB75YSUQ2LnyokLhXhoiP/c8Lf4
 ijBS6NpgIl7cg4xuADIQEbLUHA5oyJW7gXaNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KG9sEk2tth3p1aSTlVirPKHoJki6IUCBOdnqK+wL0bA=;
 b=oDS9z/JZ6yVEznnpgFhsoUgCAq8zglViklbsireOfuBSYg0OHndL0vnhVGAfUjhNBA
 6KBeR9eQGjrF+bx4T1dn1AjPHIYK5zXfUeME+xxh7KQUmuTNE7+IX8eGx9lEniWpcl/l
 zHM/2RK2ovZupHDLSVBnkukrVjhvyXicq6bBb32bjY5TORa0qIX2dXjyJ2vJ/JEIFdaX
 q/eae39nErSkLpbNwQ3Dv4dKkhi4zUH4U6KHrSpuelgu1DbVXxb+IKe93jb4vUpStZn8
 wh66qYqmlKZFuPbf40t4xna0mdCesKa5QIibSPMQoqmJUNEypQJ5RKBXUOkLMrLQSi+6
 AFDw==
X-Gm-Message-State: APjAAAUL0kLAUlylTGOmlau3CiL7orAhSQEuA4AVTYXWH5qxLlBSKpIH
 Bz/5fBJlnVqxjFzTIvNtdErUsg==
X-Google-Smtp-Source: APXvYqws6FL6fXnfG4zmT5i5tqWGkKSwy06PYKHiRY3X2WQAVWyBQ0+/6NogFmadfkSqccsMAIAMow==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr32441872wrc.175.1574701463237; 
 Mon, 25 Nov 2019 09:04:23 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l26sm8854747wmj.48.2019.11.25.09.04.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Nov 2019 09:04:22 -0800 (PST)
Subject: Re: [PATCH 2/3] nvme-fc: Avoid preallocating big SGL for data
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg
 <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>,
 James Smart <jsmart2021@gmail.com>, Keith Busch <kbusch@kernel.org>
References: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
 <1574613512-5943-3-git-send-email-israelr@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <f22c4c92-ee54-f70c-cb89-d439ef217f3d@broadcom.com>
Date: Mon, 25 Nov 2019 09:04:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1574613512-5943-3-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090426_088581_34B81018 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 11/24/2019 8:38 AM, Israel Rukshin wrote:
> nvme_fc_create_io_queues() preallocates a big buffer for the IO SGL based
> on SG_CHUNK_SIZE.
>
> Modern DMA engines are often capable of dealing with very big segments so
> the SG_CHUNK_SIZE is often too big. SG_CHUNK_SIZE results in a static 4KB
> SGL allocation per command.
>
> If a controller has lots of deep queues, preallocation for the sg list can
> consume substantial amounts of memory. For nvme-fc, nr_hw_queues can be
> 128 and each queue's depth 128. This means the resulting preallocation
> for the data SGL is 128*128*4K = 64MB per controller.
>
> Switch to runtime allocation for SGL for lists longer than 2 entries. This
> is the approach used by NVMe PCI so it should be reasonable for NVMeOF as
> well. Runtime SGL allocation has always been the case for the legacy I/O
> path so this is nothing new.
>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/fc.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
>
Look ok to me.

Reviewed-by: James Smart <james.smart@broadcom.com>

Note: would have preferred to see this be 4 patches, with patch 1 be the 
header file addition only, but a minor nit.

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
