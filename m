Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D340370DE8
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1IUNALVtWI9Br55rtUMtX6IhmcsBshJUOaVl22gFwyw=; b=bNa3jfScMFwDWmqD5S8gytWNe
	HYkZ/q+DMdjQ25+OewXz4V9D9vF266hO6bfkxmLq1jm0OYFcRuq0HUvEbaTwQM62Rs2vGQLOJC9dh
	r+c7/56cLL//hQrfSwYB259XAuArYeskx85Z+X1RzUp1FnGOKQJkfRvRLpGIhOEj1SyE3r3+PSJkB
	sHOItT0W8Xo3S07JRyUr25bLpTldcw3hIM5svlHoOsewxZ9OC7PZrN+30aIHs0Qxg5S4jxZ53jPVk
	DSpixdNDXtErRPpeuO0cEMpT2BlfVVE4dxbIA3zb3t5YORabELnGhGsjIRyN4b1XA6bK+42+rhMhX
	A2tifuEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiLv-0004g5-6H; Tue, 23 Jul 2019 00:08:23 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiLU-0004XV-1Y
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 00:08:03 +0000
Received: by mail-oi1-f195.google.com with SMTP id m206so30956813oib.12
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 17:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fjcB1FH4OIEzwCsv2saOPnLiM1UTiS07EKgrxMRYBfk=;
 b=AMH0N3BJd4FYRGL5xmPLhMfhZ1VMBi65Hd9yZiDs+CwELzL5Jw1UizU5ahFc5+POUu
 LOGxLIqOmDRNRfHXvVfc64u1zE7ApPDipOBgzcuSEQk7FOrgcrVTN37eG/Dp6QOBYIpe
 7MCfo+3HcrvSlkZL0dxGu75B6uNGEom/18CZVjdrpb66D4bCu1pjB3boNdq9oEe3YJHB
 wc/VbSCJr1iZPIJwlwKFyMBxY2+1DBJwcFwdpPCERInWrbEr5HKncU4RaOVGa3Cp39Qf
 nPnnSpkLl5K3Qy0FnQlo+PWjuqMgDOz4ATZAw560egd/pSiCB69qQOYyJ+v+WmcYQJ7P
 G1qQ==
X-Gm-Message-State: APjAAAUGwFgcJxOn0f1y6lTFJ0o0GVA06u2uaxgSJdbQ4YbIN9mONdhK
 QqkgYn1F0wB05Nmb3oDzZno=
X-Google-Smtp-Source: APXvYqwea4YnEJu6LuLrymkLkcWKnNCXqEHllMPIzZtYxWFX32bCNusnaNoOlVNGrKCOT6rkwxe3Jw==
X-Received: by 2002:aca:3a0a:: with SMTP id h10mr37399735oia.52.1563840474588; 
 Mon, 22 Jul 2019 17:07:54 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z69sm13985238oia.48.2019.07.22.17.07.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 17:07:53 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
To: Keith Busch <keith.busch@gmail.com>, Bart Van Assche <bvanassche@acm.org>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
 <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
 <CAOSXXT5TkrfH0AFZCV0c+YtbFCQ4MnShKM-gkZrj8Qex+Z7Png@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <29a64c98-5da2-c954-1272-e8705a4941c4@grimberg.me>
Date: Mon, 22 Jul 2019 17:07:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAOSXXT5TkrfH0AFZCV0c+YtbFCQ4MnShKM-gkZrj8Qex+Z7Png@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_170756_145589_F5FB4F48 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


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
>>>
>>>    bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>>>    {
>>> +     /* don't abort one completed request */
>>> +     if (blk_mq_request_completed(req))
>>> +             return;
>>> +
>>>        dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
>>>                                "Cancelling I/O %d", req->tag);
>>
>> Something I probably already asked before: what prevents that
>> nvme_cancel_request() is executed concurrently with the completion
>> handler of the same request?
> 
> At least for pci, we've shutdown the queues and their interrupts prior
> to tagset iteration, so we can't concurrently execute a natural
> completion for in-flight requests while cancelling them.

Same for tcp and rdma.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
