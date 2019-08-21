Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0B297528
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 10:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGdolGUmcDdvd76EAwC/MAN3uDlhb0d9hlgu117Zivo=; b=R5MUwA268wGGSY
	Nlu4VazCKwfSdP/E3G9YqAsfybcyXNpKwBPO48YzDKXRDCNUuuaBTq/4OUv0dVV0ZFrpmnUrV8VOI
	RbBVsaMKjvJA7EHtCcVPvpKMDq+JeVzgA9nBxzD8VNzCwDdNsxve4ZFd4RqWTmHkX4FEu/u8F6fJT
	hMYSY/69AxO0mUHgzUtvK0veCfLPyUfRxuhzG6rLF7OpwpD3gWkZFXDat0/WK6e7ed4Yzk5DsnYYi
	tePsnP6gz6/7Tt07hCTaZ5CQFnFohIHzei+koBF/0OkV0+pDITKs/b+vu5w468Q74EP4MPwx0BuZE
	OdO5J6uowxHZAtNEyoGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0M9K-00019D-M5; Wed, 21 Aug 2019 08:39:22 +0000
Received: from mail-eopbgr770092.outbound.protection.outlook.com
 ([40.107.77.92] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0M99-00018Z-7K
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 08:39:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiXK8SyxoPGRaYZJVsr0wnirqF1cgNSE2uBLMSi4GrW2B1B2AL+2DuWN4HTw9GmiuqIkZrjHwANsz6GDckS77nBLneYeRyv7FgeimC7dT6Sy7rx2d19uElTq0/dICD8sTulzx5wSQmAmPvwtwTGUXzQtwlzvY4XX/0d15ADuB+QxERZyhPJB32BoPCgNN2i1CP6vluYWSTLrciypvHnD6+WDvZTWZhd7jTloWMCUzBipS6GBio9CyUkhDPNhx8pxpIO7lCPlTyU2oMPYM92L76O8fP6Rv5poZd90ts3f++MyE/cyvoLngjYnSfXl054RTV1hcF2XYE+iKx5vvUfKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt3xRo1s5AgWshkdjqj+EGuG9OtQAgQUJFw8J3oZ5fQ=;
 b=LAqiRa78QWhcHEjqi51YEkWhuidDFx+t4OLV3+t2hyRzDTFlBkcLkJVNtnK8Zmrh8SVvLdCubAtAOBQPuVe+SMMl1SJRqm3MlqUqIfzJ3OOzCJpDyTGZC8tzam9vzcrbr2Elyk4DRcwqWx/xI7atgt5v75NSMjOvUWevzSd3IakqbBSSPxLKk6F7c+oqaDkW9ijCYYaXpKF8C4zoSl/nohYyB0aPrrsM8roFhi+EeQzU2+Mo5hIHME9vK2+8uc9UGKz8ByVuMKQ/Hk6YqC3FeKfq68fxAGfEz/Gp32fDfecU4J41mD9jej4bDep8cNqJ1tca6OVk5rUq1y6IWxL1lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt3xRo1s5AgWshkdjqj+EGuG9OtQAgQUJFw8J3oZ5fQ=;
 b=Eecgw/Mtt2t1ZQwQGK1YosPoJBIpwEtNxa3eKO8PthKMuJaNHgjLTe78pceWhcuAdEyFD5hLbzm4gP8dr4qY6jXqIoLEC/AFpPg48ST9Lc2eHI7XdTo/OTmc6rh1sKhIQzFl5eolLjwgn9KY5sDFYUi6el2ktBa2DiCpX09BeLI=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0149.namprd21.prod.outlook.com (10.173.189.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.11; Wed, 21 Aug 2019 08:39:09 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Wed, 21 Aug
 2019 08:39:09 +0000
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
Thread-Index: AQHVVx6V8EslWtuw80WR9kecrOlyh6cETI8AgAD8sjA=
Date: Wed, 21 Aug 2019 08:39:09 +0000
Message-ID: <CY4PR21MB0741E77B05835E1192415943CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
 <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
In-Reply-To: <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 911d40a0-fc11-4484-6cef-08d72613091b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600158)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR21MB0149; 
x-ms-traffictypediagnostic: CY4PR21MB0149:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR21MB0149B168A6F5E252154D6FC7CEAA0@CY4PR21MB0149.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(51914003)(189003)(199004)(71200400001)(71190400001)(22452003)(46003)(55016002)(66476007)(14444005)(256004)(2201001)(7696005)(6306002)(2501003)(6116002)(186003)(476003)(9686003)(486006)(66556008)(2906002)(64756008)(66446008)(76116006)(66946007)(11346002)(446003)(6436002)(74316002)(76176011)(10090500001)(8936002)(5660300002)(305945005)(7736002)(110136005)(8990500004)(6506007)(316002)(102836004)(229853002)(478600001)(81156014)(81166006)(86362001)(8676002)(25786009)(99286004)(14454004)(6246003)(53936002)(52536014)(33656002)(10290500003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0149;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5c79Vts2v57XjIBEzpMPM4p7nG9nMDBBtsOIIz3aImMjQYDt/5v+YB5BPHlD1FLh+jAl5pqw1M3OCexRxzxaVYdDIhhEYiAtwyAmcxzBMiByGZw6p1S2Vqa+GMHS1xQaBq0ntczu8v2h7bCyowyCp+7nBmhvkrxpZxAR48TLgcnVcTWZM5MO/vF+lv7+AxFrldKUkCAroDxNLcbblB4YlWtWUObhxsn6HotmOKrx333+4EZuPyuJ+LsusAWXpAeDV+If5ZxvK3zeUpcuWcr+FzX0pjIQPFVW4QLWYfJwnFNTbJ/kKCHuZgLy31DSiehmyXloMGHTNZYwu/XFIfVF9oIakE0FEevtQrp+lB2cZLoUMoCm9GS2f/VL+uWC5TJXzBpguUNwBRoS2ScKyCHl3jjWZJ/UZFIxSj+CPv6LtBg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 911d40a0-fc11-4484-6cef-08d72613091b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 08:39:09.3111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LXkQczR/U450j0po/oNZiUkdRSWnDYX/fz9gp+fBKpa/4+ulRCUW4xWcoQpHhP2Dz/Gg8saDClvIqQDRnhn45A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_013911_267236_AFC9EB4C 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.92 listed in list.dnswl.org]
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

>>>Subject: Re: [PATCH 3/3] nvme: complete request in work queue on CPU
>>>with flooded interrupts
>>>
>>>
>>>> From: Long Li <longli@microsoft.com>
>>>>
>>>> When a NVMe hardware queue is mapped to several CPU queues, it is
>>>> possible that the CPU this hardware queue is bound to is flooded by
>>>> returning I/O for other CPUs.
>>>>
>>>> For example, consider the following scenario:
>>>> 1. CPU 0, 1, 2 and 3 share the same hardware queue 2. the hardware
>>>> queue interrupts CPU 0 for I/O response 3. processes from CPU 1, 2 and
>>>> 3 keep sending I/Os
>>>>
>>>> CPU 0 may be flooded with interrupts from NVMe device that are I/O
>>>> responses for CPU 1, 2 and 3. Under heavy I/O load, it is possible
>>>> that CPU 0 spends all the time serving NVMe and other system
>>>> interrupts, but doesn't have a chance to run in process context.
>>>>
>>>> To fix this, CPU 0 can schedule a work to complete the I/O request
>>>> when it detects the scheduler is not making progress. This serves multiple
>>>purposes:
>>>>
>>>> 1. This CPU has to be scheduled to complete the request. The other
>>>> CPUs can't issue more I/Os until some previous I/Os are completed.
>>>> This helps this CPU get out of NVMe interrupts.
>>>>
>>>> 2. This acts a throttling mechanisum for NVMe devices, in that it can
>>>> not starve a CPU while servicing I/Os from other CPUs.
>>>>
>>>> 3. This CPU can make progress on RCU and other work items on its queue.
>>>
>>>The problem is indeed real, but this is the wrong approach in my mind.
>>>
>>>We already have irqpoll which takes care proper budgeting polling cycles
>>>and not hogging the cpu.
>>>
>>>I've sent rfc for this particular problem before [1]. At the time IIRC,
>>>Christoph suggested that we will poll the first batch directly from the irq
>>>context and reap the rest in irqpoll handler.

Thanks for the pointer. I will test and report back.

>>>
>>>[1]:
>>>https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.
>>>infradead.org%2Fpipermail%2Flinux-nvme%2F2016-
>>>October%2F006497.html&amp;data=02%7C01%7Clongli%40microsoft.com%
>>>7C0ebf36eff15c4182116608d725948b93%7C72f988bf86f141af91ab2d7cd011d
>>>b47%7C1%7C0%7C637019192254250361&amp;sdata=fJ%2Fkc8HLSmfzaY3BY
>>>E66zlZKD6FjcXgMJZzVGCVqI%2FU%3D&amp;reserved=0
>>>
>>>How about something like this instead:
>>>--
>>>diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c index
>>>71127a366d3c..84bf16d75109 100644
>>>--- a/drivers/nvme/host/pci.c
>>>+++ b/drivers/nvme/host/pci.c
>>>@@ -24,6 +24,7 @@
>>>  #include <linux/io-64-nonatomic-lo-hi.h>
>>>  #include <linux/sed-opal.h>
>>>  #include <linux/pci-p2pdma.h>
>>>+#include <linux/irq_poll.h>
>>>
>>>  #include "trace.h"
>>>  #include "nvme.h"
>>>@@ -32,6 +33,7 @@
>>>  #define CQ_SIZE(q)     ((q)->q_depth * sizeof(struct nvme_completion))
>>>
>>>  #define SGES_PER_PAGE  (PAGE_SIZE / sizeof(struct nvme_sgl_desc))
>>>+#define NVME_POLL_BUDGET_IRQ   256
>>>
>>>  /*
>>>   * These can be higher, but we need to ensure that any command doesn't
>>>@@ -189,6 +191,7 @@ struct nvme_queue {
>>>         u32 *dbbuf_cq_db;
>>>         u32 *dbbuf_sq_ei;
>>>         u32 *dbbuf_cq_ei;
>>>+       struct irq_poll iop;
>>>         struct completion delete_done;
>>>  };
>>>
>>>@@ -1015,6 +1018,23 @@ static inline int nvme_process_cq(struct
>>>nvme_queue *nvmeq, u16 *start,
>>>         return found;
>>>  }
>>>
>>>+static int nvme_irqpoll_handler(struct irq_poll *iop, int budget) {
>>>+       struct nvme_queue *nvmeq = container_of(iop, struct nvme_queue,
>>>iop);
>>>+       struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
>>>+       u16 start, end;
>>>+       int completed;
>>>+
>>>+       completed = nvme_process_cq(nvmeq, &start, &end, budget);
>>>+       nvme_complete_cqes(nvmeq, start, end);
>>>+       if (completed < budget) {
>>>+               irq_poll_complete(&nvmeq->iop);
>>>+               enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
>>>+       }
>>>+
>>>+       return completed;
>>>+}
>>>+
>>>  static irqreturn_t nvme_irq(int irq, void *data)
>>>  {
>>>         struct nvme_queue *nvmeq = data; @@ -1028,12 +1048,16 @@ static
>>>irqreturn_t nvme_irq(int irq, void *data)
>>>         rmb();
>>>         if (nvmeq->cq_head != nvmeq->last_cq_head)
>>>                 ret = IRQ_HANDLED;
>>>-       nvme_process_cq(nvmeq, &start, &end, -1);
>>>+       nvme_process_cq(nvmeq, &start, &end, NVME_POLL_BUDGET_IRQ);
>>>         nvmeq->last_cq_head = nvmeq->cq_head;
>>>         wmb();
>>>
>>>         if (start != end) {
>>>                 nvme_complete_cqes(nvmeq, start, end);
>>>+               if (nvme_cqe_pending(nvmeq)) {
>>>+                       disable_irq_nosync(irq);
>>>+                       irq_poll_sched(&nvmeq->iop);
>>>+               }
>>>                 return IRQ_HANDLED;
>>>         }
>>>
>>>@@ -1347,6 +1371,7 @@ static enum blk_eh_timer_return
>>>nvme_timeout(struct request *req, bool reserved)
>>>
>>>  static void nvme_free_queue(struct nvme_queue *nvmeq)
>>>  {
>>>+       irq_poll_disable(&nvmeq->iop);
>>>         dma_free_coherent(nvmeq->dev->dev, CQ_SIZE(nvmeq),
>>>                                 (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
>>>         if (!nvmeq->sq_cmds)
>>>@@ -1481,6 +1506,7 @@ static int nvme_alloc_queue(struct nvme_dev
>>>*dev, int qid, int depth)
>>>         nvmeq->dev = dev;
>>>         spin_lock_init(&nvmeq->sq_lock);
>>>         spin_lock_init(&nvmeq->cq_poll_lock);
>>>+       irq_poll_init(&nvmeq->iop, NVME_POLL_BUDGET_IRQ,
>>>nvme_irqpoll_handler);
>>>         nvmeq->cq_head = 0;
>>>         nvmeq->cq_phase = 1;
>>>         nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
>>>--
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
