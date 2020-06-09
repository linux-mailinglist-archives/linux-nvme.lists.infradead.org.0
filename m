Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079DC1F4993
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 00:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PpsC+d/iX+5WNuFVKbkr5r3b8K5X7ZnfSZ9miIi37r8=; b=El98ytncw27QXPvM4Ty3WoTdV
	CUSqtMWIgwehRauEqYPqAZFub9SAsoyJoralIW6ccoD138IlkVIOv1Qw3RstKKxKpWoXreYcsg+Le
	ZtH78zobXytqdPM/7tTJ1pizwCm5oVCzs6izn3M+uZxXYak1aNXBHaG+Z20SKJ8MYNjCT6s/qJxBH
	zGe/gv81ftjv937GM5h9ekbhyJoL8xihn//wx2ZCodCai9UigCWcPByBQk7DRQeHRtDSlZ/KHk0Z5
	656Px3f1PhkLXiC+Z4QWtTPferAKKdzLkvfE/qIcSKRjpO2TNbcdSNqtQzHidAlLjQPemDKIUsNGY
	/UKfDXD3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin4u-00032S-La; Tue, 09 Jun 2020 22:50:44 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin4p-00031c-UX
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 22:50:41 +0000
Received: by mail-pl1-f195.google.com with SMTP id m7so163859plt.5
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jun 2020 15:50:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z5Mc1lg+yLSNb9gjyN5/FFAvQG0GjurPUgRV5DvDya4=;
 b=m47fG4gb+9Bwq+BzkUN1SGpWZXuiU2AdmRk4fT+SYiW5ynBBpL8CUxtAqxniu566/5
 x0n7Dl+6oEssxeKlWQZCRq4pd0XvzKCUrGOGYLrVnoMbCruuhk1eWzi7yNVczXJUKthj
 npHrGnL30qbQAnYNCjuSuXJ3OqpFFD8wusrf5sKY4fgTTNlqHZCOsaaJNcoUswv9HeEZ
 VjzWM/kAn9DSHN7VYvG5YWJYw23v3XeSa5bLdIhHig4pbNfdKP0Up1nKHiP+XReYHbJG
 gqbk02SIb6a6drQnc4S8bcopB7J1hw0lThnYUwfmwiMF1pcXdfHLVYf5r6Iw0wkEKB4k
 0iBQ==
X-Gm-Message-State: AOAM5324+M94vOq9ofwBUmJCq3oph5YvS0zU60WCWrNJmaLYXgF7a1la
 XBPUwnnfmuj5fXrIM39GJXI=
X-Google-Smtp-Source: ABdhPJzENb++RrGR214qm3ewssYWW92kHeYdYdSLb9s2X26DV2mXHmCrDEFzI1y2hurW8W25eZ6ggw==
X-Received: by 2002:a17:90b:4911:: with SMTP id
 kr17mr75386pjb.40.1591743039016; 
 Tue, 09 Jun 2020 15:50:39 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8d09:1feb:aaa3:3f03?
 ([2601:647:4802:9070:8d09:1feb:aaa3:3f03])
 by smtp.gmail.com with ESMTPSA id u21sm10696326pfn.123.2020.06.09.15.50.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 15:50:37 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fail outstanding host posted AEN req
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200609224311.35142-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <62eba3d0-812d-ef2f-f523-ba66ef88bd91@grimberg.me>
Date: Tue, 9 Jun 2020 15:50:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609224311.35142-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_155039_982693_C45A40E9 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +	/*
> +	 * Target controller's host posted events needs to be explicitly
> +	 * checked and cleared since there is no 1 : 1 mapping between
> +	 * host posted AEN requests and target generated AENs on the
> +	 * target controller's aen_list to the async_event_cmds array.
> +	 */
> +	while (status != 0 && ctrl->nr_async_event_cmds) {
> +		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
> +		mutex_unlock(&ctrl->lock);
> +		trace_nvmet_async_event(ctrl, req->cqe->result.u32);
> +		nvmet_req_complete(req, status);
> +		mutex_lock(&ctrl->lock);
> +	}
>   	mutex_unlock(&ctrl->lock);

Its out of place in my mind, I'd prefer to have it on a dedicated
routine if we go down that route...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
