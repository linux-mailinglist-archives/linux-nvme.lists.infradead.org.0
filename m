Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE2E553AF
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 17:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cno9mQqWywg+aUvf2v3lP3biahN5SgwAP8frAWnik4w=; b=Ndyi/r1vpUsj6T
	dsdnSKMQq7kaSiOCUZYNBgCTzhLDU0fdkAThHGVMITttUbPYksd8meREBIAmHxCvEt0FiJhmKU6cW
	lBdX63YtrRoF88SPUU4FOQMbWf9NqdrbUO+Jj7wswRFRxhTjcBn351ljzSwtDwWqITQRMUt8fsyUR
	lv8T4kTuBCgKFh89YnHWzGH4euhQlerDTkaeSS5KGCD/w4TMow9wOM1mtrNhP0GfkSLouvMsggnxV
	ZPbN+4Ai9pRyLKgnBQflCNaVtPeynhTiGWrQLOrZKOEre9rDcxLYVMxQlb8En5NWGMyBf/RMs71ap
	wpsESmit21SkVKT14vvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfndF-00062x-0F; Tue, 25 Jun 2019 15:45:17 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnd9-000608-U4
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 15:45:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 87F1327EEF65;
 Tue, 25 Jun 2019 17:45:08 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 2m3k0HJ10xOv; Tue, 25 Jun 2019 17:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6126927EEFDD;
 Tue, 25 Jun 2019 17:45:02 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6126927EEFDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1561477502;
 bh=RNm+ew/R+i3Y90/UD43mEQaTPkUN7pWqM0A/6WCsRpc=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=DT8HijNVU3rQCIHjuPy9Cpx/v1TpY4c0xqXEZU57rKCL8au4BjwRSYL95u/Fq3xvw
 7Li6efwumayKBCQ8YGHmVoGB54csBA2r6bKXmkyoDylVh7+VlTSA0CiWJHUNNOmxdf
 vmrMnoVsNGdAWs4bbKGDKYhABT/qcIUPaGaCn4eI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Qxlc1X4RJ23d; Tue, 25 Jun 2019 17:45:02 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4A18227EEF65;
 Tue, 25 Jun 2019 17:45:02 +0200 (CEST)
Date: Tue, 25 Jun 2019 17:45:02 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Bart Van Assche <bvanassche@acm.org>
Message-ID: <1492173308.27223699.1561477502288.JavaMail.zimbra@kalray.eu>
In-Reply-To: <7d28ee3d-0326-6d31-1cc6-13acc48e0d4d@acm.org>
References: <20190403230402.119428-1-bvanassche@acm.org>
 <1554392625.118779.243.camel@acm.org>
 <1035014818.27150671.1561441925414.JavaMail.zimbra@kalray.eu>
 <7d28ee3d-0326-6d31-1cc6-13acc48e0d4d@acm.org>
Subject: Re: [PATCH] nvmet-rdma: Suppress a lockdep complaint
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvmet-rdma: Suppress a lockdep complaint
Thread-Index: P3j1iDAp70PbfYiWz9FntAbarrublA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084512_363823_367171ED 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

----- On 25 Jun, 2019, at 17:18, Bart Van Assche bvanassche@acm.org wrote:

> On 6/24/19 10:52 PM, Marta Rybczynska wrote:
>> ----- On 4 Apr, 2019, at 17:43, Bart Van Assche bvanassche@acm.org wrote:
>>> On Wed, 2019-04-03 at 16:04 -0700, Bart Van Assche wrote:
>>>> Although the code that waits for controllers that are being teared down
>>>> in nvmet_rdma_queue_connect() is fine, lockdep complains about that code.
>>>> Lockdep complains because all release_work instances are assigned the
>>>> same static lockdep key. Avoid that lockdep complains by using dynamic
>>>> lockdep keys instead of static lockdep keys. See also the following
>>>> commits:
>>>> * 87915adc3f0a ("workqueue: re-add lockdep dependencies for flushing").
>>>> * 777dc82395de ("nvmet-rdma: occasionally flush ongoing controller teardown").
>>>> * 108c14858b9e ("locking/lockdep: Add support for dynamic keys").
>>>>
>>>> This patch avoids that lockdep reports the following:
>>>>
>>>> ======================================================
>>>> WARNING: possible circular locking dependency detected
>>>> 4.19.0-dbg #1 Not tainted
>>>> ------------------------------------------------------
>>>> kworker/u12:0/7 is trying to acquire lock:
>>>
>>> Please drop this patch - it is not sufficient to suppress the lockdep complaint.
>>> I will see whether I can come up with a better solution.
>>>
>> 
>> Have you had time to work on this one further? We're seeing the same issue.
> 
> Hi Marta,
> 
> I'm running all NVMe tests on my setup with the attached patch applied.
> 
> Bart.

Thanks Bart! We're going to test it out in our setup and I let you know what
the result is.

Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
