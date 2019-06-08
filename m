Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1A63A0F6
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 20:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvJC7GL8rIXvZwAz1rM+KpoT/U8Kh5bxhSCQL8cI1lM=; b=c0VAOiwynIyuzr
	iBAQwM0Ezw5jNOKdXvdlyLN2aMv8L6lbZfla0CnYwTCnpf/hZS+sDWzBj9Co4hfJ7C2ersCLyLSSc
	qDOeeHW5njdLmIRwz32cXvnuzgd8pjiBoZhnlONU8fKZr2Qi6BewkxIIaXVL7xsfeyqG8opE/bl0R
	8f3bqBl60qQKGhM/CVergXIMpD6N3foQDzXKCBjNlGe56Xs6LT9R8bc43N3QGzStg3lE2aDz8NCvA
	mNKq8DQ+LGwHDdjs1mieaWdHKcKNNuxOZYvBhEsLSzl7rDFysDy3X6+h9SYLsF7IBu1udoxAZknlL
	IQUEMddzUPrITIRp8bmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfgc-0007Y6-E2; Sat, 08 Jun 2019 18:03:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZffz-00077F-Ki
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 18:02:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so2830649pgc.6
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 11:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bWDBpviH0+aW7JV5K9f75z4L8q5Gm/7qvKg7M9S88IY=;
 b=MPNQXALcMnbTzljWdPzvd+g0VCuA+eqymllcB1ECZI4YOh/nPa1dB/nGAjza0Br8G+
 ZVA4ZfOUmNWQ/iF84yWhxfqfqcUYWXt7SvaMlIDrCDRl9M6bZZFnUrd8s2OLZl+DGQ2Y
 43VXwPQlHu4j8kFOOHsORSxiB1q1yvX2ce8VCFFmzHccvXjByfMVvBCEFZML4jmFvrSY
 mRQYsr/zEx94XPrdoAXeOS1IZgQc5RBvuD82OBCF+l1+eMfKy7kcgOy57JPplEgjyyaU
 q+wQa3TcLf7UWDa1giBhkQfG1SnIJq2R9uPXQBUJzg/5/5hBPa9YAvA2/sPWmKBbG+wz
 i+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bWDBpviH0+aW7JV5K9f75z4L8q5Gm/7qvKg7M9S88IY=;
 b=XU7gbnvScn8QDwPq3h6ghT43mDfoo50lYHePuCo5hxwxw2N8f3QOoiqOjr7jckgpIH
 RJ7T7ic+VYnS33bkjF1Ejm5XLh2MLSyxytT19prIrvGbp85gtzlUC6ywTM+0I0jEsHXd
 qBzxH3QcKx4906ODTK2uLe0IY/+sHLWsHSFXiaku138mPKcmpSYIIuijj2C12mfHw9IV
 pK6mzod0u+q23rItQo+DKZtq0+oPFIx8m4B6n01t36qhD2IHfhv3T9Wc1oZ3TwfPajzO
 TIaS9hjRjh2guNsIRpoWeptH5HVN4PQPcJ0F3rBZOtJZpX3ajnuoyztYX7mowwgt+R5N
 AMhg==
X-Gm-Message-State: APjAAAU3BzoawKGBKBpxvFXk1pT39MMxX/bySS6CveNmD7xOaZ9q+/xL
 dJnGt5PbjvCvNbftXCnZ71VshklXFZA=
X-Google-Smtp-Source: APXvYqz8jch7js1M/zV6Fg1jMMwM3iAjkSsdZAuPlBn6BU17elZEriVF5Pk4+OIRIb1P058ZBE8q9w==
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr64761974pfd.178.1560016966700; 
 Sat, 08 Jun 2019 11:02:46 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 128sm6212824pff.16.2019.06.08.11.02.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 11:02:46 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] nvme-pci: adjust irq max_vector using num_possible_cpus()
Date: Sun,  9 Jun 2019 03:02:19 +0900
Message-Id: <20190608180219.17523-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
References: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110247_702711_82E79EF1 
X-CRM114-Status: GOOD (  14.57  )
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

If the "irq_queues" are greater than num_possible_cpus(),
nvme_calc_irq_sets() can have irq set_size for HCTX_TYPE_DEFAULT greater
than it can be afforded.
2039         affd->set_size[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;

It might cause a WARN() from the irq_build_affinity_masks() like [1]:
220         if (nr_present < numvecs)
221                 WARN_ON(nr_present + nr_others < numvecs);

This patch prevents it from the WARN() by adjusting the max_vector value
from the nvme_setup_irqs().

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

Cc: Jens Axboe <axboe@fb.com>
Cc: Ming Lei <ming.lei@redhat.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/pci.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 20193b11ab0d..52fe785295cb 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2051,6 +2051,7 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		.priv		= dev,
 	};
 	unsigned int irq_queues, this_p_queues;
+	unsigned int nr_cpus = num_possible_cpus();
 
 	/*
 	 * Poll queues don't need interrupts, but we need at least one IO
@@ -2061,7 +2062,10 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		this_p_queues = nr_io_queues - 1;
 		irq_queues = 1;
 	} else {
-		irq_queues = nr_io_queues - this_p_queues + 1;
+		if (nr_cpus < nr_io_queues - this_p_queues)
+			irq_queues = nr_cpus + 1;
+		else
+			irq_queues = nr_io_queues - this_p_queues + 1;
 	}
 	dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;
 
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
