Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3411811D9B6
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 23:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEeoBBTidSgocx2z9aqLon82vpKVyMBNPr75kBGI954=; b=QQb0216/fiNRhw
	Oo0o/RuVzZdHdnyWjarfso/EEnwiB2lTfqREnwPHwJk7HQbkI6m3DcABHFkTZ9ZsHJ1cc3MzLTJqi
	Eve5QYkudEdUTxoNINIFW+nWK7P80pHj8eYTZ+Gjohu86M0B5vtkDLJlXgns675eQ11DTynEiVqcm
	QUk+A3sWEBjAoOTVmIkmc4nxuEuGjdwRuxIokoY1UvZWMO8EoTjFXasAukrpGjg+ruIR6+51FI5AU
	4s3g9NM9YyvMkoirtN/JLXjeFpbWs1ynwaI60EIBfcpFeQEsoqU9odcO/Vn0lrFCjXncCFE5U5bwa
	HepCsIbl6zodme1DoBrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXNX-0001CD-Cb; Thu, 12 Dec 2019 22:56:15 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXNS-0001Bi-5e
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 22:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576191366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=maW/icMtzuHHmRQhvQOXNbISm9LssqUMCWNCPByZtzM=;
 b=UUNx9EXhGPWareCw/xBIFQl02uNZT5o476Pf8HxiIcS0fjuc7sV2PYw3ZngDmDPHOatUB4
 K0GYac6hTEL8nNrsVsj0Kv1tfpEpmrdnzO1oH92p9hhuhrMuah4vbH+mH1vmiM7agXeQS5
 uPtasUBAvKFsApJfWsGeR49Wj17h5Hc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-oZZXgiT7OlengTnezY90Fg-1; Thu, 12 Dec 2019 17:56:04 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD51F800EB5;
 Thu, 12 Dec 2019 22:56:02 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E26B910013A1;
 Thu, 12 Dec 2019 22:55:56 +0000 (UTC)
Date: Fri, 13 Dec 2019 06:55:52 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
Message-ID: <20191212225552.GB24463@ming.t460p>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
 <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
 <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
 <c58e2cb5-e03c-c56f-8c67-a791ac1eb2c6@grimberg.me>
 <20191211173532.GB493@redsun51.ssa.fujisawa.hgst.com>
 <79442e8d-719a-7510-deea-cc23694fdec0@grimberg.me>
 <20191212010240.GA29574@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191212010240.GA29574@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: oZZXgiT7OlengTnezY90Fg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_145610_290086_CA99AED6 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bigeasy@linutronix.de, tglx@linutronix.de, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:02:40AM +0900, Keith Busch wrote:
> On Wed, Dec 11, 2019 at 04:40:47PM -0800, Sagi Grimberg wrote:
> > > Perhaps we can cycle the effective_affinity through the smp_affinity?
> > 
> > Not sure I follow your thoughts.
> 
> The only way the nvme driver's interrupt handler can saturate a
> cpu requires the smp_affinity have multiple online cpus set. The

As Sagi mentioned, there can be 24 drives, each drive can be 1:1
mapping, so each CPU may have to handle interrupts from 24 drives/queues,
then the CPU may become slower compared with the 24 hardware/queues.

> effective_affinity, however, is always a single cpu, which can be any
> of the online ones set in smp_affinity.

> 
> If we can detect a cpu is spending too many cycles in nvme irq,
> perhaps we can re-spread the effective_affinity to different cpus. I
> don't currently know of a good way to do this, though.

That shouldn't have been done just for nvme irq given other storage
has similar issue.

I have tried toward that direction, and looks some cost has to be payed, such
as reading one time of local clock in interrupt or io path has to be done:

https://lore.kernel.org/lkml/20190827085344.30799-1-ming.lei@redhat.com/

It can be quite hard to figure out one efficient way to do that.


thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
