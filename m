Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78250F95FF
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 17:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP30YhMh/3+kpE5K8ZGOEvLQbKYYYJljouEn+pRH0aE=; b=jObpw+s7p9qQnO
	pegykCQaDp472Ty42hHHuq6NLRwfW5YpoOSTIhanDMDm2R5YJD8h2765WH5lPQAgmbdKRw2PZ1+Ud
	h/G6di9ohiRwILTDkQXRoesh5hznSQdAOnYVRivBnmCTKnnPvvBt0q04vIyUU2NnjCp3elsQf00ru
	DjjhPm+JZrQRYZ45Weef8xD3KbK/o1m/Hgxsz07urHgn0tEwKSMXDXIMiOR8DV7BWBcBNTVazPvM9
	alRrwd8pIxpS6FqTQnd0cLikxRIsXl4B+Zpm002S9uV7kMZuWMKmQyCEAZd+6QSsCpf1kbvyRVGGm
	MGRZWXkHJZuLMc5Ls/Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZMb-0003o5-PU; Tue, 12 Nov 2019 16:49:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZMV-0003nV-5k
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 16:49:52 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD3DC2196E;
 Tue, 12 Nov 2019 16:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573577390;
 bh=Q2xRU7Z4v3yzGyfzxMUbjy7nzrxqCBLw3lpu3s35AsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=glUAxkHM0wzHyQ0mEHJ85TsKR/2yyVvFdh5Hjle2DFFl8RWS+EC+wwjzbA4oJRL/L
 lFD7RaH792NVskFVUbpDU3fARU1RZlMqih0HrZalFeXAP5QdLgWVU5EXS0Cnv4ZrHH
 x9bvGq56HwDsjyHfuMQMluidVgOi7RHLmSpuHSi0=
Date: Wed, 13 Nov 2019 01:49:47 +0900
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191112164947.GB29135@redsun51.ssa.fujisawa.hgst.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <8198fd99-6b47-7594-ba1c-4a15ffe25269@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8198fd99-6b47-7594-ba1c-4a15ffe25269@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_084951_237932_5D85C283 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 05:25:59PM +0100, Hannes Reinecke wrote:
> (Nitpick: what does happen with the interrupt if we have a mask of
> several CPUs? Will the interrupt delivered to one CPU?
> To all in the mask?

The hard-interrupt will be delivered to effectively one of the CPUs in the
mask. The one that is selected is determined when the IRQ is allocated,
and it should try to select one form the mask that is least used (see
matrix_find_best_cpu_managed()).

> Can't we implement blk_poll? Or maybe even threaded interrupts?

Threaded interrupts sound good. Currently, though, threaded interrupts
execute only on the same cpu as the hard irq. There was a proposal here to
change that to use any CPU in the mask, and I still think it makes sense

  http://lists.infradead.org/pipermail/linux-nvme/2019-August/026628.html

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
