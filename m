Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF27810D36B
	for <lists+linux-nvme@lfdr.de>; Fri, 29 Nov 2019 10:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9OPyDnSegSf0KvMBNwusjnkswNfqWtO6RdL57sFwts=; b=bBB15p8bQe08xJ
	jxyXMc0ttTepZVCbWZQWZWUiE9ulc7ZM2krU2IuA+ciFsntpms07TwxlEN16qmTt/UDR9nhgDVISj
	CSXGG4QjjlVL2C4Xe57zd+PEKb8LVebpElw114HrOBG9Cjk80ndDOATiDNRYKKR2nTp3KEcn/UcIv
	ExGj7t2DsHwzYL5yTWvCNyRwbwcS69QC512atzc9dss+3b15N6ELH6yok5mOQ4bYY3LVR2IDGeIsr
	y3Lwbej9UM8VgesNpa4uDbatIK61GwlWEb+3ZR/Cf2Ab9oVQ58YmYwdjAALSFtPQ+VVQ5tBJz9Mo7
	cG7l9A7NHNgjf5VDFPgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacrO-0000gh-LK; Fri, 29 Nov 2019 09:46:46 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacrK-0000gB-Lz
 for linux-nvme@lists.infradead.org; Fri, 29 Nov 2019 09:46:43 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iacrI-0002HH-Ta; Fri, 29 Nov 2019 10:46:40 +0100
Date: Fri, 29 Nov 2019 10:46:40 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191129094640.6fq6wcxmfi4fwnlw@linutronix.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127175824.1929-1-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_014642_863061_78D51E9B 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-11-28 02:58:20 [+0900], Keith Busch wrote:
> Threaded interrupts allow the device to continue sending interrupt
> messages while the driver is handling the previous notification. This
> can cause a significant amount of CPU cycles unnecessarily spent in hard
> irq context, and potentially triggers spurious interrupt detection to
> disable the nvme interrupt.

Thank you for looking into this.
To be clear: the "spurious interrupt detector" won't do a thing if you
never return IRQ_NONE. As long as you return IRQ_HANDLED, everything is
fine.

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
