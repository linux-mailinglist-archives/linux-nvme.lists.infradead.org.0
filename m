Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FDE32591
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 00:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RyTdGWp9t5rn+cck+1n6v4nRqG34VRTvcnjd3pGHtxA=; b=Kkq5R08oWR/ZSz
	MnKkx+EKIpTmFN5nXpiXu+/0enrd9fl2ixPTss8fJZVV+Vwpq1GxFk7DRiaR+wPx471v+faF1eq0e
	BEz3G+VvyuCftsWKfXWrXk56mS0zTKFZyr02+U49KDCuhpUqEOSdIqANhx0ONCPnC+07uZHGZKrVx
	axOa9H4wL0NqT8YPFsJy75Xyy6hUvtRpKNWlk40kZ5Xdsihkvnc3Mi0V9Nc/xkhYhBPubkZOk7EDr
	z++bQDmxZUGLkdo7U8tN0sik1E+zfbpcLt/8/g2kmFtKmhPDXA8pGYPmMV7FD4lvh572L2fn5i/OR
	72a6A0Qr9hk6CPsW9drw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZIk-0004Rm-Nv; Sun, 02 Jun 2019 22:50:06 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZIb-0004R8-Qt
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 22:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559515798; x=1591051798;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=7BmZ7tIBFlm7qL+QRFED1dhESJDdtR607gk6f6NtoqM=;
 b=bPIFMPC2MoXIhH4xmwfq4yzmsPIEdJY85m74JYzLMxwBWF+6QD0mljU8
 tYH/T0iMppiaBucLIlxcg02Mnyk9KkgS+QwwLet9ozVSoItYh7x4MHsW7
 8ngUBIf54QGiJMZfzdJVVueLy2aYiXdOZ5cJD26uOtToHA9Cq2P0dvX4H
 CKLKuYzLxqdvNHa7LCW7n0pFJ4eo3vFosXJpuiOmYVp5raOr8xg5pqK1o
 lDuucpFSnbQtDjkxn4twI2m0Ft923BCmyw2nN+HX35D74T5YoC0nYEV5h
 PHb3gi5UXph6wOpZSDkfBA4mUUrm2aZdRG2P4fEyU3sYIy/HFA2qQ7OyU A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="114564363"
Received: from mail-sn1nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.57])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 06:49:55 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g3xc6cqIHNC9y9/uSSrRTsPcDb0ohSD5xes/iigjc7A=;
 b=yupcj1ZtbCarXKXxfSEB6BQAqnGRzHZ+rcBoMKdT691JLoVJ+pQPLFAJz3hr80CkPnoJ62h0nwqdNa8pXQp5fR2Q+WYDe8/qwHqh7rWkToaKG+3pWv6rYI32W6FA1Zj8IaUqgHkYGKHwOreHd9VfMDnf1ucL5yE6z5423gqYROI=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5111.namprd04.prod.outlook.com (52.135.235.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 22:49:53 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 22:49:53 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2 3/3] Documentation: nvme: add an example for nvme fault
 injection
Thread-Topic: [PATCH v2 3/3] Documentation: nvme: add an example for nvme
 fault injection
Thread-Index: AQHVGUo+07MONnkfLEa1BmI230Fuew==
Date: Sun, 2 Jun 2019 22:49:53 +0000
Message-ID: <BYAPR04MB57499DADBDCAB4ED9D60CE2D861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-4-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffa4b704-5e12-439f-d47c-08d6e7aca0bc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5111; 
x-ms-traffictypediagnostic: BYAPR04MB5111:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB51115EEE94A7C0278B73DE0F861B0@BYAPR04MB5111.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(376002)(39860400002)(136003)(199004)(189003)(52536014)(256004)(5660300002)(14444005)(446003)(476003)(71190400001)(68736007)(71200400001)(478600001)(316002)(14454004)(486006)(72206003)(2501003)(86362001)(8676002)(229853002)(81166006)(81156014)(33656002)(99286004)(7696005)(55016002)(6436002)(186003)(66946007)(73956011)(25786009)(76116006)(4326008)(8936002)(64756008)(66476007)(66556008)(66446008)(9686003)(53546011)(110136005)(6506007)(102836004)(53936002)(66066001)(54906003)(2906002)(6246003)(305945005)(76176011)(7736002)(3846002)(6116002)(74316002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5111;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wQyeb68DL72WIMHjHxupmbG/U8dFgmezVbdGzHtuqB4k/gk2pFghuaAf+6+j8ZduABsjDksCtpLJGwvp6oWQcLkl+2pAhJZ4IqrUCBtK4RMP8dHHYGSTzQYy4CY3g3TFye7hn0jo5XoO5hFILalbkK4Zcagx8DoKohc04un0XShTfF1kemDHQ0o14wqvk6FEEWTjj0+eNylZKUo0QqPFqwkBf7/hc//SCia6UWXk+rMlVRfxz5DyyuG91PlLJWEC3oqqezlf+Qp4zI1BMkVIvlKkGClelz6tlkKB4xnnT2QGe3S+DmpiVZuWrxbrcYhgNPnr2Z0py4EG9PNzWI9HnPkB62fBAYc2Xy0+wCTwzaslpeKGRc5y5W3GW2y5KI4HYizi1lhH6riHUYTJg4lApbfwKJEgyebC6V0aUZDJwoM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa4b704-5e12-439f-d47c-08d6e7aca0bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 22:49:53.4795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_154957_988595_60AE9E53 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for updating the file with nice example, it is really helpful.

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 6/2/19 6:51 AM, Akinobu Mita wrote:
> This adds an example of how to inject errors into admin commands.
>
> Cc: Thomas Tai <thomas.tai@oracle.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Suggested-by: Thomas Tai <thomas.tai@oracle.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
> * v2
> - New patch from v2
>
>  .../fault-injection/nvme-fault-injection.txt       | 56 ++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
>
> diff --git a/Documentation/fault-injection/nvme-fault-injection.txt b/Documentation/fault-injection/nvme-fault-injection.txt
> index 8fbf3bf..efcb339 100644
> --- a/Documentation/fault-injection/nvme-fault-injection.txt
> +++ b/Documentation/fault-injection/nvme-fault-injection.txt
> @@ -114,3 +114,59 @@ R13: ffff88011a3c9680 R14: 0000000000000000 R15: 0000000000000000
>    cpu_startup_entry+0x6f/0x80
>    start_secondary+0x187/0x1e0
>    secondary_startup_64+0xa5/0xb0
> +
> +Example 3: Inject an error into the 10th admin command
> +------------------------------------------------------
> +
> +echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
> +echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
> +echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
> +nvme reset /dev/nvme0
> +
> +Expected Result:
> +
> +After NVMe controller reset, the reinitialization may or may not succeed.
> +It depends on which admin command is actually forced to fail.
> +
> +Message from dmesg:
> +
> +nvme nvme0: resetting controller
> +FAULT_INJECTION: forcing a failure.
> +name fault_inject, interval 1, probability 100, space 1, times 1
> +CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-rc2+ #2
> +Hardware name: MSI MS-7A45/B150M MORTAR ARCTIC (MS-7A45), BIOS 1.50 04/25/2017
> +Call Trace:
> + <IRQ>
> + dump_stack+0x63/0x85
> + should_fail+0x14a/0x170
> + nvme_should_fail+0x38/0x80 [nvme_core]
> + nvme_irq+0x129/0x280 [nvme]
> + ? blk_mq_end_request+0xb3/0x120
> + __handle_irq_event_percpu+0x84/0x1a0
> + handle_irq_event_percpu+0x32/0x80
> + handle_irq_event+0x3b/0x60
> + handle_edge_irq+0x7f/0x1a0
> + handle_irq+0x20/0x30
> + do_IRQ+0x4e/0xe0
> + common_interrupt+0xf/0xf
> + </IRQ>
> +RIP: 0010:cpuidle_enter_state+0xc5/0x460
> +Code: ff e8 8f 5f 86 ff 80 7d c7 00 74 17 9c 58 0f 1f 44 00 00 f6 c4 02 0f 85 69 03 00 00 31 ff e8 62 aa 8c ff fb 66 0f 1f 44 00 00 <45> 85 ed 0f 88 37 03 00 00 4c 8b 45 d0 4c 2b 45 b8 48 ba cf f7 53
> +RSP: 0018:ffffffff88c03dd0 EFLAGS: 00000246 ORIG_RAX: ffffffffffffffdc
> +RAX: ffff9dac25a2ac80 RBX: ffffffff88d53760 RCX: 000000000000001f
> +RDX: 0000000000000000 RSI: 000000002d958403 RDI: 0000000000000000
> +RBP: ffffffff88c03e18 R08: fffffff75e35ffb7 R09: 00000a49a56c0b48
> +R10: ffffffff88c03da0 R11: 0000000000001b0c R12: ffff9dac25a34d00
> +R13: 0000000000000006 R14: 0000000000000006 R15: ffffffff88d53760
> + cpuidle_enter+0x2e/0x40
> + call_cpuidle+0x23/0x40
> + do_idle+0x201/0x280
> + cpu_startup_entry+0x1d/0x20
> + rest_init+0xaa/0xb0
> + arch_call_rest_init+0xe/0x1b
> + start_kernel+0x51c/0x53b
> + x86_64_start_reservations+0x24/0x26
> + x86_64_start_kernel+0x74/0x77
> + secondary_startup_64+0xa4/0xb0
> +nvme nvme0: Could not set queue count (16385)
> +nvme nvme0: IO queues not created



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
