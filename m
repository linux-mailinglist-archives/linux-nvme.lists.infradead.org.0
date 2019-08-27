Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075FF9E340
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 10:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VvOYbtlSca3RZf/jZAmeAhFUgXQNg2zGu3NvXxADOq8=; b=Alqp2d7EsPyiWL
	lAf0R4v4P7/ZsdrqC1hTQq9dXr/hYsZQW5uDJgBeeaLn3VcsrgD1qsJtep8Xrr9NGHIiMVOZpU58J
	eiB/xsaUhV7FeGKw+xC41uYm78+80YcbDbGZWpl7oA/WqXNPST0GG7FJqyl6ZF6De4s3XXQq3aUa9
	6tKCJGpjhxBJGKL0CRVQY6LQL4Utf/hgR5wtaWGWH+BR3tkimB/WsbaUAYGXWjAdldxv0UlLANpPe
	s3xPez4aULM9DG1HdQRVlONmoFSBYXBy3+z7nWLgluaVBd3jHUkEwcEI5znzMdidSIUivZi8RAreP
	CACh02wSgts2ZNxKDeQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XF9-00041D-8I; Tue, 27 Aug 2019 08:54:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XEr-0003yC-BU
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 08:54:07 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B34A08980EB;
 Tue, 27 Aug 2019 08:54:03 +0000 (UTC)
Received: from localhost (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F373C5D70D;
 Tue, 27 Aug 2019 08:53:59 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 0/4] genirq/nvme: add IRQF_RESCUE_THREAD for avoiding IRQ flood
Date: Tue, 27 Aug 2019 16:53:40 +0800
Message-Id: <20190827085344.30799-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Tue, 27 Aug 2019 08:54:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015405_464913_523E5664 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Guys,

The 1st patch implements one simple EWMA based mechanism for detecting IRQ flood.

The 2nd patch adds IRQF_RESCUE_THREAD, and interrupts will be handled in
the created rescue thread in case that IRQ flood comes.

The 3rd patch applies the flag of IRQF_RESCURE_THREAD for NVMe.

The last patch uses irq's affinity in case of IRQF_RESCUE_THREAD.

Please review & comment!

Long, please test and see if your issue can be fixed.

Ming Lei (4):
  softirq: implement IRQ flood detection mechanism
  genirq: add IRQF_RESCUE_THREAD
  nvme: pci: pass IRQF_RESCURE_THREAD to request_threaded_irq
  genirq: use irq's affinity for threaded irq with IRQF_RESCUE_THREAD

 drivers/base/cpu.c        | 25 +++++++++++++++++++++
 drivers/nvme/host/pci.c   | 17 +++++++++++++--
 include/linux/hardirq.h   |  2 ++
 include/linux/interrupt.h |  6 +++++
 kernel/irq/handle.c       |  6 ++++-
 kernel/irq/manage.c       | 25 ++++++++++++++++++++-
 kernel/softirq.c          | 46 +++++++++++++++++++++++++++++++++++++++
 7 files changed, 123 insertions(+), 4 deletions(-)

Cc: Long Li <longli@microsoft.com>
Cc: Ingo Molnar <mingo@redhat.com>,
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: John Garry <john.garry@huawei.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Hannes Reinecke <hare@suse.com>
Cc: linux-nvme@lists.infradead.org
Cc: linux-scsi@vger.kernel.org


-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
