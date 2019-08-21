Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02158973CE
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 09:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9k6bkTWkOlgXklY3aAoW2bJ86lq/3Hu6vtWeVwZzp/I=; b=LVhSS2SZpcGcJ2
	GYUFIF6b1pFyNJBetihJGlkhZTx6nbzgFlpnYaUPhLfXYYWTAgR3MWuwb6ma5rrPnFrYuE/oyjV/c
	2KbGFpj0H3ApTFcdhfTQuZIYq52WV0w3jhi1i7J4UzAdsxQwuv3f/O6XW4TdCYmOucUlBxPNj+5a6
	d660jT21FcErl7Dh3jf7shZj9oaCdzrJ+VxhUkBwO2MuquXs6vnLC1od9qlnGqr7rR0VXeYcc6L2T
	m1vMJYpkomsgR4ZRNK0ZwNRcWwAuEaGB0JAsRliqwEzwRsQWHUtzfPZQfP6C6k5kX6DkvMVRSnPgV
	BfYl+JcTRLlX9IzNe2ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LLe-0004Ty-8d; Wed, 21 Aug 2019 07:48:02 +0000
Received: from mail-eopbgr730112.outbound.protection.outlook.com
 ([40.107.73.112] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LLR-0004Ta-0p
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 07:47:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXU1tPWJXaWPSKEn0pmnG/DDvwx9QstW3INUSl5D1VPU4nZe3MmrE4SwXiX73/pwBBO47swdNGMj18TE8IC0al8b/ejtfTKgkn2hstpn+5GtmYLQ0gNj0+Gyh3Nyj12PaFTZq8Dp6iYIqzOK/URmPdA98P48x8HlnDILjNAg1NlkCuMUfd7EJBGq//IvEgKvR1oqdfTgz/29qBY+ToggjovSlHeBq0/t52vQGqkE0+jB1f03ZzuokxydcUxU2iZdj1NYqCzThTBOJcUmIAh/+PwcsJmaeBKYMfxfj1+OV5YcvUzeREhnS34IIUcUhSzguxVzIURz83xEmFs0mEe75A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/gKpJH3VdkTzcxgpUR1+dKVB4Rs+LLwLKjxb+PzXAo=;
 b=QV6nB0vgbyWmQktuKVGcfPiUqyVdvuqATAjevn8t1h/sDBPWDoe5NdHvOyqZDYfqL4gbuNEl5UBvFmzQ8nHgMakY1T6Gypqew7MBePv5LCOI7U0GOVk5k3lJeMOWzpqAgD7JGD6GYOOIJbvJmaXD+ZDJeHDrFEaTKx+zceY7iEIl+8O1AgRTpiPz1Se//rxd5+hQ2N9NBhkloE06n+aMtQce/KL5uD3lI80qJSav3hW61UMSsrSTsmMiPfnJiv8GoTd8o95iitdnm0fCTfbCiWIYlH+yRtUUsSwF2XhFweG65yaexKfUg0wU+ANDfVfnGQ95YWDLejiu39r1cqp4kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/gKpJH3VdkTzcxgpUR1+dKVB4Rs+LLwLKjxb+PzXAo=;
 b=lCHB0hJC77TKL5H1bHY6QnxRzMyqr34iWRCRgnzjWyVBj6tybaYPa8nsKn4FCskIGD6jkqFTRvTk3T8OFGUYx3vEDtr3DuCNXUMN+3cd7o21P5ZvgLBI/BYBwQlENLCiJQroYfaM5y1i4mXEltcMkLRboQOXK1Ah2jQM83tjcqs=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0758.namprd21.prod.outlook.com (10.173.192.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.20.2220.3; Wed, 21 Aug 2019 07:47:44 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Wed, 21 Aug
 2019 07:47:44 +0000
From: Long Li <longli@microsoft.com>
To: John Garry <john.garry@huawei.com>, Ming Lei <tom.leiming@gmail.com>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Subject: RE: [PATCH 0/3] fix interrupt swamp in NVMe
Thread-Topic: [PATCH 0/3] fix interrupt swamp in NVMe
Thread-Index: AQHVVx6PT//gmViwZUu9hv4+3aJrE6cDs4qAgAAJYgCAAXaqoA==
Date: Wed, 21 Aug 2019 07:47:44 +0000
Message-ID: <CY4PR21MB0741D1CD295AD572548E61D1CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
 <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
In-Reply-To: <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63f63007-b390-4dbf-5db2-08d7260bda59
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600158)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR21MB0758; 
x-ms-traffictypediagnostic: CY4PR21MB0758:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR21MB0758939EB3EC9111587E62FACEAA0@CY4PR21MB0758.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(189003)(199004)(486006)(229853002)(22452003)(74316002)(71190400001)(2906002)(7416002)(14454004)(53936002)(316002)(110136005)(478600001)(305945005)(33656002)(5660300002)(76176011)(52536014)(186003)(4326008)(6116002)(9686003)(55016002)(66476007)(6246003)(25786009)(64756008)(66556008)(14444005)(6506007)(7736002)(446003)(66946007)(256004)(76116006)(53546011)(46003)(54906003)(10090500001)(81166006)(81156014)(6436002)(8990500004)(66446008)(8676002)(71200400001)(102836004)(86362001)(2501003)(10290500003)(7696005)(6306002)(8936002)(11346002)(99286004)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0758;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Xi2S+yOuj8hbTTQIH6e740ZPQfttOt/pGHuBFsPlcocUaz5svYetFBPHLzobgZv0+41N4zDZTGymXZ7MI6nkeslE7t1TtJIIQLQteRsRXhFduPHTp3SlmVJiqhqEcChcFoeP1LbswhzFP2mkDhOfqsbVZbNYesxJUhFH8ZeeelItY85MCSVrm469We1UQRZcvoU/WInSDfqwVJ1zIozZ+UpHfGXPsxT/rTaalB+BTRETUe/Cv+4na9Z2U7/95VrpVKiYlFxR/njcRu5SAGFmRnAOaIUV4OD31znd2N5YkPAtqEAhFU3/buLiUWEyf+X9KhNlEJDSTZr3ukqefYBww/3jq9NcBdh2FI8fLYdD1iKwp5Bs3DIJC6T78CeKEts45r92jzFdn+pVNlsAhmw6H55rwNvLVwPdVAGNDTqrHP8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f63007-b390-4dbf-5db2-08d7260bda59
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 07:47:44.4470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R6Za4lqjhavOXWk45LbDyQ5kahj6RPDN8ZWJJ21zwh+f58WFviBCru/tChO/mhXK7eMB1HflR9Brc8iGGa43xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_004749_169950_53458E03 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.112 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>>>Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
>>>
>>>On 20/08/2019 09:25, Ming Lei wrote:
>>>> On Tue, Aug 20, 2019 at 2:14 PM <longli@linuxonhyperv.com> wrote:
>>>>>
>>>>> From: Long Li <longli@microsoft.com>
>>>>>
>>>>> This patch set tries to fix interrupt swamp in NVMe devices.
>>>>>
>>>>> On large systems with many CPUs, a number of CPUs may share one
>>>NVMe
>>>>> hardware queue. It may have this situation where several CPUs are
>>>>> issuing I/Os, and all the I/Os are returned on the CPU where the
>>>hardware queue is bound to.
>>>>> This may result in that CPU swamped by interrupts and stay in
>>>>> interrupt mode for extended time while other CPUs continue to issue
>>>>> I/O. This can trigger Watchdog and RCU timeout, and make the system
>>>unresponsive.
>>>>>
>>>>> This patch set addresses this by enforcing scheduling and throttling
>>>>> I/O when CPU is starved in this situation.
>>>>>
>>>>> Long Li (3):
>>>>>   sched: define a function to report the number of context switches on a
>>>>>     CPU
>>>>>   sched: export idle_cpu()
>>>>>   nvme: complete request in work queue on CPU with flooded interrupts
>>>>>
>>>>>  drivers/nvme/host/core.c | 57
>>>>> +++++++++++++++++++++++++++++++++++++++-
>>>>>  drivers/nvme/host/nvme.h |  1 +
>>>>>  include/linux/sched.h    |  2 ++
>>>>>  kernel/sched/core.c      |  7 +++++
>>>>>  4 files changed, 66 insertions(+), 1 deletion(-)
>>>>
>>>> Another simpler solution may be to complete request in threaded
>>>> interrupt handler for this case. Meantime allow scheduler to run the
>>>> interrupt thread handler on CPUs specified by the irq affinity mask,
>>>> which was discussed by the following link:
>>>>
>>>>
>>>https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Flor
>>>e
>>>> .kernel.org%2Flkml%2Fe0e9478e-62a5-ca24-3b12-
>>>58f7d056383e%40huawei.com
>>>> %2F&amp;data=02%7C01%7Clongli%40microsoft.com%7Cc7f46d3e273f45
>>>176d1c08
>>>>
>>>d7254cc69e%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6370188
>>>8401588
>>>>
>>>9866&amp;sdata=h5k6HoGoyDxuhmDfuKLZUwgmw17PU%2BT%2FCbawfxV
>>>Er3U%3D&amp;
>>>> reserved=0
>>>>
>>>> Could you try the above solution and see if the lockup can be avoided?
>>>> John Garry
>>>> should have workable patch.
>>>
>>>Yeah, so we experimented with changing the interrupt handling in the SCSI
>>>driver I maintain to use a threaded handler IRQ handler plus patch below,
>>>and saw a significant throughput boost:
>>>
>>>--->8
>>>
>>>Subject: [PATCH] genirq: Add support to allow thread to use hard irq affinity
>>>
>>>Currently the cpu allowed mask for the threaded part of a threaded irq
>>>handler will be set to the effective affinity of the hard irq.
>>>
>>>Typically the effective affinity of the hard irq will be for a single cpu. As such,
>>>the threaded handler would always run on the same cpu as the hard irq.
>>>
>>>We have seen scenarios in high data-rate throughput testing that the cpu
>>>handling the interrupt can be totally saturated handling both the hard
>>>interrupt and threaded handler parts, limiting throughput.
>>>
>>>Add IRQF_IRQ_AFFINITY flag to allow the driver requesting the threaded
>>>interrupt to decide on the policy of which cpu the threaded handler may run.
>>>
>>>Signed-off-by: John Garry <john.garry@huawei.com>

Thanks for pointing me to this patch. This fixed the interrupt swamp and make the system stable.

However I'm seeing reduced performance when using threaded interrupts.

Here are the test results on a system with 80 CPUs and 10 NVMe disks (32 hardware queues for each disk)
Benchmark tool is FIO, I/O pattern: 4k random reads on all NVMe disks, with queue depth = 64, num of jobs = 80, direct=1

With threaded interrupts: 1320k IOPS
With just interrupts: 3720k IOPS
With just interrupts and my patch: 3700k IOPS

At the peak IOPS, the overall CPU usage is at around 98-99%. I think the cost of doing wake up and context switch for NVMe threaded IRQ handler takes some CPU away.

In this test, I made the following change to make use of IRQF_IRQ_AFFINITY for NVMe:

diff --git a/drivers/pci/irq.c b/drivers/pci/irq.c
index a1de501a2729..3fb30d16464e 100644
--- a/drivers/pci/irq.c
+++ b/drivers/pci/irq.c
@@ -86,7 +86,7 @@ int pci_request_irq(struct pci_dev *dev, unsigned int nr, irq_handler_t handler,
        va_list ap;
        int ret;
        char *devname;
-       unsigned long irqflags = IRQF_SHARED;
+       unsigned long irqflags = IRQF_SHARED | IRQF_IRQ_AFFINITY;

        if (!handler)
                irqflags |= IRQF_ONESHOT;

Thanks

Long

>>>
>>>diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h index
>>>5b8328a99b2a..48e8b955989a 100644
>>>--- a/include/linux/interrupt.h
>>>+++ b/include/linux/interrupt.h
>>>@@ -61,6 +61,9 @@
>>>   *                interrupt handler after suspending interrupts. For
>>>system
>>>   *                wakeup devices users need to implement wakeup
>>>detection in
>>>   *                their interrupt handlers.
>>>+ * IRQF_IRQ_AFFINITY - Use the hard interrupt affinity for setting the cpu
>>>+ *                allowed mask for the threaded handler of a threaded
>>>interrupt
>>>+ *                handler, rather than the effective hard irq affinity.
>>>   */
>>>  #define IRQF_SHARED		0x00000080
>>>  #define IRQF_PROBE_SHARED	0x00000100
>>>@@ -74,6 +77,7 @@
>>>  #define IRQF_NO_THREAD		0x00010000
>>>  #define IRQF_EARLY_RESUME	0x00020000
>>>  #define IRQF_COND_SUSPEND	0x00040000
>>>+#define IRQF_IRQ_AFFINITY	0x00080000
>>>
>>>  #define IRQF_TIMER		(__IRQF_TIMER | IRQF_NO_SUSPEND |
>>>IRQF_NO_THREAD)
>>>
>>>diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c index
>>>e8f7f179bf77..cb483a055512 100644
>>>--- a/kernel/irq/manage.c
>>>+++ b/kernel/irq/manage.c
>>>@@ -966,9 +966,13 @@ irq_thread_check_affinity(struct irq_desc *desc,
>>>struct irqaction *action)
>>>  	 * mask pointer. For CPU_MASK_OFFSTACK=n this is optimized out.
>>>  	 */
>>>  	if (cpumask_available(desc->irq_common_data.affinity)) {
>>>+		struct irq_data *irq_data = &desc->irq_data;
>>>  		const struct cpumask *m;
>>>
>>>-		m = irq_data_get_effective_affinity_mask(&desc-
>>>>irq_data);
>>>+		if (action->flags & IRQF_IRQ_AFFINITY)
>>>+			m = desc->irq_common_data.affinity;
>>>+		else
>>>+			m = irq_data_get_effective_affinity_mask(irq_data);
>>>  		cpumask_copy(mask, m);
>>>  	} else {
>>>  		valid = false;
>>>--
>>>2.17.1
>>>
>>>As Ming mentioned in that same thread, we could even make this policy for
>>>managed interrupts.
>>>
>>>Cheers,
>>>John
>>>
>>>>
>>>> Thanks,
>>>> Ming Lei
>>>>
>>>> .
>>>>
>>>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
