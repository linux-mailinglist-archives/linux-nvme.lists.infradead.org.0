Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989A61C9C9
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 16:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TArLbOcK1peK4CK31lFcghIH3uJ+mT8itdXOvbxN7jA=; b=huTrYC1o8/EYf2
	MxZp7WgUMwTkaASbCLZdjixCtZKuBsrcFbWdyFKR3r8Kcm/TC2LYYvz7z7P9o/wTHlqkCze9bbLdy
	yrd2kgRsWmnJEQN1d8Fgcs9D3mCTtR/UdxIjR8PbEKfOAdFxPrL/+HWrrPhq+ZAGShqv1U/WB1rDP
	5aLxZsupF6kggxCFYRa8YHmUfgLHj7s1/BN6AQijacb4LkjqMH9S2E7WdRntUsN03FAXMZqcNDpA+
	l4+pH3fo/R+/jLKDV3Q1d4c+0zO+DwRXZPqjHKICjh6wZ4yl17Ax6fi8XVCyLNxwGgH/mBz57o+WI
	H58TvyPdygztROBtCNnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXyO-0002bv-6L; Tue, 14 May 2019 14:00:04 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXyG-0002bX-N9
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 13:59:58 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 06:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,468,1549958400"; d="scan'208";a="171588907"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2019 06:59:54 -0700
Date: Tue, 14 May 2019 07:54:34 -0600
From: Keith Busch <kbusch@kernel.org>
To: Adam Carter <adamcarter3@gmail.com>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514135434.GA19837@localhost.localdomain>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
 <20190514052027.GB6294@lst.de>
 <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
 <20190514055832.GA6843@lst.de>
 <CAC=wYCECcfqoDDMcgVj-4dAEUxNpY62vAEMOD8-eGrZK8wOV-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC=wYCECcfqoDDMcgVj-4dAEUxNpY62vAEMOD8-eGrZK8wOV-g@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_065956_768065_D85FA733 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: axboe@fb.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, keith.busch@intel.com,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 04:24:41PM +1000, Adam Carter wrote:
> Ok i've rebooted into 5.1.1 to get the whole thing - see attached.
> 
> IIRC system was not usable without 'iommu=pt'
 
> [  143.347543] sg[0] phys_addr:0x00000003d32e4000 offset:0 length:3072 dma_address:0x00000003d32e4000 dma_length:3072
> [  143.347547] sg[1] phys_addr:0x00000003d32e4c00 offset:3072 length:65536 dma_address:0x00000003d32e4c00 dma_length:65536
> [  143.347551] ------------[ cut here ]------------
> [  143.347552] Invalid SGL for payload:68608 nents:2
> [  143.347585] WARNING: CPU: 2 PID: 1291 at drivers/nvme/host/pci.c:746
> [  143.347586] Modules linked in: cfg80211 rfkill aesni_intel crypto_simd cryptd glue_helper fam15h_power k10temp alx mdio i2c_piix4 ohci_pci ohci_hcd snd_hda_codec_realtek snd_hda_codec_generic snd_hda_codec_hdmi snd_hda_intel snd_hda_codec snd_hwdep snd_hda_core snd_pcm snd_timer sch_fq_codel vboxpci(O) vboxnetadp(O) vboxnetflt(O) vboxdrv(O)
> [  143.347599] CPU: 2 PID: 1291 Comm: AioMgr1-N Tainted: G           O    T 5.1.1-gentoo #1
> [  143.347601] Hardware name: Gigabyte Technology Co., Ltd. To be filled by O.E.M./GA-990FX-GAMING, BIOS NV1 11/03/2015
> [  143.347603] RIP: 0010:nvme_queue_rq+0xa62/0xad0
> [  143.347605] Code: 48 c7 c7 d8 86 bf 9a e8 bc 5b d4 ff 41 8b 97 4c 01 00 00 41 f6 47 1e 04 75 59 41 8b 77 24 48 c7 c7 40 3f 38 9a e8 f0 00 92 ff <0f> 0b 41 bc 0a 00 00 00 e9 ed fd ff ff 48 8b 05 5a b3 3f 01 48 85
> [  143.347606] RSP: 0018:ffffaa9744c8fc10 EFLAGS: 00010282
> [  143.347607] RAX: 0000000000000000 RBX: 0000000000000002 RCX: 0000000000000006
> [  143.347608] RDX: 0000000000000007 RSI: 0000000000000086 RDI: ffff8d3f2ea908d0
> [  143.347609] RBP: 0000000000000000 R08: ffffaa9744c8fac5 R09: 00000000000003d7
> [  143.347610] R10: ffffaa9744c8fac0 R11: 0000000000000000 R12: 0000000000000002
> [  143.347611] R13: ffff8d3f2b69eae8 R14: ffff8d3f2b699158 R15: ffff8d3f2aa7de00
> [  143.347612] FS:  000071daa321e700(0000) GS:ffff8d3f2ea80000(0000) knlGS:0000000000000000
> [  143.347613] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  143.347614] CR2: ffffa10cd510f3c0 CR3: 00000003e3d71000 CR4: 00000000000406e0
> [  143.347616] Call Trace:
> [  143.347620]  __blk_mq_try_issue_directly+0x12c/0x1d8
> [  143.347622]  ? blk_mq_request_issue_directly+0x55/0xf0
> [  143.347624]  ? blk_mq_try_issue_list_directly+0x4c/0xc0
> [  143.347626]  ? blk_mq_sched_insert_requests+0x64/0x88
> [  143.347627]  ? blk_mq_flush_plug_list+0x151/0x190
> [  143.347629]  ? blk_flush_plug_list+0xea/0x110
> [  143.347631]  ? blk_finish_plug+0x24/0x32
> [  143.347633]  ? __x64_sys_io_submit+0xf6/0x168
> [  143.347635]  ? do_syscall_64+0x46/0xd0
> [  143.347638]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [  143.347639] ---[ end trace 7cb8293d6e867b03 ]---

[adding Ming, cc linux-block]

The two elements are physically contiguous, so these should have been
merged as a single element and we wouldn't have had a problem. The
following commit looks suspicious:

  f6970f83ef795 "block: don't check if adjacent bvecs in one bio can be mergeable" 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
