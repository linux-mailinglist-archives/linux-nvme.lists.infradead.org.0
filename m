Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2411CA18
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 16:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NpYizJq6GKm1ZIefQnRtGWQeKq4DMwXI5tpPZQK8BM=; b=DCxPJuALWNVQEn
	PJsB/jToVZgJszZTJU3Qn7hH3/7UMrLeuJVr17FxtF6ClGUeQN6ZOaeElLLLzXbhZtij3E+KT8WMN
	9C4T824K9i2ItYSYfgjCxx6eFC3rhzqbepW6rdOJ2ClMQbqizUNz1f8/9tEcNve+LmgwIpvPx99Wy
	AwZC0uYUFcWfML5+s2ODmVvx0Qt5Qi5W/bY3iz95Ft5o2zoJdqsGSIk1iRNwJwDcmERgWSOgdeItM
	tiz7DkJ5fSRJMIVnSVhprIPgYCLdq3fZGT2aKyfkJcWJo7ljhzfpNhiQA43bpwFATx2OTZIXPXTJ1
	p938M395zmfgz/68yEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYD1-0000d3-9P; Tue, 14 May 2019 14:15:11 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYCt-0008G9-Bt
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 14:15:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id BE65868B05; Tue, 14 May 2019 16:14:39 +0200 (CEST)
Date: Tue, 14 May 2019 16:14:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514141439.GA14213@lst.de>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
 <20190514052027.GB6294@lst.de>
 <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
 <20190514055832.GA6843@lst.de>
 <CAC=wYCECcfqoDDMcgVj-4dAEUxNpY62vAEMOD8-eGrZK8wOV-g@mail.gmail.com>
 <20190514135434.GA19837@localhost.localdomain>
 <20190514141220.GA25519@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514141220.GA25519@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_071503_560553_F01EE052 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: keith.busch@intel.com, sagi@grimberg.me,
 Adam Carter <adamcarter3@gmail.com>, linux-nvme@lists.infradead.org,
 axboe@fb.com, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 10:12:22PM +0800, Ming Lei wrote:
> The two aren't merged because the default segment size(BLK_MAX_SEGMENT_SIZE) is 64KB,

Yep.

> and the following patch may fix this issue:

Or this one posted yesterday for that matter:

https://marc.info/?l=linux-block&m=155772952511144&w=2

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
