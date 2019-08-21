Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F509816B
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 19:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6Hlsv0c55NEleECvE9SyTd10SlRwIJNfnZ2avfopNg=; b=PJVpFxbC3vyO3m
	b1DXSOotFGBCQyqrXy4bvgzKprXonvqM+3a8aFHaOsBHJjGpyVEKqoi3rO8lZVVCedhNQRY4M2t4L
	JL/G6kPTv1MKxihQnC0+GNiEu4gOZ/b1CF7UVhag1Y0Sc0YMY7XhEFNP5HUYs115MntBstQpbjie5
	aHHLYCdtO9oRajQ5Ig4frtoUA/H4rCbDZBJf4ryci3TxX68Yq6/lC6YBZ50fePqcWH5YUroi4GagN
	ixC5fPrTzPy0Um8ZatX/DLEYjlg9t/X5flGZgsiOfqZ6yJ/oFI9BRp7oszN4wCocyIpATunN75nmE
	Ylx4BBkwgr3gzhDcVQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UXV-0003ka-J0; Wed, 21 Aug 2019 17:36:53 +0000
Received: from mail-eopbgr780109.outbound.protection.outlook.com
 ([40.107.78.109] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UXN-0003hW-54
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 17:36:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQBGDaGKxLfJZqeATgrgkSvdbdi+wWSbz+OYIN5GN4I0jp0otoWvrvMrrCVt7Qm8ZGtt33TxiZYDBs+MChOL20K3SF7uLj3EZHwRYv2caK/iGb+uZ+c+ruYc12siEQRFis9IW3ZzxYjBsqLO/NqJpPi4ErK53jrVBGoQn2ejUOoxQgJYu8N+yugNzccwm6JkayWCe9f9Aoo9MyTwuSSuhfvMKo6dUeVDI8CNl6Ht5UQesPWpwMiXPWO0P8ilAJ3pod30PrQlg7sIpKM20Lu5c28vYbaRUti8pbd5J+271gTtgd/MZhfXZLPZk7ZtuZYZ6322LMps5h/tBJ3clVXrZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyHF+YuyJQKQvfycVCgI08ZW71S32xgDYTmIN7PIkxM=;
 b=czmlcILYLePFqHjk7AwuXXQu6ZTx3QhRSsXV/ifx7UMjBirXfsLjC9/KLDuhLcWO8AARMtLPEaApEqnoJwZhaExfiC5nCUerlV9moTMJhR9Ne8hgwbLIwIjofU45xcqvaGCw6jFCZbcac/8cU6GY3io+mkYrgJL+r9euql8fWreURa1kCe92mrRtm137PrqUM6iGcLKJhEkVJgxgmFU/4C+UfQqW+aTCegnxpRZHDp2ZTt+5XwE/WIldzjVCuGHoAM3sMgZWGUvTFayAugFlxnl1FgrpCDHYt2GzjL+adO4BxRf4TwK4DRfl5a+iFJ8pWs6U7+2qVSlPtcXsIxQWAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyHF+YuyJQKQvfycVCgI08ZW71S32xgDYTmIN7PIkxM=;
 b=GBHIjHSBnMqD/GOXf1r5pkJor3fBG+fZyZX9uTgV1tslU45Nvg3YzFdz4TNvPBYiN5kKUaaKGa+D/E+xjIDgqqDSXJ/tXs+gUEFl++/keQMPnFEqkLA/VgyVs4XfKJ/H1m2tlia/wwxjJWCP3ND2B0dXEN5r30t/4qVmh7Sd9WY=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0693.namprd21.prod.outlook.com (10.175.121.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.4; Wed, 21 Aug 2019 17:36:37 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Wed, 21 Aug
 2019 17:36:37 +0000
From: Long Li <longli@microsoft.com>
To: Sagi Grimberg <sagi@grimberg.me>, "longli@linuxonhyperv.com"
 <longli@linuxonhyperv.com>, Ingo Molnar <mingo@redhat.com>, Peter Zijlstra
 <peterz@infradead.org>, Keith Busch <keith.busch@intel.com>, Jens Axboe
 <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 3/3] nvme: complete request in work queue on CPU with
 flooded interrupts
Thread-Topic: [PATCH 3/3] nvme: complete request in work queue on CPU with
 flooded interrupts
Thread-Index: AQHVVx6V8EslWtuw80WR9kecrOlyh6cETI8AgAD8sjCAAJQMgA==
Date: Wed, 21 Aug 2019 17:36:37 +0000
Message-ID: <CY4PR21MB074141B895C9FE0D390F590ACEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
 <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
 <CY4PR21MB0741E77B05835E1192415943CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
In-Reply-To: <CY4PR21MB0741E77B05835E1192415943CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a45ffb50-4e3e-4123-b387-08d7265e1ea5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600158)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR21MB0693; 
x-ms-traffictypediagnostic: CY4PR21MB0693:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR21MB06933CC827B2B676A55C008BCEAA0@CY4PR21MB0693.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(51914003)(189003)(199004)(11346002)(446003)(2501003)(14444005)(46003)(8676002)(33656002)(102836004)(8936002)(71200400001)(71190400001)(81166006)(6506007)(81156014)(478600001)(6116002)(10090500001)(186003)(486006)(305945005)(8990500004)(7736002)(74316002)(2940100002)(476003)(66446008)(25786009)(66946007)(64756008)(76116006)(66556008)(10290500003)(14454004)(5660300002)(99286004)(256004)(2201001)(7696005)(66476007)(76176011)(2906002)(53936002)(6436002)(22452003)(110136005)(229853002)(6306002)(55016002)(52536014)(86362001)(316002)(6246003)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0693;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Qf7FpjKEyffOHNujO8GcKxNIvz32d4WEXRP0vtw4KGr/Ra+W3I+jv7NiJD9+o3X10JLkmmDW28ABP1wm5yiViWTD/MBQqrFdIqt3KezKoPbClJKE6sjccvCp90wechwEUK1/xIqMcmHFpS2kBBmUt+OvFrWPi4rmc41aa5cSOcCRnlcYMEF36uwTVM8WP7hO+wVWySZtoDS5MO6FenkzBw2daUkXyozfPtgHuURosBIOyuR96XdVfOd2HDKUhXMH7YQUzKal5aP1SYQPH2GJj0DfEp8Mj+BTmgbW+Hs6jx8Ivb6b3pmkdwWpdddEaGkxw3aUpSaqalavYAritsF807AK0GA8EjD1oztRGQ2xjHZa9A4VvPg4knDou2Y3fxnLPuf1rh1H2Dq+UBXdiW4YgXYQZXtr1LYo7m5iWwvf3mQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a45ffb50-4e3e-4123-b387-08d7265e1ea5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 17:36:37.7962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Dh6dDnRySEJvazZzj0ZpMXD0fv8jGEUYx1aIWew+52CYF1C+pQryuuTSmKmEHMPuv6OmMHNB/VE1CnaMMokxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_103645_284310_51765A32 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>>>Subject: RE: [PATCH 3/3] nvme: complete request in work queue on CPU
>>>with flooded interrupts
>>>
>>>>>>Subject: Re: [PATCH 3/3] nvme: complete request in work queue on
>>>CPU
>>>>>>with flooded interrupts
>>>>>>
>>>>>>
>>>>>>> From: Long Li <longli@microsoft.com>
>>>>>>>
>>>>>>> When a NVMe hardware queue is mapped to several CPU queues, it is
>>>>>>> possible that the CPU this hardware queue is bound to is flooded by
>>>>>>> returning I/O for other CPUs.
>>>>>>>
>>>>>>> For example, consider the following scenario:
>>>>>>> 1. CPU 0, 1, 2 and 3 share the same hardware queue 2. the hardware
>>>>>>> queue interrupts CPU 0 for I/O response 3. processes from CPU 1, 2
>>>>>>> and
>>>>>>> 3 keep sending I/Os
>>>>>>>
>>>>>>> CPU 0 may be flooded with interrupts from NVMe device that are I/O
>>>>>>> responses for CPU 1, 2 and 3. Under heavy I/O load, it is possible
>>>>>>> that CPU 0 spends all the time serving NVMe and other system
>>>>>>> interrupts, but doesn't have a chance to run in process context.
>>>>>>>
>>>>>>> To fix this, CPU 0 can schedule a work to complete the I/O request
>>>>>>> when it detects the scheduler is not making progress. This serves
>>>>>>> multiple
>>>>>>purposes:
>>>>>>>
>>>>>>> 1. This CPU has to be scheduled to complete the request. The other
>>>>>>> CPUs can't issue more I/Os until some previous I/Os are completed.
>>>>>>> This helps this CPU get out of NVMe interrupts.
>>>>>>>
>>>>>>> 2. This acts a throttling mechanisum for NVMe devices, in that it
>>>>>>> can not starve a CPU while servicing I/Os from other CPUs.
>>>>>>>
>>>>>>> 3. This CPU can make progress on RCU and other work items on its
>>>queue.
>>>>>>
>>>>>>The problem is indeed real, but this is the wrong approach in my mind.
>>>>>>
>>>>>>We already have irqpoll which takes care proper budgeting polling
>>>>>>cycles and not hogging the cpu.
>>>>>>
>>>>>>I've sent rfc for this particular problem before [1]. At the time
>>>>>>IIRC, Christoph suggested that we will poll the first batch directly
>>>>>>from the irq context and reap the rest in irqpoll handler.
>>>
>>>Thanks for the pointer. I will test and report back.

Sagi,

Here are the test results.

Benchmark command:
fio --bs=4k --ioengine=libaio --iodepth=64 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=90 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1

With your patch: 1720k IOPS
With threaded interrupts: 1320k IOPS
With just interrupts: 3720k IOPS

Interrupts are the fastest but we need to find a way to throttle it.

Thanks

Long


>>>
>>>>>>
>>>>>>[1]:
>>>>>>https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fl
>>>ists.
>>>>>>infradead.org%2Fpipermail%2Flinux-nvme%2F2016-
>>>>>>October%2F006497.html&amp;data=02%7C01%7Clongli%40microsoft.co
>>>m%
>>>>>>7C0ebf36eff15c4182116608d725948b93%7C72f988bf86f141af91ab2d7cd0
>>>11d
>>>>>>b47%7C1%7C0%7C637019192254250361&amp;sdata=fJ%2Fkc8HLSmfzaY
>>>3BY
>>>>>>E66zlZKD6FjcXgMJZzVGCVqI%2FU%3D&amp;reserved=0
>>>>>>
>>>>>>How about something like this instead:
>>>>>>--
>>>>>>diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c index
>>>>>>71127a366d3c..84bf16d75109 100644
>>>>>>--- a/drivers/nvme/host/pci.c
>>>>>>+++ b/drivers/nvme/host/pci.c
>>>>>>@@ -24,6 +24,7 @@
>>>>>>  #include <linux/io-64-nonatomic-lo-hi.h>
>>>>>>  #include <linux/sed-opal.h>
>>>>>>  #include <linux/pci-p2pdma.h>
>>>>>>+#include <linux/irq_poll.h>
>>>>>>
>>>>>>  #include "trace.h"
>>>>>>  #include "nvme.h"
>>>>>>@@ -32,6 +33,7 @@
>>>>>>  #define CQ_SIZE(q)     ((q)->q_depth * sizeof(struct nvme_completion))
>>>>>>
>>>>>>  #define SGES_PER_PAGE  (PAGE_SIZE / sizeof(struct nvme_sgl_desc))
>>>>>>+#define NVME_POLL_BUDGET_IRQ   256
>>>>>>
>>>>>>  /*
>>>>>>   * These can be higher, but we need to ensure that any command
>>>>>>doesn't @@ -189,6 +191,7 @@ struct nvme_queue {
>>>>>>         u32 *dbbuf_cq_db;
>>>>>>         u32 *dbbuf_sq_ei;
>>>>>>         u32 *dbbuf_cq_ei;
>>>>>>+       struct irq_poll iop;
>>>>>>         struct completion delete_done;  };
>>>>>>
>>>>>>@@ -1015,6 +1018,23 @@ static inline int nvme_process_cq(struct
>>>>>>nvme_queue *nvmeq, u16 *start,
>>>>>>         return found;
>>>>>>  }
>>>>>>
>>>>>>+static int nvme_irqpoll_handler(struct irq_poll *iop, int budget) {
>>>>>>+       struct nvme_queue *nvmeq = container_of(iop, struct
>>>>>>+nvme_queue,
>>>>>>iop);
>>>>>>+       struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
>>>>>>+       u16 start, end;
>>>>>>+       int completed;
>>>>>>+
>>>>>>+       completed = nvme_process_cq(nvmeq, &start, &end, budget);
>>>>>>+       nvme_complete_cqes(nvmeq, start, end);
>>>>>>+       if (completed < budget) {
>>>>>>+               irq_poll_complete(&nvmeq->iop);
>>>>>>+               enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
>>>>>>+       }
>>>>>>+
>>>>>>+       return completed;
>>>>>>+}
>>>>>>+
>>>>>>  static irqreturn_t nvme_irq(int irq, void *data)
>>>>>>  {
>>>>>>         struct nvme_queue *nvmeq = data; @@ -1028,12 +1048,16 @@
>>>>>>static irqreturn_t nvme_irq(int irq, void *data)
>>>>>>         rmb();
>>>>>>         if (nvmeq->cq_head != nvmeq->last_cq_head)
>>>>>>                 ret = IRQ_HANDLED;
>>>>>>-       nvme_process_cq(nvmeq, &start, &end, -1);
>>>>>>+       nvme_process_cq(nvmeq, &start, &end,
>>>NVME_POLL_BUDGET_IRQ);
>>>>>>         nvmeq->last_cq_head = nvmeq->cq_head;
>>>>>>         wmb();
>>>>>>
>>>>>>         if (start != end) {
>>>>>>                 nvme_complete_cqes(nvmeq, start, end);
>>>>>>+               if (nvme_cqe_pending(nvmeq)) {
>>>>>>+                       disable_irq_nosync(irq);
>>>>>>+                       irq_poll_sched(&nvmeq->iop);
>>>>>>+               }
>>>>>>                 return IRQ_HANDLED;
>>>>>>         }
>>>>>>
>>>>>>@@ -1347,6 +1371,7 @@ static enum blk_eh_timer_return
>>>>>>nvme_timeout(struct request *req, bool reserved)
>>>>>>
>>>>>>  static void nvme_free_queue(struct nvme_queue *nvmeq)  {
>>>>>>+       irq_poll_disable(&nvmeq->iop);
>>>>>>         dma_free_coherent(nvmeq->dev->dev, CQ_SIZE(nvmeq),
>>>>>>                                 (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
>>>>>>         if (!nvmeq->sq_cmds)
>>>>>>@@ -1481,6 +1506,7 @@ static int nvme_alloc_queue(struct nvme_dev
>>>>>>*dev, int qid, int depth)
>>>>>>         nvmeq->dev = dev;
>>>>>>         spin_lock_init(&nvmeq->sq_lock);
>>>>>>         spin_lock_init(&nvmeq->cq_poll_lock);
>>>>>>+       irq_poll_init(&nvmeq->iop, NVME_POLL_BUDGET_IRQ,
>>>>>>nvme_irqpoll_handler);
>>>>>>         nvmeq->cq_head = 0;
>>>>>>         nvmeq->cq_phase = 1;
>>>>>>         nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
>>>>>>--
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
