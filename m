Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FD070B53
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 23:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HZz0hppAJkT9pmH8WFW+A2DYtO1+vGgCppjGs6PzqJs=; b=OdQweW/2MbzDxd
	+QgdawhVOEW9zeWNbGGXgMzRBnj41AqJx+N7uRx8HquQekQ96YYTj0F3st2cq9pXWIQKAMt6raHvK
	hqosML/bwUQNI/exy8+p7CrwjnEx6fWsOMA0z//h7S1rKYSruB/QO1j5W/0p3OH0nB9UVb0eXZdpB
	gJCPkYwA82Dssl3rzkALzlviYiRYtOCBEBBrPnvJK4IdIINNuOCz37C+/S9kROhfCoYXTb7FVszFi
	zYyjjO9dD2Aap3E57W7RjJ3YQZh547YkIlMllhaSij5n7/BnI2N4bDnh0S73A2MlgiYtx1SaJnASS
	6HCEo4Z8DGIIi+0AlNGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfqT-0002SW-0b; Mon, 22 Jul 2019 21:27:45 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfqB-0002S1-Sz
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 21:27:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 14:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="320805500"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2019 14:27:10 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jul 2019 14:27:09 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.128]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 14:27:09 -0700
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: nvme-tcp: 'page must not be a Slab one'
Thread-Topic: nvme-tcp: 'page must not be a Slab one'
Thread-Index: AdVAzsH265ZDDcHwRSeHQavUYtqujQABGWyQAAA8/1A=
Date: Mon, 22 Jul 2019 21:27:08 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D14FD1@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGI2NTA5NjUtMDcyNC00MWVlLThmOGYtZWI3NTVmYjM4NTY3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibDZ5Yk9uQmJwVm5zQU5BaXYxQjhuN0JWT2tBWGZndGoyTXVYNmVjTzVQMFR4NmNoMmJcLzExVlhZMUl2TE11YXkifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_142727_974957_95E52561 
X-CRM114-Status: UNSURE (   9.55  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

New to this list, not to NVMe_oF.=A0 Apologize up front if this is not an a=
ppropriate use of this forum, please slap wrist appropriately if so. =


Am developing for NVMe_oF/TCP, and seeing the failure message in subject li=
ne during kernel_sendpage.
This failure new to me starting with v5.1.=A0 See it in v5.2 and stable 5.2=
.1

Wondering if this is related to 'nvme-tcp: replace sendpage calls with send=
msg calls for SLAB chunks'?.=A0 If so, is there patch in the works to addre=
ss it, or did I miss it.

Failure details from dmesg:
[=A0 149.087748] page must not be a Slab one [=A0 149.087768] WARNING: CPU:=
 0 PID: 1760 at net/ipv4/tcp.c:947 do_tcp_sendpages+0x5dd/0x600 [=A0 149.08=
7783] CPU: 0 PID: 1760 Comm: kworker/0:1H Tainted: G=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 O=A0=A0=A0=A0=A0 5.1.0stable #4 [=A0 149.087784] Hardware name: D=
ell Inc. PowerEdge R740/00WGD1, BIOS 1.4.9 06/29/2018 [=A0 149.087786] Work=
queue: nvme_tcp_wq nvme_tcp_io_work [nvme_tcp] [=A0 149.087789] RIP: 0010:d=
o_tcp_sendpages+0x5dd/0x600 [=A0 149.087790] Code: 19 d2 00 00 8b 04 24 e9 =
d5 fa ff ff 48 83 ef 01 e9 97 fe ff ff 48 c7 c7 86 a7 16 8b 31 c0 c6 05 42 =
b1 b9 00 01 e8 b3 86 88 ff <0f> 0b eb 99 48 83 e8 01 e9 bb fe ff ff 48 c7 c=
6 c8 21 09 8b e8 2a [=A0 149.087791] RSP: 0018:ffffbae348843cc8 EFLAGS: 000=
10282 [=A0 149.087792] RAX: 0000000000000000 RBX: ffff93bfffdda200 RCX: 000=
0000000000000 [=A0 149.087792] RDX: 000000000000001b RSI: ffffffff8ba7b59b =
RDI: 0000000000000246 [=A0 149.087793] RBP: fffff2fe40c5cdc0 R08: ffffffff8=
ba7b580 R09: fffeb64d287a9675 [=A0 149.087794] R10: 00000000000006e0 R11: 0=
000000000001a1b R12: 00000000000000c0 [=A0 149.087794] R13: fffff2fe40c5cdc=
0 R14: 0000000000000400 R15: 0000000000000001 [=A0 149.087796] FS:=A0 00000=
00000000000(0000) GS:ffff93c03f200000(0000) knlGS:0000000000000000 [=A0 149=
.087797] CS:=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [=A0 149.08779=
7] CR2: 00007faa5a037140 CR3: 000000067820e003 CR4: 00000000007606f0 [=A0 1=
49.087798] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000000000000=
0 [=A0 149.087799] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000=
000000400 [=A0 149.087799] PKRU: 55555554 [=A0 149.087800] Call Trace:
[=A0 149.087804]=A0 tcp_sendpage_locked+0x47/0x60 [=A0 149.087806]=A0 tcp_s=
endpage+0x3d/0x60 [=A0 149.087808]=A0 inet_sendpage+0x3f/0xf0 [=A0 149.0878=
12]=A0 kernel_sendpage+0x1a/0x30 [=A0 149.087815]=A0 nvme_tcp_io_work+0x3cc=
/0x7f0 [nvme_tcp] [=A0 149.087819]=A0 ? __switch_to_asm+0x34/0x70 [=A0 149.=
087824]=A0 process_one_work+0x16c/0x380 [=A0 149.087825]=A0 worker_thread+0=
x49/0x3e0 [=A0 149.087827]=A0 kthread+0xf8/0x130 [=A0 149.087829]=A0 ? max_=
active_store+0x80/0x80 [=A0 149.087830]=A0 ? kthread_bind+0x10/0x10 [=A0 14=
9.087831]=A0 ret_from_fork+0x35/0x40 [=A0 149.087833] ---[ end trace 63a61a=
0696193cca ]--- [=A0 149.087836] nvme nvme0: failed to send request -22 [=
=A0 149.088070] nvme nvme0: Connect command failed, error wo/DNR bit: 4 [=
=A0 149.088367] nvme nvme0: failed to connect queue: 0 ret=3D4

Cheers --- Mark

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
