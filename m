Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0144338EA
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 21:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4mS/h3rnTuXTZAAiJl6gB4bxCq7E5D5/y74S5D2+9U=; b=XlNUFwz4UFPZp0
	pebxtlnsWXKXd+ntaYAnwkT06vLpX63Ssig9jpWKgOnZ3UsmA/02F+2g3arhJ4rLeRcmJlX2P2ztJ
	ilwbKI70+B4P2+SaniB+nJOMJTpQRJnqhNA2ah+dPOTvBwMCO2h56njRJgHOvRgDK2R/TJC55FMdG
	Rkl82n07m8Fi18jPAfXOUB5SsnKZTSBk9yP8juN5b1NjNLsGio7Q45hCKnjRCN+rH2UZj/h26ENJy
	NJ3VajjSXTXz4+OZrICJDtfAMnGPpN5GjIJecmyuf+CH5kVll8sL+wxWLzjKcpmk3B1C1qLHFZ9Sf
	pxFa+UlIIOQILNDO1W4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsOB-0006sR-5S; Mon, 03 Jun 2019 19:12:59 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsO6-0006s7-J0
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 19:12:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 12:12:52 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2019 12:12:52 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 3 Jun 2019 12:12:52 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.25]) with mapi id 14.03.0415.000;
 Mon, 3 Jun 2019 12:12:51 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Oops when disconnecting from inaccessible subsystem
Thread-Topic: Oops when disconnecting from inaccessible subsystem
Thread-Index: AQHVGkBWbHKBlcmXdUiXDO2S2CDgzw==
Date: Mon, 3 Jun 2019 19:12:51 +0000
Message-ID: <3332C781-D747-42FC-8B1F-B4748961253C@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <B47DB207B15EF24382B8F0BBCA692799@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_121254_680239_3DD72DFC 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

I see a 100% reproducible kernel oops when trying to disconnect from an inaccessible subsystem.  This was tested with 5.2-rc2 + Sagi's "fix queue mapping when queue count is limited" patches.

Failure is seen when using either the kernel or SPDK fabrics target.  So far I've only tested with rdma.  Simply connect to a subsystem, remove the subsystem from the target, and then try to disconnect.

Thanks,

-Jim


[ 7011.990205] BUG: unable to handle page fault for address: ffffe82ad9725880
[ 7011.993043] #PF: supervisor instruction fetch in kernel mode
[ 7011.995377] #PF: error_code(0x0011) - permissions violation
[ 7011.997677] PGD 6681f8067 P4D 6681f8067 PUD 6681f7067 PMD 800000067f6000e3
[ 7012.000553] Oops: 0011 [#1] SMP PTI
[ 7012.001992] CPU: 21 PID: 4964 Comm: nvme Tainted: G          I       5.2.0-rc2+ #29
[ 7012.005152] Hardware name: Intel Corp. GRANTLEY/GRANTLEY, BIOS GRNDCRB1.86B.0048.R00.1503191102 03/19/2015
[ 7012.009143] RIP: 0010:0xffffe82ad9725880
[ 7012.010759] Code: ad de 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff ff 01 00 00 00 00 00 00 00 00 00 00 00 <00> 00 00 00 00 ff ff 02 00 01 00 00 00 00 ad de 00 02 00 00 00 00
[ 7012.018519] RSP: 0018:ffffad0c895e3db0 EFLAGS: 00010246
[ 7012.020676] RAX: ffffe82ad9725880 RBX: ffff983c48296000 RCX: 0000000000000001
[ 7012.023620] RDX: 0000000000000040 RSI: 0000000c48d1ca00 RDI: ffff983c44fa0880
[ 7012.026566] RBP: ffff984118778810 R08: 0000000000000000 R09: ffffffffac43e100
[ 7012.029511] R10: ffff984112c2c000 R11: 0000000000000001 R12: ffff98423d34a008
[ 7012.032457] R13: 0000000000000000 R14: 0000000000000024 R15: ffff9842639773a0
[ 7012.035404] FS:  00007f1536a1c780(0000) GS:ffff9842676c0000(0000) knlGS:0000000000000000
[ 7012.038744] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 7012.041115] CR2: ffffe82ad9725880 CR3: 0000000b19aac006 CR4: 00000000001606e0
[ 7012.044061] Call Trace:
[ 7012.045100]  ? nvme_rdma_exit_request+0x51/0xa0 [nvme_rdma]
[ 7012.047403]  ? blk_mq_exit_hctx+0x5a/0xe0
[ 7012.049056]  ? blk_mq_exit_queue+0xdc/0xf0
[ 7012.050746]  ? blk_cleanup_queue+0x9a/0xc0
[ 7012.052432]  ? nvme_rdma_destroy_io_queues+0x52/0x60 [nvme_rdma]
[ 7012.054911]  ? nvme_rdma_shutdown_ctrl+0x3e/0x80 [nvme_rdma]
[ 7012.135288]  ? nvme_do_delete_ctrl+0x4d/0x80 [nvme_core]
[ 7012.216535]  ? nvme_sysfs_delete+0x42/0x60 [nvme_core]
[ 7012.298498]  ? kernfs_fop_write+0xff/0x180
[ 7012.379378]  ? vfs_write+0xb0/0x190
[ 7012.458712]  ? ksys_write+0x5c/0xe0
[ 7012.537044]  ? do_syscall_64+0x4f/0x130
[ 7012.614310]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[ 7012.693035] Modules linked in: nvme_rdma nvme_fabrics nvmet_rdma nvmet null_blk mlx5_ib rdma_ucm rdma_cm configfs iw_cm ib_uverbs ib_umad ib_cm ib_core uio_pci_generic uio binfmt_misc intel_rapl sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass ipmi_ssif input_leds crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel aes_x86_64 crypto_simd cryptd glue_helper mei_me mei lpc_ich ioatdma wmi ipmi_si ipmi_devintf ipmi_msghandler iscsi_tcp libiscsi_tcp libiscsi scsi_transport_iscsi nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_tables x_tables autofs4 raid10 raid456 async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq libcrc32c raid1 raid0 multipath linear hid_generic usbhid ixgbe mlx5_core igb ahci mdio e1000e hid nvme libahci dca nvme_core i2c_algo_bit
[ 7013.340727] CR2: ffffe82ad9725880
[ 7013.444045] ---[ end trace 55a6d7f809307c7b ]---
[ 7013.549019] RIP: 0010:0xffffe82ad9725880
[ 7013.652818] Code: ad de 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff ff 01 00 00 00 00 00 00 00 00 00 00 00 <00> 00 00 00 00 ff ff 02 00 01 00 00 00 00 ad de 00 02 00 00 00 00
[ 7013.873038] RSP: 0018:ffffad0c895e3db0 EFLAGS: 00010246
[ 7013.984597] RAX: ffffe82ad9725880 RBX: ffff983c48296000 RCX: 0000000000000001
[ 7014.096667] RDX: 0000000000000040 RSI: 0000000c48d1ca00 RDI: ffff983c44fa0880
[ 7014.208045] RBP: ffff984118778810 R08: 0000000000000000 R09: ffffffffac43e100
[ 7014.318879] R10: ffff984112c2c000 R11: 0000000000000001 R12: ffff98423d34a008
[ 7014.429180] R13: 0000000000000000 R14: 0000000000000024 R15: ffff9842639773a0
[ 7014.538388] FS:  00007f1536a1c780(0000) GS:ffff9842676c0000(0000) knlGS:0000000000000000
[ 7014.648293] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 7014.757664] CR2: ffffe82ad9725880 CR3: 0000000b19aac006 CR4: 00000000001606e0

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
