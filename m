Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCAA66F36
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 14:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRV4ZW8+eO/LfewbwtQeSizNf+yhLwQbtt5i4CtKKI8=; b=qRLyteNf8F/Yhi
	UnIheXN8O0b8B9Dz3OLyVlc9Ns6BD9MG4jd4K6yZ2P1PXnanVQseKa8FkNfDwp2bXECO5pvgE8G0O
	F3nVyrAwf4FgE8ZdfIZ1olTO9RsvT7jsn/OznXe60bnREjHeBwgqZq+uOSIfv6Xk4oJHx53ubA6Va
	zCfyJ2HA0juBcd/9/nt2ExxG/61b6Bgf7QKjVlakKTqlBtV/NUAU/rLCtkOI7StwKwn27aIJdke7w
	WTedGS41e9EBm/S4VbZI6aH8sud/Awx1EMeKNdC+wvFUx2+Iwq/7BWlAH8ZhC6PYhPlSoqy4Kevkr
	ub6aImYqeoYcSm0d346g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlv2S-0000TD-RQ; Fri, 12 Jul 2019 12:52:36 +0000
Received: from mail-vi1eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::602]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlv2L-0000S8-0p
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 12:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OLKR3QY2bGyt2XUAm+GG5qk8P4MJSItKWt538zo4Q1o=;
 b=lZQ69Piq8W/JYarxgfyHLzQZro9/0rHAbeYe1LYF/qdfV06DEM8/h8rf7LE4kjS/1LGbnOhVIZFUTaubYpNTvSTsgSY4HfXeN9dheErLurQVsY8uhB79QlifDPu6F1DFVWWoIQ+smkkzY/37ht8Vy6ZsaNcBb/bqipvQ0L2YSjo=
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com (20.176.214.160) by
 AM0PR05MB5940.eurprd05.prod.outlook.com (20.178.202.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Fri, 12 Jul 2019 12:52:24 +0000
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279]) by AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279%5]) with mapi id 15.20.2052.020; Fri, 12 Jul 2019
 12:52:24 +0000
From: Parav Pandit <parav@mellanox.com>
To: Yi Zhang <yi.zhang@redhat.com>, Selvin Xavier <selvin.xavier@broadcom.com>
Subject: RE: regression: nvme rdma with bnxt_re0 broken
Thread-Topic: regression: nvme rdma with bnxt_re0 broken
Thread-Index: 2UfSPBB7aurhIBgBOMtlZZ/Acg5lQJrLV3lwgAA5BsCAAKCFgIAAD6MggAAPzICAAF+3EIAAAyXAgAACz1CAAB8vgIAAE91w
Date: Fri, 12 Jul 2019 12:52:24 +0000
Message-ID: <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
References: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
 <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
 <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866070FBADCCABD1F84E42ED1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
In-Reply-To: <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=parav@mellanox.com; 
x-originating-ip: [49.207.52.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d94203a3-fc62-4423-be83-08d706c7c980
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR05MB5940; 
x-ms-traffictypediagnostic: AM0PR05MB5940:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR05MB5940AC959257071131CB9431D1F20@AM0PR05MB5940.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(189003)(199004)(13464003)(71190400001)(486006)(8936002)(68736007)(8676002)(110136005)(81166006)(33656002)(2906002)(14454004)(54906003)(71200400001)(966005)(86362001)(316002)(3846002)(229853002)(6116002)(81156014)(14444005)(74316002)(7736002)(256004)(305945005)(6506007)(53546011)(52536014)(26005)(66446008)(66556008)(66066001)(476003)(66946007)(76116006)(55236004)(66476007)(5660300002)(53936002)(64756008)(55016002)(99286004)(6436002)(25786009)(9686003)(4326008)(102836004)(6306002)(7696005)(186003)(11346002)(76176011)(6246003)(446003)(478600001)(10126625002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB5940;
 H:AM0PR05MB4866.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JNavzv5UpUYeyU0aiSefwGFzFo4B8zQC+TTnb3Z1xlQIVh99mKBlQhjEXoUqyD1EPcpoujecw/xkb264FeC04eaO4Qf5pixZYG1obWmyxr5BwzeSJY5PKASZZPF/wmQJX+gqM9Shp0gCJ/VYn6BvwJf6k5U4WAx4bBUyTBwOP6zlujL8DZBu/I3R6lbrxMD2HnKh90vGaiU1z1SHkrmSbJDG/t9mRRFXtnlrvCCsgkd5Vw9+9/kCIrxilOYj5n4sSrn2rIpCsyHaOHAeFCPm/LpCClulom9iqD1JM4SVJhog8Ilr6hM6C4MeWr221dHNM6AKeixQ7Y5VWLe6Pl3aXcWcmQ4xyRkf/eF7FLG8VeTchEAQCCvveWCLYC7+qxPfwLrIKSwvOspb/m6dl733izc1l0Fp8vuRDhegIS8B9L8=
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d94203a3-fc62-4423-be83-08d706c7c980
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 12:52:24.4601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: parav@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5940
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_055229_142458_4E9BD5CA 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Jurgens <danielj@mellanox.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Devesh Sharma <devesh.sharma@broadcom.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Yi Zhang <yi.zhang@redhat.com>
> Sent: Friday, July 12, 2019 5:11 PM
> To: Parav Pandit <parav@mellanox.com>; Selvin Xavier
> <selvin.xavier@broadcom.com>
> Cc: Daniel Jurgens <danielj@mellanox.com>; linux-rdma@vger.kernel.org;
> Devesh Sharma <devesh.sharma@broadcom.com>; linux-
> nvme@lists.infradead.org
> Subject: Re: regression: nvme rdma with bnxt_re0 broken
> 
> Hi Parav
> The nvme connect still failed[1], I've paste all the dmesg log to[2], pls check it.
> 
> 
> [1]
> [root@rdma-perf-07 ~]$ nvme connect -t rdma -a 172.31.40.125 -s 4420 -n
> testnqn
> Failed to write to /dev/nvme-fabrics: Connection reset by peer
> [2]
> https://pastebin.com/ipvak0Sp
> 

I think vlan_id is not initialized to 0xffff due to which ipv4 entry addition also failed with my patch.
This is probably solves it. Not sure. I am not much familiar with it.

Selvin,
Can you please take a look?

From 7b55e1d4500259cf7c02fb4d9fbbeb5ad1cfc623 Mon Sep 17 00:00:00 2001
From: Parav Pandit <parav@mellanox.com>
Date: Fri, 12 Jul 2019 04:34:52 -0500
Subject: [PATCH v1] IB/bnxt_re: Honor vlan_id in GID entry comparison

GID entry consist of GID, vlan, netdev and smac.
Extend GID duplicate check companions to consider vlan_id as well
to support IPv6 VLAN based link local addresses.

GID deletion based on only GID comparision is not correct.
It needs further fixes.

Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
Change-Id: I2e026ec8065c8425ba24fad8525323d112a2f4e4
Signed-off-by: Parav Pandit <parav@mellanox.com>
---
 drivers/infiniband/hw/bnxt_re/qplib_res.c | 5 +++++
 drivers/infiniband/hw/bnxt_re/qplib_sp.c  | 7 ++++++-
 drivers/infiniband/hw/bnxt_re/qplib_sp.h  | 1 +
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.c b/drivers/infiniband/hw/bnxt_re/qplib_res.c
index 37928b1111df..216648b640ce 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_res.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_res.c
@@ -488,6 +488,8 @@ static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
 				     struct bnxt_qplib_sgid_tbl *sgid_tbl,
 				     u16 max)
 {
+	u16 i;
+
 	sgid_tbl->tbl = kcalloc(max, sizeof(struct bnxt_qplib_gid), GFP_KERNEL);
 	if (!sgid_tbl->tbl)
 		return -ENOMEM;
@@ -500,6 +502,9 @@ static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
 	if (!sgid_tbl->ctx)
 		goto out_free2;
 
+	for (i = 0; i < max; i++)
+		sgid_tbl->tbl[i].vlan_id = 0xffff;
+
 	sgid_tbl->vlan = kcalloc(max, sizeof(u8), GFP_KERNEL);
 	if (!sgid_tbl->vlan)
 		goto out_free3;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.c b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
index 48793d3512ac..0d90be88685f 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
@@ -236,6 +236,9 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 		return -ENOMEM;
 	}
 	for (index = 0; index < sgid_tbl->max; index++) {
+		/* FIXME: GID delete should happen based on index
+		 * and refcount
+		 */
 		if (!memcmp(&sgid_tbl->tbl[index], gid, sizeof(*gid)))
 			break;
 	}
@@ -296,7 +299,8 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 	}
 	free_idx = sgid_tbl->max;
 	for (i = 0; i < sgid_tbl->max; i++) {
-		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
+		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid)) &&
+		    sgid_tbl->tbl[i].vlan_id == vlan_id) {
 			dev_dbg(&res->pdev->dev,
 				"SGID entry already exist in entry %d!\n", i);
 			*index = i;
@@ -351,6 +355,7 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 	}
 	/* Add GID to the sgid_tbl */
 	memcpy(&sgid_tbl->tbl[free_idx], gid, sizeof(*gid));
+	sgid_tbl->tbl[free_idx].vlan_id = vlan_id;
 	sgid_tbl->active++;
 	if (vlan_id != 0xFFFF)
 		sgid_tbl->vlan[free_idx] = 1;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.h b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
index 0ec3b12b0bcd..7a1957c9dc6f 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.h
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
@@ -82,6 +82,7 @@ struct bnxt_qplib_pd {
 
 struct bnxt_qplib_gid {
 	u8				data[16];
+	u16 vlan_id;
 };
 
 struct bnxt_qplib_ah {
-- 
2.19.2
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
