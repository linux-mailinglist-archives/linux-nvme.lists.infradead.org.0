Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400341963EB
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 07:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7Evu51CY5VxxAUg8cFd7Dg4NdnJqjZl4sYPHTMz7eNA=; b=DcG
	k/0ijNsHMPZIU1poNqvNC/1R0PNUMoD5TtVSMbWQaCbCaivCnh/0J04s3GQm8Mg2ZNpdPmQ+y3IFD
	2hkviI9VmKolNh5p8YfZvPkH6K5I7wv56Ak/0ZnHZJ4SewNkyMlbLNuI1WHFpGhDCSXqs8rXnx3kg
	VlblX7Y3PLhy7cnJaKMZU+wNz1xcaG7CQHbCAbhBdGGAwT1LmO1F+AraBT8WYXNxijKoLYMHXbVDN
	zq18RTl5tyAwGHzopYRf9bKbBnf+GJedf3esdqThcBIdaG9qpKkEHqdbdnw8P4gZaKvALnqJcm7FM
	wA+/gd3urtUcQ7AULSrrfjT26E+wxJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI4iK-0003i4-Ch; Sat, 28 Mar 2020 06:13:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI4iF-0003ha-GY
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 06:12:57 +0000
Received: by mail-lf1-x144.google.com with SMTP id t21so9658909lfe.9
 for <linux-nvme@lists.infradead.org>; Fri, 27 Mar 2020 23:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rsc-tech-ru.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=blayq48jBQyJvtaSj1gkUzfbPpaHxhcwPKGdoDXLWcQ=;
 b=kvQ0cVR8NNKRcJgAH/SjSYzOGjkMzGtTuh2OuEN6gQd93fN4JpoTtSOKwYiEOPqQvx
 NtDc4GyDQMyZO8RLVm2VqzhRH8s3cADd5dmV1L6pOx/uJft36L9h0APH3jdtDKXJi8l9
 WiONd18JV5N9990tdBOUD6mEY/1iVDN0pNyUBCYeJmj6DjCMt534YvpnR9xBVsZj3jEC
 y5gOVIb8Qj1LCd/7oq9LuyeuT00EPPCa2fUAF4CF2L7yfnvhpp34eB/DT6Lsls4otMv5
 rd1zR34sjN9xqwDtGmOkdcSN6uESFk6T58o+6xDfwJll59dV1PUsVR6XN2VT0LSkZvjL
 Uh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=blayq48jBQyJvtaSj1gkUzfbPpaHxhcwPKGdoDXLWcQ=;
 b=dTNgzeIKUU0WTvhItYUcEimsj/+vvfOapRGkNTt7pf3fDixLl0pxqcAn0ITOJ6dNZM
 hEpwP76ppR2hKv62CJSxbCNd9cxOxahLgBeMAccSM6JfmwNxnZ4BNH3Vha4uGdPgLjBC
 8apUnqV1q07FjbSRGUlEQjU2vf5kMFIZEqhFuwUq7Z7V3oUZCkEluwkGCCMc2Wyegqqb
 0OVdfDv/CUKIi3KkO9wdAJ8Ogw7xZ7qZiaFOyZZpNrdZ2iwSqTe9EgmTVUcaQPWbieoN
 ezZUBucU3DZSsJa0+Jih0zK0fmancGK1BL8zf+s0KvJZw+PGtoKb5Ao0nNltWnIn19LD
 8rKw==
X-Gm-Message-State: AGi0PuYNQbDBgc2kn+aRaVoZpISTANyhvsj8lf02dSMAh6SwrotpjiQ1
 5cZMoEV9/CQD35+iSJxkK+KrQBBhGEYZ5ZbMrX/tR52Hd5M=
X-Google-Smtp-Source: APiQypI0HlGMzH9zRPnsO7iTJ/oJvOBGeKs//j4C6a/tpO2+PVXJcoG3/vATZTPnO7kaa6KOK56oYp1G6x5KrNqN3Bg=
X-Received: by 2002:a19:148:: with SMTP id 69mr1791711lfb.143.1585375968223;
 Fri, 27 Mar 2020 23:12:48 -0700 (PDT)
MIME-Version: 1.0
From: Anton Brekhov <anton.brekhov@rsc-tech.ru>
Date: Sat, 28 Mar 2020 09:12:37 +0300
Message-ID: <CABY-YC7eHFjb-TpKf2ioPJNhZ8RccYsrR-oU=wmt26z9AUNebg@mail.gmail.com>
Subject: NVMe Over Fabrics Disconnect Kernel error
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_231255_614141_E4C8EDE3 
X-CRM114-Status: UNSURE (   4.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Greetings!

We're using nvme-cli technology with ZFS and Lustre Filesystem on top of it.
But we constantly come across a kernel error while disconnecting
remote disks from switched off nodes:
```
[  +0,000089] INFO: task kworker/u593:0:82293 blocked for more than 120 seconds.
[  +0,001959] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
disables this message.
[  +0,001941] kworker/u593:0  D ffff90e8493fe2a0     0 82293      2 0x00000080
[  +0,000031] Workqueue: nvme-delete-wq nvme_delete_ctrl_work [nvme_core]
[  +0,000003] Call Trace:
[  +0,000008]  [<ffffffff8177f229>] schedule+0x29/0x70
[  +0,000010]  [<ffffffff81358e85>] blk_mq_freeze_queue_wait+0x75/0xe0
[  +0,000007]  [<ffffffff810c61c0>] ? wake_up_atomic_t+0x30/0x30
[  +0,000006]  [<ffffffff81359cb4>] blk_freeze_queue+0x24/0x50
[  +0,000009]  [<ffffffff8134e0ef>] blk_cleanup_queue+0x7f/0x1b0
[  +0,000012]  [<ffffffffc031158e>] nvme_ns_remove+0x8e/0xb0 [nvme_core]
[  +0,000011]  [<ffffffffc031174b>] nvme_remove_namespaces+0xab/0xf0 [nvme_core]
[  +0,000012]  [<ffffffffc03117e2>] nvme_delete_ctrl_work+0x52/0x80 [nvme_core]
[  +0,000008]  [<ffffffff810bd0ff>] process_one_work+0x17f/0x440
[  +0,000006]  [<ffffffff810be368>] worker_thread+0x278/0x3c0
[  +0,000006]  [<ffffffff810be0f0>] ? manage_workers.isra.26+0x2a0/0x2a0
[  +0,000005]  [<ffffffff810c50d1>] kthread+0xd1/0xe0
[  +0,000006]  [<ffffffff810c5000>] ? insert_kthread_work+0x40/0x40
[  +0,000006]  [<ffffffff8178cd1d>] ret_from_fork_nospec_begin+0x7/0x21
[  +0,000006]  [<ffffffff810c5000>] ? insert_kthread_work+0x40/0x40
```
Nodes characteristics:
[root@s02p005 ~]# uname -srm
Linux 3.10.0-1062.1.1.el7.x86_64 x86_64
[root@s02p005 ~]# cat /etc/redhat-release
CentOS Linux release 7.7.1908 (Core)

Where're using nvmet_rdma.
Is there any workaround for such error?

Best Regards,
Anton Brekhov.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
