Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D2290198
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 14:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-ID:References:
	In-Reply-To:From:To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORtk2iT06ZvNokBSqAYFJdEIkdg9axhrz97gpWYKOgU=; b=CBf0FmJIjSo9Dl
	0LFeuQ2uybE1F+Ln0xk4PSW6/etVQ9+72RumjgBK1pfK3kfjqMY7U1B+XExlj6TAj0MwdlT2crsr5
	gpTAznoQ+3hWz7BfmjcuEEfPFVPWjonnVsABI3SUhdLbmHNnFNvCcw2Jwv9RLiIPQp0HglpR6cW57
	EH2nhokrqbxcjcWCaH+h7I4OHoZrjfzoUtBx4EEsyROCZ1B+6ZW+yLC2BIyLY7/DqVb/G2j1S6Fqg
	vHFiCDpPs3+XQE6W0DfA72L3qwMH6Wf22O+8kcLPCx1dTmtE6/ylyQExHYVH9zsLWE7QFnlSXLOk5
	t6BoiQblQnYjS5a3sgow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybNn-0003sI-Qs; Fri, 16 Aug 2019 12:31:03 +0000
Received: from mail.fireflyinternet.com ([109.228.58.192]
 helo=fireflyinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybNK-0003Ub-CR
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 12:30:36 +0000
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18162673-1500050 for multiple; Fri, 16 Aug 2019 13:30:30 +0100
MIME-Version: 1.0
To: Christoph Hellwig <hch@lst.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816122644.GA21797@lst.de>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
Message-ID: <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH] Revert "nvme-pci: use host managed power state for
 suspend"
Date: Fri, 16 Aug 2019 13:30:29 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_053034_734544_407105E6 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.228.58.192 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Quoting Christoph Hellwig (2019-08-16 13:26:44)
> Please, report the actual problem.  Blindly reverting a patch without
> even an explanation of your regressions is not the way to do it.

As stated, the system doesn't suspend.

If you would like to wait, you will get test results from our CI
giving the current failed state and the outcome of the patch.
-Chris

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
