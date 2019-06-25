Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875A95232E
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 07:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlTthA8AuzVn7Lz64gXGb+t1Kb24qFff5mtgToWCzM8=; b=p2jYo3v5d8m0CF
	N6QJrPRO3MDCqRsMVna3sSNYthWNXeZ/KflOlY/e/5/Z1aEfLvtwMpNmg+x+qtdhYjms8CdXeceKg
	7dUB/0ztGU/MmaqLKhv/toHT1AJww8JZRaL+mEQkkAwHLH8ahiztV7Bp+rIr/chQMkg0YQzgs1t4+
	PyKC5Y1A3zwPpduPn3XzPaE63cO2qLEqpkKAphgghUmejROjrL4arOex31bcKQDpCDb4wBEZWFZi/
	IhuW4ewxkhzYq3JhtvxXrs0zoz2Og3yoAXAFrbbgEHSSHLi4mAF3FxnUu9M4qowF39vipHfgMJqGx
	+U2O2QEpPuFT9lvz8dAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfeO2-0002M6-Mo; Tue, 25 Jun 2019 05:52:59 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfeNL-00023n-1N
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 05:52:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2A8AD27E1300;
 Tue, 25 Jun 2019 07:52:09 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id g0CUgo6Gligv; Tue, 25 Jun 2019 07:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 953AC27E38A2;
 Tue, 25 Jun 2019 07:52:05 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 953AC27E38A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1561441925;
 bh=rmutEnS17I6UKH1zUzJOAyItS7OygLDBAypJecnxSQA=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=P/0MzbJxne9xLIivCzVIhDRvGX/W466WArm/Ztmlkthf/wwLYTKm696baM17FZ6P2
 Yle7v9h9oJGtTL329pW8N/FnA1GzssJLqFF81iINfUJD3mq2wvXxpXxMkya1JYXLma
 ptUu1xSRT4PDBaU8E/J0h39rrO7ZJsIes+w4IeHA=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Dw0FxYIhFnOT; Tue, 25 Jun 2019 07:52:05 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7CB1C27E1300;
 Tue, 25 Jun 2019 07:52:05 +0200 (CEST)
Date: Tue, 25 Jun 2019 07:52:05 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Bart Van Assche <bvanassche@acm.org>
Message-ID: <1035014818.27150671.1561441925414.JavaMail.zimbra@kalray.eu>
In-Reply-To: <1554392625.118779.243.camel@acm.org>
References: <20190403230402.119428-1-bvanassche@acm.org>
 <1554392625.118779.243.camel@acm.org>
Subject: Re: [PATCH] nvmet-rdma: Suppress a lockdep complaint
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvmet-rdma: Suppress a lockdep complaint
Thread-Index: 8MRhH5/GPCdS5sREaighzFKkDFHssQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_225215_394223_4DD3432D 
X-CRM114-Status: UNSURE (   7.15  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

----- On 4 Apr, 2019, at 17:43, Bart Van Assche bvanassche@acm.org wrote:
> On Wed, 2019-04-03 at 16:04 -0700, Bart Van Assche wrote:
>> Although the code that waits for controllers that are being teared down
>> in nvmet_rdma_queue_connect() is fine, lockdep complains about that code.
>> Lockdep complains because all release_work instances are assigned the
>> same static lockdep key. Avoid that lockdep complains by using dynamic
>> lockdep keys instead of static lockdep keys. See also the following
>> commits:
>> * 87915adc3f0a ("workqueue: re-add lockdep dependencies for flushing").
>> * 777dc82395de ("nvmet-rdma: occasionally flush ongoing controller teardown").
>> * 108c14858b9e ("locking/lockdep: Add support for dynamic keys").
>> 
>> This patch avoids that lockdep reports the following:
>> 
>> ======================================================
>> WARNING: possible circular locking dependency detected
>> 4.19.0-dbg #1 Not tainted
>> ------------------------------------------------------
>> kworker/u12:0/7 is trying to acquire lock:
> 
> Please drop this patch - it is not sufficient to suppress the lockdep complaint.
> I will see whether I can come up with a better solution.
> 

Bart,
Have you had time to work on this one further? We're seeing the same issue.

Thanks,
Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
