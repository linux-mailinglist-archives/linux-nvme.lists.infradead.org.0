Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FFD1D350E
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 17:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lr6NbJOLTYXcwcnAxr0PoNayoAWXNFGKgETaSTOxbwM=; b=u83Whw2YB3S32kM63AzhXerdB
	VSkPsKTM8ciCCvKHKK/T4o0H/08rrn9TbsgVDWlpAawmp3UxkV2tdppbtCUkhJK+lMZ0uC06HaOqD
	cbvACGDi/QNf315w4984AWTPvfnHmbAYuM9crMSPl4xcEq+ZY8m9AO3P+r6n+T9U3WEgfex/iXTwK
	Ne8JdK0qRYiQJ1Y4vFMQmiGaMiLlCRIRFGiTRdF2H//OqdU+Rj50fJyNu8aCAIBoOYfq16w8romdx
	eLuJrQDJx2jqagSsX87oPKQnmDTI9dvia22gCOWHh385A1n/brROMpFf/l0CxPlLN3z5s5e7V68F8
	ANizGA7tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFlW-0002CV-BD; Thu, 14 May 2020 15:27:18 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFlP-0002BB-HR
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 15:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589470027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HPwv7vjtwws11lgG8kNdNfsBGpJ0Bn7tAJ5KfQzWc9g=;
 b=FvjVn/DAFAaK9T4/mKCWT+e/rM73m6SIIHrScySoOdfoXxkCnxu1ltrlcTh3XgPCOZDJgj
 VtHaIl7V/J8wJjuF6Ijg2mDHIwzP7vESMwq7ZGZo0naTpqFaUqt4GJHAcSfdpiECnE9m0A
 BokaNDmkqTuq8CpeqwmS04RKnoAVhdc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-7khh2vMiNeqCviSqXYo5RQ-1; Thu, 14 May 2020 11:27:04 -0400
X-MC-Unique: 7khh2vMiNeqCviSqXYo5RQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38DE519057A1;
 Thu, 14 May 2020 15:27:03 +0000 (UTC)
Received: from [10.3.112.128] (ovpn-112-128.phx2.redhat.com [10.3.112.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A59FB5D9CA;
 Thu, 14 May 2020 15:27:02 +0000 (UTC)
Subject: Re: [PATCH] nvmet: nvmet_async_events_process always free async event
 to avoid memleak
To: Christoph Hellwig <hch@infradead.org>
References: <1589382492-9811-1-git-send-email-dmilburn@redhat.com>
 <20200514150535.GA10740@infradead.org>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <445bebd6-d5c9-8ae2-7547-c3fa4b8aecf9@redhat.com>
Date: Thu, 14 May 2020 10:27:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200514150535.GA10740@infradead.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_082711_651478_55106605 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org, chaitanya.kulkarni@wdc.com, dwagner@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

On 05/14/2020 10:05 AM, Christoph Hellwig wrote:
> I don't think we should take the aen off the list if there is no
> command slot available.  So probably something like this instead:

Ok, we will retest.

Thanks,
David

> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index b685f99d56a1f..0df9300d717d6 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -134,15 +134,10 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>   	struct nvmet_async_event *aen;
>   	struct nvmet_req *req;
>   
> -	while (1) {
> -		mutex_lock(&ctrl->lock);
> -		aen = list_first_entry_or_null(&ctrl->async_events,
> +	mutex_lock(&ctrl->lock);
> +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
> +		aen = list_first_entry(&ctrl->async_events,
>   				struct nvmet_async_event, entry);
> -		if (!aen || !ctrl->nr_async_event_cmds) {
> -			mutex_unlock(&ctrl->lock);
> -			break;
> -		}
> -
>   		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
>   		if (status == 0)
>   			nvmet_set_result(req, nvmet_async_event_result(aen));
> @@ -152,7 +147,9 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>   
>   		mutex_unlock(&ctrl->lock);
>   		nvmet_req_complete(req, status);
> +		mutex_lock(&ctrl->lock);
>   	}
> +	mutex_unlock(&ctrl->lock);
>   }
>   
>   static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
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
