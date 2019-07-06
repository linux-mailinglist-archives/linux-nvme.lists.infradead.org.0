Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D360FC6
	for <lists+linux-nvme@lfdr.de>; Sat,  6 Jul 2019 12:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e56CEzvdCzp5zYBVcoEQszuB0MBE0MkkFXzXooVrot4=; b=Qz1dNjwbPXtYfp9OLft59nMJF
	PsvwBwlMHBO6YxpHuW3ichQiFkBdAxfs12N2gOgPEvhUyoSLXBabAgpQMOXX40rB10InSMDA3ULpu
	HKq2aRBvidxUOPj1I+D0HEhvFYIaWt9wsL4uftAkw/940WvuEQFWcFec/qEH88veFJO39BFFMtxMa
	AmEmcB1B4EiU7NtQbPoy3jjvzb5m8FADRqOTl+xOYeyYMh3WNdBnimW+P7MXWblxUBOSmZ3SvV7Wv
	b50TTjGqpsUezha7Hht19kqYStP3LX6j2psHwaDLEwGYAvBd7WakjMrgdp2HLZBaGY2Vqlde5W2gR
	DWdq/eomQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjhbA-0004pS-0s; Sat, 06 Jul 2019 10:07:16 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjhb1-0004ow-6t
 for linux-nvme@lists.infradead.org; Sat, 06 Jul 2019 10:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NNcnE6Raw/RsisvUDxCTFJ7Dd7OsezLzztnpuY1kraU=;
 b=Tn/cb7pCZVt9qmBfarkXxZyGvunzu0iMq9w5+Hm/Ggsa6yREA1MPbeiGT9/tHAxKQiWUL06XrBsppv6P1qcj4IZ6E6XV0hsO2vRryrve4H/rMrMt6lc+olSbL97XbVgsW3txsxwsKFWTFB+SkHNVYvdlteE5YyzTipomTG4nGww=
Received: from AM4PR05CA0023.eurprd05.prod.outlook.com (10.171.184.164) by
 AM6PR05MB5077.eurprd05.prod.outlook.com (20.177.36.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Sat, 6 Jul 2019 10:07:01 +0000
Received: from DB5EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by AM4PR05CA0023.outlook.office365.com
 (2603:10a6:205::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2052.19 via Frontend
 Transport; Sat, 6 Jul 2019 10:07:01 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; kalray.eu; dkim=none (message not signed)
 header.d=none;kalray.eu; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT053.mail.protection.outlook.com (10.152.21.119) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Sat, 6 Jul 2019 10:07:00 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sat, 6 Jul 2019 13:06:59
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sat,
 6 Jul 2019 13:06:59 +0300
Received: from [172.16.0.43] (172.16.0.43) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Sat, 6 Jul 2019 13:06:44
 +0300
Subject: Re: [PATCH v2] nvme: fix multipath crash when ANA desactivated
To: Marta Rybczynska <mrybczyn@kalray.eu>, <kbusch@kernel.org>,
 <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>,
 <linux-nvme@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1575872828.30576006.1562335512322.JavaMail.zimbra@kalray.eu>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <989987da-6711-0abc-785c-6574b3bb768c@mellanox.com>
Date: Sat, 6 Jul 2019 13:06:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1575872828.30576006.1562335512322.JavaMail.zimbra@kalray.eu>
Content-Language: en-US
X-Originating-IP: [172.16.0.43]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(396003)(376002)(2980300002)(199004)(189003)(51234002)(2616005)(126002)(476003)(486006)(50466002)(7736002)(305945005)(65956001)(2201001)(65806001)(11346002)(446003)(14444005)(31696002)(86362001)(8676002)(31686004)(356004)(336012)(47776003)(8936002)(230700001)(81156014)(81166006)(5660300002)(106002)(26005)(77096007)(53546011)(110136005)(16526019)(186003)(54906003)(58126008)(65826007)(64126003)(6246003)(67846002)(70586007)(70206006)(16576012)(478600001)(6116002)(3846002)(76176011)(4326008)(316002)(2906002)(23676004)(2486003)(229853002)(45080400002)(36756003)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5077; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e47ed437-6e13-4814-9d5d-08d701f9aff4
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR05MB5077; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB5077:
X-Microsoft-Antispam-PRVS: <AM6PR05MB5077D9D2E77778B923B92E02B6F40@AM6PR05MB5077.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 00909363D5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: v8QQIlLctn/X9KZkpQJgiastvyO6k2lig0qCBn9GBlSIp4VHbWgkeHJjCztMs+9D4lGHi01UVsqlBcFUrLpSXd+B84jhDAbHvNPv0O4Pct/QKKejyq3hbeBcF0sJjuPAA6s0QdaEFYy1pKgsYyDUjbbfWBgRRq3I1NfRBQbNPz6GpO4DFw76Y57QGEuntxJ+0MH9r64XU98opTgXTDWPoDhoiX046aM7/EkbTS43ujUa2baE459CzCk1L44ouook7rTMGA0rFaneNfF/mekPGiICrm6qBB+UN0ln3HBOK632A3JjEosj3e+C4DIsVJjoOcvmRXtfCPBP/YVXsv6UtM7CSgxkJSKjj9lIPJrNwoaR8NSKLe0fSy2N7/8hBZxRFiAHXHciUc225fsWAAwm2yCc6COV25NgFErXtYnpSZw=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2019 10:07:00.4491 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e47ed437-6e13-4814-9d5d-08d701f9aff4
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_030707_306152_43713326 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Samuel Jones <sjones@kalray.eu>, Jean-Baptiste Riaux <jbriaux@kalray.eu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 7/5/2019 5:05 PM, Marta Rybczynska wrote:
> Fix a crash with multipath activated. It happends when ANA log
> page is larger than MDTS and because of that ANA is disabled.
> The driver then tries to access unallocated buffer when connecting
> to a nvme target. The signature is as follows:
>
> [  300.433586] nvme nvme0: ANA log page size (8208) larger than MDTS (8192).
> [  300.435387] nvme nvme0: disabling ANA support.
> [  300.437835] nvme nvme0: creating 4 I/O queues.
> [  300.459132] nvme nvme0: new ctrl: NQN "nqn.0.0.0", addr 10.91.0.1:8009
> [  300.464609] BUG: unable to handle kernel NULL pointer dereference at 0000000000000008
> [  300.466342] #PF error: [normal kernel read fault]
> [  300.467385] PGD 0 P4D 0
> [  300.467987] Oops: 0000 [#1] SMP PTI
> [  300.468787] CPU: 3 PID: 50 Comm: kworker/u8:1 Not tainted 5.0.20kalray+ #4
> [  300.470264] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2011
> [  300.471532] Workqueue: nvme-wq nvme_scan_work [nvme_core]
> [  300.472724] RIP: 0010:nvme_parse_ana_log+0x21/0x140 [nvme_core]
> [  300.474038] Code: 45 01 d2 d8 48 98 c3 66 90 0f 1f 44 00 00 41 57 41 56 41 55 41 54 55 53 48 89 fb 48 83 ec 08 48 8b af 20 0a 00 00 48 89 34 24 <66> 83 7d 08 00 0f 84 c6 00 00 00 44 8b 7d 14 49 89 d5 8b 55 10 48
> [  300.477374] RSP: 0018:ffffa50e80fd7cb8 EFLAGS: 00010296
> [  300.478334] RAX: 0000000000000001 RBX: ffff9130f1872258 RCX: 0000000000000000
> [  300.479784] RDX: ffffffffc06c4c30 RSI: ffff9130edad4280 RDI: ffff9130f1872258
> [  300.481488] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000044
> [  300.483203] R10: 0000000000000220 R11: 0000000000000040 R12: ffff9130f18722c0
> [  300.484928] R13: ffff9130f18722d0 R14: ffff9130edad4280 R15: ffff9130f18722c0
> [  300.486626] FS:  0000000000000000(0000) GS:ffff9130f7b80000(0000) knlGS:0000000000000000
> [  300.488538] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  300.489907] CR2: 0000000000000008 CR3: 00000002365e6000 CR4: 00000000000006e0
> [  300.491612] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  300.493303] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  300.494991] Call Trace:
> [  300.495645]  nvme_mpath_add_disk+0x5c/0xb0 [nvme_core]
> [  300.496880]  nvme_validate_ns+0x2ef/0x550 [nvme_core]
> [  300.498105]  ? nvme_identify_ctrl.isra.45+0x6a/0xb0 [nvme_core]
> [  300.499539]  nvme_scan_work+0x2b4/0x370 [nvme_core]
> [  300.500717]  ? __switch_to_asm+0x35/0x70
> [  300.501663]  process_one_work+0x171/0x380
> [  300.502340]  worker_thread+0x49/0x3f0
> [  300.503079]  kthread+0xf8/0x130
> [  300.503795]  ? max_active_store+0x80/0x80
> [  300.504690]  ? kthread_bind+0x10/0x10
> [  300.505502]  ret_from_fork+0x35/0x40
> [  300.506280] Modules linked in: nvme_tcp nvme_rdma rdma_cm iw_cm ib_cm ib_core nvme_fabrics nvme_core xt_physdev ip6table_raw ip6table_mangle ip6table_filter ip6_tables xt_comment iptable_nat nf_nat_ipv4 nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xt_CHECKSUM iptable_mangle iptable_filter veth ebtable_filter ebtable_nat ebtables iptable_raw vxlan ip6_udp_tunnel udp_tunnel sunrpc joydev pcspkr virtio_balloon br_netfilter bridge stp llc ip_tables xfs libcrc32c ata_generic pata_acpi virtio_net virtio_console net_failover virtio_blk failover ata_piix serio_raw libata virtio_pci virtio_ring virtio
> [  300.514984] CR2: 0000000000000008
> [  300.515569] ---[ end trace faa2eefad7e7f218 ]---
> [  300.516354] RIP: 0010:nvme_parse_ana_log+0x21/0x140 [nvme_core]
> [  300.517330] Code: 45 01 d2 d8 48 98 c3 66 90 0f 1f 44 00 00 41 57 41 56 41 55 41 54 55 53 48 89 fb 48 83 ec 08 48 8b af 20 0a 00 00 48 89 34 24 <66> 83 7d 08 00 0f 84 c6 00 00 00 44 8b 7d 14 49 89 d5 8b 55 10 48
> [  300.520353] RSP: 0018:ffffa50e80fd7cb8 EFLAGS: 00010296
> [  300.521229] RAX: 0000000000000001 RBX: ffff9130f1872258 RCX: 0000000000000000
> [  300.522399] RDX: ffffffffc06c4c30 RSI: ffff9130edad4280 RDI: ffff9130f1872258
> [  300.523560] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000044
> [  300.524734] R10: 0000000000000220 R11: 0000000000000040 R12: ffff9130f18722c0
> [  300.525915] R13: ffff9130f18722d0 R14: ffff9130edad4280 R15: ffff9130f18722c0
> [  300.527084] FS:  0000000000000000(0000) GS:ffff9130f7b80000(0000) knlGS:0000000000000000
> [  300.528396] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  300.529440] CR2: 0000000000000008 CR3: 00000002365e6000 CR4: 00000000000006e0
> [  300.530739] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  300.531989] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  300.533264] Kernel panic - not syncing: Fatal exception
> [  300.534338] Kernel Offset: 0x17c00000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> [  300.536227] ---[ end Kernel panic - not syncing: Fatal exception ]---
>
> Signed-off-by: Marta Rybczynska <marta.rybczynska@kalray.eu>
> Tested-by: Jean-Baptiste Riaux <jbriaux@kalray.eu>
> ---
>   drivers/nvme/host/multipath.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index 499acf0..5ba982b 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -14,7 +14,8 @@
>   
>   inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
>   {
> -	return multipath && ctrl->subsys && (ctrl->subsys->cmic & (1 << 3));
> +	return multipath && ctrl->ana_log_buf && ctrl->subsys &&
> +		(ctrl->subsys->cmic & (1 << 3));
>   }
>   
>   /*
> @@ -614,7 +615,10 @@ int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   {
>   	int error;
>   
> -	if (!nvme_ctrl_use_ana(ctrl))
> +	/* check if multipath is enabled and we have the capability */
> +	if (!multipath)
> +		return 0;
> +	if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) != 0))

shouldn't it be:

if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) == 0))

or

if (!ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))


Otherwise, you don't really do any initialization and return 0 in case you have the capability, right ?

>   		return 0;
>   
>   	ctrl->anacap = id->anacap;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
