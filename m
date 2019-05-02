Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD7E115AE
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 10:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWRRzZSNoiWhnNdTdfEQvpr0qerDk1EzYDJBrS080Rs=; b=lPLyb6yAWMCVUc
	LEnw32zKa1Hb4i0pQJ4BjubWmrN1uokzqrnLUhlzySjukPlA4OghTj46TpX6+TiNiewziXL7iGgF7
	/JFkxKxrZi4ajPzkPAW1+pbLwN0jAvTXLhPst0ajZVtS2yfQNX1v7Kj//GRSwJSb1g+h6tx14YfJd
	cel3ehImOslEtF+QhJUeZSWPz/VYBM/RmJ+A36tc5g4qeEUNElQBNS26HgPdPK1e4xT6QhGEkDtnM
	Pj7zuyCsqfR7R7a99+fHecNP90cTCklbp4nxY1TP4CTSo6T0DjMnJJMHCfYDaLdEYgzkSq80KsfOQ
	09wiZmA5nJhevvutlKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7L4-0000GF-JY; Thu, 02 May 2019 08:45:10 +0000
Received: from mail-eopbgr10056.outbound.protection.outlook.com ([40.107.1.56]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Kz-0007ly-N8
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 08:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REQElg20qAbYRs2veFouFWQo4EJT+BLD7/xhiQYvHHA=;
 b=XMBZLtjW7aylmMrCHkUtQGyzoDYiFdgPIsKFpN51tteiSx3E8iJCSD0qeWUV5eK0C8l6yy5FW/tnu5VY+dTnKS948esVUBGMbBcYkAk0EOKcY0cfsbPXhUsyHjeTPj3pzGnG4RsLW7B/OKfP/ytqjg16vTEE6openhbrgHF9kVA=
Received: from AM6PR05MB5288.eurprd05.prod.outlook.com (20.177.196.225) by
 AM6PR05MB5505.eurprd05.prod.outlook.com (20.177.188.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:45:02 +0000
Received: from AM6PR05MB5288.eurprd05.prod.outlook.com
 ([fe80::ac0c:21b7:bdfa:c4e]) by AM6PR05MB5288.eurprd05.prod.outlook.com
 ([fe80::ac0c:21b7:bdfa:c4e%6]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:45:02 +0000
From: Tal Gilboa <talgi@mellanox.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH rdma-for-next 0/9] drivers/infiniband: Introduce rdma_dim
Thread-Topic: [PATCH rdma-for-next 0/9] drivers/infiniband: Introduce rdma_dim
Thread-Index: AQHVACyKoTvknlLO7kOSxA4Fp6QZcKZWbquAgAEXiQA=
Date: Thu, 2 May 2019 08:45:02 +0000
Message-ID: <a6ca622e-9203-e69c-8d34-22e151529f0a@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
 <20190501160409.GA15547@ziepe.ca>
In-Reply-To: <20190501160409.GA15547@ziepe.ca>
Accept-Language: he-IL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.47.165.251]
x-clientproxiedby: AM0PR01CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:69::44) To AM6PR05MB5288.eurprd05.prod.outlook.com
 (2603:10a6:20b:64::33)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=talgi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12a16f7d-6b8a-4ea9-5ca7-08d6ceda7758
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB5505; 
x-ms-traffictypediagnostic: AM6PR05MB5505:
x-microsoft-antispam-prvs: <AM6PR05MB5505287124D7629262B039FDD2340@AM6PR05MB5505.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(366004)(39860400002)(396003)(189003)(199004)(3846002)(86362001)(36756003)(476003)(4744005)(186003)(6116002)(31686004)(31696002)(229853002)(53936002)(8936002)(8676002)(14454004)(81166006)(6512007)(81156014)(6486002)(26005)(6436002)(256004)(66066001)(102836004)(66446008)(54906003)(478600001)(6246003)(5660300002)(25786009)(7736002)(305945005)(53546011)(6506007)(68736007)(486006)(6916009)(71200400001)(71190400001)(99286004)(4326008)(11346002)(64756008)(2616005)(66946007)(76176011)(446003)(66476007)(386003)(52116002)(2906002)(73956011)(316002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5505;
 H:AM6PR05MB5288.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 89pzj+9oh17BGfaN2OUsHWlnzZ8zT5REdbslC2vSIrK3TXE1Bx7TPTibFpxFsDRgLMgsMCrpN3St/U4Lrdr1+7avgHxNdf7mdQFXGceTqWHKnnPlKnd/7oBKy2jKZDD+QQ2DNZi92/sAjBcO/DyDwjSuSiYD+jQpiHLFg8gfbu3g4JCkUnHXz3FhG2cuHTFW76XvzNrsasr4z2ZPajfxT3VS5nD6+wbUkGEimCZ+52kfSARgGD96kZty0/OoFsT5Vchmw9vM7v3qlzXDU+NrhqMLmkbPw0ZWuSlGk/R+qDG8efY7aDfhH5H9GS/5GinpwNqmi5R7m9lm0qzFKesePnRNrQt8EPy4P0ohF3AwYa0E2AdURfVUsXVD43A039o13BDYSFhK2LP54Ljjuxhop+aGnbeLROoR33IiTETUzcM=
Content-ID: <22854B5815F29D45B77BE94ABAD1FC31@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12a16f7d-6b8a-4ea9-5ca7-08d6ceda7758
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:45:02.3348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5505
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_014505_757967_668473B5 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yamin Friedman <yaminf@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
 Idan Burstein <idanb@mellanox.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Saeed Mahameed <saeedm@mellanox.com>, Doug Ledford <dledford@redhat.com>,
 Max Gurtovoy <maxg@mellanox.com>, "David S. Miller" <davem@davemloft.net>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/1/2019 7:04 PM, Jason Gunthorpe wrote:
> 
> A lot of this is touching netdev, why wasn't netdev cc'd?
> 
> Who is supposed to merge this?
> 
> I think you need to take two steps and have netdev merge the above
> part and then send the single patch to RDMA for the last part, I don't
> really want to take so much netdev code here.

Ok, I'll submit the first 7 patches to netdev and the 2 RDMA specific 
patches will be submitted on top of them.

> 
> The maintainers file should also have some indication which tree
> patches for lib/dim/* this should go through..
> 
> Jason
> 
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
