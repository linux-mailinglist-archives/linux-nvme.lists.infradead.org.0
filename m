Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D066711733D
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Dec 2019 18:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rqrosUdtJOLY6wtOiGGcnDvFkaLMjHsI9idNfXd4Jko=; b=SCJCmm0iNuWxS+
	ge5kDkQon1Ii+l8o2JS3P8cthgYSTmq7786NOjWyfosSIo1TatfjG45YJ4OIa0tfNC6AHo5ZVZyTU
	x9uTFW6a5DNapBB0VITWHq+k4+GTgTbQf5s7hBjifO2FeVVg1beLwWBmhCUdOIS9aly2HvWFHJpj9
	0GDF8VzXWGSsSVr+3StzXY8EOemGVnaYjBRIRm00xx3ZSHvid+fhbxvZYVrY6E/C/eMMlkIk6N/9o
	DiGCfZ70kzvn24+be9FlyHoe9gfH8ZNT55j3I5isebVm8sA1XxSaGM4rB8jd0IERtH1JbLSmX6GRt
	riMap+6mOS+76WfZHb9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNHI-0005oD-Fq; Mon, 09 Dec 2019 17:57:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNGw-0005jk-VZ
 for linux-nvme@lists.infradead.org; Mon, 09 Dec 2019 17:56:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A44D2080D;
 Mon,  9 Dec 2019 17:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914198;
 bh=5/4wTXvId2+mpf8jkt9WCNniBC99Y5Yi10xTbeald5I=;
 h=From:To:Cc:Subject:Date:From;
 b=Yk2bS9MyZqW+dwju+q64sOoi/f5A0A5F0uEJ5BRFDBi3U2kFM9RsmWhUFYgcw0uoL
 Z40nraUs6BNvQrnsP6x6xSqOtTTFDTy60K+S1buP/+GoGaWuYBA9BTsMXeeR49Wozq
 2hKrNOV7pM5rhaJy+rEoF1nT0F6myqbz7TOD0NWs=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv3 0/4] nvme pci interrupt handling improvements
Date: Tue, 10 Dec 2019 02:56:18 +0900
Message-Id: <20191209175622.1964-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095639_037462_4617774E 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, ming.lei@redhat.com,
 Keith Busch <kbusch@kernel.org>, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Here's the next revision to nvme pci interrupt handling. The series is
attempting to address two issues that have been recently raised:

  1. The nvme driver makes it possible to soft lockup a CPU due to high
     utilization in irq context. This is most prevalent when multiple
     CPUs are driving a single hardware queue on one or more controllers.

  2. The threaded handler left interrupts unmasked, which breaks when
     used with level triggered interrupts, or unnecessarily runs
     in interrupt context when edge interrupts occur frequently.

Both issues are addressed by always configuring nvme interrupts to
run the threaded handler with interrupts disabled. A hybrid approch
to handling nvme completions in hard irq context and thread context is
introduced so that there should not be a performance impact from removing
the nvme.use_threaded_interrupts option.

The series appears to be a win or no impact on performance from what I
can test. I would be greatful to hear if others can confirm this with
other hardware.

I've dropped the fast MSIx masking. While I believe it's safe to skip
flushing the memory write, I think this series mitigates the impact of
the read back by ensuring the ratio of memory reads to IO is low enough
to be negligable (AFAICT on hardware available to me).

I've changed the exit condition for the polling nvme irq thread to
break out of the loop if we've wrapped the completion queue. Other irq
threads may be affinitized to the same CPU, so we need to schedule out
at some point, but I've been told multiple times that need_resched()
or cond_resched() won't work as desired from the thread's fifo priority.

Keith Busch (4):
  nvme/pci: Disable interrupts for threaded handler
  nvme/pci: Complete commands from primary handler
  nvme/pci: Remove use_threaded_interrupts
  nvme/pci: Poll threaded completions

 drivers/nvme/host/pci.c | 56 ++++++++++++++++++++++++++---------------
 1 file changed, 36 insertions(+), 20 deletions(-)

-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
