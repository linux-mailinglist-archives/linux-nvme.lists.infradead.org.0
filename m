Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED2C10FAE3
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 10:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSRbzZhIBYUk4NMisv82oYeH7MCNUnBesbRz/fr7LIY=; b=A6WTRW7Pg6RL9I
	RbWVFiYo7tl3j6P3zXx6hG5M2KoqOnKV1+jfyEoSk6XvDd1eFOIz3CVkyMf0S5JQMujmJdr9QHEsw
	40zW1M2hWHMWtMl3xP63sPQk2wliT1FY5msEkFLJvgLcVcDlIIIGScya4oHa9fpU4B2pvRnJq+i6d
	ngynLNRZcStQWqaRH8x/oyW71p+eQ6Ux9XxozfuifazgZQKBrP1ai9AHvdgup++V98ti2ZhqfqF1C
	tEnLrBX2JbySESp+ZaBbLlxKWrGvzzMRvCcqwCegemuKVt7PMDqhPKj/2fEe+XMCbi2TdTSWdIeko
	9OzGVSeCkxVa7ZulGn4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4eC-0001xQ-Pm; Tue, 03 Dec 2019 09:39:08 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4e8-0001wu-EJ
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 09:39:05 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1ic4e4-0007Wm-A6; Tue, 03 Dec 2019 10:39:00 +0100
Date: Tue, 3 Dec 2019 10:39:00 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH 1/3] nvme/pci: Poll the cq in the primary irq handler
Message-ID: <20191203093900.r4lue7juxw76x6fa@linutronix.de>
References: <20191202222206.2225-1-kbusch@kernel.org>
 <20191202222206.2225-2-kbusch@kernel.org>
 <20191203075046.GF23881@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203075046.GF23881@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_013904_622991_A67A8147 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, tglx@linutronix.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-12-03 08:50:46 [+0100], Christoph Hellwig wrote:
> On Tue, Dec 03, 2019 at 07:22:04AM +0900, Keith Busch wrote:
> > The nvme threaded interrupt handler reduces CPU time spent in hard irq
> > context, but waking it increases latency for low queue depth workloads.
> > 
> > Poll the completion queue once from the primary handler and wake the
> > thread only if more completions remain after.
> 
> How is this going to work with -rt, which wants to run all actual
> interrupt work in the irq thread?

It will thread both handlers.

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
