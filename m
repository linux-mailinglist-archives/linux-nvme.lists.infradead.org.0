Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C837E6FF
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 02:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1INSimx9M9ppaqHkBw3yy9/yuP/ZIPReiNaxrhcJQ8=; b=fG7lWJ1BFvqAxt
	Yc1BSis2bm0P1aCJoGHwOvepT0qmDRx8/U5fbUzgxgI4Ae5SPPNUvhVUXUBdw+eenLH1P/VdK8vyB
	kuMUvfwFXMnpJ+iLeEqfLwzjaCe5/m7ymapmjW8uiasR9VOzGokBSkuJoJA+zNTvpyMWytOmDBkOl
	0skX+rCqWPj2EqdSfeFzoiGJfFCzw0W1CoD7zPP2foZe/NsjvUJvZhTimLoQ6l7n6fihBl9VUI4Q+
	cx5+BJP8UwtPh3OQPWRuvEt2WdKJ7fp21NT7F+IkIdjjTGF9MjPAkM5Fndy6TgAquLzMKolRenNDc
	lMqBTO1FdmeGTRTdcSDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htL3r-0001Ja-4T; Fri, 02 Aug 2019 00:04:43 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htL3l-0001JF-QE
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 00:04:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 17:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="177992754"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga006.jf.intel.com with ESMTP; 01 Aug 2019 17:04:31 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 1 Aug 2019 17:04:31 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.92]) with mapi id 14.03.0439.000;
 Thu, 1 Aug 2019 17:04:30 -0700
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: nvmet_tcp: panic out of memory on writes
Thread-Topic: nvmet_tcp: panic out of memory on writes
Thread-Index: AdVIxM+oYBNoFtZLQjyML/YbDGJvqwAALcbw
Date: Fri, 2 Aug 2019 00:04:31 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D165B5@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWI3NTE0N2QtZGZhMC00ODY2LThjZDAtNmM2NGU1OTRhMDI2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNEFibkdzQ1lNdmd1Y0RxRVNlUkRhMVV6TWM2dm4wOTBPN0V3VXFlOUJrcFp0SXZUR2NQR2FITUluN3dwRHZEeSJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_170437_892054_C7E6F2CC 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


Am seeing the following Panic during 100% 4K write activity on NVMf tcp tar=
get since 5.2.1_stable.
Exposed device (ram_disk or actual nvme disk) target makes no difference.
Testing shows this occurring back on 5.0.7 as well.

Anyone else see this and working on it, as I dig deeper..

[=A0 654.335950] Workqueue: nvmet_tcp_wq nvmet_tcp_io_work [nvmet_tcp]
[=A0 654.335951] Call Trace:
[=A0 654.335957]=A0 dump_stack+0x5c/0x80
[=A0 654.335961]=A0 dump_header+0x51/0x307
[=A0 654.335964]=A0 ? try_to_del_timer_sync+0x4d/0x80
[=A0 654.335966]=A0 ? oom_unkillable_task+0x94/0xc0
[=A0 654.335967]=A0 oom_kill_process.cold.31+0xb/0x10
[=A0 654.335968]=A0 out_of_memory+0x1c0/0x490
[=A0 654.335971]=A0 __alloc_pages_slowpath+0xc61/0xd40
[=A0 654.335974]=A0 ? recalibrate_cpu_khz+0x10/0x10
[=A0 654.335977]=A0 ? tcp_rcv_space_adjust+0x1d/0x1c0
[=A0 654.335978] =A0__alloc_pages_nodemask+0x2db/0x330
[=A0 654.335980]=A0 sgl_alloc_order+0xb8/0x160
[=A0 654.335982]=A0 nvmet_tcp_map_data+0x7b/0x120 [nvmet_tcp]
[=A0 654.335984]=A0 nvmet_tcp_try_recv_pdu+0x2df/0x4f0 [nvmet_tcp]
[=A0 654.335986]=A0 ? tcp_sendpage_locked+0x44/0x60
[=A0 654.335988]=A0 nvmet_tcp_io_work+0x71/0xa90 [nvmet_tcp]
[=A0 654.335992]=A0 process_one_work+0x1a1/0x3a0
[=A0 654.335993]=A0 worker_thread+0x30/0x380
[=A0 654.335995]=A0 ? pwq_unbound_release_workfn+0xd0/0xd0
[=A0 654.335996]=A0 kthread+0x112/0x130
[=A0 654.335997]=A0 ? kthread_create_on_node+0x60/0x60
[=A0 654.336000]=A0 ret_from_fork+0x35/0x40
[=A0 654.336001] Mem-Info:
[=A0 654.336013] active_anon:27 inactive_anon:47 isolated_anon:0
active_file:45 inactive_file:309 isolated_file:0
unevictable:0 dirty:0 writeback:0 unstable:0
slab_reclaimable:89975 slab_unreclaimable:63857

Cheers --- Mark


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
