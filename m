Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5873629AEE
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 17:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=piJfDYN8jSvL9MDzoL3DlKoxFFVqgOzVkkRe21Oe0Uc=; b=dEGZUihmeTvot+
	f90cv/eiPT+PRwC9ywbqoWz1qxQr50IUZAMGwoPPXb0Vx90qfigLAT6zIoxKXLInOWewExXC0SG9m
	/VVDW+klPQ6X2SgTkafvxNkgT1hXp1qZqEKY8pbfWN2EaMmj3Wb5yZJvNTLpz02tE1Cal7ZkylhcP
	H58rUzOA3eIkn0tAai+yxmE9O+h39lrma/OPcLzXnvtPzqIB43sTe4m+8wPhldbv7QOzwyc5DSd6t
	JzQeIJqvuVgdy9WCjEbAVYUC5M2jE7enMUap22zPDGxy5faCngn0oL79vTGJid2ZaCi6UMj6GB28R
	f6/AJ1CmziL/0bEQqXrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUC1p-0002a0-W3; Fri, 24 May 2019 15:22:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUC1j-0002Wv-C5
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 15:22:36 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB1F920856;
 Fri, 24 May 2019 15:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558711354;
 bh=ViTpW6GI0CL9YOoouzWE0UuX5Qv63XxO/4tkNZStyQw=;
 h=Date:From:To:cc:Subject:From;
 b=BcDtMGm8rMx+VJmzCszxg5mUqfg0vWC2dhlCKQsG9FeBoG3OwUzQKi3g1v1dR+epD
 dpaJIO458pJ65k+1IiLQi3uZiOj39Xj49r7+tkkeAehxykedr5uVLmaORuyjSs52gm
 3XWAaGfbOgACCVQRfPHZ+8W67dRkISz0sMH8iFfE=
Date: Fri, 24 May 2019 17:22:30 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>
Subject: [5.2-rc1 regression]: nvme vs. hibernation
Message-ID: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_082235_478134_6E60A337 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, linux-kernel@vger.kernel.org,
 Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

Something is broken in Linus' tree (4dde821e429) with respec to 
hibernation on my thinkpad x270, and it seems to be nvme related.

I reliably see the warning below during hibernation, and then sometimes 
resume sort of works but the machine misbehaves here and there (seems like 
lost IRQs), sometimes it never comes back from the hibernated state.

I will not have too much have time to look into this over weekend, so I am 
sending this out as-is in case anyone has immediate idea. Otherwise I'll 
bisect it on monday (I don't even know at the moment what exactly was the 
last version that worked reliably, I'll have to figure that out as well 
later).




 WARNING: CPU: 0 PID: 363 at kernel/irq/chip.c:210 irq_startup+0xff/0x110
 Modules linked in: bnep ccm af_packet fuse 8021q garp stp mrp llc tun ip6table_mangle ip6table_filter ip6_tables iptable_mangle xt_DSCP xt_tcpudp xt_conntrac
  snd_hda_core aes_x86_64 glue_helper crypto_simd snd_pcm cryptd e1000e ptp pcspkr joydev pps_core snd_timer i2c_i801 cfg80211 mei_me mei intel_pch_thermal th
 CPU: 0 PID: 363 Comm: kworker/u8:4 Not tainted 5.1.0-08122-ga2d635decbfa #9
 Hardware name: LENOVO 20K5S22R00/20K5S22R00, BIOS R0IET38W (1.16 ) 05/31/2017
 Workqueue: events_unbound async_run_entry_fn
 RIP: 0010:irq_startup+0xff/0x110
 Code: f6 4c 89 e7 e8 92 34 00 00 85 c0 75 21 4c 89 e7 31 d2 4c 89 ee e8 e1 cc ff ff 48 89 df e8 89 fe ff ff 41 89 c4 e9 37 ff ff ff <0f> 0b eb b0 0f 0b eb ac 66 0f 1f 84 00 00 
 44 00 00
 RSP: 0018:ffffa05100f13bd0 EFLAGS: 00010002
 RAX: 0000000000000200 RBX: ffff9168e360ec00 RCX: 0000000000000200
 RDX: 0000000000000200 RSI: ffffffff9f383600 RDI: ffff9168e360ec18
 RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000007
 R10: 000000007a6a7b55 R11: 0000000000000000 R12: 0000000000000001
 R13: ffff9168e360ec18 R14: ffff9168e6c97000 R15: ffff9168df76c000
 FS:  0000000000000000(0000) GS:ffff9168e7280000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 00007fc942c4bf60 CR3: 00000001f1210002 CR4: 00000000003606e0
 Call Trace:
  ? __irq_get_desc_lock+0x4e/0x90
  enable_irq+0x39/0x70
  nvme_poll_irqdisable+0x3a3/0x470 [nvme]
  __nvme_disable_io_queues.isra.42+0x16a/0x1d0 [nvme]
  nvme_dev_disable+0x17e/0x1e0 [nvme]
  ? pci_pm_poweroff+0xf0/0xf0
  nvme_suspend+0x13/0x20 [nvme]
  pci_pm_freeze+0x52/0xd0
  dpm_run_callback+0x6b/0x2e0
  __device_suspend+0x147/0x630
  ? dpm_show_time+0xe0/0xe0
  async_suspend+0x1a/0x90
  async_run_entry_fn+0x39/0x160
  process_one_work+0x1f0/0x5b0
  ? process_one_work+0x16a/0x5b0
  worker_thread+0x4c/0x3f0
  kthread+0x103/0x140
  ? process_one_work+0x5b0/0x5b0
  ? kthread_bind+0x10/0x10
  ret_from_fork+0x3a/0x50
 irq event stamp: 381230
 hardirqs last  enabled at (381229): [<ffffffff9e90910d>] _raw_spin_unlock_irqrestore+0x4d/0x70
 hardirqs last disabled at (381230): [<ffffffff9e908fa4>] _raw_spin_lock_irqsave+0x24/0x60
 softirqs last  enabled at (381104): [<ffffffffc0eeb734>] __iwl_mvm_mac_stop+0xa4/0x1a0 [iwlmvm]
 softirqs last disabled at (381102): [<ffffffffc0eeeda6>] iwl_mvm_async_handlers_purge+0x26/0xa0 [iwlmvm]

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
