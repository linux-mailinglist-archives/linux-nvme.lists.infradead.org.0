Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8566A7B
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 11:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeuenaBmpKalRSZ4yMatknIAHf6Uvbn61rHEtiNbFtM=; b=n1W2Ctpk31XFUK
	n3JToC61eaaGwiBbVAfkf4LWg3zYZlBGlbHAdKSIgA/auONANdSBI2pISFHOwxiv8qwnbhpNuQTG5
	bTpyw2wqoXanEzIdK3Xtyq05+GzEf8QrJgoH92yA+ciiNv/TnhOcqJwDmj2syX6V/5Hxoo1aRV7UG
	ljb+3NXwJlh3P388OADIY9NY32U2Jbxw5xA7ScTWb849pWk5eYb1dp5+yPhBRzGhPlAg11sS3lR68
	Ap9X8zhc8mEQzRWvMcXFGJvEhxC0kf1TrIp+I9haCUycU6IXxqLLaOLreHE9wWTNEg/VWXu3An9Pu
	iNa2H1BRVzkk6WGphFuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsBh-00027G-Ol; Fri, 12 Jul 2019 09:49:58 +0000
Received: from mail-db3eur04on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::623]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsBW-00026s-BT
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 09:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=42v6ksylWm05fuwaDYP/bk+Laya2OZku8YBShJn/O/E=;
 b=jsGueN4jaaO+tkYMLQyralZjJm3u1tTSE0LXh7uJ4EeMzoKmgF1c6+rkiCRz+56QDmrzpAYA3KjnuQrzVhTmX5YfGZqAtyoXJ1LecV0fbmBSrkcyVXPgy2uwGZX3RTzQk+TjO82nP+p85U15tE2W7CgCEtUwmYsLE3ftChsfx4Y=
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com (20.176.214.160) by
 AM0PR05MB5298.eurprd05.prod.outlook.com (20.178.18.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 12 Jul 2019 09:49:43 +0000
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279]) by AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279%5]) with mapi id 15.20.2052.020; Fri, 12 Jul 2019
 09:49:43 +0000
From: Parav Pandit <parav@mellanox.com>
To: Selvin Xavier <selvin.xavier@broadcom.com>
Subject: RE: regression: nvme rdma with bnxt_re0 broken
Thread-Topic: regression: nvme rdma with bnxt_re0 broken
Thread-Index: 2UfSPBB7aurhIBgBOMtlZZ/Acg5lQJrLV3lwgAA5BsCAAKCFgIAAD6MggAAPzICAAF+3EIAAAyXAgAACz1A=
Date: Fri, 12 Jul 2019 09:49:42 +0000
Message-ID: <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
References: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
 <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
 <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866070FBADCCABD1F84E42ED1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
In-Reply-To: <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=parav@mellanox.com; 
x-originating-ip: [49.207.52.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6361df0a-d476-4069-1cd5-08d706ae43fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR05MB5298; 
x-ms-traffictypediagnostic: AM0PR05MB5298:
x-microsoft-antispam-prvs: <AM0PR05MB5298A285A5545FB178D571DDD1F20@AM0PR05MB5298.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(13464003)(189003)(199004)(229853002)(6436002)(66946007)(6246003)(8936002)(6506007)(55236004)(52536014)(9686003)(8676002)(64756008)(66476007)(66446008)(76176011)(66066001)(66556008)(55016002)(2940100002)(7696005)(6916009)(86362001)(54906003)(186003)(53936002)(53546011)(102836004)(316002)(26005)(99286004)(14444005)(446003)(476003)(11346002)(3846002)(6116002)(68736007)(478600001)(71190400001)(81156014)(81166006)(76116006)(4326008)(7736002)(14454004)(71200400001)(5660300002)(25786009)(2906002)(486006)(74316002)(305945005)(33656002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB5298;
 H:AM0PR05MB4866.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: td4ayi/QrxshKe088j0DmyInl6NaaKBrhnRUp78S+qMNCSS+T4TbpTIVP2UFZs6QYt3oWUN7LVZGYIMxwBIc+RI+bNKoshhP3bdbXHTcbqj92xm0ZcMpySbtoKdJmmdxrYw4i01MN2lYQ7CNK2smIyTE+jG0Aw2+CiYdGvWv9swpC45rZt3lLvYz/U+++eti5CXesi1OuSeDT5v2ynpAc2/YnuYyAqw/Dwy4jehOrV80nCTSHsdSBy67jlgtY85SBJDo6H82eZnuUXlI5FF1xoRfDaKb8nqmF4luK5UJ6i5qd2yT8cDEpopTF5g9f0vpf8fU5yP0rqkuVUSh5pIaF9wn5MS4JWI6V8z4gxZnxKBJnCB6u13Z48Ik1uy4pdKbb+loRu8H5/9V6ZY3cTEwyut5fQ8QWtOJRTo1DqXFDeM=
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6361df0a-d476-4069-1cd5-08d706ae43fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 09:49:42.9866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: parav@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024946_395235_540C7229 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:623 listed in]
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
 Devesh Sharma <devesh.sharma@broadcom.com>, Yi Zhang <yi.zhang@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> > Hi Selvin,
> >
> > > -----Original Message-----
> > > From: Selvin Xavier <selvin.xavier@broadcom.com>
> > > Sent: Friday, July 12, 2019 9:16 AM
> > > To: Parav Pandit <parav@mellanox.com>
> > > Cc: Yi Zhang <yi.zhang@redhat.com>; linux-nvme@lists.infradead.org;
> > > Daniel Jurgens <danielj@mellanox.com>; linux-rdma@vger.kernel.org;
> > > Devesh Sharma <devesh.sharma@broadcom.com>
> > > Subject: Re: regression: nvme rdma with bnxt_re0 broken
> > >
> > > On Fri, Jul 12, 2019 at 8:19 AM Parav Pandit <parav@mellanox.com>
> wrote:
> > > >
> > > > GID table looks fine.
> > > >
> > > The GID table has  fe80:0000:0000:0000:020a:f7ff:fee3:6e32 entry
> > > repeated 6 times. 2 for each interface bnxt_roce, bnxt_roce.43 and
> > > bnxt_roce.45. Is this expected to have same gid entries for vlan and
> > > base interfaces? As you mentioned earlier, driver's assumption that
> > > only 2 GID entries identical (one for RoCE v1 and one for RoCE
> > > v2)   is breaking here.
> > >
> > Yes, this is correct behavior. Each vlan netdev interface is in
> > different L2 segment.
> > Vlan netdev has this ipv6 link local address. Hence, it is added to the GID
> table.
> > A given GID table entry is identified uniquely by GID+ndev+type(v1/v2).
> >
> > Reviewing bnxt_qplib_add_sgid() does the comparison below.
> > if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
> >
> > This comparison looks incomplete which ignore netdev and type.
> > But even with that, I would expect GID entry addition failure for
> > vlans for ipv6 link local entries.
> >
> > But I am puzzled now, that , with above memcmp() check, how does both
> > v1 and v2 entries get added in your table and for vlans too?
> > I expect add_gid() and core/cache.c add_roce_gid () to fail for the
> > duplicate entry.
> > But GID table that Yi Zhang dumped has these vlan entries.
> > I am missing something.
> >
> Ah, found it.
> bnxt_re_add_gid() checks for -EALREADY and returns 0 to add_gid() callback.
> Ok. so you just need to extend bnxt_qplib_add_sgid() for considering vlan too.
> Let me see if I can share a patch in few minutes.
> 
> > Yi Zhang,
> > Instead of last 15 lines of dmesg, can you please share the whole dmsg
> > log which should be enabled before creating vlans.
> > using
> > echo -n "module ib_core +p" /sys/kernel/debug/dynamic_debug/control
> >
> > Selvin,
> > Additionally, driver shouldn't be looking at the duplicate entries.
> > core already does it.
> > You might only want to do for v1/v2 case as bnxt driver has some
> > dependency with it.
> > Can you please fix this part?
> >

How about below fix?

From f3f17008d34b5a0c38c190010281a3030a8e5771 Mon Sep 17 00:00:00 2001
From: Parav Pandit <parav@mellanox.com>
Date: Fri, 12 Jul 2019 04:34:52 -0500
Subject: [PATCH] IB/bnxt_re: Honor vlan_id in GID entry comparision

GID entry consist of GID, vlan, netdev and smac.
Extend GID duplicate check comparions to consider vlan_id as well
to support IPv6 VLAN based link local addresses.

Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
Change-Id: I2e026ec8065c8425ba24fad8525323d112a2f4e4
Signed-off-by: Parav Pandit <parav@mellanox.com>
---
 drivers/infiniband/hw/bnxt_re/qplib_sp.c | 4 +++-
 drivers/infiniband/hw/bnxt_re/qplib_sp.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.c b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
index 48793d3512ac..8567b7367669 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
@@ -296,7 +296,8 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 	}
 	free_idx = sgid_tbl->max;
 	for (i = 0; i < sgid_tbl->max; i++) {
-		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
+		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid)) &&
+		    sgid_tbl->tbl[i].vlan_id == vlan_id) {
 			dev_dbg(&res->pdev->dev,
 				"SGID entry already exist in entry %d!\n", i);
 			*index = i;
@@ -351,6 +352,7 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
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
