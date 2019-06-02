Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F78232376
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jog/w77s4xsGRYsjYlRdF/lTwU+VK+SPKVDSBEMDPXo=; b=KM87sk0QftMwICefabSsbzIDIw
	fF4djbL2L8UcRuPv9wVb7gR0/vS9yi2sqcak2iMv8HJM8bo1eBK8L3HcBBVllOgAlh+dPecp84hHf
	N9K/ZPEzs3W01JJYxbx8DZyxm/owglVCpLLzI/OCJNFEAWz0HSuvGjkBAqlpVq6ZWnVGHkZsYl88K
	g9b2uPodr5m84dPOjJo3rWbfXXMiP6RhLbOEe7xrXUXd4H6IFIbJ4g13uwE2ISaX6XEb3oV2Z7U0a
	5XFcAj99Um8FwLlR9YDGu9mvNv5Eft7jRFalKCuqMbtrEWNc2ewCfljPsaj4t9iISGvAJL/z1wWFU
	dgXo2MMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQtF-0004D6-JA; Sun, 02 Jun 2019 13:51:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQsq-0003pK-3B
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:50:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so9025112pfq.8
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RjYic2DOS/+j7ZEdwL2z0b/2x69GdYc4B5RRVolNKDc=;
 b=uNAoyv2SQvS0o5xw+OZghd4csG2GUd/cWVb6fggOq4YrsxB4AhPOkDr/AXJnD+rpQb
 8nOgriVORLO2a8tLSXHBN/DD21FcFRZnvjK86fmukKqg2s19Enh59keQRjovSpcqeGhc
 iJML/Bd8ngKPng7X2Q+3gPzr0eTVcHug0dNr8b93gLXwmxqRkXaoznz4jaBxXFjw+2NH
 5HchBU0Jev/qIJjxwye8xjtbuHN+i6YB18uNXJAXYd/mHShnfVyYNwCKZkfq/+4lxobu
 aRfxJ+E+1kRo0VbCNklNmYQ4q6gk2OPZ0LgBxTeekmlS1ed0/Bhd/cuWz8ROfByGsWg+
 Ojwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RjYic2DOS/+j7ZEdwL2z0b/2x69GdYc4B5RRVolNKDc=;
 b=ZTD9W1Rosa86W7hT9+MOSNo65IsFqkbk0j0wbf8xuyGHe3/Vr4B+oEG4s1w+DM5tBd
 5WJ9vGurl/7IGWVoFFIvuqmUicC4d/eSPv1qqOjmmStdCexS36QolKLxlprcsgVl1nRt
 8IyGet5lFplv765L1Glk6NxQi2swyoBoW7lyzW4WwmzeTCc57XPyqF0bHEY86XjOtkw1
 TyRKL3BXuVs+Ln/gx/GSm7dYI72g/g2iD//NXnJDxgFmUt1UEFbuGZwZu9CSyN0W0arF
 zfugkkyJP8wXVNqu2+a+kP2SCl6V8TfqnkgY6PqCOZ16hfhHXlP0XZn2gBSIAWnjQ2J7
 xKXQ==
X-Gm-Message-State: APjAAAUYJXnApZ4EXO5jjIRfp7x7wX5cfi+/0PEPoZVu7feIasJMpnCv
 3ihOTlNPhJ5wi3P/F2wje8AnJwOkcuE=
X-Google-Smtp-Source: APXvYqzBBLgDKke6UT3hz/CCjvyLxEdTm8EoBajdoGWoAAHcQZwlUWSeLafEzVmKIU3jV7Q//GskDQ==
X-Received: by 2002:a63:3d89:: with SMTP id
 k131mr21989820pga.121.1559483447539; 
 Sun, 02 Jun 2019 06:50:47 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:383f:1f19:d982:1b59])
 by smtp.gmail.com with ESMTPSA id m21sm7023871pfa.104.2019.06.02.06.50.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 02 Jun 2019 06:50:47 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/3] Documentation: nvme: add an example for nvme fault
 injection
Date: Sun,  2 Jun 2019 22:50:21 +0900
Message-Id: <1559483421-11361-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_065048_176355_534DC1E2 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
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
Suggested-by: Thomas Tai <thomas.tai@oracle.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- New patch from v2

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
