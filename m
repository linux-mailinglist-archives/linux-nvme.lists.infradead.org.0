Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1680CB4139
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 21:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0cq81zLuzU0RCV7VSJXaIUnQuZYDFXUiKI77yWJFOY=; b=p6FPKfExZBCgeO
	DULdWLvWDSPlIrEKSn3suGaSCeEEDrxodEZsRWMasw6D6dAycBqvOawQXsOYTLb6uOu0noNSpNN33
	q3egq5A61rr4WpSh9YefZrXzZDiMT+uKWyU8wIgDDf9zKqGquOMUdCmYfM/so6wwwi5HcB/v2XMUy
	i4oxjfAohd8Jcv3Wp5uQ7BOVgbvJOpQX7M9KD6DyRxcQOOJKKQXH3P4rNEFliBjnLPXyPCeyxmkAe
	FwPFFGqPYFHF7KRLLWrkEw9jRp6Ie3T2fxp2Th5Y1DUL2vgF88g5ZxDL+kt66p8799VpKqrHg35dk
	OkPS5XLbC8lSpER9u/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wqQ-0000CC-LZ; Mon, 16 Sep 2019 19:39:31 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wqC-0000Bo-TJ
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 19:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568662756; x=1600198756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jEB6iBOWgZlu9qgQ/wixlpmBQjvVh2jbpAne3YPgVTo=;
 b=l8QJZs4EnZhogc7d0GzJzxXRH7e73kEsaRalQkHd3agwVvObMFN3jAMY
 v1gPfag1CSAjmlWhNBGx433uFRbp0nV9dKDe/DHjOyv+wzRIIxzifVil7
 nsWlM9WOLNfybmysXPiSlEb4IZ3cP61ueh9SsuG2tMKSwlwZHfo0XKur9 c=;
X-IronPort-AV: E=Sophos;i="5.64,513,1559520000"; d="scan'208";a="832843455"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2a-69849ee2.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 16 Sep 2019 19:38:45 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-69849ee2.us-west-2.amazon.com (Postfix) with ESMTPS
 id 81183A07CB; Mon, 16 Sep 2019 19:38:45 +0000 (UTC)
Received: from EX13D01UWB004.ant.amazon.com (10.43.161.157) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 16 Sep 2019 19:38:44 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB004.ant.amazon.com (10.43.161.157) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 16 Sep 2019 19:38:44 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Mon, 16 Sep 2019 19:38:44 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sblbir@amzn.com" <sblbir@amzn.com>
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Topic: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Index: AQHVaowXMhT5fp4jR0Gn8rYSgg/tw6cudR4AgABCegA=
Date: Mon, 16 Sep 2019 19:38:44 +0000
Message-ID: <25d9badc90a1eb951cb5103774e8360edaa8ec15.camel@amazon.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
In-Reply-To: <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.34]
Content-ID: <EFC07C70F44C094A844A9A90853F9524@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_123916_998731_4DA0768A 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "kbusch@kernel.org" <kbusch@kernel.org>, "axboe@fb.com" <axboe@fb.com>,
 "hch@lst.de" <hch@lst.de>, "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 08:40 -0700, Bart Van Assche wrote:
> On 9/13/19 4:36 PM, Balbir Singh wrote:
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index b45f82d58be8..f6ddb58a7013 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -103,10 +103,16 @@ static void nvme_set_queue_dying(struct
> > nvme_ns *ns)
> >   	 */
> >   	if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
> >   		return;
> > -	revalidate_disk(ns->disk);
> >   	blk_set_queue_dying(ns->queue);
> >   	/* Forcibly unquiesce queues to avoid blocking dispatch */
> >   	blk_mq_unquiesce_queue(ns->queue);
> > +	/*
> > +	 * revalidate_disk, after all pending IO is cleaned up
> > +	 * by blk_set_queue_dying, largely any races with blk parittion
> > +	 * reads that might come in after freezing the queues,
> > otherwise
> > +	 * we'll end up waiting up on bd_mutex, creating a deadlock.
> > +	 */
> > +	revalidate_disk(ns->disk);
> >   }
> 
> The comment above revalidate_disk() looks wrong to me. I don't think 
> that blk_set_queue_dying() guarantees that ongoing commands have 
> finished by the time that function returns. All
> blk_set_queue_dying() 
> does is to set the DYING flag, to kill q->q_usage_counter and to wake
> up 
> threads that are waiting inside a request allocation function. It
> does 
> not wait for pending commands to finish.

I was referring to the combined effect of blk_set_queue_dying() and
blk_mq_unquiesce_queue() which should invoke blk_mq_run_hw_queues().
I can see how that might be misleading. I can reword it to say

/*
 * revalidate_disk, after all pending IO is cleaned up
 * largely any races with block partition
 * reads that might come in after freezing the queues, otherwise
 * we'll end up waiting up on bd_mutex, creating a deadlock
 */

Would that work?
Balbir Singh.

> 
> Bart.
> 
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
