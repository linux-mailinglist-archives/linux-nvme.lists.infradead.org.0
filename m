Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AE81F7104
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 01:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uCqPyqcqJJDpbLSIko6i4RRDUAmRHyAhUsVym7Ip/M=; b=U9ykiNGIy5ZWad
	RvVzqpnpPLb4aB+M/GWw5hB4GPjjO1ITgk+NYqIuI/X8LKU9iQiV9Q3E9RUgQBiMEeNXZMKjZOPTa
	x9whZPaQEDUGuofaMI0n2uSVj1aZU4/XrT9NJEOEJmnDXBIRwj9eHPyecXzJjBwLohJMsBdgApAB+
	EntrC9vQkmAg2MBCfETtIjwBMtululYlLpPuNFD+Wi/jF6KxLPuaxtCO71ljGmam5WBb277TnMs38
	i1EDm3fa4W/bMfAOi0zdXttqWm+rKVaDQOK5znHm6HhgI2GzIM7P1PzZ1mRqsbG9KhE+11YS6xiNW
	rPZvDcR7uzJfTZiASoRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWub-0003BF-R7; Thu, 11 Jun 2020 23:47:09 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWuV-0003Ab-RL
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 23:47:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gV9QoHt8EYvoGCRmgXIoNP2+LNt+D1Ofl05Ii0wSJgE=; b=FkEOcxMSQTZ7+vgRXN3priANPV
 P8kEefsc8sUN3ssFd8os7kKyVrXhuQFyr2tdlCspviSAdVUqUDmJ45OyszmwhlUs9s+L7h5CpU8Ly
 jm8B4zi/dnj5S6e8SiDmOoMSupAMqvhKKEs4Gwx2zYCIi8spOjFtNRHY3OYNp6SZdJzg+HW1GhFXF
 DgazrnVGdBmTP35H9W1MDEVqOvRjmJcqnnJzvOnyjBNXAea1MdjOi4WBB6IU8W+B+UQIbUXn1AtyF
 /lsOhUfrkpBEH8gM6HfS+NUJh2EKQ4ZGHnb43wj8yuDabFtMeF+2wIYrNrCQb0NBwufoy39Uv6PL9
 Q6UI9qIA==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjWuO-0002NJ-Ai; Thu, 11 Jun 2020 17:46:57 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200514172253.6445-1-logang@deltatee.com>
 <20200514172253.6445-8-logang@deltatee.com>
 <BYAPR04MB4965379CE8694F52D684993386800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <cbe637ec-e80c-def1-2453-70059715e19c@deltatee.com>
Date: Thu, 11 Jun 2020 17:46:54 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965379CE8694F52D684993386800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v13 7/9] nvmet-passthru: Add passthru code to process
 commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_164703_888433_78579C5B 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 5:45 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> +
>> +static void nvmet_passthru_execute_cmd(struct nvmet_req *req)
>> +{
>> +	struct nvme_ctrl *ctrl = nvmet_req_passthru_ctrl(req);
>> +	struct nvme_ns *ns = NULL;
>> +	struct request *rq = NULL;
>> +	struct request_queue *q;
>> +	u32 effects;
>> +	u16 status;
>> +	int ret;
>> +
>> +	if (likely(req->sq->qid != 0)) {
>> +		u32 nsid = le32_to_cpu(req->cmd->common.nsid);
>> +
>> +		ns = nvme_find_get_ns(ctrl, nsid);
>> +		if (unlikely(!ns)) {
>> +			pr_err("failed to get passthru ns nsid:%u\n", nsid);
>> +			status = NVME_SC_INVALID_NS | NVME_SC_DNR;
>> +			goto fail_out;
>> +		}
>> +	}
>> +
>> +	if (ns)
>> +		q = ns->queue;
>> +	else
>> +		q = ctrl->admin_q;
> 
> Is it possible to avoid explicit if.. else in fast path given that the
> condition exists and we can take an advantage of that, how about
> following ?
> 
> diff --git a/drivers/nvme/target/passthru.c b/drivers/nvme/target/passthru.c
> index 9e71fdfbdbb3..4f8e022d254c 100644
> --- a/drivers/nvme/target/passthru.c
> +++ b/drivers/nvme/target/passthru.c
> @@ -84,9 +84,9 @@ static int nvmet_passthru_map_sg(struct nvmet_req 
> *req, struct request *rq)
>   static void nvmet_passthru_execute_cmd(struct nvmet_req *req)
>   {
>          struct nvme_ctrl *ctrl = nvmet_req_passthru_ctrl(req);
> +       struct request_queue *q = ctrl->admin_q;
>          struct nvme_ns *ns = NULL;
>          struct request *rq = NULL;
> -       struct request_queue *q;
>          u32 effects;
>          u16 status;
>          int ret;
> @@ -100,12 +100,8 @@ static void nvmet_passthru_execute_cmd(struct 
> nvmet_req *req)
>                          status = NVME_SC_INVALID_NS | NVME_SC_DNR;
>                          goto fail_out;
>                  }
> -       }
> -
> -       if (ns)
>                  q = ns->queue;
> -       else
> -               q = ctrl->admin_q;
> +       }
> 
>          rq = nvme_alloc_request(q, req->cmd, BLK_MQ_REQ_NOWAIT, 
> NVME_QID_ANY);
>          if (IS_ERR(rq)) {
> 


This makes sense. Will fix for the next revision.

Thanks,

Logan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
