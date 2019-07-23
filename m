Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BF472010
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 21:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcPbAzTKZVMvbj8GqxhEOC1ZE8Qy/yfFIGfEpQE4wn8=; b=tWtOZnqswuDooimy4Kf53EMru
	cSmODXk1zEHW8B7LAovO91FrUllLQ5LdFNmX8Fkshl/JiBWdVT3HyjvuxqWMIKe8Myhxg9yrziP7A
	XOzMnsclK4NsSyr5CaS1Jw15Ppuujq2hqKMiQkEMfLz1TvC0ljiBRH2sGH3reTm4ndjWroayVthqa
	aW/ayHWnEllmCzGjYLQHxE6lrgRWwgyaesGqnbWXJj5mFAOLZ91EeVUCJHWRp6Zyuql2xEcDmuztk
	WUCH3fhN79lG18JoZ0pEUI4wlTPGjjDh9kM16ljZ60uzNGvLbNJB7jsf6JdBaDzaE4h34QHe8YehO
	LJSjDXJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq0NF-000670-GM; Tue, 23 Jul 2019 19:22:57 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq0N8-00066R-64
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 19:22:51 +0000
Received: by mail-pf1-f195.google.com with SMTP id q10so19616884pff.9
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 12:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I7H9WuepZHm6Wu+kvlLtlyscOcPVk1KhXWvH7V20mi8=;
 b=plBSDoweMLQEsIBncUGRsFcMXtmBslCb8+trPovKHGatlRNq7mjdifHuqWESbR1OJK
 m/gNMfc71yto0V+KY9bEe+RwOygGABjYJQRFq8KXkBPFyaiKsS1KdPMf9AnYngKDqOdU
 MmfwkipYXiU8fOzOsWGun2iyy0G/cCvHZPkAJsFluDcOjfnk3BUqHBlD0tHRBtIqTdFV
 ObNBjA/ZsfLNLB/Y5Fs1fQeUOSMxgUEN9DzfYDpjoXXHDzWm6x4xvDxzNXYHU2h/Udxw
 uIRD50Kt5g11TDTUlVTc0vE7Qo8rR9z3jaZi0vw5gbpUvsDSHnQ/OCa5fcSAJnvjBU1S
 wO0A==
X-Gm-Message-State: APjAAAU3gsxD24AZUpAL+XUGmtyV7hVq+jKSHcUeeW1QCMFZGU9FbEW1
 9S4QQTd6Z30B144QXTqWnqI=
X-Google-Smtp-Source: APXvYqxjE4Y2rGs5mdh8ZNkeDWgeKP2d1HmOqHBZfr1CZ924v2aIYcbdPWqf+hxKJ2VEcNr13Tpnrw==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr83146483pja.106.1563909768770; 
 Tue, 23 Jul 2019 12:22:48 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id 85sm45303752pfv.130.2019.07.23.12.22.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 12:22:47 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
To: Ming Lei <ming.lei@redhat.com>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
 <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
 <20190723010845.GD30776@ming.t460p>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7e484af3-15d5-06fd-5c7b-2fbe38e5b8f1@acm.org>
Date: Tue, 23 Jul 2019 12:22:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190723010845.GD30776@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_122250_225364_706E4F3C 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/22/19 6:08 PM, Ming Lei wrote:
> On Mon, Jul 22, 2019 at 08:27:32AM -0700, Bart Van Assche wrote:
>> On 7/21/19 10:39 PM, Ming Lei wrote:
>>> Before aborting in-flight requests, all IO queues have been shutdown.
>>> However, request's completion fn may not be done yet because it may
>>> be scheduled to run via IPI.
>>>
>>> So don't abort one request if it is marked as completed, otherwise
>>> we may abort one normal completed request.
>>>
>>> Cc: Max Gurtovoy <maxg@mellanox.com>
>>> Cc: Sagi Grimberg <sagi@grimberg.me>
>>> Cc: Keith Busch <keith.busch@intel.com>
>>> Cc: Christoph Hellwig <hch@lst.de>
>>> Signed-off-by: Ming Lei <ming.lei@redhat.com>
>>> ---
>>>    drivers/nvme/host/core.c | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>>> index cc09b81fc7f4..cb8007cce4d1 100644
>>> --- a/drivers/nvme/host/core.c
>>> +++ b/drivers/nvme/host/core.c
>>> @@ -285,6 +285,10 @@ EXPORT_SYMBOL_GPL(nvme_complete_rq);
>>>    bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>>>    {
>>> +	/* don't abort one completed request */
>>> +	if (blk_mq_request_completed(req))
>>> +		return;
>>> +
>>>    	dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
>>>    				"Cancelling I/O %d", req->tag);
>>
>> Something I probably already asked before: what prevents that
>> nvme_cancel_request() is executed concurrently with the completion handler
>> of the same request?
> 
> The commit log did mention the point:
> 
> 	Before aborting in-flight requests, all IO queues have been shutdown.
> 
> which implies that no concurrent normal completion.

How about adding that explanation as a comment above
nvme_cancel_request()? That would make that explanation much easier to 
find compared to having to search through commit logs.

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
