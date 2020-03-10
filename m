Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA73918041C
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 17:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDVAsv76Xf7u1cCNS95wma/Q89zn24Fh37Wc93I8+nM=; b=me349UZg1k+9XW
	EEwlGvCJabdBwCVH4xYFRgtfi3AolFFtWC3ZM/R1V+QFTCR2OKEmPNHer1y9BQiKPwGal52l7ZTKx
	ORLH+0TvCzvnSUip+ruHr8Rpq4tB7W5m6Hqhd54Y1ugDfafq49RmiIxwjOqQJh/4bsqe4lKFME1f8
	5YuRZBa3J94ZZQoSBiWG6y0L5BFb3FJD+amB2XThzEO8HlNridS8teDzYeVL/vnab5m9IezRVKZBL
	vJ3cH9pR40hMwhppMZouZJ7Ov76yj0y3yGdPMKgY420LhVNv2GFaDjFzml4Lb4gDmTd2qJh6Komq+
	PDVVK7hrJZCUbnANH0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiCe-0002tC-77; Tue, 10 Mar 2020 16:58:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiCW-0002sq-Uq
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 16:57:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 22ABF68BE1; Tue, 10 Mar 2020 17:57:51 +0100 (CET)
Date: Tue, 10 Mar 2020 17:57:50 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 2/3] nvme-pci: Remove two-pass completions
Message-ID: <20200310165750.GB7114@lst.de>
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-3-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304181246.481835-3-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095754_058847_03344562 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bijan.mottahedeh@oracle.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 10:12:45AM -0800, Keith Busch wrote:
> Completion handling had been done in two steps: find all new completions
> under a lock, then handle those completions outside the lock. This was
> done to make the locked section as short as possible so that other
> threads using the same lock wait less time.
> 
> The driver no longer shares locks during completion, and is in fact
> lockless for interrupt driven queues, so the optimization no longer
> serves its original purpose. Replace the two-pass completion queue
> handler with a single pass that completes entries immediately.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
