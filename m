Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEEA363B3
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dCAf+SFmqCKHgPB6F3Q/ygTgqvlj8SbE7GqCw5olxTk=; b=b1YcCSz+6jQAj/
	fmOEEv0xFQFee4eVaDH6joQLZjdbgZhOfIKy6P7Za6g5GKMKjQWyxxNq/Fw7LB4YA9oeI4qwXGdZn
	wSaWlQwCqcOE8+rdIOu5Hq12aiaxQxaMo3VpG2IGz/jxHX38vGAw3A0maI2rP1eYFdW5Fuc3lN0cP
	X/lare9HSQIf4Lnx2Adho5LQMJvLCAjn2dSDo0mTTkkfShzb6iumJoVDS5KNh2EsonFvabxkwW4YP
	CXfqOwkgtd90HWustXekJb6wnZQUt29fa8ZE1t9Rb6tPB9hZaxArXD4XhduEtRZPx4FIFoJPgE4za
	J3m5ayfr477VaWnqDHBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbDz-0004QI-Dt; Wed, 05 Jun 2019 19:05:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbDt-0004Pl-Q8
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 19:05:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so8150133wru.0
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 12:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=x3akbcV2aRS869k2eTIZc97UJdY0fozAMumjSs/+Qbw=;
 b=exr7uEm41IzFiP3xySfEI1f0xfFzQP5q1/siCrJ1K92HCDbjA1QCreGpqZPdFMXox1
 +2b9W/bj0A0uPEFXVhPmGXA9YXyrk446kuGZ9H7aWu3N1WsNerHoFwalDFVFjRdmhQjy
 Wchu0JsdkORUigYNfagtGrQSmstYmB+TGtbfh4AHe3p+ORl6b6LYcn6nF4vaHAIAqlRw
 RGUNhLfczKSRgAZ0tPPDQfrcAj0ttTeA3mgEUuXAPrmeDXhsidTx8gd9cwd7zJL5WsiP
 OThZtvcjn70JVO2/x9WGJ1K2rsiKL9M0kBrKAqIWljaD1U9tKBfWz1V6Db35gnsF4EZL
 FYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=x3akbcV2aRS869k2eTIZc97UJdY0fozAMumjSs/+Qbw=;
 b=nmnsWrVI64RCqOja+2lbK+fNvpj79wGAVuArn/KOJa+L0EosdrzJlqfXGOQDJxSHV8
 +SallCuzDIxCJvxFvneAohiTxhmRnLnkF4Q4fCRLIg/kfMJc9s8qxhf2LoV4ipfd5UaE
 bK+MfNcLV35f2FRBRnHzCrabZ1B7iYMUQSLNyW45lDZH9JS5bur+klQeiyRArnb4xzl9
 cxJdX4vzrNVgepwhDxAw6eTsrOkEJaK+a8blq4sqrquB4qjzx5OR/k5alsXLgv8UuOUc
 FB3YVr6kRjAs54rHtJmT9uKruMEFfwi1T1lVYHTSmpDDeZGKGJqnicz3+RJ9i2VPzna4
 tKuQ==
X-Gm-Message-State: APjAAAVIVDeVpADBrtMAf/rGQCaGXixw4aHwK2FL1/AN74wNv2TRSkBv
 i6FLnCqq1aOpfWlufPoTJ1WxOCsWmIA=
X-Google-Smtp-Source: APXvYqwCOhJQwdT7Yy1TL5hpfaa6zaG/RyaoC3jcMmnwUwxwfKRcZdjdSH7ZtBo3QP8WBF0SnD1q8A==
X-Received: by 2002:adf:de08:: with SMTP id b8mr15572890wrm.248.1559761518880; 
 Wed, 05 Jun 2019 12:05:18 -0700 (PDT)
Received: from alyakaslap ([82.166.81.77])
 by smtp.gmail.com with ESMTPSA id 11sm5617644wmd.23.2019.06.05.12.05.17
 for <linux-nvme@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 12:05:18 -0700 (PDT)
Message-ID: <EA2BFA4D4BAD49629F533A98F74DCE42@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: <linux-nvme@lists.infradead.org>
Subject: IO stuck while nvmf initiator is reconnecting
Date: Wed, 5 Jun 2019 22:04:22 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_120521_912739_190911D0 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 STOX_REPLY_TYPE        No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.9 STOX_REPLY_TYPE_WITHOUT_QUOTES No description available.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Greetings nvmf community,

I am testing a scenario, in which a nvmf target disappears. For example, if
the target machine crashes, reboots, or the nvmet drivers on the target
machine are upgraded by being unloaded, and new drivers being loaded. It is
expected that when a target machine comes back, its nvmf target is
configured with same parameters (attr_serial, device_uuid etc), and so nvmf
initiator will see the same device.

I am running kernel 5.1.6, which is the latest stable kernel.

I see that when establishing a nvmf connection on the initiator side, kernel
accepts a "ctrl_loss_tmo" option, which is further translated to
nvmf_ctrl_options::max_reconnects. Then nvmf_should_reconnect() tests this
value, and decides whether it needs to keep reconnecting. So by passing a
very large or negative (-1) value, controller will attempt to reconnect
forever or for a very long time. This behavior is very fine from my
perspective. Unless the user explicitly issues "nvme disconnect", controller
should keep attempting to reconnect.

However, the question is: what happens to the in-flight IOs during this
period?

I see that nvme_core has a "max_retries" parameter. If this parameter is set
to 0, then upon any error IOs are failed. So during the above test, all
in-flight IOs fail. This is not what I would expect, so I set max_retries to
some positive value. In this case, if nvmf connection is lost, all IOs get
stuck until controller succeeds to reconnect. Furthermore, new IOs sent to
the nvme block device at this time, also get stuck. It seems that the blk_mq
is being quiesced in this case, so all IOs are frozen. For example, a
synchronous user-space IO is stuck in stack like [1].

This is not a desirable behavior, because it is not clear when the target
nvmf machine will be back.

The desirable behavior, from my perspective, would be to have a configurable
IO timeout. If a controller succeeds to re-establish the connection within
the timeout, IO resumes with no issues. Otherwise, IO is failed back to the
caller after the timeout.

So, for example, during drivers upgrade on the target side, which is
supposed to take a few seconds, IO will not fail, but will experience a
small delay. On the other hand, If there is an electricity outage on the
target machine, IO will fail after the timeout.

I found that nvme_core has an io_timeout parameter, defaulting to 30
seconds. However, I do not see this parameter being obeyed in this case.
(Although this parameter is used in:
https://elixir.bootlin.com/linux/latest/source/drivers/nvme/host/rdma.c#L741).

Can you please comment if the described behavior can be improved?

Thanks,
Alex.


[1]
[  980.040901] block nvme0n1: no path available - requeuing I/O
[  980.040902] block nvme0n1: no path available - requeuing I/O
[  980.040903] block nvme0n1: no path available - requeuing I/O
[  980.575500] nvme nvme0: failed nvme_keep_alive_end_io error=10
[  980.603209] nvme nvme0: Reconnecting in 10 seconds...
[  993.846221] nvme nvme0: rdma connection establishment failed (-110)
[  993.856498] nvme nvme0: Failed reconnect attempt 1
[  993.856501] nvme nvme0: Reconnecting in 10 seconds...
[ 1007.157953] nvme nvme0: rdma connection establishment failed (-110)
[ 1007.168340] nvme nvme0: Failed reconnect attempt 2
[ 1007.168342] nvme nvme0: Reconnecting in 10 seconds...
[ 1020.469680] nvme nvme0: rdma connection establishment failed (-110)
[ 1020.480327] nvme nvme0: Failed reconnect attempt 3
[ 1020.480330] nvme nvme0: Reconnecting in 10 seconds...
[ 1033.781399] nvme nvme0: rdma connection establishment failed (-110)
[ 1033.792467] nvme nvme0: Failed reconnect attempt 4
[ 1033.792470] nvme nvme0: Reconnecting in 10 seconds...
[ 1047.093131] nvme nvme0: rdma connection establishment failed (-110)
[ 1047.103771] nvme nvme0: Failed reconnect attempt 5
[ 1047.103774] nvme nvme0: Reconnecting in 10 seconds...
[ 1060.404864] nvme nvme0: rdma connection establishment failed (-110)
[ 1060.415429] nvme nvme0: Failed reconnect attempt 6
[ 1060.415432] nvme nvme0: Reconnecting in 10 seconds...
[ 1073.716608] nvme nvme0: rdma connection establishment failed (-110)
[ 1073.727234] nvme nvme0: Failed reconnect attempt 7
[ 1073.727236] nvme nvme0: Reconnecting in 10 seconds...
[ 1087.028464] nvme nvme0: rdma connection establishment failed (-110)
[ 1087.039441] nvme nvme0: Failed reconnect attempt 8
[ 1087.039443] nvme nvme0: Reconnecting in 10 seconds...
[ 1100.340106] nvme nvme0: rdma connection establishment failed (-110)
[ 1100.351073] nvme nvme0: Failed reconnect attempt 9
[ 1100.351077] nvme nvme0: Reconnecting in 10 seconds...
[ 1113.651821] nvme nvme0: rdma connection establishment failed (-110)
[ 1113.662804] nvme nvme0: Failed reconnect attempt 10
[ 1113.662808] nvme nvme0: Reconnecting in 10 seconds...
[ 1126.963566] nvme nvme0: rdma connection establishment failed (-110)
[ 1126.974063] nvme nvme0: Failed reconnect attempt 11
[ 1126.974066] nvme nvme0: Reconnecting in 10 seconds...
[ 1130.922091] nvme_ns_head_make_request: 6 callbacks suppressed
[ 1130.922094] block nvme0n1: no path available - requeuing I/O
[ 1139.000499] sysrq: Show Blocked State
[ 1139.000513]   task                        PC stack   pid father
[ 1139.000548] dd              D    0  1524   1443 0x00000004
[ 1139.000550] Call Trace:
[ 1139.000558]  __schedule+0x2d3/0x840
[ 1139.000561]  schedule+0x2c/0x70
[ 1139.000565]  io_schedule+0x16/0x40
[ 1139.000568]  __blkdev_direct_IO_simple+0x214/0x410
[ 1139.000570]  ? blkdev_iopoll+0x30/0x30
[ 1139.000572]  blkdev_direct_IO+0x459/0x490
[ 1139.000574]  ? __do_page_fault+0x259/0x4b0
[ 1139.000578]  generic_file_direct_write+0x9a/0x160
[ 1139.000580]  __generic_file_write_iter+0xba/0x1f0
[ 1139.000581]  blkdev_write_iter+0xa0/0x120
[ 1139.000584]  new_sync_write+0x114/0x180
[ 1139.000585]  __vfs_write+0x29/0x40
[ 1139.000588]  vfs_write+0xab/0x1b0
[ 1139.000589]  ksys_write+0x5c/0xd0
[ 1139.000591]  __x64_sys_write+0x1a/0x20
[ 1139.000594]  do_syscall_64+0x5a/0x110
[ 1139.000596]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[ 1139.000598] RIP: 0033:0x7f5fa7382154
[ 1139.000602] Code: Bad RIP value.
[ 1139.000603] RSP: 002b:00007ffcde10e1a8 EFLAGS: 00000246 ORIG_RAX:
0000000000000001
[ 1139.000605] RAX: ffffffffffffffda RBX: 0000000000000000 RCX:
00007f5fa7382154
[ 1139.000606] RDX: 0000000000004000 RSI: 000055e31b749000 RDI:
0000000000000001
[ 1139.000607] RBP: 0000000000004000 R08: 0000000000000077 R09:
0000000000000000
[ 1139.000608] R10: 000055e31b748010 R11: 0000000000000246 R12:
000055e31b749000
[ 1139.000609] R13: 0000000000000000 R14: 0000000000000000 R15:
000055e31b749000
[ 1140.275301] nvme nvme0: rdma connection establishment failed (-110)
[ 1140.286111] nvme nvme0: Failed reconnect attempt 12
[ 1140.286115] nvme nvme0: Reconnecting in 10 seconds...
[ 1153.587060] nvme nvme0: rdma connection establishment failed (-110)
[ 1153.597995] nvme nvme0: Failed reconnect attempt 13
[ 1153.597999] nvme nvme0: Reconnecting in 10 seconds...
[ 1166.898837] nvme nvme0: rdma connection establishment failed (-110)
[ 1166.910022] nvme nvme0: Failed reconnect attempt 14
[ 1166.910025] nvme nvme0: Reconnecting in 10 seconds...
[ 1180.210561] nvme nvme0: rdma connection establishment failed (-110)
[ 1180.221555] nvme nvme0: Failed reconnect attempt 15
[ 1180.221558] nvme nvme0: Reconnecting in 10 seconds...
[ 1193.522315] nvme nvme0: rdma connection establishment failed (-110)
[ 1193.533206] nvme nvme0: Failed reconnect attempt 16
[ 1193.533209] nvme nvme0: Reconnecting in 10 seconds...
[ 1206.834079] nvme nvme0: rdma connection establishment failed (-110)
[ 1206.845018] nvme nvme0: Failed reconnect attempt 17


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
