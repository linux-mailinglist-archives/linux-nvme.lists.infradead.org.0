Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C451EB81D
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 11:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HRyDcOXY68Q6SwaOl2yRqV2GH9sr/AffoHzLuk2WV0=; b=iq1RyCYdpA9bs/
	ga+OUnoEJiHT9obZo2jw0kLpYshRypQ3We4R0+76KKeWpgKclM5kW3N2+V1bmPxN4JhHGcga4PCgz
	3++E9Nhwdp3oSYBks5Fizs2ziHTJBb0+S6kfeRa+MQMf37bSO1tpUjP+CWmIYjPB2dePYQphtOUwh
	XfAKSB5tsguOkGu58FDOze2OxMAU6RmrKwlsoPJDo0s77XwzDkX8aa6lzOSk8eGpscmLRF4jsa9a1
	7tC1dLdBbyaZ0ZEDJEvS1kOm9xgnM0D8LoFYyIhEcwl7YQdEbKBmkDElo71Y9YgIx3+/donwcw0nf
	HK6+n2dRq584l3Q+ILDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg30b-0005bP-8Z; Tue, 02 Jun 2020 09:14:57 +0000
Received: from usmailhost21.kioxia.com ([12.0.68.226]
 helo=SJSMAIL01.us.kioxia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg30W-0005b1-1r
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 09:14:54 +0000
Received: from SJSMAIL01.us.kioxia.com (10.90.133.90) by
 SJSMAIL01.us.kioxia.com (10.90.133.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 2 Jun 2020 02:14:46 -0700
Received: from SJSMAIL01.us.kioxia.com ([fe80::48c6:fbb4:9884:9a1c]) by
 SJSMAIL01.us.kioxia.com ([fe80::48c6:fbb4:9884:9a1c%3]) with mapi id
 15.01.1779.004; Tue, 2 Jun 2020 02:14:46 -0700
From: Victor Gladkov <Victor.Gladkov@kioxia.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [bug report] nvmet-tcp: Memory leak when connecting /
 disconnecting to the target
Thread-Topic: [bug report] nvmet-tcp: Memory leak when connecting /
 disconnecting to the target
Thread-Index: AdY4KTU4gt1aoBuCRKuy+fyFMtrw1QAwKVgAAAu/EuA=
Date: Tue, 2 Jun 2020 09:14:46 +0000
Message-ID: <137723703f2c489e87005cf018ddc0a6@kioxia.com>
References: <d9e18f6916a24a5a921ebbf5ec5e0249@kioxia.com>
 <29ca9be1-22d3-dba6-b2d1-648b27e471cc@grimberg.me>
In-Reply-To: <29ca9be1-22d3-dba6-b2d1-648b27e471cc@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.66.127]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_021452_093226_321272DD 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > [Environment]
> > Branch: nvme-5.7
> > Commit: 9210c075cef29c1f764b4252f93105103bdfb292
> 
> Hi, can you please provide kmemleak output for this test case?
> 
> Is this specific to nvmet-tcp? what about nvmet-rdma?

Kmemleak doesn't report any leaks :(

It's happening with nvmet-tcp only. The nvmet-rdma works without leaks.


Target terminal record
----
# lsmod|grep kmem
kmemleak_test          16384  0
#
# modinfo kmemleak_test
filename:       /lib/modules/5.7.0-rc1+KS+/kernel/mm/kmemleak-test.ko
license:        GPL
srcversion:     67EF7E2143EBE69D39BFA1A
depends:
retpoline:      Y
intree:         Y
name:           kmemleak_test
vermagic:       5.7.0-rc1+KS+ SMP mod_unload modversions
#
#
# ./target_load_drivers.sh
nvmet_tcp              28672  0
nvmet_rdma             36864  0
nvmet                 102400  2 nvmet_tcp,nvmet_rdma
rdma_cm               118784  7 rpcrdma,ib_srpt,ib_srp,nvmet_rdma,ib_iser,ib_isert,rdma_ucm
ib_core               409600  14 rdma_cm,ib_ipoib,rpcrdma,ib_srpt,ib_srp,nvmet_rdma,iw_cm,ib_iser,ib_umad,ib_isert,rdma_ucm,ib_uverbs,mlx5_ib,ib_cm
nvme                   49152  4
nvme_core             110592  6 nvme
t10_pi                 16384  2 sd_mod,nvme_core
#
# ./target_create_portal.sh 1 69.69.69.1 4420 tcp
transport type is tcp
/sys/kernel/config/nvmet/ports/1
#
# ./target_add.sh /dev/nvme1n1 target_t0 1
#
# dmesg -c
#
# date
Tue Jun  2 05:01:09 EDT 2020
#
# grep Free /proc/meminfo
MemFree:        61740020 kB
SwapFree:       32964604 kB
HugePages_Free:        0
#
# cat /sys/kernel/debug/kmemleak
#
# echo scan > /sys/kernel/debug/kmemleak
# cat /sys/kernel/debug/kmemleak
#
# date
Tue Jun  2 05:04:12 EDT 2020
#
# dmesg |grep -c "creating controller 1 for subsystem target_t0 for"
1001
#
# grep Free /proc/meminfo
MemFree:        61370724 kB
SwapFree:       32964604 kB
HugePages_Free:        0
#
# echo scan > /sys/kernel/debug/kmemleak
# cat /sys/kernel/debug/kmemleak
#
-------
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
