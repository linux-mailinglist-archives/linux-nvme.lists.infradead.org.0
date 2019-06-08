Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61C13A0F3
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 20:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K71r/Le5TTZN48f4U1tIhkWoG50DMwOb+zRiofDJX4I=; b=sqFQYr4hzZLfiE
	Kpsd4tOpx5Gx/n17XEl9/KpAad/8cW2WhuXnuCAzlLpbTAn4/a7iEeuofJfdRQklyZMcX3fQGzPjn
	4k8sUoL7sEZ7XBaesKw/+x4HRsoYwi6l8jiJp3FiNDevxGOCg9OaXifmCV/jW8ZSz4Mlliz6/lAk6
	IombazslsEPTbYZpbNXqnmL0CMi8S/BzpDNs/uvzmF5TKjAGbkPJbyQxUebrpZqvzza82+1IzUQYx
	foWdMNgG16OnU0NI/UIGsPDQAWzA8b1ObuY716SIXs4lv7tHwr8patNVCPCwQskV9oEQokAl6o9Pq
	xyQeZy9ygCpwx01TPw5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZffz-00074s-Lw; Sat, 08 Jun 2019 18:02:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZffr-000744-CY
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 18:02:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id k187so2335537pga.0
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 11:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EMzttiJhu9pxw/YJBP4Q31DpRk3JUC1v3IZlbhIz2Hs=;
 b=HdhqjpumswGjhcn92rEAbraq1EJZvIx4/R611DWIJUSb77LssiJPdBRX5MYXr6aLjH
 Fw3GJnWhyyRWXMDW+4mIi/fZa5S9L/v0ii9RPumyYwlBQsrwM6g0msN9qqgb/8k+OLZ4
 DGjJeAZxB9ltZjh6WpeZEpE4074yfzMgO5Ow/886CFbrfW9Jhjt1o1hAqqxbvnX+VcJC
 UgNXd9yp3U2UUx8Hm/vSeq6no88A6WeB6G3AhN9Q5qAWgTR67/IezjHLH6KK8fOsAwEQ
 UwrA0H0gfHuPt38kYfDo0MOGWrF8AwO4+RFX463grGk1h24kXMJbdwUXO5+DkpuR/8Ws
 S6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EMzttiJhu9pxw/YJBP4Q31DpRk3JUC1v3IZlbhIz2Hs=;
 b=KVy6VuiUqJ/5vtmGO1UFeVc4dGcWu1urJGhzZgcg+2t1yqt4A1qNPJ9HRGXIhkhIqf
 Ot/C7oMJtifhU6X9srDlA/WhgjDjHffDa8h5Gtslw7eiA0UFc8ZylkM9A7Ifa06smkQ7
 upVrCGq5oJupnnAH5ur8DV2cF1U23dChOmk2TYglk6SeOIBWf5cbfOOBoODb3sG60NdY
 23+smwEHMnZ2fs13yOYSXIhVHUeI0+TFPGWOvSJUh5xZkCKAa4YsXbboOffbHNXbIzaC
 /cR/1Q/29xJDm4rmSTajBpygj89RWf2BGjocBC9yOY8c1VDMCeDT94wLF2EvLop+3vmV
 Bfbg==
X-Gm-Message-State: APjAAAUwHC1scAUN5fAyu5s+ZmO/Tup4DxWzF77xJRUecWOMxCFGXa1l
 2N4a+0AS3/5gAKg68FQMaAI0dcwZQfc=
X-Google-Smtp-Source: APXvYqyx07lsgocaT9EFskB4tsnTMsQDKdLmwKuZnW1QHH+pKklG+iJjrzHe2MIZvQdSiCc3T65pMg==
X-Received: by 2002:a63:52:: with SMTP id 79mr8266040pga.381.1560016954243;
 Sat, 08 Jun 2019 11:02:34 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 128sm6212824pff.16.2019.06.08.11.02.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 11:02:33 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme-pci: adjust irq max_vector to avoid WARN()
Date: Sun,  9 Jun 2019 03:02:16 +0900
Message-Id: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110239_454744_83A05C29 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@redhat.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

This patch series is to adjust the max_vector value from the
nvme_setup_irqs() which provides the max_vector before recalculating the
irq set_size in nvme_calc_irq_sets().  The third patch is mainly focused
on avoding the WARN() which might occur in irq_build_affinity_masks()
[1].

This series has been tested with combination of the following criteria:
	1) write_queues=0..128
	1) poll_queues=0..128

Please feel free to let me know if I have thought of something useless
or feel this patch is useless.

Thanks in advance,

[1] WARN messages when modprobe nvme write_queues=32 poll_queues=0:
root@target:~/nvme# nproc
8
root@target:~/nvme# modprobe nvme write_queues=32 poll_queues=0
[   17.925326] nvme nvme0: pci function 0000:00:04.0
[   17.940601] WARNING: CPU: 3 PID: 1030 at kernel/irq/affinity.c:221 irq_create_affinity_masks+0x222/0x330
[   17.940602] Modules linked in: nvme nvme_core [last unloaded: nvme]
[   17.940605] CPU: 3 PID: 1030 Comm: kworker/u17:4 Tainted: G        W         5.1.0+ #156
[   17.940605] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
[   17.940608] Workqueue: nvme-reset-wq nvme_reset_work [nvme]
[   17.940609] RIP: 0010:irq_create_affinity_masks+0x222/0x330
[   17.940611] Code: 4c 8d 4c 24 28 4c 8d 44 24 30 e8 c9 fa ff ff 89 44 24 18 e8 c0 38 fa ff 8b 44 24 18 44 8b 54 24 1c 5a 44 01 d0 41 39 c4 76 02 <0f> 0b 48 89 df 44 01 e5 e8 f1 ce 10 00 48 8b 34 24 44 89 f0 44 01
[   17.940611] RSP: 0018:ffffc90002277c50 EFLAGS: 00010216
[   17.940612] RAX: 0000000000000008 RBX: ffff88807ca48860 RCX: 0000000000000000
[   17.940612] RDX: ffff88807bc03800 RSI: 0000000000000020 RDI: 0000000000000000
[   17.940613] RBP: 0000000000000001 R08: ffffc90002277c78 R09: ffffc90002277c70
[   17.940613] R10: 0000000000000008 R11: 0000000000000001 R12: 0000000000000020
[   17.940614] R13: 0000000000025d08 R14: 0000000000000001 R15: ffff88807bc03800
[   17.940614] FS:  0000000000000000(0000) GS:ffff88807db80000(0000) knlGS:0000000000000000
[   17.940616] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   17.940617] CR2: 00005635e583f790 CR3: 000000000240a000 CR4: 00000000000006e0
[   17.940617] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   17.940618] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   17.940618] Call Trace:
[   17.940622]  __pci_enable_msix_range+0x215/0x540
[   17.940623]  ? kernfs_put+0x117/0x160
[   17.940625]  pci_alloc_irq_vectors_affinity+0x74/0x110
[   17.940626]  nvme_reset_work+0xc30/0x1397 [nvme]
[   17.940628]  ? __switch_to_asm+0x34/0x70
[   17.940628]  ? __switch_to_asm+0x40/0x70
[   17.940629]  ? __switch_to_asm+0x34/0x70
[   17.940630]  ? __switch_to_asm+0x40/0x70
[   17.940630]  ? __switch_to_asm+0x34/0x70
[   17.940631]  ? __switch_to_asm+0x40/0x70
[   17.940632]  ? nvme_irq_check+0x30/0x30 [nvme]
[   17.940633]  process_one_work+0x20b/0x3e0
[   17.940634]  worker_thread+0x1f9/0x3d0
[   17.940635]  ? cancel_delayed_work+0xa0/0xa0
[   17.940636]  kthread+0x117/0x120
[   17.940637]  ? kthread_stop+0xf0/0xf0
[   17.940638]  ret_from_fork+0x3a/0x50
[   17.940639] ---[ end trace aca8a131361cd42a ]---
[   17.942124] nvme nvme0: 7/1/0 default/read/poll queues

Minwoo Im (3):
  nvme-pci: remove unnecessary zero for static var
  nvme-pci: remove queue_count_ops for write,poll_queues
  nvme-pci: adjust irq max_vector using num_possible_cpus()

 drivers/nvme/host/pci.c | 31 ++++++++-----------------------
 1 file changed, 8 insertions(+), 23 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
