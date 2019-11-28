Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F64910C316
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 04:52:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0Wqx4WitCUsXLO7zprm5WhgTBuPr/fcFJUj1YwF7rk=; b=iUtCultHk3eHtJ
	MfFvD8/a64RYVeYEU6H632XvQ14WYDnqvpKnzImKHx22k/BQAiH7vmlO3T00LtEe4TydawUYpT0pD
	Rch4OxuPovXYTau4wPV4680n6fX6UpGOkObmsnigsx3Wrz86pdortbjdSyVAOLW2whmZKC1KW9T60
	grIJJeEZXbmx7d4YCHhAab5pLRRV7+GWHWxa0YOrQ2jqh15397gJ8e2Veu5epebJ+l+9y0vLsXlLP
	V9PQsAv1BF0DD1ksak5k9vYc9m4kB91rM4Sws9b0hmBLzmOddp+1uKz+ULLfRus5CE30umXUsqdvE
	+GKYprbIrL1xxpO/Qprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAqY-0001iy-Jk; Thu, 28 Nov 2019 03:52:02 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAqS-0001if-Pv
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 03:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574913115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dj5nQ1/5kgbLBxWEDy8CwR+Ra4hKBU5I0wE/S8wB/jc=;
 b=LsPWfjvIHj3TZX5u42SYXf+A1FHUHumEqf01mkZTOmyxnhkXBKE2UjsL2mysSuzsQjp6Xw
 whJWqtcZQOn2bNbOEb41RA3hUx9PmooLkhFqZFxntHa6p98+l/9IELJOO8vCMtmF+Ml6P1
 es2a1q5gp239GwC7NodKmr/kPUNrsog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-_jTyqZyeOIuxZZOd9pFZZQ-1; Wed, 27 Nov 2019 22:51:52 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9885107ACC4;
 Thu, 28 Nov 2019 03:51:50 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 39A2B5C1B0;
 Thu, 28 Nov 2019 03:51:43 +0000 (UTC)
Date: Thu, 28 Nov 2019 11:51:39 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191128035139.GE3277@ming.t460p>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <11325d8e-e9f8-408e-18c3-182c69e90eab@grimberg.me>
 <20191128032843.GA1738@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191128032843.GA1738@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: _jTyqZyeOIuxZZOd9pFZZQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_195156_915463_3C132387 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bigeasy@linutronix.de, helgaas@kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 12:28:43PM +0900, Keith Busch wrote:
> On Wed, Nov 27, 2019 at 06:46:55PM -0800, Sagi Grimberg wrote:
> > > For deeply queued workloads, the nvme controller may be posting
> > > new completions while the threaded interrupt handles previous
> > > completions. Since the interrupts are masked, we can spin for these
> > > completions for as long as new completions are being posted.
> > > 
> > > Signed-off-by: Keith Busch <kbusch@kernel.org>
> > > ---
> > >   drivers/nvme/host/pci.c | 10 ++++++++--
> > >   1 file changed, 8 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > > index 571b33b69c5f..9ec0933eb120 100644
> > > --- a/drivers/nvme/host/pci.c
> > > +++ b/drivers/nvme/host/pci.c
> > > @@ -1042,9 +1042,15 @@ static irqreturn_t nvme_irq(int irq, void *data)
> > >   	return ret;
> > >   }
> > > +static void nvme_irq_spin(int irq, void *data)
> > > +{
> > > +	while (nvme_irq(irq, data) != IRQ_NONE)
> > > +		cond_resched();
> > 
> > So the cond_resched should be fair to multiple devices mapped to the
> > same cpu core I assume.. did you happen to test it?
> 
> It should, but I'm having difficulty expressly testing that. Frequent
> spinning here needs a single queue mapped to multiple CPUs, such that
> one or more CPUs can constantly dispatch new requests. I've one test
> where this spin never exits for the entire duration of an fio execution,
> and /proc/interrupts confirms only 1 interrupt occured for many millions
> of IO.
> 
> When you have two or more devices with queues mapped to multiple CPUs,
> their threaded interrupt handler affinities will not share the same CPU.

They still may share same CPU if there are many enough NVMe drives, the
threaded interrupt handler actually takes the effective hard interrupt's
affinity, which still may point to same CPU, in case of:

	nr_nvme_drives * nr_hw_queues > nr_cpus


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
