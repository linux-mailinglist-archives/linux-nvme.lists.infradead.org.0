Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E12FBC48
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 00:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PPSmHI7bP8JCf6+yw9UeGl+rMOlcp9bilojxVpUxzbQ=; b=bmFm53RYOXMTADOIjKbTp+zHK
	XULDH6jtmYW7OcJ51vLO0aUxbszt7j7tFJw4xQs4nQlTzTuVWNb1HmUCbLXgEuNciXT/8BrUzggzo
	Gv5aoGf3y7ioykOKDinErRfgC9lIvckJhYafzeKLdECnfYSvXboYdarOoKFy/AT6Js7nL/U6QihYx
	bT+jiDPUR0fAdBdpFzkRtXGWdMQ7E1cMTD9HA8sVamw/WhFINOgYJHgQmy6frWfB7UPqObXELJE62
	M1yEmfIqxPF33TkPEF4ezeWyvpFHJDH7ntfnqEf5Je3QRpqEk028bDbJCso0lWoyqsb91y78y8i4o
	t/CNWmTyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1ni-0003de-V8; Wed, 13 Nov 2019 23:11:50 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1ne-0003dL-GR
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 23:11:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 15:11:44 -0800
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="355626261"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 13 Nov 2019 15:11:43 -0800
Subject: Re: [PATCH V2 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
To: Ming Lei <ming.lei@redhat.com>, linux-nvme@lists.infradead.org
References: <20191113134248.26022-1-ming.lei@redhat.com>
 <20191113134248.26022-3-ming.lei@redhat.com>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <f4335756-786b-1f72-313c-92358685d06f@intel.com>
Date: Wed, 13 Nov 2019 16:11:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191113134248.26022-3-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_151146_590050_EB49D9D9 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Long Li <longli@microsoft.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11/13/2019 6:42 AM, Ming Lei wrote:
>   	spinlock_t sq_lock;
>   	void *sq_cmds;
>   	 /* only used for poll queues: */
> -	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
> +	union {
> +		spinlock_t cq_poll_lock;
> +		spinlock_t cq_lock;
> +	}____cacheline_aligned_in_smp;
>   	volatile struct nvme_completion *cqes;
>   	struct blk_mq_tags **tags;
>   	dma_addr_t sq_dma_addr;

Still not sure I follow the case for another lock (seems to me like just a 
semantic distinction, as they both basically bracket nvme_process_cq() calls). 
  What have I overlooked?

(Anyways the poll queues comment doesn't seem to apply to cq_lock.)

Thx,
Ed

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
