Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF8F197379
	for <lists+linux-nvme@lfdr.de>; Mon, 30 Mar 2020 06:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zoYa8oBsDAb6TjzgwmmoRVpZ8zDOM5Ax7pJV+gJJF+0=; b=Cm8i/s5h7oNYdJo6Jqre1LJ/4
	cKyGCn4fp0tVLiKjpO1dZK3xuMmCvOA9Buiefg2iq8o8O6Bqs5VKWA2wxAc+O/gjEFst4/ZKyTj/7
	OjPlt7jZpSXev5CWFrGzU2lzmY4svDJL/dtZ12m1GybgKBCqHJRUQywQ5EYMh8WERA9VsfCsoEz7f
	pw/1zDscvg+65X4qJtDYcby3Dnd9ht68IocJMUJqedxQBeCAHwV6f24YgGe8yQaeJQObar1H+x3Um
	az2hRLoUh5Hm+tSnVU4H7suXT1BGFw+PQ1rOu+nM6uQtclm1wr6S7BiTtdmwqujxfml4Af2XRNzwr
	4XOXYAaFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImAA-0005ur-QA; Mon, 30 Mar 2020 04:36:38 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImA4-0005uM-85
 for linux-nvme@lists.infradead.org; Mon, 30 Mar 2020 04:36:33 +0000
Received: by mail-pl1-f195.google.com with SMTP id g18so6260795plq.0
 for <linux-nvme@lists.infradead.org>; Sun, 29 Mar 2020 21:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yvn1Tr+wyUqP8DeA4uHXX9UZseDeHAzHX5gHTZsDAmk=;
 b=Et+1UlDdSk7FmGrc7VqzBYNadOUgA/bghzl9vmTb7G28HKkFdF92BGxhhcGDHHu9TX
 TFL1vui1bMmFN8U8TPxnnA03/ECGfTqMwbzI9+8q+/OGLMAT+nwuL1x28jILK/BM4MXf
 h93RG8N2tQO9mI+RlZRThtk16oo7SH7FhzPIvgaVMySX7WAmbmjB0Pd3WE0HBhw2qV2Q
 6k7/GZCfYr3ikhzoj3iOh9T5RNdWAwD6JOPeqOf5N6WOFDIltsa8yP7omatwisrp+6X+
 cUA7kYV4Y+I9/fWVBthdLfK2kj6sryRWwdoqHouuGKtA9WtbX/iLZ8ZLXXDwlEvsXVxV
 waOA==
X-Gm-Message-State: ANhLgQ1R7TuOSQ7wp3O2MPYWbV0rJVk0ffEJjUOvLOMzFnsOsg/P3gZ4
 Cx7+c5Lwn5wlVpuaXDm03+U=
X-Google-Smtp-Source: ADFU+vuShEVPqgYMcJoqV5lY5RPm2VbPLaqJgJOmOxHpakOM69j5scv+yNR0kL+X/e7ECXrUODXOjg==
X-Received: by 2002:a17:902:864c:: with SMTP id
 y12mr10789080plt.8.1585542990876; 
 Sun, 29 Mar 2020 21:36:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8cd5:23c1:2c2b:d926?
 ([2601:647:4802:9070:8cd5:23c1:2c2b:d926])
 by smtp.gmail.com with ESMTPSA id y131sm9096448pfg.25.2020.03.29.21.36.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Mar 2020 21:36:29 -0700 (PDT)
Subject: Re: [PATCH] nvmet-rdma: Fix double free of rdma queue
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1585477302-4307-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <39a9e27b-51fa-6c87-8e5f-17f4f7318bd0@grimberg.me>
Date: Sun, 29 Mar 2020 21:36:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1585477302-4307-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_213632_289761_2631A139 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> In case rdma accept fails at nvmet_rdma_queue_connect() release work is
> scheduled. Later on, a new RDMA CM event may arrive since we didn't
> destroy the cm-id and call nvmet_rdma_queue_connect_fail(), which schedule
> another release work. This will cause calling nvmet_rdma_free_queue twice.
> To fix this don't schedule the work from nvmet_rdma_queue_connect_fail()
> when queue_list is empty (the queue is inserted to a list only after
> successful rdma accept).
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/target/rdma.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
> index 37d262a..59209e3 100644
> --- a/drivers/nvme/target/rdma.c
> +++ b/drivers/nvme/target/rdma.c
> @@ -1380,13 +1380,14 @@ static void nvmet_rdma_queue_connect_fail(struct rdma_cm_id *cm_id,
>   {
>   	WARN_ON_ONCE(queue->state != NVMET_RDMA_Q_CONNECTING);
>   
> +	pr_err("failed to connect queue %d\n", queue->idx);
> +
>   	mutex_lock(&nvmet_rdma_queue_mutex);
> -	if (!list_empty(&queue->queue_list))
> +	if (!list_empty(&queue->queue_list)) {
>   		list_del_init(&queue->queue_list);
> +		schedule_work(&queue->release_work);

This has a hidden assumption that the connect handler already
scheduled the release.

Why don't we simply not queue the release_work in the accept
failure and return a negative status code to implicitly remove the
cm_id? this way we will never see any cm events and we don't
need to handle it.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
