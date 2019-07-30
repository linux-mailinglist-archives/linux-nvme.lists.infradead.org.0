Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7579DAC
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 02:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug9Yy9W2QhWmHYOoeGasa4lxQ+DtVKNFlfh2K1MK6yM=; b=K6hT3OEzLQFNlG
	14TPqX3UTgTQveLiVS83ztoJcFFWks2ZZeUJuijxypuoBLxdc7vaRx9ffA2CB+fKudeH1VjtcfzWE
	C+iOFHJnDUFKo5ojYQAmr6dR7yx86gBxsymzbb2S+nQ5AGCbXLG4p95PSIpZs4A64He/xzU5HBPyj
	yL7z0TSRCvpshpLETC5Ghu+11htFAzI66CrjKjNsdhJH4+q1rarbkvZ1Ul/04JU3yRsZsHbQlOhIi
	tDNHsUcpCJhPTf+3b3QRFymibg0YPvRDLmZalR6o3jT3bBfx/tznzTfIdKULylFyUwKFUE+9opEaQ
	oBSYk6U8FWxLVB0Fbuow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGUH-0005tc-8n; Tue, 30 Jul 2019 00:59:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGU9-0005tF-ML
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 00:59:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so38710883wrr.4
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 17:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7IcF8MqZeajK/9sR85it5qZrY4cVJ2VvlXURqucCH3Q=;
 b=rivz7ftKoYC4gwKx87mdMEk8hH6C/TLs1hUdebmjqXew5bSLcGM7j+CFwEP+wlq+1N
 lXefEykbNpwcfRu8Po24NCsdQm05/kK0/zTJn/poRgUAWgYOsr2m0ysuaGBAmhE9SSfd
 Ls0jBE2ktghL4Rk4OLK+3NMp0I686q+y7DMEFZTaXNpCO11+u48Da6p8NqR2G+O7JdVQ
 TseISeJQ0KQ5pfSMx3RaYAziq66JuJd0+uQNzHTF+wk2YVPnQ7qYad1JgN9CwsdnpTN3
 bvGYK4W4E091t2wJFEyG04cfQGc+R8p+OKBZ7W9P4V4r1Co9X90C4yJhsMw6syEidZM3
 iRkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7IcF8MqZeajK/9sR85it5qZrY4cVJ2VvlXURqucCH3Q=;
 b=law4alJDtPmJYTC/k6WUSBJ10bCZM7M/w13hT3kWnsd0pjKxCUTg7cQEJ3xRvZYLMO
 pIFri5ftdwCdGaIBG1umLiysjFqfeD6SC0oTyIQ4/5Gv7DQPFnGANRj8WS6SiBZF2HYq
 894LqwbzrmIr5dESfW8bSEY8NA/u5T8QWUsl/00p2Tr5ilyyTWfNMUdG//KhHdZ1Q4ls
 irNJLXI/JaDDKe5Iu1Svf5bw431NDB+NVbTn17+y0ufTA+CtPtE4q/CY3BchaUZEe31r
 NldAP+n1Kq9kISG8HHSGHZz3RLVSwoNKHfNnsl2Ql1Zyl0vNUxbHpPhKW6mBL2wD0q2y
 c30g==
X-Gm-Message-State: APjAAAUefzCpVptQTtH/u/W+urrWDmY7Bi5EUcxkfQO2RhRHgypM40wW
 qfnsNj7XTLTXKbSch0jcDF3578kaOq6mdilOfKen+ISI
X-Google-Smtp-Source: APXvYqxJGZilpz40hmJ1OFYGOj7ff6kGeIwB9NLw0hlMa9UQb8UivPzNb6B/q5uVHpfJiPOXpasiSbRHPSjhTmZetQU=
X-Received: by 2002:a5d:498a:: with SMTP id r10mr34718470wrq.28.1564448362474; 
 Mon, 29 Jul 2019 17:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
In-Reply-To: <20190729233201.27993-2-sagi@grimberg.me>
From: Keith Busch <keith.busch@gmail.com>
Date: Mon, 29 Jul 2019 18:59:11 -0600
Message-ID: <CAOSXXT6kG36vCf7wj8aJG+9fARYP9y+SB8TogfKuc+g20S_TYg@mail.gmail.com>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_175925_758883_AD1FA29F 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 5:32 PM Sagi Grimberg <sagi@grimberg.me> wrote:
> If a controller reset is racing with a namespace revalidation, the
> revalidation I/O will surely fail, but we should not remove the
> namespace as we will execute the I/O when the controller is LIVE again.
> Specifically check if the controller is LIVE because as
> RESETTING/CONNECTING are transient and DELETING/DEAD will eventually
> remove the namespace in the removal code path.
>
> This fixes sporious I/O errors in path failover coditions where the
> controller reset is racing with the namespace scan work.
>
> Reported-by: Hannes Reinecke  <hare@suse.de>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index fa31da0762b9..5f6970e7ba73 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>
>         ns = nvme_find_get_ns(ctrl, nsid);
>         if (ns) {
> -               if (ns->disk && revalidate_disk(ns->disk))
> +               if (ns->disk && revalidate_disk(ns->disk) &&
> +                   ctrl->state != NVME_CTRL_LIVE)
>                         nvme_ns_remove(ns);

That should be '== NVME_CTRL_LIVE', right? You don't want to remove it
for the resetting state, and the removing states take care of removal
directly.

On the RESETTING state, shouldn't we avoid calling revalidate_disk()
in the first place? An intermittent failure during reset could cause
the disk to temporarily go to a zero-capacity, which may cause some
filesystem issues that we could avoid if we know we're about to rescan
this namespace.

>                 nvme_put_ns(ns);
>         } else

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
