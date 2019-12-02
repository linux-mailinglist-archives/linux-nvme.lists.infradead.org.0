Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D90110F2CB
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiNzHbbqZegds0+pZqlaBkvR5+VfIvsCBHqDWLKHZo4=; b=RXhfe4vJKyMWE9
	OcokTVSXstat8pLUL1TB4vzvuF6+kgKq7DxHkAgjH98QwzGy/cxM/P6O6vqdwE+0JVfAmeHPKCcsQ
	ADv5VpVhm1PJ3JIXfUY0fQkY5KQ21L6OKuvCDMwKKqFgWUFHJw6ELRJl4dD55XCL7Oa/HUwWyTJFL
	ZP8mwL0wZIWyYivr/q3XG1iOsLYqB2IB+x+T/XH34xeVl2y1wTBNiktA/A3MCT6Vp73GGuAK7wjXL
	kgUeNY1Yj7nnFOFZ4VEyKbjBLQZi32STKL0jhevkxeUsg+E6rwtD2msTpnpvftIZoyGz2JxjjC0aS
	E+JgnzBJO6yrwAMqkfug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibu5C-00070j-Aw; Mon, 02 Dec 2019 22:22:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibu53-0006zQ-Fa
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:22:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B7D32073C;
 Mon,  2 Dec 2019 22:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325328;
 bh=5aOmSSC/ZHfnLNJ4XQlnqxNBBNEP5GyEU7+McmV4Cqs=;
 h=From:To:Cc:Subject:Date:From;
 b=aiQ+PHN8+ZstPVpvzf9XWDq0TPHC/yGQK0PfQEt9BcgVJ+QkAZD423fweOPbSMsOm
 Ska1Z3xKi9I19BbXDb34kz2qjVAJGBVO9ztezQNYNAGb2upqgXQ2gE9gQfJMKJsxcb
 YkNVFvnC89BhYXn3vqnTII8E854WWQ1qvQkKQ1n0=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 0/3] nvme threaded interrupt improvements
Date: Tue,  3 Dec 2019 07:22:03 +0900
Message-Id: <20191202222206.2225-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_142209_551147_8ECAA9C6 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, bigeasy@linutronix.de, ming.lei@redhat.com,
 hch@lst.de, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This series is some more experimental nvme interrupt threaded handling that
combines the best of both threaded and non-threaded interrupts, and
polled queues. It appears to test fine on my hardware, as limited as it
currently is.

On the nvme queue spinning, the main difference from the previous
attempt is that I've removed the cond_resched() since it sounds like it
won't do what we expect from the priority 50 SCHED_FIFO context. Instead
it just returns IRQ_HANDLED.

Series is on top of previously posted series here:

 http://lists.infradead.org/pipermail/linux-nvme/2019-December/028260.html

Keith Busch (3):
  nvme/pci: Poll the cq in the primary irq handler
  nvme/pci: Remove use_threaded_interrupts parameter
  nvme/pci: Poll for new completions in irq thread

 drivers/nvme/host/pci.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
