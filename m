Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F4FA705
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 04:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1Ojuaf4iLkNpLxSIZiIy8H0bIRg/oEHwv7BaTDQILU=; b=lEapVOfRhLZtqn
	/+4HJVWpGeutzJthm28ca3/zoktf2hyyiVeGuxIDaSUHo9E6L5aViT1QrB0k+BBxy+bt4gaHPROHX
	qiiLjCBp8cVZ6ZaS1aoeUhNsNE1hejCd6dwyjdb6G/1NEv2MXAFsOF2/YmkXnB+mmShvvuOyQBrEp
	/KxhoswIp2Rxkxx8y+5jcaOYqLLNnYRFbYDtoKuo4A5EWUUaaMyJyFCdBqreW6AlEjGbsZMpXrJAp
	V53A5UtgtP9pLJMlSltEN678/xVm4Iqf6IJNYJ0PKtlML/RBoUiNBvwNgEXxcOSb6zIpsl8nduqO9
	poTP0uXHFqKp6b7tkyBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiyW-0007vb-En; Wed, 13 Nov 2019 03:05:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiyR-0007uy-6n
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 03:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573614337;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZquP/UBD10setNA+5UOFBfxgL/lxh5K8nE/4pSgXPUs=;
 b=h+Q7kHQHYXZLVmbL/wyV5ycAJn1mhYQQF5datjqxW9TM0WyuW7VYieJoLYXnr1b2tSOGvV
 z+iJ8r+jJ7+Iu8Nxnlydh1Mz7PpgyqoapoMEripcqe2Dze0wWhEbDsRYWt/kvTCsfpoViH
 E2vG975v0j2AyDVD/tsLUCh2cugF1xs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-yErWSoDMPt6yY08kq0jqDA-1; Tue, 12 Nov 2019 22:05:33 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BE77107ACC6;
 Wed, 13 Nov 2019 03:05:32 +0000 (UTC)
Received: from ming.t460p (ovpn-8-28.pek2.redhat.com [10.72.8.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 635942CEDD;
 Wed, 13 Nov 2019 03:05:24 +0000 (UTC)
Date: Wed, 13 Nov 2019 11:05:20 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191113030520.GC28701@ming.t460p>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <8198fd99-6b47-7594-ba1c-4a15ffe25269@suse.de>
 <20191112164947.GB29135@redsun51.ssa.fujisawa.hgst.com>
 <f69d4e4c-3d6e-74c0-ed97-cac3c6b230c2@suse.de>
MIME-Version: 1.0
In-Reply-To: <f69d4e4c-3d6e-74c0-ed97-cac3c6b230c2@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: yErWSoDMPt6yY08kq0jqDA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_190539_321690_F3CE24D9 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 06:29:34PM +0100, Hannes Reinecke wrote:
> On 11/12/19 5:49 PM, Keith Busch wrote:
> > On Tue, Nov 12, 2019 at 05:25:59PM +0100, Hannes Reinecke wrote:
> > > (Nitpick: what does happen with the interrupt if we have a mask of
> > > several CPUs? Will the interrupt delivered to one CPU?
> > > To all in the mask?
> > 
> > The hard-interrupt will be delivered to effectively one of the CPUs in the
> > mask. The one that is selected is determined when the IRQ is allocated,
> > and it should try to select one form the mask that is least used (see
> > matrix_find_best_cpu_managed()).
> > 
> Yeah, just as I thought.
> Which also means that we need to redirect the irq to a non-busy cpu to avoid
> stalls under high load.
> Expecially if we have several NVMes to deal with.

IRQ matrix tries best to assign different effective CPU to each vector for
handling interrupt.

In theory, if (nr_nvme_drives * nr_nvme_hw_queues) < nr_cpu_cores, each
hw queue may be assigned to one single effective CPU for handling the
queue's interrupt. Otherwise, one CPU may be responsible for handling
interrupts from more than 1 drive's queues. But that is just in theory,
for example, irq matrix takes admin queues into account of managed IRQ.

On Azure, there are such cases, however soft lockup still can't be
triggered after applying checking cq in submission. That means one CPU
is enough to handle two hw queue's interrupt in this case. Again,
it depends both CPU and NVMe's drive.

For network, packets flood can come any time unlimitedly, however number
of in-flight storage requests is always limited, so the situation could
be much better for storage IO than network in which NAPI may avoid the issue.

> 
> > > Can't we implement blk_poll? Or maybe even threaded interrupts?
> > 
> > Threaded interrupts sound good. Currently, though, threaded interrupts
> > execute only on the same cpu as the hard irq. There was a proposal here to
> > change that to use any CPU in the mask, and I still think it makes sense
> > 
> >    http://lists.infradead.org/pipermail/linux-nvme/2019-August/026628.html
> > 
> That looks like just the ticket.
> In combination with threaded irqs and possibly blk_poll to avoid irq storms
> we should be good.

Threaded irq can't help Azure's performance, because Azure's nvme implementation
applies aggressive interrupt coalescing.

Thanks, 
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
