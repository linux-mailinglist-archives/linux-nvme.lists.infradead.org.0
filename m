Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D2398009
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 18:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HSHxkJFlBK6b95cCFJwyXIqZ6m3aKo0PS+jV0oYghE=; b=Tj1YtVC6iUe91B
	dWe/Rh6CLeElO4Nr1twoXfXrqc8lcGR9g8j5xK1Tlb3I1y/2UPvJ4w5AT8oahrRkxdSMvVEaqYzoF
	q+jxF1seL6wXpfeoWwmDjAblvxg0WFv6JSKm5QJeFTIW+QV+qWylBfW0KC8P0RBiu/pTbOd3ZlZiG
	ttwcDBBEY8YlvTNgiPY/l5upXXOzQKCs+MkNgeq+EsLhEdYkdpsEEYmF7qd5htDj/mtvRYVhmYhBe
	rvjWqOYFsExBqfkBo+1nw0lpvl5O1QU6ILyB9RpTscEroTVfdoeBAWaIZ4niUbxVzmAvArEs/BeOZ
	nIIvsL9zdWIQRpwGtoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TSC-00074I-6L; Wed, 21 Aug 2019 16:27:20 +0000
Received: from mail-eopbgr710107.outbound.protection.outlook.com
 ([40.107.71.107] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TS0-00073x-Og
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 16:27:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7FC/VqDMaM4gvgwZ9Uy0fM6Guw3fpvul9M78HfObe/4mqNvTPlb/B5+xeZXvvJ6yH0VtXdoMj2uhGNJMJnTgeNBgcwRthCjiSfc70nvGciP6WGbha2fVY1sbAZVfgl4hNuYwQ+pMXIrBKozYObq0YSWgVqoNxitomHx1f6WauKARMkP/Nts5bcgJg13BjWRbcUkKCmu+fAh0vWyjgkb7e2W/1J77FqrGghyaTDQFjQxCv7PObEDXaBP0R+momPuV15Vu70io7C8+PJhpgRjnF5OrR00JDR6YBMg16FNDGhhONJ9Pwyg1X9vzQbYCn5Vdrit14zWF1kVlMfG79aXvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UsesYBEetvd7pE7T+hDpuD7GjvN0u/ijgWLnPageO98=;
 b=jGbtTuqTgg+SG6KGiAA1580kwtnfa1kgIu5S24d7wYib2NJxZ0+116y9hZRlyLS/yLnq+2P9JWfRSg5bA/+UPemqAzLJG8qgFxhii27bVhHRzeFJwjNFGf5dqZ/vuU0VFCwZCgbnphni+8t/iHiYC3ynToOMuJ/Qly4BWpGT+s712Bh5LOifAnW4QyvlqdQ9jN+6wIFQXm5jPadF5kLX2G6l0hagbTzzY/kA6X5WBgYtFHjONlgHGrT/i+0kYJzVPP+a8LbnUwKvs1GyA26pssYvsH5BXlIhoTbTujczP20RETTSuDJ81XGbTgk1SjlL8NEkJOB7lt+W+K0m9ognog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UsesYBEetvd7pE7T+hDpuD7GjvN0u/ijgWLnPageO98=;
 b=j2iwPxN9cOvDPYBGX0Epr1UdqeFU0/wFhl3EYRNrNZGG64/hGheGhbv3DfhxQ5PeyIDxvGEB1b5ra0CJ4qj4ly0H1NTe3j9CHXlg6Zk047A+st6lr4Phe+gg9WY5SKhwI42JfkT20RYlX5TT8c2uJybjzS3OTXZMc0UAV74P7Fg=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0133.namprd21.prod.outlook.com (10.173.189.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.7; Wed, 21 Aug 2019 16:27:00 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Wed, 21 Aug
 2019 16:27:00 +0000
From: Long Li <longli@microsoft.com>
To: Ming Lei <ming.lei@redhat.com>
Subject: RE: [PATCH 0/3] fix interrupt swamp in NVMe
Thread-Topic: [PATCH 0/3] fix interrupt swamp in NVMe
Thread-Index: AQHVVx6PT//gmViwZUu9hv4+3aJrE6cDs4qAgAAJYgCAAXaqoIAAKCCAgABv6KA=
Date: Wed, 21 Aug 2019 16:27:00 +0000
Message-ID: <CY4PR21MB07410E84C8C7C1D64BD7BF41CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
 <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
 <CY4PR21MB0741D1CD295AD572548E61D1CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190821094406.GA28391@ming.t460p>
In-Reply-To: <20190821094406.GA28391@ming.t460p>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cca33d39-01b3-4ddf-281e-08d7265464c8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600158)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR21MB0133; 
x-ms-traffictypediagnostic: CY4PR21MB0133:
x-microsoft-antispam-prvs: <CY4PR21MB013383221E2758158C269835CEAA0@CY4PR21MB0133.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(366004)(189003)(199004)(81166006)(446003)(11346002)(476003)(8676002)(8936002)(7416002)(76116006)(66446008)(186003)(74316002)(5660300002)(99286004)(66476007)(7696005)(6916009)(66946007)(66556008)(256004)(14444005)(64756008)(81156014)(25786009)(10290500003)(14454004)(478600001)(305945005)(22452003)(54906003)(46003)(7736002)(229853002)(316002)(486006)(71190400001)(71200400001)(6116002)(2906002)(53546011)(6506007)(6246003)(55016002)(33656002)(6306002)(4326008)(52536014)(102836004)(9686003)(53936002)(76176011)(10090500001)(86362001)(8990500004)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0133;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: L126nhJOvtiXqpIjBy7CvYFN2JiAm7xWHzBtU0cFLB2jJPH1VcUS874vSzH4Llh1LfZU7fYjHD+Xio0i3MaQBLtYKIx6HLOu5MAU/5tdup2ZgdblroXXe2pYubn34c0xn89CtupAPhMJcxv+330WPj/Ejhg6ht2kHUUOzu+0rL5eULoe/W1O+8q5K6EqWaR4QerP5tmi/rCwmKKE0D2Ab7fEQtV4nWLmNT9QeSBJ2U9x5INsG9ZTk3UU2blGZmCzrcDDXCXc08PI7z6eEbwAPtzY6fJbiL5vaEXgfVPpkDdH3NJpbCEjh2lkkleP4JxtMLY9pGD39anedAKKlzyVjk8qsOEbMcjc1SDkUgf8RvlDhNvTARueqODx9PFufSZPhbiMb4GKVEgeiW0T0C8vw2SdJBm9VPWjBrLL/wqDkfM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca33d39-01b3-4ddf-281e-08d7265464c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 16:27:00.5052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2EFdWk8J3VtjOshH2TT5p8HppypgJfgnvvUTc7xP7P9zl9D8Ozvrot0ReQf4MTdz5SMV9oFEOoD6m/0UroZtSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092708_892308_36D5A4BB 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.107 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Ming Lei <tom.leiming@gmail.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>>>Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
>>>
>>>On Wed, Aug 21, 2019 at 07:47:44AM +0000, Long Li wrote:
>>>> >>>Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
>>>> >>>
>>>> >>>On 20/08/2019 09:25, Ming Lei wrote:
>>>> >>>> On Tue, Aug 20, 2019 at 2:14 PM <longli@linuxonhyperv.com> wrote:
>>>> >>>>>
>>>> >>>>> From: Long Li <longli@microsoft.com>
>>>> >>>>>
>>>> >>>>> This patch set tries to fix interrupt swamp in NVMe devices.
>>>> >>>>>
>>>> >>>>> On large systems with many CPUs, a number of CPUs may share
>>>one
>>>> >>>NVMe
>>>> >>>>> hardware queue. It may have this situation where several CPUs
>>>> >>>>> are issuing I/Os, and all the I/Os are returned on the CPU where
>>>> >>>>> the
>>>> >>>hardware queue is bound to.
>>>> >>>>> This may result in that CPU swamped by interrupts and stay in
>>>> >>>>> interrupt mode for extended time while other CPUs continue to
>>>> >>>>> issue I/O. This can trigger Watchdog and RCU timeout, and make
>>>> >>>>> the system
>>>> >>>unresponsive.
>>>> >>>>>
>>>> >>>>> This patch set addresses this by enforcing scheduling and
>>>> >>>>> throttling I/O when CPU is starved in this situation.
>>>> >>>>>
>>>> >>>>> Long Li (3):
>>>> >>>>>   sched: define a function to report the number of context switches
>>>on a
>>>> >>>>>     CPU
>>>> >>>>>   sched: export idle_cpu()
>>>> >>>>>   nvme: complete request in work queue on CPU with flooded
>>>> >>>>> interrupts
>>>> >>>>>
>>>> >>>>>  drivers/nvme/host/core.c | 57
>>>> >>>>> +++++++++++++++++++++++++++++++++++++++-
>>>> >>>>>  drivers/nvme/host/nvme.h |  1 +
>>>> >>>>>  include/linux/sched.h    |  2 ++
>>>> >>>>>  kernel/sched/core.c      |  7 +++++
>>>> >>>>>  4 files changed, 66 insertions(+), 1 deletion(-)
>>>> >>>>
>>>> >>>> Another simpler solution may be to complete request in threaded
>>>> >>>> interrupt handler for this case. Meantime allow scheduler to run
>>>> >>>> the interrupt thread handler on CPUs specified by the irq
>>>> >>>> affinity mask, which was discussed by the following link:
>>>> >>>>
>>>> >>>>
>>>> >>>https://lor
>>>> >>>e
>>>> >>>> .kernel.org%2Flkml%2Fe0e9478e-62a5-ca24-3b12-
>>>> >>>58f7d056383e%40huawei.com
>>>> >>>> %2F&amp;data=02%7C01%7Clongli%40microsoft.com%7Cc7f46d3e2
>>>73f45
>>>> >>>176d1c08
>>>> >>>>
>>>> >>>d7254cc69e%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C63
>>>70188
>>>> >>>8401588
>>>> >>>>
>>>> >>>9866&amp;sdata=h5k6HoGoyDxuhmDfuKLZUwgmw17PU%2BT%2FCb
>>>awfxV
>>>> >>>Er3U%3D&amp;
>>>> >>>> reserved=0
>>>> >>>>
>>>> >>>> Could you try the above solution and see if the lockup can be
>>>avoided?
>>>> >>>> John Garry
>>>> >>>> should have workable patch.
>>>> >>>
>>>> >>>Yeah, so we experimented with changing the interrupt handling in
>>>> >>>the SCSI driver I maintain to use a threaded handler IRQ handler
>>>> >>>plus patch below, and saw a significant throughput boost:
>>>> >>>
>>>> >>>--->8
>>>> >>>
>>>> >>>Subject: [PATCH] genirq: Add support to allow thread to use hard
>>>> >>>irq affinity
>>>> >>>
>>>> >>>Currently the cpu allowed mask for the threaded part of a threaded
>>>> >>>irq handler will be set to the effective affinity of the hard irq.
>>>> >>>
>>>> >>>Typically the effective affinity of the hard irq will be for a
>>>> >>>single cpu. As such, the threaded handler would always run on the
>>>same cpu as the hard irq.
>>>> >>>
>>>> >>>We have seen scenarios in high data-rate throughput testing that
>>>> >>>the cpu handling the interrupt can be totally saturated handling
>>>> >>>both the hard interrupt and threaded handler parts, limiting
>>>throughput.
>>>> >>>
>>>> >>>Add IRQF_IRQ_AFFINITY flag to allow the driver requesting the
>>>> >>>threaded interrupt to decide on the policy of which cpu the threaded
>>>handler may run.
>>>> >>>
>>>> >>>Signed-off-by: John Garry <john.garry@huawei.com>
>>>>
>>>> Thanks for pointing me to this patch. This fixed the interrupt swamp and
>>>make the system stable.
>>>>
>>>> However I'm seeing reduced performance when using threaded
>>>interrupts.
>>>>
>>>> Here are the test results on a system with 80 CPUs and 10 NVMe disks
>>>> (32 hardware queues for each disk) Benchmark tool is FIO, I/O pattern:
>>>> 4k random reads on all NVMe disks, with queue depth = 64, num of jobs
>>>> = 80, direct=1
>>>>
>>>> With threaded interrupts: 1320k IOPS
>>>> With just interrupts: 3720k IOPS
>>>> With just interrupts and my patch: 3700k IOPS
>>>
>>>This gap looks too big wrt. threaded interrupts vs. interrupts.
>>>
>>>>
>>>> At the peak IOPS, the overall CPU usage is at around 98-99%. I think the
>>>cost of doing wake up and context switch for NVMe threaded IRQ handler
>>>takes some CPU away.
>>>>
>>>
>>>In theory, it shouldn't be so because most of times the thread should be
>>>running on CPUs of this hctx, and the wakeup cost shouldn't be so big.
>>>Maybe there is performance problem somewhere wrt. threaded interrupt.
>>>
>>>Could you share us your test script and environment? I will see if I can
>>>reproduce it in my environment.

Ming, do you have access to L80s_v2 in Azure? This test needs to run on that VM size.

Here is the command to benchmark it:

fio --bs=4k --ioengine=libaio --iodepth=128 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=120 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1

Thanks

Long

>>>
>>>> In this test, I made the following change to make use of
>>>IRQF_IRQ_AFFINITY for NVMe:
>>>>
>>>> diff --git a/drivers/pci/irq.c b/drivers/pci/irq.c index
>>>> a1de501a2729..3fb30d16464e 100644
>>>> --- a/drivers/pci/irq.c
>>>> +++ b/drivers/pci/irq.c
>>>> @@ -86,7 +86,7 @@ int pci_request_irq(struct pci_dev *dev, unsigned int
>>>nr, irq_handler_t handler,
>>>>         va_list ap;
>>>>         int ret;
>>>>         char *devname;
>>>> -       unsigned long irqflags = IRQF_SHARED;
>>>> +       unsigned long irqflags = IRQF_SHARED | IRQF_IRQ_AFFINITY;
>>>>
>>>>         if (!handler)
>>>>                 irqflags |= IRQF_ONESHOT;
>>>>
>>>
>>>I don't see why IRQF_IRQ_AFFINITY is needed.
>>>
>>>John, could you explain it a bit why you need changes on
>>>IRQF_IRQ_AFFINITY?
>>>
>>>The following patch should be enough:
>>>
>>>diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c index
>>>e8f7f179bf77..1e7cffc1c20c 100644
>>>--- a/kernel/irq/manage.c
>>>+++ b/kernel/irq/manage.c
>>>@@ -968,7 +968,11 @@ irq_thread_check_affinity(struct irq_desc *desc,
>>>struct irqaction *action)
>>> 	if (cpumask_available(desc->irq_common_data.affinity)) {
>>> 		const struct cpumask *m;
>>>
>>>-		m = irq_data_get_effective_affinity_mask(&desc-
>>>>irq_data);
>>>+		if (irqd_affinity_is_managed(&desc->irq_data))
>>>+			m = desc->irq_common_data.affinity;
>>>+		else
>>>+			m = irq_data_get_effective_affinity_mask(
>>>+					&desc->irq_data);
>>> 		cpumask_copy(mask, m);
>>> 	} else {
>>> 		valid = false;
>>>
>>>
>>>Thanks,
>>>Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
