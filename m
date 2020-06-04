Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A9A1EE776
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 17:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6kGhYLqcRwARGCz2IHRF5C7z5TN4xx+2XCviHimF+dE=; b=koWCYxbvcxBqn3scGOZaArMr8
	QKyDLnnU7mePJuImfzTy68uAJhdDKrYnvDKWpFT61XtlrDo5gI9qLTEc8slyPtNdXLPhNrs56HtVH
	Kp60WPFtxHIxRF+ttn11teWfnLNw2tfWEGkWLI7U8jH7E/AQW16wD6D8L8+h4ihfqL60C9R14a7Cj
	W1ci2RGwZt7LwLLDnkYIR8aHWkulZe+9O3c7QBTvNDV6/omsHswVJrnhmKPE8fGSE35dxh4Y6mxaC
	lGLcAY+Tl/eLibL2lY+/ZNM5jKlO1A27KDJ+lOOk3Al0ZPWW8iXCiN0Xvh1gSSc8JL5Qqb7yMpeqt
	qIEkw1BeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrZz-0003Qe-8X; Thu, 04 Jun 2020 15:14:51 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrZu-0003Q9-CP
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 15:14:47 +0000
Received: by mail-pg1-f195.google.com with SMTP id r10so3571797pgv.8
 for <linux-nvme@lists.infradead.org>; Thu, 04 Jun 2020 08:14:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5eM6tO6lx/PcFtOM5dprH/NWs5tOoUAaiWv5nFa87ec=;
 b=rg5XivcvzziSB+jm8laxjnxCMxtI3yM7Rt2KcqHIWhpPXtC74M0MN9NJqbJ5iFTW1d
 eO8XLyN8H7eRie7YSAV8NqLdRxnxIabgjrWNaCHLqi8glI89mVzU3Ii4YSAYYoCd0jWB
 7wbnGzyK8ddFfRu+K7zfF6rLAYdK6Qhs/fiX0XmklnYK7QMvnXNKz8qpqiBeOsCOjZcX
 /vgaG2JeEWhc30NrqHEjWbKnd7gUbW9BWhEeOxHBvJkxlLQXbHG1yjYGUfyOP6sYuJtB
 w/6wP+pgXZtjBFLaBRC0DQPdyoJJS5cBxVgZGiNQJLOWGjEhZqQ+1NAnr16lOOCZIJh2
 vhcg==
X-Gm-Message-State: AOAM531lqG/wBHiWPrrl9VwnPZSPOgLT1oa6yqhvq3GcXrAmVNa6qy32
 GutTvqpnq4ySVhZy+EPeeCk+6Me4lGA=
X-Google-Smtp-Source: ABdhPJwJSpyIWqMr8s5GViV3vcqpdBoIe9oceQGsmlLoI40mKFE16doeYZ31W4ROaIDX40N/+2ZmYA==
X-Received: by 2002:a63:7c50:: with SMTP id l16mr5025548pgn.59.1591283685342; 
 Thu, 04 Jun 2020 08:14:45 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:35c9:507c:6c7a:323b?
 ([2601:647:4802:9070:35c9:507c:6c7a:323b])
 by smtp.gmail.com with ESMTPSA id m2sm6069680pjf.34.2020.06.04.08.14.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 08:14:44 -0700 (PDT)
Subject: Re: blktests test nvme/003 fails
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <a2b9e92a-f499-b54c-a275-c08a23467866@acm.org>
 <BYAPR04MB49651040C77627E3A70FF86886880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <fddde27a-eb61-7031-a067-5538e0fe3243@grimberg.me>
 <BYAPR04MB49651CF1169CD33108A484B386880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <BYAPR04MB4965217373E87DFEE2398D3F86890@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <96530c68-0cc0-8b88-4d3e-c2a66be44167@grimberg.me>
Date: Thu, 4 Jun 2020 08:14:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965217373E87DFEE2398D3F86890@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_081446_422191_76045931 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/3/20 11:25 PM, Chaitanya Kulkarni wrote:
> Sagi,
> 
> On 6/3/20 3:31 PM, Chaitanya Kulkarni wrote:
>>> You already condition aen when setting the result, just free it after
>>> you use it.
>>>
>> Sounds good. I'll send V2.
>>
> 
> What do you think of the following fix ? This is much clear and simple,
> than modifying nvmet_async_events_process().
> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 6392bcd30bd7..b494a902c3fc 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -777,6 +777,20 @@ static void nvmet_confirm_sq(struct percpu_ref *ref)
>           complete(&sq->confirm_done);
>    }
> 
> +static void nvmet_async_events_free_host_req(struct nvmet_ctrl *ctrl)
> +{
> +       struct nvmet_req *req;
> +
> +       mutex_lock(&ctrl->lock);
> +       while (ctrl->nr_async_event_cmds) {
> +               req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
> +               mutex_unlock(&ctrl->lock);
> +               nvmet_req_complete(req, NVME_SC_INTERNAL | NVME_SC_DNR);
> +               mutex_lock(&ctrl->lock);
> +       }
> +       mutex_unlock(&ctrl->lock);
> +}
> +
>    void nvmet_sq_destroy(struct nvmet_sq *sq)
>    {
>           u16 status = NVME_SC_INTERNAL | NVME_SC_DNR;
> @@ -786,8 +800,16 @@ void nvmet_sq_destroy(struct nvmet_sq *sq)
>            * If this is the admin queue, complete all AERs so that our
>            * queue doesn't have outstanding requests on it.
>            */
> -       if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq)
> +       if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq) {
>                   nvmet_async_events_process(ctrl, status);
> +               /*
> +                * Target controller's host posted events needs to be
> explicitly
> +                * checked and cleared since there is no 1 : 1 mapping
> between
> +                * host posted AEN requests and target generated AENs on the
> +                * target controller's aen_list.
> +                */
> +               nvmet_async_events_free_host_req(ctrl);

Call it nvmet_async_events_fail_all(ctrl);

I think the older was better though.. Can you send the latest one to see
it side by side?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
