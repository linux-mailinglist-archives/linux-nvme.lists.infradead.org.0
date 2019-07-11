Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C879F65E26
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 19:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WPgIfMtkz1XdNPLpGh6cAigg8/ro57goZtXb0AZxIM4=; b=MuC
	KH27aQvJfNlEVm+FWvUEA6QHrd9LclIEyOj6jmhOgClJ8c+Xv/z61BLx/FTPzgPEfO0VRd9BtGPay
	Drsx6N36obSPKRw09zX7OmfhIuTHEIkoJ8wvLcTG3aeEPrlrsbNhefYuhZ0Gjpw9MwtADmGZRRhlK
	8J4IGlF2dY2rUeoW6qz7eA1m6buqlL5QKo/dBXNl0OwO53N2omAyqbsOHUzuI02YCq7Z9+8bw0ARt
	4XXIm96WkD1pTiSHUt5uAVfb8xiQEhyHxSQqjcDQ4zp48Ofr/NtdEsQI0QRh6HMhXJAm8njZN5VEb
	S4ZNcw3I9hLrxz6zWjUz19JvjKdfUWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcVP-0006B1-Cb; Thu, 11 Jul 2019 17:05:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcVF-0005hh-Sh
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 17:05:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so3251026pgl.2
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 10:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PUWL9bZLMdYKdkcEf6PM7INsQDfk/1mdx4JEV1jB4iU=;
 b=Z75Igbbkao7eXi9klkU4zY32i8Fc0M1esRJ6ujPCUXXQPfK5z18FuEcxVjKkFofQnH
 DFdZfZ1BWNgV84lr3dsj3xCsoYcHBMbpbEObDMC8CZX/ketCxnDZLyHGVfEr9PnF58+1
 rxBpKeiFkyv1v9RABbFgX19jjvviqQibkOq7Zz6VMicaZCcoL8vmknHrCX9uJqSTuJ1+
 Le/11GVIzOrmYOzjOpu3Scjqsc3jNjfh42W+4kKngQbcFzZVX1UKsfPyQsSvV9HuG9RO
 Lzmi9ZKF7icnKMJbuNwPZ1VIvoByPu+/+6OjLmY6D2p4nkREL7AcQVGtVE06jggTGnnU
 N5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PUWL9bZLMdYKdkcEf6PM7INsQDfk/1mdx4JEV1jB4iU=;
 b=KCXOqnr4WJXK8GYiGem79U4egedA02vnNlXn94/ofROQ2wp0PbBV/hrDc6EeXnIiqQ
 2Viyd6mOikV7n3Go5udMFc+OP9sgvzy7MeItoWlcCRpYuTQcK61rB/4qVGqYbYfrUf0n
 2X+oqmws5VJLGPmFFbWcc0iVn8zzayhDoSPoQWYeL+Y4daYE4u8UexGVWzFmhlZ4Xdcg
 Zkf8Dqmr3SdEmSrH0F4PPnf4CqKmrzk5EUv9t3TdmDZK7k0TlOC4FypymbCTANNvxrzh
 RAgu9eYRbP6nLfkjHKzKnZ+5EexbkP0rMi1gpvxwfFh+xTFSlhS4G4Z03LlTevgTq31p
 zxlg==
X-Gm-Message-State: APjAAAX/7EFQ/3QAVpJvDytaFYg4WcVAyZ93Y/r+uIAfYxJOeaXp/ZhH
 9Sfrd3j0fuuhxqO7QkiVBcyCgflkbB4=
X-Google-Smtp-Source: APXvYqzCaNxnoX223pFP/HD3hNXAKE7PHC6sxNhOaUSK2AKvptulOEM8QlEyWYQZ/xg3qCVQK8FZzA==
X-Received: by 2002:a17:90a:2767:: with SMTP id
 o94mr5802021pje.25.1562864704789; 
 Thu, 11 Jul 2019 10:05:04 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o130sm11371518pfg.171.2019.07.11.10.05.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 10:05:04 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: fix NULL deref for fabrics options
Date: Fri, 12 Jul 2019 02:04:47 +0900
Message-Id: <20190711170447.20836-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_100505_971124_CF491EE0 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

git://git.infradead.org/nvme.git nvme-5.3 branch now causes the
following NULL deref oops.  Check the ctrl->opts first before the deref.

[   16.337581] BUG: kernel NULL pointer dereference, address: 0000000000000056
[   16.338551] #PF: supervisor read access in kernel mode
[   16.338551] #PF: error_code(0x0000) - not-present page
[   16.338551] PGD 0 P4D 0
[   16.338551] Oops: 0000 [#1] SMP PTI
[   16.338551] CPU: 2 PID: 1035 Comm: kworker/u16:5 Not tainted 5.2.0-rc6+ #1
[   16.338551] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.11.2-0-gf9626ccb91-prebuilt.qemu-project.org 04/01/2014
[   16.338551] Workqueue: nvme-wq nvme_scan_work [nvme_core]
[   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
[   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
[   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
[   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
[   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
[   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
[   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
[   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
[   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
[   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
[   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   16.338551] Call Trace:
[   16.338551]  nvme_scan_work+0x2c0/0x340 [nvme_core]
[   16.338551]  ? __switch_to_asm+0x40/0x70
[   16.338551]  ? _raw_spin_unlock_irqrestore+0x18/0x30
[   16.338551]  ? try_to_wake_up+0x408/0x450
[   16.338551]  process_one_work+0x20b/0x3e0
[   16.338551]  worker_thread+0x1f9/0x3d0
[   16.338551]  ? cancel_delayed_work+0xa0/0xa0
[   16.338551]  kthread+0x117/0x120
[   16.338551]  ? kthread_stop+0xf0/0xf0
[   16.338551]  ret_from_fork+0x3a/0x50
[   16.338551] Modules linked in: nvme nvme_core
[   16.338551] CR2: 0000000000000056
[   16.338551] ---[ end trace b9bf761a93e62d84 ]---
[   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
[   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
[   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
[   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
[   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
[   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
[   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
[   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
[   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
[   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
[   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

Fixes: 958f2a0f8 ("nvme-tcp: set the STABLE_WRITES flag when data digests
are enabled")

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Jens Axboe <axboe@fb.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3077cd4d75bf..cc09b81fc7f4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3305,7 +3305,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_ns;
 	}
 
-	if (ctrl->opts->data_digest)
+	if (ctrl->opts && ctrl->opts->data_digest)
 		ns->queue->backing_dev_info->capabilities
 			|= BDI_CAP_STABLE_WRITES;
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
