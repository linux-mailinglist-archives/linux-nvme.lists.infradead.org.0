Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FBD119A9
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 15:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPQ5BrWYH0eXU6jyCdYvmNh64ZMJvKBL13UpelBj2Fw=; b=OFLaPcpHpkkos3
	YhCjEQd6zFveb8oG9JcSnjs2sOn6P2knDEXVbaKSAUUyngbgRLRTET12Ye8JUYjOPNYrwZ2BYPc2k
	OIjTLRpxKgcYKfKrX4wKn/5yLkG0qIoVfBTSJDYK2bZMOe7K+gE+LkS837jXElBFyrizcHvr0Tlu2
	Mu8G7PwerrykGKKKN3v21tygCW2Cn8IehTqMuU+UttNIxe4E444fpFIa3Sh3Y/Rq38IZd0WF3LHZ7
	NiegazkWYgQpop4E8IkKMwGtS7OmtxXiUrlTikzldI+tFY6wOWHFSGslTX84Pubznai4BeTcrOV5J
	taXFDGtsrsPFoqFtE8Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBMs-0005oM-0M; Thu, 02 May 2019 13:03:18 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBMn-0005nQ-F3
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 13:03:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="147550129"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 06:03:07 -0700
Date: Thu, 2 May 2019 06:57:23 -0600
From: Keith Busch <keith.busch@intel.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
Message-ID: <20190502125722.GA28470@localhost.localdomain>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_060313_514392_B15502F9 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 05:59:17PM +0900, Akinobu Mita wrote:
> This enables to capture snapshot of controller information via device
> coredump machanism, and it helps diagnose and debug issues.
> 
> The nvme device coredump is triggered before resetting the controller
> caused by I/O timeout, and creates the following coredump files.
> 
> - regs: NVMe controller registers, including each I/O queue doorbell
>         registers, in nvme-show-regs style text format.

You're supposed to treat queue doorbells as write-only. Spec says:

  The host should not read the doorbell registers. If a doorbell register
  is read, the value returned is vendor specific.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
