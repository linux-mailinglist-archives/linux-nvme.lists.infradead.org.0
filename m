Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78AB1FF55
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4W+RDh0jIfuIMH6t0Hacc2aoyLNy23zYzdNPclYRUpg=; b=Tu3SXzRUlLQKzs
	Lr+yxY+mPEsPQtEet1PIMWONKDowLx7kpw/DwD9dNIfLPWf09itA4ChimU+rcsFjpLSdNQnumy843
	YGbQsgT4AOSxhZh1jtlOISxf4n2ZHb7VXaM+vZ5BjKIfAi9kCsTZTdpzEo/0CDqroJABNviOSo81j
	DBDsdzhWT3qV5F7NeDetGvC5E35K9WaYaDFJM/SI+K9zIYXmvbdWOPVWPnI5danODwBkujRrAPBnd
	+VE+O7Sb4710rytMRN+ueZHGZRB63SoRfsWB0L6nfETI6eRZpQBFj9mUxEuEMAODNmajQSQBCV8vh
	FFbdq6y/SJCHLbRjiRag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9X5-0007BS-Ob; Thu, 16 May 2019 06:06:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9X0-0007B0-5y
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:06:19 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5AF1C300174D
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 06:06:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F3081001E61
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 06:06:15 +0000 (UTC)
Received: from zmail20.collab.prod.int.phx2.redhat.com
 (zmail20.collab.prod.int.phx2.redhat.com [10.5.83.23])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 423BF1806B12;
 Thu, 16 May 2019 06:06:15 +0000 (UTC)
Date: Thu, 16 May 2019 02:06:15 -0400 (EDT)
From: Gopal Tiwari <gtiwari@redhat.com>
To: linux-nvme@lists.infradead.org
Message-ID: <1726253006.18456087.1557986775197.JavaMail.zimbra@redhat.com>
Subject: nvme driver failed for test with kernel-v5.1-rc6
MIME-Version: 1.0
X-Originating-IP: [10.64.54.78, 10.4.195.7]
Thread-Topic: nvme driver failed for test with kernel-v5.1-rc6
Thread-Index: EhbDnqcEDT5qSApyTpzoz5PqoX4PBw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 16 May 2019 06:06:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_230618_259242_56B13EBD 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yi Zhang <yizhan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Kernel log : 

[  176.003453] run blktests nvme/013 at 2019-04-26 08:41:44
[  176.025656] nvmet: adding nsid 1 to subsystem blktests-subsystem-1
[  176.033981] nvmet: creating controller 1 for subsystem blktests-subsystem-1 for NQN nqn.2014-08.org.nvmexpress:uuid:a5118b24-f118-4388-8bca-2d22043fe1d4.
[  176.034167] nvme nvme1: ANA group 1: optimized.
[  176.034182] nvme nvme1: creating 12 I/O queues.
[  176.037674] nvme nvme1: new ctrl: "blktests-subsystem-1"
[  177.240516] print_req_error: I/O error, dev nvme1n1, sector 0 flags 801
[  177.260984] XFS (nvme1n1): Mounting V5 Filesystem
[  177.317619] XFS (nvme1n1): Ending clean mount
[  207.406893] print_req_error: I/O error, dev nvme1n1, sector 1048656 flags 21801
[  207.415072] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100050 len 64 error 5
[  207.424793] XFS (nvme1n1): xfs_do_force_shutdown(0x2) called from line 1271 of file fs/xfs/xfs_log.c. Return address = 0000000040c83e2a
[  207.424795] XFS (nvme1n1): Log I/O Error Detected. Shutting down filesystem
[  207.432571] XFS (nvme1n1): Please unmount the filesystem and rectify the problem(s)
[  207.447558] print_req_error: I/O error, dev nvme1n1, sector 1048720 flags 21801
[  207.455724] print_req_error: I/O error, dev nvme1n1, sector 1048784 flags 21801
[  207.463882] print_req_error: I/O error, dev nvme1n1, sector 1048848 flags 21801
[  207.472039] print_req_error: I/O error, dev nvme1n1, sector 1048912 flags 21801
[  207.480196] print_req_error: I/O error, dev nvme1n1, sector 1048976 flags 21801
[  207.488351] print_req_error: I/O error, dev nvme1n1, sector 1049040 flags 21801
[  207.496509] print_req_error: I/O error, dev nvme1n1, sector 1049104 flags 21801
[  207.504679] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100090 len 64 error 5
[  207.514397] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x1000d0 len 64 error 5
[  207.524112] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100110 len 64 error 5
[  207.533826] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100150 len 64 error 5
[  207.543542] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100190 len 64 error 5
[  207.553256] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x1001d0 len 64 error 5
[  207.562972] XFS (nvme1n1): metadata I/O error in "xlog_iodone" at daddr 0x100210 len 64 error 5
[  207.667548] XFS (nvme1n1): Unmounting Filesystem
[  207.668002] print_req_error: I/O error, dev nvme1n1, sector 0 flags 801
[  207.677339] nvme nvme1: Removing ctrl: NQN "blktests-subsystem-1"
[  208.618984] run blktests nvme/015 at 2019-04-26 08:42:17
[  208.657123] nvmet: adding nsid 1 to subsystem blktests-subsystem-1
[  208.664806] nvmet: creating controller 1 for subsystem blktests-subsystem-1 for NQN nqn.2014-08.org.nvmexpress:uuid:a5118b24-f118-4388-8bca-2d22043fe1d4.
[  208.664975] nvme nvme1: ANA group 1: optimized.
[  208.664991] nvme nvme1: creating 12 I/O queues.
[  208.668610] nvme nvme1: new ctrl: "blktests-subsystem-1"
[  217.455327] nvme nvme1: using deprecated NVME_IOCTL_IO_CMD ioctl on the char device!
[  217.488016] nvme nvme1: Removing ctrl: NQN "blktests-subsystem-1"
[  217.492958] Dev nvme1n1: unable to read RDB block 0
[  217.498413]  nvme1n1: unable to read partition table
[  217.498419] nvme1n1: partition table beyond EOD, truncated

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
