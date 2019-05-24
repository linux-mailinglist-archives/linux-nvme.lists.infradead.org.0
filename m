Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9FF29B7D
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 17:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TdZ55tsfRNnNZsL7gkLf4P8B/CJFdkgqD2/BX1SQfk=; b=UAHDm3mDuQvPHo
	dKS96q7FvTMogUB+Gy4cD9knSZ1EsHMf07Ssj09+jtBzNmLYUoH1BWzT17XSMhd2ylxWdZa2i5e4w
	y3AyhUfhuiDTrESHc4Ydyb76GsrJ3BVd6g8itk570/gXkrskYZkMJ4j3u9AIdTSmgh56kG3wnCUcP
	jO67cONxKcCUCHCjLEy5k5Er9aXnQ7XpgRyK8s57qK85isLbWcgQAZAe9vlEhpJWwzFW0EA6X0b3V
	aKsuaEwwkOLpGHVitgj8BIAJs8LNXBiCilgYXtT4U26fVfILXqH3Xt0z7EmfFj2kv2+4enNIg5KYr
	moAMGVprDtUA2lLsnAmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCRr-00033w-LJ; Fri, 24 May 2019 15:49:35 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCRm-00033F-IC
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 15:49:31 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 08:49:29 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 24 May 2019 08:49:28 -0700
Date: Fri, 24 May 2019 09:44:29 -0600
From: Keith Busch <kbusch@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Subject: Re: [5.2-rc1 regression]: nvme vs. hibernation
Message-ID: <20190524154429.GE15192@localhost.localdomain>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_084930_615509_F96A2E5E 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 05:22:30PM +0200, Jiri Kosina wrote:
> Hi,
> 
> Something is broken in Linus' tree (4dde821e429) with respec to 
> hibernation on my thinkpad x270, and it seems to be nvme related.
> 
> I reliably see the warning below during hibernation, and then sometimes 
> resume sort of works but the machine misbehaves here and there (seems like 
> lost IRQs), sometimes it never comes back from the hibernated state.
> 
> I will not have too much have time to look into this over weekend, so I am 
> sending this out as-is in case anyone has immediate idea. Otherwise I'll 
> bisect it on monday (I don't even know at the moment what exactly was the 
> last version that worked reliably, I'll have to figure that out as well 
> later).

I believe the warning call trace was introduced when we converted nvme to
lock-less completions. On device shutdown, we'll check queues for any
pending completions, and we temporarily disable the interrupts to make
sure that queues interrupt handler can't run concurrently.

On hibernation, most CPUs are offline, and the interrupt re-enabling
is hitting this warning that says the IRQ is not associated with any
online CPUs.

I'm sure we can find a way to fix this warning, but I'm not sure that
explains the rest of the symptoms you're describing though.
 
 
>  WARNING: CPU: 0 PID: 363 at kernel/irq/chip.c:210 irq_startup+0xff/0x110
>  Modules linked in: bnep ccm af_packet fuse 8021q garp stp mrp llc tun ip6table_mangle ip6table_filter ip6_tables iptable_mangle xt_DSCP xt_tcpudp xt_conntrac
>   snd_hda_core aes_x86_64 glue_helper crypto_simd snd_pcm cryptd e1000e ptp pcspkr joydev pps_core snd_timer i2c_i801 cfg80211 mei_me mei intel_pch_thermal th
>  CPU: 0 PID: 363 Comm: kworker/u8:4 Not tainted 5.1.0-08122-ga2d635decbfa #9
>  Hardware name: LENOVO 20K5S22R00/20K5S22R00, BIOS R0IET38W (1.16 ) 05/31/2017
>  Workqueue: events_unbound async_run_entry_fn
>  RIP: 0010:irq_startup+0xff/0x110
>  Code: f6 4c 89 e7 e8 92 34 00 00 85 c0 75 21 4c 89 e7 31 d2 4c 89 ee e8 e1 cc ff ff 48 89 df e8 89 fe ff ff 41 89 c4 e9 37 ff ff ff <0f> 0b eb b0 0f 0b eb ac 66 0f 1f 84 00 00 
>  44 00 00
>  RSP: 0018:ffffa05100f13bd0 EFLAGS: 00010002
>  RAX: 0000000000000200 RBX: ffff9168e360ec00 RCX: 0000000000000200
>  RDX: 0000000000000200 RSI: ffffffff9f383600 RDI: ffff9168e360ec18
>  RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000007
>  R10: 000000007a6a7b55 R11: 0000000000000000 R12: 0000000000000001
>  R13: ffff9168e360ec18 R14: ffff9168e6c97000 R15: ffff9168df76c000
>  FS:  0000000000000000(0000) GS:ffff9168e7280000(0000) knlGS:0000000000000000
>  CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>  CR2: 00007fc942c4bf60 CR3: 00000001f1210002 CR4: 00000000003606e0
>  Call Trace:
>   ? __irq_get_desc_lock+0x4e/0x90
>   enable_irq+0x39/0x70
>   nvme_poll_irqdisable+0x3a3/0x470 [nvme]
>   __nvme_disable_io_queues.isra.42+0x16a/0x1d0 [nvme]
>   nvme_dev_disable+0x17e/0x1e0 [nvme]
>   ? pci_pm_poweroff+0xf0/0xf0
>   nvme_suspend+0x13/0x20 [nvme]
>   pci_pm_freeze+0x52/0xd0
>   dpm_run_callback+0x6b/0x2e0
>   __device_suspend+0x147/0x630
>   ? dpm_show_time+0xe0/0xe0
>   async_suspend+0x1a/0x90
>   async_run_entry_fn+0x39/0x160
>   process_one_work+0x1f0/0x5b0
>   ? process_one_work+0x16a/0x5b0
>   worker_thread+0x4c/0x3f0
>   kthread+0x103/0x140
>   ? process_one_work+0x5b0/0x5b0
>   ? kthread_bind+0x10/0x10
>   ret_from_fork+0x3a/0x50
>  irq event stamp: 381230
>  hardirqs last  enabled at (381229): [<ffffffff9e90910d>] _raw_spin_unlock_irqrestore+0x4d/0x70
>  hardirqs last disabled at (381230): [<ffffffff9e908fa4>] _raw_spin_lock_irqsave+0x24/0x60
>  softirqs last  enabled at (381104): [<ffffffffc0eeb734>] __iwl_mvm_mac_stop+0xa4/0x1a0 [iwlmvm]
>  softirqs last disabled at (381102): [<ffffffffc0eeeda6>] iwl_mvm_async_handlers_purge+0x26/0xa0 [iwlmvm]

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
