Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762577D21E
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 01:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fB/S5ROgR9JJCAuRxCDxFrGKW8F/ZJHOI+oye5inLQk=; b=Aih/3zY65xi5r6
	3Go1j0XX7EpJTBxLXoMRXUi+P8Ds1JEJc5nzwv5I8BDFBC967T+pg3klSatAAsNHt8cj6yQ0BmgIf
	Bxndf3v+QsIzS8/RwOINuGpQXxaE8Csx/WWPDvHuMvlI0MsOM7twYlLC7jE4+p9rCYBq/W+xCUH/X
	8GjnuRWroS67c411A0sI8TMeAOafNBI8dX1ksGyOCz93aNyLHEG2nDHHoWquKK4oyxKZbX2w57Vw2
	EFHirj3/opTXRWEK48k7JaCoh0bgnJ8/Lp5TGvUZUlpcqu2IZgTTq0Vxrnm5O3CRyHExHvwNkyCox
	JjyWcCwiZ/womg8FaQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsyRd-0006gt-S5; Wed, 31 Jul 2019 23:55:45 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsyRY-0006gV-5a
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 23:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564617341; x=1596153341;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=kJP4dx0t/Zd1V69MhKBR/aPy7qZrSsnPXJYEu/vJtm8=;
 b=KaKTpOVM0h33YtEwGUTKvDY4cg7SowpXnFpG6JgIzqEHsvggOGBWRb2j
 L8ByDWWAErGpL0ad3x7zg9zeEhdxAunsHtDg7h0o0HrsoyuUtsZeUnY3m
 rM34h3NyzJCHuf9YO9vhbVDDoie7A3/w552prNXA/EWT1iLnZKPQKKdSP
 /H2ub1P1aLdAk2WwvPR51HBM/3YTT0FtSU83JfFNdu9XKIJaIccuNP8D6
 yk0NCPkkvnlFn4dIDi1+xrz5hG5AsY/56gVLoWCqmccslR7Mx+XTrr5SC
 f+im9L6QXbd6AeXfhxp134VPdu/IUAl0qiJyG1LzV6l1IRLeoSZhvpp20 A==;
IronPort-SDR: a109tpcif6S4TpUrKEeLn858Vu4gFwZuagnhKQiRnYEOMJGaHTRhiBreO1vAXjo9+rjwxfaOKV
 aerhPSqulFS44LTdg6QRKDDJiYcc5hs0LUY3ZfRx72MNGJu45F2c80HOWDfGKxA4N39ricmfD2
 MSpobQ38B4chHjCTn2VcfFUt+CeouH2DPz53Bpec0I42YbnEuj1fB1IEVWOSiZ39LbOrJ6QpOT
 sMXxaB4iKHEjlrRX3G4ztpgCdVilXuw+hiOiEGOxWT0cXmFwvAElCJEOdkr5Zl/pZSQMyPuIXW
 7gw=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="116243208"
Received: from mail-by2nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.58])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 07:55:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZN7KeAjqox8RoSbyvP83vLvd4pO0ZkM7xXzO55Z4dJdJfIyHwqVNUnay7uilsIbTB91tcc/4Pguzkvovx9ewLGpFIO3otlPk5BuVlyedOftDuSW+SBcXmpLGK7+NHq1PZ1nTMGC0QT0VNum3mSqXDbAAHGnOXwERDnu05eSqUQ4dpoHP2hJQV0IALFnj4Z7YWR9VE1SQm1nAV6uJ1CgD4A0HOGUEICN6LrgdpZCiJW/JOpbrgfwjMGVxU2jRdAJ8qSfRo72YLAu39zOUmTbPYgUy7VJC0rmj6adHrNCTTRrZg73mtxd6wUqAS1vvQKD90cz/uEYt+byvxZTWrwltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ydz6E4wcN7wL7L0T2PZtfOiCYnVZA3/2vo3DVEDA5lM=;
 b=O9ghr5WGT4oBJUp69aZSNdGg9ZxMi9nMVDZPTMvMhEF3ffbd0qUkuQ/lwL2Asqij6GkfPIbK/gJzcHhbGctJ5dMZ/+vJh36dWwxz3QTg7+AAW7nPXeIssAI8XJXde44SZTLzFtaPl/ls5Ev7723BVAck7ZfBcNYBRZjhrHRQ0yNdeJz2ZSA3Me87lSRYM824CKYc5zS3aVZU8lHvQBsyagYdQe9X+/oSjgBq2np5mIj+9lrWkrBf4yHD+QmoFhJ6h7Me8YttUc67Py3hJlWuSihS2Nd0IVBMD7q6WVZs0qiJ5BYucvwoqtMBy8X88EEE9sRo93hfBqppOOu5eLZ7+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ydz6E4wcN7wL7L0T2PZtfOiCYnVZA3/2vo3DVEDA5lM=;
 b=jpq/qccIhdfZu/mLKEB1MMMqEzBW84fP9sdPqlmvDmrhRki+86QRsmH47xs+MrjETWY0LM2OBW/gav+jmuiwP+i0+aAFRm7SnM3mm27DXkpiCtVMDrP8Qb3SnVNSbBA8Qi/9xO2PkbRuy2qOT0Mhj1j/XFqQltnRImay9gJ2gKo=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4230.namprd04.prod.outlook.com (20.176.250.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 23:55:35 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 23:55:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v3 4/4] nvme-core: Fix extra device_put() call on error
 path
Thread-Topic: [PATCH v3 4/4] nvme-core: Fix extra device_put() call on error
 path
Thread-Index: AQHVR/i+1fhdZr0kF06eWlqDWEoVqQ==
Date: Wed, 31 Jul 2019 23:55:35 +0000
Message-ID: <BYAPR04MB5749D1E8D9D093CDEEC7108486DF0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190731233534.4841-1-logang@deltatee.com>
 <20190731233534.4841-5-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c20dbf36-e33a-4fb4-81cf-08d7161294b3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4230; 
x-ms-traffictypediagnostic: BYAPR04MB4230:
x-microsoft-antispam-prvs: <BYAPR04MB4230976DC3AA77C6C377293186DF0@BYAPR04MB4230.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(136003)(39860400002)(396003)(199004)(189003)(25786009)(256004)(186003)(86362001)(26005)(14444005)(486006)(6246003)(6506007)(53546011)(2201001)(2501003)(66066001)(74316002)(305945005)(68736007)(81166006)(3846002)(102836004)(446003)(76176011)(99286004)(476003)(33656002)(8936002)(7696005)(53936002)(66556008)(2906002)(81156014)(4326008)(8676002)(6116002)(6436002)(229853002)(9686003)(66476007)(71190400001)(5660300002)(76116006)(66946007)(71200400001)(7736002)(52536014)(478600001)(54906003)(55016002)(14454004)(110136005)(316002)(64756008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4230;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wdt6hhaX21fdWsBoicmXCzL1FU8lYFTCe8ntMITT/VrE/6wDoAxY04PbDHXXOD8IsmRVq0oxbQO1TIzEo9jz1fX1j/aALW7yXeteG9bgp6AIOHKm225wmW3WPtTPAb6dSUX88XaQyxPaOkvS+8zYG9OW5VYq69kZbnGnURpkIzkp2En/es2gC/P/EuVi4PYPPrQrjX6IVB43jhEHlUwKDKqqKfU1Wa4Yg7lJsez5NEhHieGpuvC7kw8FAcyG3IUKUzVYfpUZVBCPqI7zkRLi7QyEDJWlXzFHSk7eaf5eZKSOqQP1SWtP/w5dXHUOb+HB2kR+onfyT1ha6+xt36xusXPg4bUSJ75MnnalP7Pjfly4FTQSJsw8njnhkn0xluAE7/2gMA/ayfIlwPKNQAlry0RGaMd5cX+YjeguJ/Z/u7M=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20dbf36-e33a-4fb4-81cf-08d7161294b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 23:55:35.4699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_165540_255092_A24D55CF 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 07/31/2019 04:36 PM, Logan Gunthorpe wrote:
> In the error path for nvme_init_subsystem(), nvme_put_subsystem()
> will call device_put(), but it will get called again after the
> mutex_unlock().
>
> The device_put() only needs to be called if device_add() fails.
>
> This bug caused a KASAN use-after-free error when adding and
> removing subsytems in a loop:
>
>    BUG: KASAN: use-after-free in device_del+0x8d9/0x9a0
>    Read of size 8 at addr ffff8883cdaf7120 by task multipathd/329
>
>    CPU: 0 PID: 329 Comm: multipathd Not tainted 5.2.0-rc6-vmlocalyes-00019-g70a2b39005fd-dirty #314
>    Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
>    Call Trace:
>     dump_stack+0x7b/0xb5
>     print_address_description+0x6f/0x280
>     ? device_del+0x8d9/0x9a0
>     __kasan_report+0x148/0x199
>     ? device_del+0x8d9/0x9a0
>     ? class_release+0x100/0x130
>     ? device_del+0x8d9/0x9a0
>     kasan_report+0x12/0x20
>     __asan_report_load8_noabort+0x14/0x20
>     device_del+0x8d9/0x9a0
>     ? device_platform_notify+0x70/0x70
>     nvme_destroy_subsystem+0xf9/0x150
>     nvme_free_ctrl+0x280/0x3a0
>     device_release+0x72/0x1d0
>     kobject_put+0x144/0x410
>     put_device+0x13/0x20
>     nvme_free_ns+0xc4/0x100
>     nvme_release+0xb3/0xe0
>     __blkdev_put+0x549/0x6e0
>     ? kasan_check_write+0x14/0x20
>     ? bd_set_size+0xb0/0xb0
>     ? kasan_check_write+0x14/0x20
>     ? mutex_lock+0x8f/0xe0
>     ? __mutex_lock_slowpath+0x20/0x20
>     ? locks_remove_file+0x239/0x370
>     blkdev_put+0x72/0x2c0
>     blkdev_close+0x8d/0xd0
>     __fput+0x256/0x770
>     ? _raw_read_lock_irq+0x40/0x40
>     ____fput+0xe/0x10
>     task_work_run+0x10c/0x180
>     ? filp_close+0xf7/0x140
>     exit_to_usermode_loop+0x151/0x170
>     do_syscall_64+0x240/0x2e0
>     ? prepare_exit_to_usermode+0xd5/0x190
>     entry_SYSCALL_64_after_hwframe+0x44/0xa9
>    RIP: 0033:0x7f5a79af05d7
>    Code: 00 00 0f 05 48 3d 00 f0 ff ff 77 3f c3 66 0f 1f 44 00 00 53 89 fb 48 83 ec 10 e8 c4 fb ff ff 89 df 89 c2 b8 03 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 2b 89 d7 89 44 24 0c e8 06 fc ff ff 8b 44 24
>    RSP: 002b:00007f5a7799c810 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
>    RAX: 0000000000000000 RBX: 0000000000000008 RCX: 00007f5a79af05d7
>    RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000008
>    RBP: 00007f5a58000f98 R08: 0000000000000002 R09: 00007f5a7935ee80
>    R10: 0000000000000000 R11: 0000000000000293 R12: 000055e432447240
>    R13: 0000000000000000 R14: 0000000000000001 R15: 000055e4324a9cf0
>
>    Allocated by task 1236:
>     save_stack+0x21/0x80
>     __kasan_kmalloc.constprop.6+0xab/0xe0
>     kasan_kmalloc+0x9/0x10
>     kmem_cache_alloc_trace+0x102/0x210
>     nvme_init_identify+0x13c3/0x3820
>     nvme_loop_configure_admin_queue+0x4fa/0x5e0
>     nvme_loop_create_ctrl+0x469/0xf40
>     nvmf_dev_write+0x19a3/0x21ab
>     __vfs_write+0x66/0x120
>     vfs_write+0x154/0x490
>     ksys_write+0x104/0x240
>     __x64_sys_write+0x73/0xb0
>     do_syscall_64+0xa5/0x2e0
>     entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
>    Freed by task 329:
>     save_stack+0x21/0x80
>     __kasan_slab_free+0x129/0x190
>     kasan_slab_free+0xe/0x10
>     kfree+0xa7/0x200
>     nvme_release_subsystem+0x49/0x60
>     device_release+0x72/0x1d0
>     kobject_put+0x144/0x410
>     put_device+0x13/0x20
>     klist_class_dev_put+0x31/0x40
>     klist_put+0x8f/0xf0
>     klist_del+0xe/0x10
>     device_del+0x3a7/0x9a0
>     nvme_destroy_subsystem+0xf9/0x150
>     nvme_free_ctrl+0x280/0x3a0
>     device_release+0x72/0x1d0
>     kobject_put+0x144/0x410
>     put_device+0x13/0x20
>     nvme_free_ns+0xc4/0x100
>     nvme_release+0xb3/0xe0
>     __blkdev_put+0x549/0x6e0
>     blkdev_put+0x72/0x2c0
>     blkdev_close+0x8d/0xd0
>     __fput+0x256/0x770
>     ____fput+0xe/0x10
>     task_work_run+0x10c/0x180
>     exit_to_usermode_loop+0x151/0x170
>     do_syscall_64+0x240/0x2e0
>     entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Fixes: 32fd90c40768 ("nvme: change locking for the per-subsystem controller list")
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 80c7a7ee240b..e35f16b60fc9 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2488,6 +2488,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   		if (ret) {
>   			dev_err(ctrl->device,
>   				"failed to register subsystem device.\n");
> +			put_device(&subsys->dev);
>   			goto out_unlock;
>   		}
>   		ida_init(&subsys->ns_ida);
> @@ -2510,7 +2511,6 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   	nvme_put_subsystem(subsys);
>   out_unlock:
>   	mutex_unlock(&nvme_subsystems_lock);
> -	put_device(&subsys->dev);
>   	return ret;
>   }
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
