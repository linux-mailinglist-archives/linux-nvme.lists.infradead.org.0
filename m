Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDB39B96E
	for <lists+linux-nvme@lfdr.de>; Sat, 24 Aug 2019 02:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPfTxqiyVEncZ02uAQINrs2ti/CYrsQMofIgheBya/Y=; b=NS3PgkAY9mp3Bp
	5WYS75ejxuda3MhAfxr6n165sTAqMo53nc2hYUsnrdtyOr5QqAXLLwS+NR0G9aX9P0T2AKKjTbpFO
	cDPQSNgmA10xUpIvseRZE+3fGlBxgUppcokEmYlj7REwDgI0fIKXr7lavt2tyxR65qoD8eKWXpgQt
	R+mLzzchuABB+XYWKeBA7/5aczNdzkLATABjpX+l619/sNm3h2sBi+phsftthUgCCx70gN1+oCmEW
	3TemB972+R/gSJMKB6hrDkxeDCW27A0vUgPMVi5ItFTSazGgzij5uGMNu5znWXi2dxbGUllWmEohG
	XMniPSCGDZj9kgvtt4vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jgr-0003e3-Qc; Sat, 24 Aug 2019 00:13:57 +0000
Received: from mail-co1nam05on0700.outbound.protection.outlook.com
 ([2a01:111:f400:fe50::700]
 helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Jgm-0003df-Mn
 for linux-nvme@lists.infradead.org; Sat, 24 Aug 2019 00:13:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M41xmgki8to+iEEodxQ3adZNMZWnPUvfW7gjcLrVB09WJQx7O+35lgR9g5wp0fIMWcCwQeX0s/iDauE0tHgnij/sT7p7v9CAJ5Tdx3OjzVXO7JsvhW3jhWk9xb5i33nCi6CVx9mKcHi5dxyhFzolU6XyOae/X35acMk99cIZpM0h4YBQD1V3mpdKQrKmhGAFGBDutMMASUg88C5r+YiVT4S5nUOH3M0ANEim5Hw73Kl1eqPJ8VsFfylv2OVMf2GXMDXWnDOj5O9StszLR3uvfeEN+ZUmeXtiwk03gJ369FGsdp2FHNR5AcI/VlXtlIUEAYjSHbWzCmBHBYbov6bwsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xpTiljRkaZu+InKWIUoQ9+7lnwFSxZFWVOXzrOemqsw=;
 b=Erx9eOsBXuAS2PxiUO+aSrYNwTuffapOZSKlPjGMPFFoV36DDr/8r1hqNtTxg8uLvnoHgqzd3HtRDnBNEc0EY58GwD5+avEBbT76+108+VygzTO6WPu6SRx7w/t6umbG8Sl3lfVr0KYHqPdpHvo3Roc/5Grp9m5dNgPzS0KQTVLM6drnob4/PGOaAg6+4B7wAvo35FD7VDR+QGg6qAjKKVgisBthfJQPISoIOfLs3/OWeR8S+YWWyuOj58fvVcwqPMHUE8b5AC0weVHEDpCTj3tl+tunCRHCO9fjAHEQ8kaAGcp9RfMA897BEZVc9h9ngc3BU7HV+BGJrBs486fMUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xpTiljRkaZu+InKWIUoQ9+7lnwFSxZFWVOXzrOemqsw=;
 b=K/qEu3NtzBF8DxnuVi86PTIBUHoX3WkOV6L/uxTrGjIbKMttfo8B1vnVetnv25dAkscs95dys7JRkkQ0vg0jWEwYxy8CQW4zOyYafCTaTVmIhLJlFbke48EfpyLN+Qirax6TxM94Bk+EIYSz8enfBJjE1yGloBozejFlAEL+u38=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0837.namprd21.prod.outlook.com (10.173.192.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.7; Sat, 24 Aug 2019 00:13:47 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::2c62:5380:9ed8:496d%11]) with mapi id 15.20.2220.000; Sat, 24 Aug
 2019 00:13:47 +0000
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
Thread-Index: AQHVVx6V8EslWtuw80WR9kecrOlyh6cETI8AgAD8sjCAAJQMgIAASpsAgANJCKA=
Date: Sat, 24 Aug 2019 00:13:47 +0000
Message-ID: <CY4PR21MB0741292F0C535156DAC690D7CEA70@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
 <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
 <CY4PR21MB0741E77B05835E1192415943CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <CY4PR21MB074141B895C9FE0D390F590ACEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <7fbdf43a-9499-8fb3-f6ec-5f1027b9fb65@grimberg.me>
In-Reply-To: <7fbdf43a-9499-8fb3-f6ec-5f1027b9fb65@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:7:ede6:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1704844f-0e11-4adf-c310-08d72827ef1f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR21MB0837; 
x-ms-traffictypediagnostic: CY4PR21MB0837:
x-microsoft-antispam-prvs: <CY4PR21MB0837177B176480A51887C010CEA70@CY4PR21MB0837.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(43544003)(189003)(199004)(53936002)(2501003)(10090500001)(22452003)(316002)(7736002)(229853002)(6246003)(8990500004)(6436002)(110136005)(52536014)(25786009)(33656002)(55016002)(14454004)(5660300002)(9686003)(14444005)(256004)(10290500003)(446003)(2201001)(6116002)(11346002)(76116006)(99286004)(66446008)(66556008)(66476007)(64756008)(66946007)(8676002)(81166006)(81156014)(486006)(476003)(71200400001)(6506007)(71190400001)(7696005)(76176011)(186003)(46003)(2906002)(102836004)(8936002)(478600001)(74316002)(305945005)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0837;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FjbBa3PqxOFTTgZACkSFqcLMAnimYbGZXnBjg0oFqlWzYg+Bv1B8b041ik/EcKO8fPtPtKW7+aVsFtg3zsS4j6AIY7wpCP+4HJ+4813xpjhap3fkg5AthwTyphz2hffvT/ccJ5MzlUYnOt13XxrMGToHruDSWXPKpIsRLW9iPxyt99sQhPAHbhFhzzSjQvsLMtD7RoHSP2jS1jtLTzkx5ZrDaFx2wQ99a1Gn7yBpzYHXeAuFJnUZxeTIT9jy8WewSpvBkGFWrbffPzpMIcRX8wDvszpv5LZqKy9bJw5I3y5awX6djgJbZSLL7Nfm8wSvHVCu/oPqxe5G/b9dbqUiTJjMd9SA3CqB8PoTI2vVhwZzklaD8mFpuKCEUP6mPfSZppPX71W3HjEcKRpZhlB22cBAZcHOQ1Nqu84xAw1n2+Y=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1704844f-0e11-4adf-c310-08d72827ef1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:13:47.4917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dMChg6RsF8wlVj4QD/rmRK5seX4TMw/NXimsJaK1Ss3n8iTzk8zUnIhBEUxLbGypiDzV1mC027f1ILT1cMHDEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0837
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171352_838199_834197F0 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe50:0:0:0:700 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
>>>> Sagi,
>>>>
>>>> Here are the test results.
>>>>
>>>> Benchmark command:
>>>> fio --bs=4k --ioengine=libaio --iodepth=64
>>>> --
>>>filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/d
>>>ev/nv
>>>>
>>>me4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev
>>>/nvme9n1
>>>> --direct=1 --runtime=90 --numjobs=80 --rw=randread --name=test
>>>> --group_reporting --gtod_reduce=1
>>>>
>>>> With your patch: 1720k IOPS
>>>> With threaded interrupts: 1320k IOPS
>>>> With just interrupts: 3720k IOPS
>>>>
>>>> Interrupts are the fastest but we need to find a way to throttle it.
>>>
>>>This is the workload that generates the flood?
>>>If so I did not expect that this would be the perf difference..
>>>
>>>If completions keep pounding on the cpu, I would expect irqpoll to simply
>>>keep running forever and poll the cqs. There is no fundamental reason why
>>>polling would be faster in an interrupt, what matters could be:
>>>1. we reschedule more than we need to
>>>2. we don't reap enough completions in every poll round, which will trigger
>>>rearming the interrupt and then when it fires reschedule another softirq...
>>>

Yes I think it's the rescheduling that takes some. With the patch there are lots of ksoftirqd activities. (compared to nearly none without the patch)
A 90 seconds FIO run shows a big difference of context switches on all CPUs:
With patch: 5755849
Without patch: 1462931

>>>Maybe we need to take care of some irq_poll optimizations?
>>>
>>>Does this (untested) patch make any difference?
>>>--
>>>diff --git a/lib/irq_poll.c b/lib/irq_poll.c index 2f17b488d58e..0e94183eba15
>>>100644
>>>--- a/lib/irq_poll.c
>>>+++ b/lib/irq_poll.c
>>>@@ -12,7 +12,8 @@
>>>  #include <linux/irq_poll.h>
>>>  #include <linux/delay.h>
>>>
>>>-static unsigned int irq_poll_budget __read_mostly = 256;
>>>+static unsigned int irq_poll_budget __read_mostly = 3000; unsigned int
>>>+__read_mostly irqpoll_budget_usecs = 2000;
>>>
>>>  static DEFINE_PER_CPU(struct list_head, blk_cpu_iopoll);
>>>
>>>@@ -77,32 +78,26 @@ EXPORT_SYMBOL(irq_poll_complete);
>>>
>>>  static void __latent_entropy irq_poll_softirq(struct softirq_action *h)
>>>  {
>>>-       struct list_head *list = this_cpu_ptr(&blk_cpu_iopoll);
>>>-       int rearm = 0, budget = irq_poll_budget;
>>>-       unsigned long start_time = jiffies;
>>>+       struct list_head *irqpoll_list = this_cpu_ptr(&blk_cpu_iopoll);
>>>+       unsigned int budget = irq_poll_budget;
>>>+       unsigned long time_limit =
>>>+               jiffies + usecs_to_jiffies(irqpoll_budget_usecs);
>>>+       LIST_HEAD(list);
>>>
>>>         local_irq_disable();
>>>+       list_splice_init(irqpoll_list, &list);
>>>+       local_irq_enable();
>>>
>>>-       while (!list_empty(list)) {
>>>+       while (!list_empty(&list)) {
>>>                 struct irq_poll *iop;
>>>                 int work, weight;
>>>
>>>-               /*
>>>-                * If softirq window is exhausted then punt.
>>>-                */
>>>-               if (budget <= 0 || time_after(jiffies, start_time)) {
>>>-                       rearm = 1;
>>>-                       break;
>>>-               }
>>>-
>>>-               local_irq_enable();
>>>-
>>>                 /* Even though interrupts have been re-enabled, this
>>>                  * access is safe because interrupts can only add new
>>>                  * entries to the tail of this list, and only ->poll()
>>>                  * calls can remove this head entry from the list.
>>>                  */
>>>-               iop = list_entry(list->next, struct irq_poll, list);
>>>+               iop = list_first_entry(&list, struct irq_poll, list);
>>>
>>>                 weight = iop->weight;
>>>                 work = 0;
>>>@@ -111,8 +106,6 @@ static void __latent_entropy irq_poll_softirq(struct
>>>softirq_action *h)
>>>
>>>                 budget -= work;
>>>
>>>-               local_irq_disable();
>>>-
>>>                 /*
>>>                  * Drivers must not modify the iopoll state, if they
>>>                  * consume their assigned weight (or more, some drivers can't @@
>>>-125,11 +118,21 @@ static void __latent_entropy irq_poll_softirq(struct
>>>softirq_action *h)
>>>                         if (test_bit(IRQ_POLL_F_DISABLE, &iop->state))
>>>                                 __irq_poll_complete(iop);
>>>                         else
>>>-                               list_move_tail(&iop->list, list);
>>>+                               list_move_tail(&iop->list, &list);
>>>                 }
>>>+
>>>+               /*
>>>+                * If softirq window is exhausted then punt.
>>>+                */
>>>+               if (budget <= 0 || time_after_eq(jiffies, time_limit))
>>>+                       break;
>>>         }
>>>
>>>-       if (rearm)
>>>+       local_irq_disable();
>>>+
>>>+       list_splice_tail_init(irqpoll_list, &list);
>>>+       list_splice(&list, irqpoll_list);
>>>+       if (!list_empty(irqpoll_list))
>>>                 __raise_softirq_irqoff(IRQ_POLL_SOFTIRQ);
>>>
>>>         local_irq_enable();
>>>--

It's got slightly better IOPS. With this 2nd patch, the number of context switches is at 5445863 (~5% improvement over the 1st patch).
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
