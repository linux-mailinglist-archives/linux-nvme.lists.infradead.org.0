Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A7FA7BF
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 04:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcHkrt2IhYq5Q/gQ5cBEVexiYejGnzQhCK3Cs5ZUZmo=; b=hz6MF9fvEJQLm2
	q/C91C7KXv1h/Kx0lnJoZwOhMHZpORqbK6hRQT52nzOf2+BKcOXbRRNq5tf+8JjiE5gxJSNAVNJ4T
	CqzR/7ZiEMfSwcz0/n8u6LLjjYj/MFyezGRbKZssZ3g4sRxWfXw/Fogs6o3XnZ0hV4pa3XCbNh+MA
	qooOzGJp3eclE7z6zbl2q80zl8KIaX/F9DsHmECU9+xQDAtdGVEOFM9F2rGnCGgpV2oloc2X9riBf
	kCv0apk4f8EtMbj5S9xQDCidOOuWIIKO35Sh8Dfoj/JVLTGFVHP5LR2WmBFURYqmWzUEGWEylAu8z
	DSUv9MJTLDX4AEYAddQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjnG-0002af-QW; Wed, 13 Nov 2019 03:58:10 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjnB-0002aK-VC
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 03:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573617484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QO1/cBZPR0TLu54NanFsWaZardNgksYgFzbgpTDEZYU=;
 b=PEtKy96m7Sx2nG6VefAO0EM5v06hvHCpF36UBBvWz/6ZW6Hlje5Q1Gw5WHKTCTmaScKV5P
 TJYrRlX3GnyNYIcuv0hSVFoGztacI6RQPhsHYDtYRkqLPmbft8a9HAzWFleFBPXdyTKaQt
 TF3xGkAeDa6KXzedn38NBXeEhqXYrJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-K8exkAPdP4G10lPeqR2jPg-1; Tue, 12 Nov 2019 22:58:01 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE4FEDB60;
 Wed, 13 Nov 2019 03:57:59 +0000 (UTC)
Received: from ming.t460p (ovpn-8-28.pek2.redhat.com [10.72.8.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF1462937;
 Wed, 13 Nov 2019 03:57:52 +0000 (UTC)
Date: Wed, 13 Nov 2019 11:57:48 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191113035748.GD28701@ming.t460p>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <8198fd99-6b47-7594-ba1c-4a15ffe25269@suse.de>
 <20191112164947.GB29135@redsun51.ssa.fujisawa.hgst.com>
 <f69d4e4c-3d6e-74c0-ed97-cac3c6b230c2@suse.de>
 <20191113030520.GC28701@ming.t460p>
 <20191113031702.GA25906@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191113031702.GA25906@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: K8exkAPdP4G10lPeqR2jPg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_195806_078297_1520E42F 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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
 Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:17:02PM +0900, Keith Busch wrote:
> On Wed, Nov 13, 2019 at 11:05:20AM +0800, Ming Lei wrote:
> > Threaded irq can't help Azure's performance, because Azure's nvme implementation
> > applies aggressive interrupt coalescing.
> 
> This sounds like QD1 latency is really awful if it's coalescing this way.
> 
> Let me restate to ensure I understand how this patch addresses the
> high-depth case: by polling during submission, a multi-threaded high
> depth workload gets to carve up the number of CQEs handled by spreading
> across more CPUs. Real hardware should see fewer completions per
> interrupt,

Right, cause submission's frequency is high enough.

> but we should be able to recreate this issue by enabling
> interrupt coalescing on a real NVMe.

Yeah, I just tried it, and similar intx/s and throughput can be re-created
on one real NVMe.


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
