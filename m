Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AAFABF07
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 19:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AXqw6zXyhy9BZ5D3J0uzu6KO8p7hsdTqUUAEh08Poo=; b=svXl4cBNw/G+fJ
	LG5pPtXa5pOjeInMaJu/QAqCGCq/G3oklXpRpfVBW2qqsLcJqULtI6QMUmybfa/Dw1Vbt7J7Um28Q
	ZXH2zhJ9Cttx88t19tQn2+jaSefgY1j6i6Bs1XqNs/RR0mdKtQU8blk/Lqdfz5O2mv15kg2eigvY5
	Tb32Km5cTaBMvZLPZUiD7QEjk7zUCMWpbvje51ofk17Y0gZ7izrjCawFKVYPLzkLynXBez+a92JYF
	Vlz2vLgRzcFtCqntGZR6K0D0jWiz1S95jLJz/bUEPbrRqR2l4ifjss9/T5hnlYqNMwZV6X7euHBaz
	veWw5hLuNEkk7ipWdVpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6INx-00033o-Qh; Fri, 06 Sep 2019 17:51:01 +0000
Received: from mail-dm3nam05on0705.outbound.protection.outlook.com
 ([2a01:111:f400:fe51::705]
 helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6INp-00032u-VR
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 17:50:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuhA47oMcbL0yGVsdC5+jdIH5xvjOgbH+9VOZOyN9eYyN5O78STFwBxrdKMwFuz5qkPyObeMbBep/049aPfsCQfCJg3cBbmtLVZl2xlfF1qwmo60/gD01FDZRs0986ie1NwgHs1e238b57uElMWmXIkf/9nCRYX1qOZ8jSSq4NhYW/lcpgJwsysy8lY28wQZ3WOnUtPva+GQnNI+4xUqHqPK4yBVoEngkfMC42qZlyxPw9IoS+DvPEn9Dt02ZMbr1SJQvFlCZee3MJH+qnC0+1IxsyVpaqeosGq+fjJePjpEE30oouTQhFu87o31W+e9XQRLoNIBBDEGQ8eJgC/ivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlTiyqMp1eW1Jvk9hPLcbfzRcnwfTnZVtSMpBc8vs0c=;
 b=TYKvkxg+fqmmo08KUChacl7i0zGUqdf/RsoOEuxK/dSegwE5Ru1aRmxve84AuyLHW+uDJwWG0fQAi48H09gqs/j85TZtfNB2++MpjzMge9GRxqCJJ8sGAq0L/khVZh69Ub42vN4nWgZ959cLeP22p8W923MQUiZdQE05BX5TxykPfq+D7bIlUdbDh35Hb+FjPu9nlVTRmYGMuzSM3MfoUATVghUMFbCpycGsCJ65lHtNL7br2v5ylM0q9Lm7aBJea33Y5g/w1fUtXelGOPE8ZH6/AzUDDa1hSp0NckuNp7qUx41P9bZP16K85F09hSzIJUT9J+3pCegCaPHl1px1zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlTiyqMp1eW1Jvk9hPLcbfzRcnwfTnZVtSMpBc8vs0c=;
 b=OA3XQkN+Ybym91RGctAZDuS1zuGsnA++7iD/nex8J3gB9Yyz6ylXJiNUKSrE3cuN034C/D7xIH82Ola0sy4nYDjI7qiuiUuSbl5wDbrztEToSyssqaYoBwuSX4SIhHyLocfFqM/yOd2XsGiKHPw7h7wZ4FeZvjLGTDgV/eGegO4=
Received: from CY4PR21MB0741.namprd21.prod.outlook.com (10.173.189.7) by
 CY4PR21MB0277.namprd21.prod.outlook.com (10.173.193.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.9; Fri, 6 Sep 2019 17:50:50 +0000
Received: from CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::5caa:ae40:7c3a:4b1d]) by CY4PR21MB0741.namprd21.prod.outlook.com
 ([fe80::5caa:ae40:7c3a:4b1d%5]) with mapi id 15.20.2263.005; Fri, 6 Sep 2019
 17:50:50 +0000
From: Long Li <longli@microsoft.com>
To: Keith Busch <kbusch@kernel.org>, Ming Lei <ming.lei@redhat.com>
Subject: RE: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Thread-Topic: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Thread-Index: AQHVXLUAoNqN0R8TLUadmsLcmKb6xacPEcMAgACKtgCAAAMjAIAAyEgAgAAEnwCAAClMgIAABJWAgAi79gCAACnHgIAACOEAgAACjoCAAA16gIAABfMAgAIuJgCAAAa1AIABBRqAgAAZZYCAAP6SgIAA0bgAgAA1zGA=
Date: Fri, 6 Sep 2019 17:50:49 +0000
Message-ID: <CY4PR21MB0741091795CEE3D4624977CFCEBA0@CY4PR21MB0741.namprd21.prod.outlook.com>
References: <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
 <20190903063125.GA21022@ming.t460p>
 <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <20190906141858.GA3953@localhost.localdomain>
In-Reply-To: <20190906141858.GA3953@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=longli@microsoft.com; 
x-originating-ip: [2001:4898:80e8:f:edde:db5c:c6fe:798]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cad81fc-e79e-4e2e-37f7-08d732f2c13e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR21MB0277; 
x-ms-traffictypediagnostic: CY4PR21MB0277:
x-microsoft-antispam-prvs: <CY4PR21MB02774849266B79BB9E4B36CFCEBA0@CY4PR21MB0277.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(346002)(366004)(39860400002)(199004)(189003)(6506007)(66476007)(66946007)(33656002)(2906002)(76116006)(52536014)(10290500003)(25786009)(22452003)(66556008)(64756008)(66446008)(71190400001)(478600001)(86362001)(81166006)(81156014)(8936002)(7696005)(102836004)(6116002)(5660300002)(7736002)(71200400001)(10090500001)(14454004)(229853002)(256004)(99286004)(8676002)(486006)(74316002)(46003)(55016002)(9686003)(6246003)(186003)(53936002)(4326008)(476003)(11346002)(6436002)(7416002)(8990500004)(110136005)(54906003)(76176011)(305945005)(316002)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0277;
 H:CY4PR21MB0741.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Df7TGTtjiuRmz+khaLZPymc8OAB3W/2kwy1SIHIwlSlK/n/0ZGv/WgIQoC9713Qn2tpMUxUddE5YQVWd9dLJF0NYiV84MT9rmhP53XBES5lx4lSBOn7RTVZaJ1iAP4COOsa1Hu+cWifcbO9HtF/STUYj8pA+eDUjA7BpgLn1xTQ/8bpSpd3r6aE2XqthuX/DXzYumcFATGsJIKAxk6VGna8iNAPLZTME9nJOcHgBnk0hmfUY1kXyNg51RxmTlRmh/KT5Lm5BsmtoyNzQxdoUz1m+2AfPQ4zgIb1nDY0piaHbJpWaxCdQcg48kCOXjO7nLQye0xqag6gInRh0lc1gl6xEtPk6Ky2NcDaADpw+Hg5KIB3kdj08vNraK/TKOIF1F3YZXNVEimCgyiHWWh2lFsM7UlO36jdnXW4y+i+dS24=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cad81fc-e79e-4e2e-37f7-08d732f2c13e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 17:50:50.0409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uzBb05ePqfOJjXT9c7vEJ2P1BGBq7awr69T0vI0PKsvdf8heD9OeJ9J7fJCjuwlskXiYMicJOn3wvs2vfcjZlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0277
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_105054_176728_3C25EEAF 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 John Garry <john.garry@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
>
>On Fri, Sep 06, 2019 at 09:48:21AM +0800, Ming Lei wrote:
>> When one IRQ flood happens on one CPU:
>>
>> 1) softirq handling on this CPU can't make progress
>>
>> 2) kernel thread bound to this CPU can't make progress
>>
>> For example, network may require softirq to xmit packets, or another
>> irq thread for handling keyboards/mice or whatever, or rcu_sched may
>> depend on that CPU for making progress, then the irq flood stalls the
>> whole system.
>>
>> >
>> > AFAIU, there are fast medium where the responses to requests are
>> > faster than the time to process them, right?
>>
>> Usually medium may not be faster than CPU, now we are talking about
>> interrupts, which can be originated from lots of devices concurrently,
>> for example, in Long Li'test, there are 8 NVMe drives involved.
>
>Why are all 8 nvmes sharing the same CPU for interrupt handling?
>Shouldn't matrix_find_best_cpu_managed() handle selecting the least used
>CPU from the cpumask for the effective interrupt handling?

The tests run on 10 NVMe disks on a system of 80 CPUs. Each NVMe disk has 32 hardware queues.
It seems matrix_find_best_cpu_managed() has done its job, but we may still have CPUs that service several hardware queues mapped from other issuing CPUs.
Another thing to consider is that there may be other managed interrupts on the system, so NVMe interrupts may not end up evenly distributed on such a system.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
