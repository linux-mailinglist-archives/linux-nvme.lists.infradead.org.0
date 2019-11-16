Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3D7FEB17
	for <lists+linux-nvme@lfdr.de>; Sat, 16 Nov 2019 08:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jMovQcLniS5LcIGYY1vCJc1B+e0MjUgzS/iBaOUAn8=; b=JujjmDbh68Jn8j
	+P8+n802s6opKnaDP0ymF7smRGBlKhAPnnvjP9B2L/1CsvISqBp+hSTk7GXxniUbKWbBZ+bkOFlQM
	njLiSqjwK4Lir6dYS4MervzxiuORySKAnBlSdaEDzdZymez2tMrm7+Ho9gbbZT+UEbVNmjoDzkJJc
	acMj8Vfg5uRg6Qy09CXj27MX8ZNslwviXXJc8lBjkWmM5U1DIsFM+9WKfiMncVMtfnZPvJmulf86p
	oOsiuHruY+BbNVz9cLbYNHuBhVE0Hw/1+0zYNLnInuBelM41SV3k9Ps+PPUql0ZtZ7+mb6TtftCkF
	23x95gB/k1R62ZkPxOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVsLe-0005Tp-Q5; Sat, 16 Nov 2019 07:18:22 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVsLZ-0005Sx-EP
 for linux-nvme@lists.infradead.org; Sat, 16 Nov 2019 07:18:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573888695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iF8Nu5xQV2DOoMLANoogmWICSnIYFII+kCs4jg6qoQ8=;
 b=Y5skReJsMBQESiMqvoLTSn0u5V7ONJXrnqEvqFUuP8OUpzCe6nGQ/gQQ+5tTwKp5HxNAgX
 jXvwcmjCogH9GRyyUfCZe8viYw0CUh542z3KL/FZxLQ6K7UVddooVi42uaCl45KdLfy8nC
 CvYa8IroFrKontbXi45LZ9ZfE1RDrJ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-3YxTDElzOgSqa9G0CbmcVw-1; Sat, 16 Nov 2019 02:18:11 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6C9A593A8;
 Sat, 16 Nov 2019 07:18:09 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BED835D6D2;
 Sat, 16 Nov 2019 07:18:00 +0000 (UTC)
Date: Sat, 16 Nov 2019 15:17:54 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH RFC 0/3] blk-mq/nvme: use blk_mq_alloc_request() for
 NVMe's connect request
Message-ID: <20191116071754.GB18194@ming.t460p>
References: <20191115104238.15107-1-ming.lei@redhat.com>
 <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
MIME-Version: 1.0
In-Reply-To: <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 3YxTDElzOgSqa9G0CbmcVw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_231817_774235_3F914A8E 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi,

On Fri, Nov 15, 2019 at 02:38:44PM -0800, Sagi Grimberg wrote:
> 
> > Hi,
> 
> Hey Ming,
> 
> > Use blk_mq_alloc_request() for allocating NVMe loop, fc, rdma and tcp's
> > connect request, and selecting transport queue runtime for connect
> > request.
> > 
> > Then kill blk_mq_alloc_request_hctx().
> 
> Is it really so wrong to have an API to allocate a tag that belongs to
> a specific queue? Why must the tags allocation always correlate to the
> running cpu? Its true that NVMe is the only consumer of this at the
> moment, but does this mean that the interface should be removed because
> it has one (or rather four) consumer(s)?

Now blk-mq takes a static queue mapping between CPU and hw queues, given
CPU hotplug may happen any time, so the specified hw queue may become
inactive any time.

Queue mapping from CPU to hw queue is one core model of blk-mq which
relies a lot on the fact that hw queue active or not depends on
request's submission CPU. And we always can retrieve one active hw
queue if there is at least one online CPU.

IO request is always mapped to the proper hw queue via the submission
CPU and queue type.

So blk_mq_alloc_request_hctx() is really weird from the above blk-mq's
model.

Actually the 4 consumer is just one single type of usage for submitting
connect command, seems no one explain this special usage before. And the
driver can handle well enough without this interface just like this
patch, can't it?

> 
> I would instead suggest to simply remove the constraint that
> blk_mq_alloc_request_hctx() will fail if the first cpu in the mask
> is not on the cpu_online_mask.. The caller of this would know and
> be able to handle it.

Of course, this usage is very special, which is different with normal
IO or passthrough request.

The caller of this still needs to rely on blk-mq for dispatching this
request:

1) blk-mq needs to run hw queue in round-robin style, and different
CPU is selected from active CPU masks for running the hw queue.

2) Most of blk-mq drivers have switched to managed IRQ, which may be
shutdown even though there is still in-flight requests not completed
on the hw queue. We need to fix this issue. One solution is to free
the request and remap the bios into proper active hw queue according to
the new submission CPU.

3) warning will be caused when dispatching one request on inactive hw queue

If we are going to support this special usage, lots of blk-mq needs to
be changed for covering the so special case.

> 
> To me it feels like this approach is fundamentally wrong. IMO, having
> the driver select a different queue than the tag naturally belongs to
> feels like a backwards design.

The root cause is that the connection command needs to be submitted via
one specified queue, which is fundamentally not compatible with blk-mq's
queue mapping model.

Given the connect command is so special for nvme, I'd suggest to let driver
handle it completely, since blk-mq is supposed to serve generic IO function.


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
