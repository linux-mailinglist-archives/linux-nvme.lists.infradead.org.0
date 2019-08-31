Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0EA450B
	for <lists+linux-nvme@lfdr.de>; Sat, 31 Aug 2019 17:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ymt99i3q6jlyFiS5SGYSBYoddY/OP3IQ6Ki2bqJPKTQ=; b=XZ3YEyKobSnXoQ
	JBhV2AcwofNK1TCkWRqW1CeX+cyC3yUqn0fVoHcXRZrW43yHWLtazALvwjmi9ZQ76xq6xXXflc84D
	xseDqKVFT9949RmGm7v2xddFThkvqC8mtIUo745EAeaYbRSOTvlC/YDLrtvECwEW843EPFX/wwLB4
	1V4+iLN6LymSEqFdCCPMgDNCtbqqHFJW/tFKpKOigBQcGgy7zuQPcqTAb9KNkCpVX43impHv+NhFG
	PrQxkdkbd2RGyYW7zCUls49YuQ0lMYbuVv6yrlTglZdopgIOO6hCiTe049mB3BOMASioqRvMnVdUF
	33ETGLcYMtuTDpoFvEIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i45LH-0003aV-0w; Sat, 31 Aug 2019 15:31:07 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i45L2-0003Zp-3M
 for linux-nvme@lists.infradead.org; Sat, 31 Aug 2019 15:30:53 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Aug 2019 08:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,451,1559545200"; d="scan'208";a="265606221"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 31 Aug 2019 08:30:50 -0700
Date: Sat, 31 Aug 2019 09:29:11 -0600
From: Keith Busch <keith.busch@intel.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH] nvme-core: Fix subsystem instance mismatches
Message-ID: <20190831152910.GA29439@localhost.localdomain>
References: <20190831000139.7662-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831000139.7662-1-logang@deltatee.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_083052_182881_79EDD737 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 06:01:39PM -0600, Logan Gunthorpe wrote:
> To fix this, assign the subsystem's instance based on the instance
> number of the controller's instance that first created it. There should
> always be fewer subsystems than controllers so the should not be a need
> to create extra subsystems that overlap existing controllers.

The subsystem's lifetime is not tied to the controller's. When the
controller is removed and releases its instance, the next controller
to take that available instance will create naming collisions with the
subsystem still using it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
