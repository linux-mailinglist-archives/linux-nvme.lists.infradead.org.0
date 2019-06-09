Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649223A658
	for <lists+linux-nvme@lfdr.de>; Sun,  9 Jun 2019 16:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GhJ/xK5/3irFgoLEpRgODhubU2SQoJt0sz/JngVJxZI=; b=qYKphfcTKVILDXCMakW2K3yFw9
	L7rvBXet1chSh24qmVJ6LITfoHpzUgVHoHxDWzzNP7WIEBwlPUCjAeoaZn8flBhIsl32Svie7aK4j
	tBuUp9vmInT/ojnmH86osvWcATabMzfJVeu9XAtpV5fekxr5nBJ9k7B1tTcRZ+9k12Xg7/7NiRNmP
	aubSSs3vXp+LRx5cmS4jA0f0HyPEuhY9ocF36O7XjxTy2WAWxihVPF1jv/wIbfKWZEGo8LetetHh0
	P996ivBppg85Q4ywTCfAWQKYexVKa3Sf8ZAEBF/NncYRKiGB98B0QhE4+8MBco+ZVJQ9yzNw47huL
	6/A0ciNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZyeF-00043s-Sq; Sun, 09 Jun 2019 14:18:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZydZ-0003cC-NJ
 for linux-nvme@lists.infradead.org; Sun, 09 Jun 2019 14:17:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so3639605pgb.3
 for <linux-nvme@lists.infradead.org>; Sun, 09 Jun 2019 07:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MMXS/+CDHYbxV0QA9qoN3SALxfSQZMrcC42AqJkYwvw=;
 b=dQnXTejrbBIVtG0jTJcTkWgCiEQW7UBwd0rJlboNlFbFvk7B7BDuWLr9R1mYz8ZfCJ
 vyx84q6fhcNHw541bYllEWg/5kkpudGpvyNm2YdnJfAcFcJfhQKlmlC3R3Kjyekp0NTD
 eWQDKmyBvY0qiSNPs6HS9pGbEI/eIpyDHVgAtJgtmv77fwIXa3KbhnYZe6ZrBgLYqey2
 c7069HIaVV+qt+nzfukzUuDuQ6ev98o4ezY5dIOWzt/QWWVtGkIPxJNlKINdHV1LUvts
 H/L3D455VKtF/hVlSt4k1YYonLSfWLSRH79SV3jXLyh8ksOYejs5wY8wlqXnjBXtNUjc
 r1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MMXS/+CDHYbxV0QA9qoN3SALxfSQZMrcC42AqJkYwvw=;
 b=OAvNbWFnxaLB0LfykOGUDMVHiG0hFk6J0AyQ+N0f8soe6WW0JCu0ONX1WBdUkQS8ze
 WlE29jDpTEL1PXLHlJAflh9IQVDcGgEPavvKHfu6m3iRN+OP80IhnBdpffDeWM4wEt9r
 Ih7lzyVmNTT6QjJWiWBW+HjGX3Zj9w47d75CgWgZchGPFpk6rN/1YbQrNx5WdG+GqQet
 MFVhWpOjtHWLXAOP6p1Y6B6S4zKXXPE8g8jgr9wAxYtZYGX5EasiPeWerNGizWAiXk/a
 ndjnUK9u0SR9FilUE54AmH3Oscuezfs9B6tvcxiZN8bh7qFAbu9EQltKGazp+AF60SiF
 6amQ==
X-Gm-Message-State: APjAAAXiOQfSOnI9RX/StZUYTQQ7n0FncH8ZefekNCWnbrFNBTRbcM6z
 n+nHRJCGVaAHsiO0GvM63xIJ59GRsL4=
X-Google-Smtp-Source: APXvYqylPjRDBixZxHYm7d8uK9ys2nSh9J+QJBE4ZV15SXb2NfX/CJk7mhTWzrH3BIW6qI48jsVBeQ==
X-Received: by 2002:a62:b405:: with SMTP id h5mr67458171pfn.85.1560089852292; 
 Sun, 09 Jun 2019 07:17:32 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b49b:e456:7394:88a2])
 by smtp.gmail.com with ESMTPSA id w4sm9556554pfw.97.2019.06.09.07.17.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 07:17:31 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 3/3] Documentation: nvme: add an example for nvme fault
 injection
Date: Sun,  9 Jun 2019 23:17:02 +0900
Message-Id: <1560089822-11462-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
References: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_071733_775480_8F0317D6 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Thomas Tai <thomas.tai@oracle.com>, Akinobu Mita <akinobu.mita@gmail.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This adds an example of how to inject errors into admin commands.

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Suggested-by: Thomas Tai <thomas.tai@oracle.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
* v3
- add Reviewed-by tags

 .../fault-injection/nvme-fault-injection.txt       | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/fault-injection/nvme-fault-injection.txt b/Documentation/fault-injection/nvme-fault-injection.txt
index 8fbf3bf..efcb339 100644
--- a/Documentation/fault-injection/nvme-fault-injection.txt
+++ b/Documentation/fault-injection/nvme-fault-injection.txt
@@ -114,3 +114,59 @@ R13: ffff88011a3c9680 R14: 0000000000000000 R15: 0000000000000000
   cpu_startup_entry+0x6f/0x80
   start_secondary+0x187/0x1e0
   secondary_startup_64+0xa5/0xb0
+
+Example 3: Inject an error into the 10th admin command
+------------------------------------------------------
+
+echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
+echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
+echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
+nvme reset /dev/nvme0
+
+Expected Result:
+
+After NVMe controller reset, the reinitialization may or may not succeed.
+It depends on which admin command is actually forced to fail.
+
+Message from dmesg:
+
+nvme nvme0: resetting controller
+FAULT_INJECTION: forcing a failure.
+name fault_inject, interval 1, probability 100, space 1, times 1
+CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-rc2+ #2
+Hardware name: MSI MS-7A45/B150M MORTAR ARCTIC (MS-7A45), BIOS 1.50 04/25/2017
+Call Trace:
+ <IRQ>
+ dump_stack+0x63/0x85
+ should_fail+0x14a/0x170
+ nvme_should_fail+0x38/0x80 [nvme_core]
+ nvme_irq+0x129/0x280 [nvme]
+ ? blk_mq_end_request+0xb3/0x120
+ __handle_irq_event_percpu+0x84/0x1a0
+ handle_irq_event_percpu+0x32/0x80
+ handle_irq_event+0x3b/0x60
+ handle_edge_irq+0x7f/0x1a0
+ handle_irq+0x20/0x30
+ do_IRQ+0x4e/0xe0
+ common_interrupt+0xf/0xf
+ </IRQ>
+RIP: 0010:cpuidle_enter_state+0xc5/0x460
+Code: ff e8 8f 5f 86 ff 80 7d c7 00 74 17 9c 58 0f 1f 44 00 00 f6 c4 02 0f 85 69 03 00 00 31 ff e8 62 aa 8c ff fb 66 0f 1f 44 00 00 <45> 85 ed 0f 88 37 03 00 00 4c 8b 45 d0 4c 2b 45 b8 48 ba cf f7 53
+RSP: 0018:ffffffff88c03dd0 EFLAGS: 00000246 ORIG_RAX: ffffffffffffffdc
+RAX: ffff9dac25a2ac80 RBX: ffffffff88d53760 RCX: 000000000000001f
+RDX: 0000000000000000 RSI: 000000002d958403 RDI: 0000000000000000
+RBP: ffffffff88c03e18 R08: fffffff75e35ffb7 R09: 00000a49a56c0b48
+R10: ffffffff88c03da0 R11: 0000000000001b0c R12: ffff9dac25a34d00
+R13: 0000000000000006 R14: 0000000000000006 R15: ffffffff88d53760
+ cpuidle_enter+0x2e/0x40
+ call_cpuidle+0x23/0x40
+ do_idle+0x201/0x280
+ cpu_startup_entry+0x1d/0x20
+ rest_init+0xaa/0xb0
+ arch_call_rest_init+0xe/0x1b
+ start_kernel+0x51c/0x53b
+ x86_64_start_reservations+0x24/0x26
+ x86_64_start_kernel+0x74/0x77
+ secondary_startup_64+0xa4/0xb0
+nvme nvme0: Could not set queue count (16385)
+nvme nvme0: IO queues not created
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
