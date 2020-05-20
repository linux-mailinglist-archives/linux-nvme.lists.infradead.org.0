Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D291DBBC2
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V4v/42nj+fPIQ504/5HdsXCWYAO8ErFyqgeBuxI9VCY=; b=N4/lFOvvh0Fntw/dkezwfVZBR
	Gx8FeC8HZjq5LtwaM07YCvY9YUpp1y4hfK42fkawdFtgZgKR5Cj8Fb8Sf6p+on2Vf8k8oV2TZSi+w
	EFDW8aYdBWtpvVFiqJwo9gvwJSJgSyIxg3yYEb+8i6pSvw8HQHt/k6rF79UAN9vaE8FB0s5ZW0EEN
	aJwLzPrYYA2KvEGB+nbN6B81WuHmNSOUcf6a0z+JHkckXP/PEjolrW5OK3Xq5rVQnm4310HJp7jez
	l1BzAcS4WfFyus1XZNRyZqKJ14RqEvnRaFG45U6Gxvw6NYOLTXme0WNgGbLWtv/YJ+kBhprcTgmBs
	twwt1Xmbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSjQ-00085D-Oo; Wed, 20 May 2020 17:42:16 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSjC-0007zt-Dh
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 17:42:04 +0000
Received: by mail-wr1-f66.google.com with SMTP id w7so3988153wre.13
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 10:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XGRJabLDi7M6putYilKYxq6RJCpZyfD60R/WlfS+RGA=;
 b=r6NRuwfVRmxf3h+VANN1L6x7ttke1pzkzO3hyion0IO/8hJl4jC31d+FYwrSXINXTU
 k9bMFPJ5w+cXWtEI/PCKMWw4PXnSFlNQ6aQG8/y0ojcSwFafdFtCtBrobvNOgsrfXFgV
 YBKOCOnlysEK0sJPaZSOdFchDIjv51YkVgo+Ye2/4360EgxkHYelw1Aqcse4qrsHc+Lt
 zHknokGNo3RQQxJjYab+Ov+QIXqjeaYDe7MMbvqn5o4g47CbT9lDoXL2pX1++jnl8B1O
 F8lsuTDoIx+Z77EUhznT3z05n9EkwdLgTtKW6d40N+oIE8K6iLjQiqK3xXwp0qEKf6Ic
 fTRw==
X-Gm-Message-State: AOAM530zeEnvJIBzVPbrh6dmojSFhvBnrYn2/gN8bzPMlx31lBucsG4T
 xUAVBvUR60H2Q64edqzG6UP3XyHeKnI=
X-Google-Smtp-Source: ABdhPJzSRLk/Afkkx3kpENqrl3EBwa8hBMMvUlrN/JthMnKTqCEYnWKR3wZnm7EwB1sBInzBzNQnWA==
X-Received: by 2002:adf:bacc:: with SMTP id w12mr4077593wrg.251.1589996520861; 
 Wed, 20 May 2020 10:42:00 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:91e2:91f6:e321:5d4d?
 ([2601:647:4802:9070:91e2:91f6:e321:5d4d])
 by smtp.gmail.com with ESMTPSA id b65sm3915719wmc.30.2020.05.20.10.41.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 10:42:00 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining aens
 in nvmet_async_events_free
To: Christoph Hellwig <hch@infradead.org>, David Milburn <dmilburn@redhat.com>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
 <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
 <20200520071526.GA7008@infradead.org>
 <c0379f95-246a-3fd6-9ec9-4ee814562c8d@grimberg.me>
 <41bae172-289e-1407-93a6-4147491a346c@redhat.com>
 <20200520172741.GB22182@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <df8d9a64-d7ff-b249-e5f9-c3b0cf092c4c@grimberg.me>
Date: Wed, 20 May 2020 10:41:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520172741.GB22182@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_104202_720830_624A6714 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: chaitanya.kulkarni@wdc.com, dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/20/20 10:27 AM, Christoph Hellwig wrote:
> On Wed, May 20, 2020 at 05:39:18AM -0500, David Milburn wrote:
>> Yi was able to reproduce the memleak using the v2 of the patch series
>> since nvmet_async_events_free() ran before nvmet_add_async_event().
>>
>> http://lists.infradead.org/pipermail/linux-nvme/2020-May/030512.html
>>
>> With Sagi's patch below, I do see after nvmet_add_async_event(),
>> nvmet_async_events_process pulls the request, decrements
>> ctrl->nr_async_event_cmds to 0, and frees the aen,
>> and no memory leak.
>>
>> http://lists.infradead.org/pipermail/linux-nvme/2020-May/030548.html
> 
> Ok, let's try a version of Sagis latest suggestion then.  What about
> this (replacement for this patch only, I applied the first one already):

Patch #1 is not needed, but where did you apply it?

Do you think the fix is 5.7-rc material?

The below looks fine, but maybe it would be good to split for small
and easy fix that can go to stable, and then a bit more cleanup?

> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 54679260e6648..1525426d0a31f 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -129,8 +129,10 @@ static u32 nvmet_async_event_result(struct nvmet_async_event *aen)
>   	return aen->event_type | (aen->event_info << 8) | (aen->log_page << 16);
>   }
>   
> -static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
> +static void nvmet_async_event_work(struct work_struct *work)
>   {
> +	struct nvmet_ctrl *ctrl =
> +		container_of(work, struct nvmet_ctrl, async_event_work);
>   	struct nvmet_async_event *aen;
>   	struct nvmet_req *req;
>   
> @@ -139,21 +141,20 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>   		aen = list_first_entry(&ctrl->async_events,
>   				       struct nvmet_async_event, entry);
>   		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
> -		if (status == 0)
> -			nvmet_set_result(req, nvmet_async_event_result(aen));
> +		nvmet_set_result(req, nvmet_async_event_result(aen));
>   
>   		list_del(&aen->entry);
>   		kfree(aen);
>   
>   		mutex_unlock(&ctrl->lock);
>   		trace_nvmet_async_event(ctrl, req->cqe->result.u32);
> -		nvmet_req_complete(req, status);
> +		nvmet_req_complete(req, 0);
>   		mutex_lock(&ctrl->lock);
>   	}
>   	mutex_unlock(&ctrl->lock);
>   }
>   
> -static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
> +static void nvmet_async_events_fail_all(struct nvmet_ctrl *ctrl)
>   {
>   	struct nvmet_req *req;
>   
> @@ -167,12 +168,14 @@ static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
>   	mutex_unlock(&ctrl->lock);
>   }
>   
> -static void nvmet_async_event_work(struct work_struct *work)
> +static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
>   {
> -	struct nvmet_ctrl *ctrl =
> -		container_of(work, struct nvmet_ctrl, async_event_work);
> +	struct nvmet_async_event *aen, *n;
>   
> -	nvmet_async_events_process(ctrl, 0);
> +	list_for_each_entry_safe(aen, n, &ctrl->async_events, entry) {
> +		list_del(&aen->entry);
> +		kfree(aen);
> +	}
>   }
>   
>   void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
> @@ -768,17 +771,14 @@ static void nvmet_confirm_sq(struct percpu_ref *ref)
>   
>   void nvmet_sq_destroy(struct nvmet_sq *sq)
>   {
> -	u16 status = NVME_SC_INTERNAL | NVME_SC_DNR;
>   	struct nvmet_ctrl *ctrl = sq->ctrl;
>   
>   	/*
>   	 * If this is the admin queue, complete all AERs so that our
>   	 * queue doesn't have outstanding requests on it.
>   	 */
> -	if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq) {
> -		nvmet_async_events_process(ctrl, status);
> -		nvmet_async_events_free(ctrl);
> -	}
> +	if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq)
> +		nvmet_async_events_fail_all(ctrl);
>   	percpu_ref_kill_and_confirm(&sq->ref, nvmet_confirm_sq);
>   	wait_for_completion(&sq->confirm_done);
>   	wait_for_completion(&sq->free_done);
> @@ -1368,6 +1368,7 @@ static void nvmet_ctrl_free(struct kref *ref)
>   
>   	ida_simple_remove(&cntlid_ida, ctrl->cntlid);
>   
> +	nvmet_async_events_free(ctrl);
>   	kfree(ctrl->sqs);
>   	kfree(ctrl->cqs);
>   	kfree(ctrl->changed_ns_list);
> 
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
