Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60A1D6FD7
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 06:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:Message-ID:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IsjNfS8Eem3vu7vaiFgOo+w/aQ6a7qH4foS/rePdMPc=; b=pnbiPp1TtrBwAc
	AJDUEmRwZLRJMECgfR+pBS8b2I0y509fngiCus9MYl8ReXYMRjDJGQURt+c6kQIa3jftayF9TzUGF
	EDrbzszXT50O5rSeP+p6BtZD2BwdSUMSXKUHlPCAn/bAalyj9+LVoI5nI8VCuY6h/ylCbOJvgIFpn
	vykxhofnH9gE/kdoWLdehZjvxb138iXfbO450YeP5nXZTRxwT0yZRggQCMCODyxI9eaMgndUCyRr6
	K1CqnKBbdvpp/MfkKZiMj2637ovoNyeu7TT+IUmNpJM2jE+1g2psbdCO5FwveHRZlgF8ULIGoQR+f
	fpl+M2b0yuFptv6KfjaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXQ5-0001NB-8U; Mon, 18 May 2020 04:30:29 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXPz-00085q-P5
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 04:30:25 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04I4Tid9067122;
 Mon, 18 May 2020 04:30:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=mime-version :
 message-id : date : from : to : cc : subject : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=OveuMVbR4YSqctD5sYckSyi6w/OFAe1tz9kxqthg9V4=;
 b=FBNqnGSMo7kbvPIHzDKvOxMmy8ibusjHMAV402KF5b7EuEiR1Bzkf0Dn1Z2kx7cd0iGf
 hs2NhSj6byK8AWE7YNL+gWsRc0KuO2RtMsd0KTUUfIfdcG6YcV/GQdZwumd+MxK5PKcP
 qCgwvCbhAbTrMTEYq3ORtwmvhJT9wrem/jEZNfgJr4lvqtqZKz7qsKeFiM3YFR0QoSkC
 R17MIqs0Uw8NVGLc+XC2CjsXXY8HLBsKY8Z9eiSISr6mq5Juj0TJVkNQFFzHQS21Jsf9
 5vE0ctH6WD0ebdrzZ3oAEfx5XBExa+gCs6ccGXXo5RG0SgA6Z/sbXS5BX6/m52lPP9Db cA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31284kmf08-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 18 May 2020 04:30:15 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04I4T1Xw106569;
 Mon, 18 May 2020 04:30:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 312sxpjr2m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 04:30:14 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04I4UALL028495;
 Mon, 18 May 2020 04:30:11 GMT
MIME-Version: 1.0
Message-ID: <c77b0998-5112-4d6b-b51c-41d2b901009d@default>
Date: Sun, 17 May 2020 21:30:10 -0700 (PDT)
From: Dongli Zhang <dongli.zhang@oracle.com>
To: <linux-nvme@lists.infradead.org>
Subject: nvme double __blk_mq_complete_request() bugs
X-Mailer: Zimbra on Oracle Beehive
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=779 bulkscore=0 mlxscore=0 suspectscore=4 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005180040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=792
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005180040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_213023_912893_995D8486 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is to report the below page fault issue for nvme-loop.

[  235.223975] ==================================================================
[  235.224878] BUG: KASAN: null-ptr-deref in blk_mq_free_request+0x363/0x510
[  235.225674] Write of size 4 at addr 0000000000000198 by task swapper/3/0
[  235.226456] 
[  235.226772] ==================================================================
[  235.227633] BUG: kernel NULL pointer dereference, address: 0000000000000198
[  235.228447] #PF: supervisor write access in kernel mode
[  235.229062] #PF: error_code(0x0002) - not-present page
[  235.229667] PGD 0 P4D 0 
[  235.229976] Oops: 0002 [#1] SMP KASAN PTI
[  235.230451] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G    B             5.7.0-rc5+ #1
[  235.231347] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
[  235.232692] RIP: 0010:blk_mq_free_request+0x367/0x510
[  235.233286] Code: 89 df 5b 5d 41 5c 41 5d 41 5e 41 5f e9 a2 dc ff ff 48 8d ba 98 01 00 00 be 04 00 00 00 48 89 14 24 e8 fd 69 9a ff 48 8b 14 24 <f0> ff 8a 98 01 00 00 e9 e2 fe ff ff 48 83 c4 08 48 89 ef be 03 00
[  235.235503] RSP: 0018:ffff8881f7389be0 EFLAGS: 00010046
[  235.236114] RAX: 0000000000000000 RBX: ffff8881f21b9680 RCX: ffffffff816e05b1
[  235.236941] RDX: 0000000000000000 RSI: 0000000000000046 RDI: 0000000000000046
[  235.237770] RBP: 0000000000000001 R08: fffffbfff0af5869 R09: fffffbfff0af5869
[  235.238598] R10: ffffffff857ac347 R11: fffffbfff0af5868 R12: ffff8881f21b969c
[  235.239424] R13: ffff8881f0f62738 R14: ffffe8ffffd884c0 R15: ffff8881f21b9698
[  235.240255] FS:  0000000000000000(0000) GS:ffff8881f7380000(0000) knlGS:0000000000000000
[  235.241192] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  235.241863] CR2: 0000000000000198 CR3: 00000001eb886004 CR4: 0000000000360ee0
[  235.242695] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  235.243523] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  235.244349] Call Trace:
[  235.244645]  <IRQ>
[  235.244890]  blk_mq_complete_request+0x266/0x460
[  235.245432]  nvmet_req_complete+0xd/0xb0
[  235.245898]  iomap_dio_bio_end_io+0x336/0x480
[  235.246409]  blk_update_request+0x320/0x960
[  235.246904]  blk_mq_end_request+0x4e/0x4d0
[  235.247391]  blk_mq_complete_request+0x266/0x460
[  235.247937]  virtblk_done+0x164/0x300
[  235.248372]  ? loop_queue_work.cold.44+0x5e/0x5e
[  235.248915]  ? rcu_accelerate_cbs+0x5d/0x1a70
[  235.249429]  ? virtqueue_get_used_addr+0x140/0x140
[  235.249990]  vring_interrupt+0x16d/0x280
[  235.250454]  __handle_irq_event_percpu+0xdd/0x470
[  235.251010]  handle_irq_event_percpu+0x6e/0x130
[  235.251544]  ? rcu_accelerate_cbs_unlocked+0x110/0x110
[  235.252145]  ? __handle_irq_event_percpu+0x470/0x470
[  235.252729]  ? _raw_spin_lock+0x75/0xd0
[  235.253181]  ? _raw_write_lock+0xd0/0xd0
[  235.253645]  handle_irq_event+0xc2/0x158
[  235.254107]  handle_edge_irq+0x1e9/0x7a0
[  235.254572]  do_IRQ+0x94/0x1e0
[  235.254936]  common_interrupt+0xf/0xf
[  235.255368]  </IRQ>
[  235.255629] RIP: 0010:native_safe_halt+0xe/0x10
[  235.256162] Code: e9 f2 fe ff ff 48 89 df e8 2f dc f8 fd eb a4 cc cc cc cc cc cc cc cc cc cc cc cc cc e9 07 00 00 00 0f 00 2d a4 7d 4a 00 fb f4 <c3> 90 e9 07 00 00 00 0f 00 2d 94 7d 4a 00 f4 c3 cc cc 41 56 41 55
[  235.258314] RSP: 0018:ffff8881f61ffdd8 EFLAGS: 00000246 ORIG_RAX: ffffffffffffffde
[  235.259194] RAX: ffffffff83bc59f0 RBX: dffffc0000000000 RCX: ffffffff83bc6639
[  235.260022] RDX: 1ffff1103ec398e8 RSI: 0000000000000008 RDI: ffff8881f61cc740
[  235.260850] RBP: 0000000000000003 R08: ffffed103ec398e9 R09: ffffed103ec398e9
[  235.261681] R10: ffff8881f61cc747 R11: ffffed103ec398e8 R12: ffffffff84e5c4c0
[  235.262508] R13: 0000000000000003 R14: 1ffff1103ec3ffc4 R15: 0000000000000000
[  235.263338]  ? __cpuidle_text_start+0x8/0x8
[  235.263832]  ? default_idle_call+0x29/0x60
[  235.264315]  ? tsc_verify_tsc_adjust+0x68/0x1f0
[  235.264849]  default_idle+0x1a/0x2b0
[  235.265273]  do_idle+0x2fd/0x3b0
[  235.265658]  ? arch_cpu_idle_exit+0x40/0x40
[  235.266151]  ? schedule_idle+0x56/0x90
[  235.266595]  cpu_startup_entry+0x14/0x20
[  235.267057]  start_secondary+0x2a6/0x340
[  235.267522]  ? set_cpu_sibling_map+0x1fb0/0x1fb0
[  235.268066]  secondary_startup_64+0xb6/0xc0
[  235.268561] Modules linked in:
[  235.268929] CR2: 0000000000000198
[  235.269330] ---[ end trace f8fa823705a3dbe7 ]---
[  235.269875] RIP: 0010:blk_mq_free_request+0x367/0x510
[  235.270466] Code: 89 df 5b 5d 41 5c 41 5d 41 5e 41 5f e9 a2 dc ff ff 48 8d ba 98 01 00 00 be 04 00 00 00 48 89 14 24 e8 fd 69 9a ff 48 8b 14 24 <f0> ff 8a 98 01 00 00 e9 e2 fe ff ff 48 83 c4 08 48 89 ef be 03 00
[  235.272622] RSP: 0018:ffff8881f7389be0 EFLAGS: 00010046
[  235.273230] RAX: 0000000000000000 RBX: ffff8881f21b9680 RCX: ffffffff816e05b1
[  235.274063] RDX: 0000000000000000 RSI: 0000000000000046 RDI: 0000000000000046
[  235.274890] RBP: 0000000000000001 R08: fffffbfff0af5869 R09: fffffbfff0af5869
[  235.275717] R10: ffffffff857ac347 R11: fffffbfff0af5868 R12: ffff8881f21b969c
[  235.276545] R13: ffff8881f0f62738 R14: ffffe8ffffd884c0 R15: ffff8881f21b9698
[  235.277371] FS:  0000000000000000(0000) GS:ffff8881f7380000(0000) knlGS:0000000000000000
[  235.278307] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  235.278977] CR2: 0000000000000198 CR3: 00000001eb886004 CR4: 0000000000360ee0
[  235.279805] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  235.280632] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  235.281459] Kernel panic - not syncing: Fatal exception in interrupt
[  235.282474] Kernel Offset: 0x400000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  235.283695] ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---


This is because of double __blk_mq_complete_request() when resetting nvme-loop.

# echo 1 > /sys/block/nvme1n1/device/nvme1/reset_controller


                                                nvme_loop_queue_response()
                                                -> nvme_end_request()
                                                   -> blk_mq_complete_request()
nvme_loop_reset_ctrl_work()
-> nvme_stop_queues(&ctrl->ctrl)
   -> blk_mq_tagset_busy_iter(&ctrl->tag_set,
            nvme_cancel_request, &ctrl->ctrl);
      -> nvme_cancel_request(): state is not MQ_RQ_COMPLETE()
         -> blk_mq_complete_request()
            -> WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
                                                      -> __blk_mq_complete_request()
                                                         -> WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);



After code analysis, I think this is for nvme-pci as well.

                                       nvme_process_cq()
                                       -> nvme_handle_cqe()
                                          -> nvme_end_request()
                                             -> blk_mq_complete_request()
nvme_reset_work()
-> nvme_dev_disable()
   -> nvme_reap_pending_cqes()
      -> nvme_process_cq()
         -> nvme_handle_cqe()
            -> nvme_end_request()
               -> blk_mq_complete_request()
                  -> __blk_mq_complete_request()
                                                -> __blk_mq_complete_request()


I did not check if nvme-tcp/nvme-fc/nvme-rdma would have the similar issue. Was
there already any fix or discussion for above issue? That is, when resetting
the device, a blk_mq_complete_request() is already in progress.

Thank you very much!

Dongli Zhang

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
