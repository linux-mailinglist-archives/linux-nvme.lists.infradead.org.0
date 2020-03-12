Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C1D182936
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 07:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SqrI6M8yqGe1LNZHk0PT/5H7arHjp8mlrv+ul578SGc=; b=sKCwhPrN2vb+N/w32WPQm17LD
	3m4O+1CdItuCj17eRmbuapTabtHGXfacBFeFupsGmWLlF4FE8E9PZUmkENaMOUQPKkL1NvOOp2aot
	vGmuiQ5t7smr7P5gfPJPzJXKgI6MjR1+JbmJlJ37570UVSo/XZ2WrxZEXiXKJB9ZnR5iZWoBtEdqM
	8XDtggip+IhF3HWItIhb4SjQZZWqOs3wVVynPs0JLnyhtUmcmpMMXl0uHWH2qlTIpH3mqBofrC5N6
	Gwy79i5w7ppxcQKPq05BcTSYPsOmmtc+MG2LTUv60N2LWtTPaYD8OMW1gYBH/XOVA9ddjCd2TvnMA
	Z+oRBGaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHSy-000767-UG; Thu, 12 Mar 2020 06:37:12 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHSu-00075e-SE
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 06:37:10 +0000
Received: by mail-pg1-f194.google.com with SMTP id m15so2536567pgv.12
 for <linux-nvme@lists.infradead.org>; Wed, 11 Mar 2020 23:37:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oXVHnLBqZ+W2f6xn69C5OnTTt/vUFWd9/MiWm40RGbA=;
 b=MkDCiz+ff7nZt426OHLE5wjXaWzFj5yWGo2dfGoW9zazbbSvCVxyT1L9v/PTafq9Cr
 0PheuLGQGTSfpBBbxmE3kF8bnTDaCRs/IGpvYVnPkdOwojE//LkcWpMJ9Cxt1N+LW9MG
 5BXssqW0Yru6PCrK489fGop7F9xb0BArkTmNffeWc7fXv4ED4l+IUAle1q+gNPWP7Utb
 dE/wCbYsuecq4VNZyqTGUWP+VwfMTRJrqWYtIvDKCiMAgR966+adAGNK1gCuL+VQiDnh
 yanwTuSSnzaYRynvy8t6wlUI1ANWCbZ0GTcfS0P4lxTn4EK9LUyq3Ri8n7AdJ4rA9ABa
 RAAQ==
X-Gm-Message-State: ANhLgQ2kbUNplp6nf1/vEz+SeBCpWgQmXwdRi592QRLRkzAoWxTDXDGC
 Q83tYBwzTL7ZEy072EKeyNwFTDUy
X-Google-Smtp-Source: ADFU+vvGs9xepvqly14Kv6Nne79KeBviyf+sx/63EtTXSecyN5pZcSXAI7BTruKePvGeDm5FeZ2rxQ==
X-Received: by 2002:a63:5864:: with SMTP id i36mr6624669pgm.426.1583995027862; 
 Wed, 11 Mar 2020 23:37:07 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:c47a:8519:9343:83b8?
 ([2601:647:4802:9070:c47a:8519:9343:83b8])
 by smtp.gmail.com with ESMTPSA id x15sm8447292pfq.107.2020.03.11.23.37.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 23:37:07 -0700 (PDT)
Subject: Re: [PATCH 1/4] nvme-rdma: Fix warning at nvme_rdma_setup_ctrl
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
 <1583938849-5787-2-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <974e3bd2-3282-5703-eba6-bc2675c98c8e@grimberg.me>
Date: Wed, 11 Mar 2020 23:37:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583938849-5787-2-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_233708_915899_C07DE79A 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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


> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index d6022fa..57f9031 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -1084,8 +1084,12 @@ static int nvme_rdma_setup_ctrl(struct nvme_rdma_ctrl *ctrl, bool new)
>   
>   	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
>   	if (!changed) {
> -		/* state change failure is ok if we're in DELETING state */
> -		WARN_ON_ONCE(ctrl->ctrl.state != NVME_CTRL_DELETING);
> +		/*
> +		 * state change failure is ok if we're in DELETING state,
> +		 * unless we're during creation of a new controller to
> +		 * avoid use after free (ctrl refcount is not taken yet).
> +		 */
> +		WARN_ON_ONCE(ctrl->ctrl.state != NVME_CTRL_DELETING || new);

What state are we in if not DELETING in this case?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
