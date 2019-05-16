Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCD20AEA
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 17:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYqef5oe+aiuWNpLuuRy8MtdmPyOjhsLZT67igR2E8E=; b=bXSadRg12CBuHz
	CxAQlS5IkgYq1CcHT57JkfduDpCyPo5qgINitcNvJ66Y28duTb66LCE+OVAhDQWZNOEfTSM5CV69h
	68fD4LD4dFWLyv4r5kCwkZiO0mVw+B0qMKL5FEyi67vJEEhff0pluRSYmD1qnVWCz5ZoQ8fw+rGiC
	JgGRv7gPvQ+eHVO4P+aZqhvs3YVm4CeH3WUvffvm0Zbiu+MuSHBqsZ1MitIFUyugJA33bBiHIaR7t
	Uyl05z0IxYFNcMPusf9HwX3HwNas/4tvuUKldMvGQLQXS4Wcxx7hvGTSBmOvgs0fNxxjA+WgLMfSg
	G5rbodH/hGbFTP6qJOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRI7p-0007vT-VC; Thu, 16 May 2019 15:16:53 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRI7l-0007v0-Rw
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 15:16:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 08:16:46 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 16 May 2019 08:16:45 -0700
Date: Thu, 16 May 2019 09:11:30 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Subject: Re: Issue with namespace delete
Message-ID: <20190516151130.GB23416@localhost.localdomain>
References: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_081649_924699_2A981E87 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 06:23:53PM -0700, Heitke, Kenneth wrote:
> I have been doing some namespace testing with Ubuntu 18.04 (kernel 
> 4.15.0-43-generic). I'm running into an issue with namespace deletes 
> where the driver seems to hang.
> 
> [  363.484013]  synchronize_srcu+0x57/0xdc
> [  363.484016]  nvme_ns_remove+0xcc/0x180 [nvme_core]
> [  363.484018]  nvme_remove_invalid_namespaces+0xb1/0xe0 [nvme_core]
> [  363.484020]  nvme_user_cmd+0x282/0x370 [nvme_core]
> [  363.484022]  nvme_ioctl+0xd0/0x1d0 [nvme_core]
> [  363.484024]  blkdev_ioctl+0x3b8/0x980
> [  363.484025]  block_ioctl+0x3d/0x50
> [  363.484027]  do_vfs_ioctl+0xa8/0x620
> [  363.484028]  ? ptrace_notify+0x5b/0x90
> [  363.484030]  ? syscall_trace_enter+0x7b/0x2c0
> [  363.484031]  SyS_ioctl+0x7a/0x90
> [  363.484032]  do_syscall_64+0x73/0x130
> [  363.484033]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
> 
> I don't understand RCUs very well but I found the following in the 
> documentation
> 
> "Note that it is illegal to call synchronize_srcu from the corresponding 
> SRCU read-side critical section; doing so will result in deadlock."
> 
> I noticed in the driver that when multi-path is enabled, the context for 
> ioctl calls would be in a read-side critical section 
> (nvme_get_ns_from_disk) and I believe that the synchronize_srcu() call 
> is made in the same context.

Yeah, you're right.

You may have avoided this if you send the ioctl through the controller
char dev rather than the namespace block dev handle.

I'm not sure what the best way to fix this might be right now.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
