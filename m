Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA29175773
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NEYmyvH5DB0ff6yyCiqFI96cMk0H3z2IUM7hT3O7Rs=; b=pISKgdUCopmdT5
	XcmtpsrYi3RK1Galke06X5C2KswrTt10fytYAA1acomBVcmqAmbiQDw43aienPaKV20jrhsCdjPNL
	ni5SVZGW6QC9s300XrH9DEVEEFHTf7AsGzw9AaoQQ9OUOn2wiKGR/JILLeHr4gGO5Y40Lp2DMxnB9
	b/ShqANt9+65Swr13J/fDOZgHhssqyqiN0ZX7zqhNplvjHIQzH+cIi72W133nH5MEURd9wbpBaPlZ
	CFvRvkJCR8lBPvhT5d94BdwOfCFocixPF5NiWYrR0+X9cM0yUElBqOnEoxmZxIXh/zdApBlAbh/j6
	i+6RPu0FzMjb1dIPSEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqix3-0007uJ-8I; Thu, 25 Jul 2019 18:58:53 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiwo-0007tT-QI
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:58:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/IZ8icWBYMDnX1V61stXnYO89j6uQsP3CSJcmw53K/pVSmS4uQa9zbnHm0ARzEGqyXt7hox81KlmX/6q76Nbt09U3obTBjUuvhHrLrkxpLD4pHIdJNHk2H9uq4U0ZplPGpw0fkVzpthl2T7RwvEkPvJDt5DQMCJupY8WKE/+8SsKHA0Ky1rhv0qxtc+AqvU0mvKI0Q4UHLUOtnVGubLlh4Ck1yyX6900JEsGoX+B9qUXg95wtTnu8QcXY8PGw/uArKSyfVqH9CVB5/wl9caftT9SgH2xEjJ2/LBTmHKNlQCGdI/c03CRjoDTfc10TkyIevgU0a7FYgMWkAVGBJheg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jg+1wqR7kFZn4dHIllxX8RKuaPg9P407ZVJ+pnzqNws=;
 b=n8ZoJttVvHzlRF/FfAfZCyKPnhotDark/40WM0vU/JEpiPU2pn9LycF9BLlLq3XL+iqd6rBneeT7i2ENgPucRlgeMsipJm6MIoCWcvsN0zGkoH6XqERz9cSNah88RrcLz0OEYnkihlhQVZppzik/YfQCyXNyXUUuj8PSI20FeH0BUf+Kd6rFM3Nn6ERHvdTg+YH3WDI3w3L9GyjzOd2quVABA+izS9aE1bLoKBA3bbUvPK84a0q8CnSgCiEaIzqhM+bcTYSIffuM71ViCdxIvkKAkbbz4+CFX0TN/Mw0IZ21KPKOJ4xAK3shwoJmm8PBzpaGVPuY++HFztVlSLA0nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jg+1wqR7kFZn4dHIllxX8RKuaPg9P407ZVJ+pnzqNws=;
 b=tBsPK25ITYUfjYbBuXc7uGOcE3Rg5tzwVCs4FDaDp/l/b5h2YGkcQQA8oR9yenHZlziEM+GSMze8R6bXUnYkU49ZJYzCMPA++hjc5HzNLrm9TzBtYhjbx7xhY8TY2N9vcWlqsaHO3VSRtxBFv5FEvzpfKkSV7dKe7oWtI9UzfXM=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB3358.eurprd05.prod.outlook.com (10.170.238.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 25 Jul 2019 18:58:35 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880%4]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 18:58:35 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Topic: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Index: AQHVQOKBSj2t7d2fJ0uM7qhfiZtzFqbbtCAA
Date: Thu, 25 Jul 2019 18:58:35 +0000
Message-ID: <20190725185830.GH7450@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com>
In-Reply-To: <20190722230859.5436-12-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YTOPR0101CA0063.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:14::40) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7346b9bc-6af6-4a5d-7bfb-08d7113218a2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB3358; 
x-ms-traffictypediagnostic: VI1PR05MB3358:
x-microsoft-antispam-prvs: <VI1PR05MB3358BD0AC7D3EB392A2DB80FCFC10@VI1PR05MB3358.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(366004)(189003)(199004)(186003)(6116002)(3846002)(1076003)(11346002)(2616005)(7416002)(256004)(229853002)(14444005)(6916009)(305945005)(446003)(478600001)(8676002)(5660300002)(476003)(81156014)(6436002)(316002)(8936002)(81166006)(54906003)(7736002)(66066001)(2906002)(6512007)(76176011)(6246003)(52116002)(486006)(66946007)(66476007)(64756008)(25786009)(66556008)(66446008)(6486002)(86362001)(68736007)(14454004)(26005)(99286004)(102836004)(33656002)(386003)(71200400001)(4326008)(6506007)(71190400001)(36756003)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3358;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xb8s9qmmBk35mkf6tAFRXcBDghSHbMmjLtudf+ZT+2uz892r417r8dyI2HP9gy2yHDM/u9cDodA+s1FNS5oKtB1oHPUVDonC6DLKR+v+eyxa1aHCfqwu+0BDKHExL0Q64Az+Ld6RFqlUzyk56HmX6+DToa3AhvtMkp3CWUqlmUgbOF6mXQvScryfOEYTQ8NW0n3YrEPI+L2xweYiOmlfqM4HHh/YkS7gmOm9loumT9a8iwCT/4GdJmFLna1+cF5VgZ7TT5BPdiPsg8gqLAIa4R1NfzG42fS4Tx250DcRDyZW9AOpnQhi5eXz+7BRON8q9pHI8e6CM99H9fpowqScXhccGQaRF/w9UU5CF03VKz/GMw7vAaYlHq4L25W9a51/Kl3pjNj5NbzDItEkanqcfattkVJotF1waBmnYwXV8BY=
Content-ID: <1BC84EB45B82414699EAB24805241BF7@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7346b9bc-6af6-4a5d-7bfb-08d7113218a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 18:58:35.7452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_115838_866304_7DF5DF45 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christian Koenig <Christian.Koenig@amd.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 05:08:56PM -0600, Logan Gunthorpe wrote:
> Any requests that traverse the host bridge will need to be mapped into
> the IOMMU, so call dma_map_sg() inside pci_p2pdma_map_sg() when
> appropriate.
> 
> Similarly, call dma_unmap_sg() inside pci_p2pdma_unmap_sg().
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>  drivers/pci/p2pdma.c | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> index 5f43f92f9336..76f51678342c 100644
> +++ b/drivers/pci/p2pdma.c
> @@ -830,8 +830,22 @@ int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
>  		int nents, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> +	struct pci_dev *client;
> +	int dist;
> +
> +	client = find_parent_pci_dev(dev);
> +	if (WARN_ON_ONCE(!client))
> +		return 0;
>  
> -	return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> +					client, NULL);
> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
> +		return 0;
> +
> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);

IIRC at this point the SG will have struct page references to the BAR
memory - so (all?) the IOMMU drivers are able to handle P2P setup in
this case?

Didn't you also have a patch to remove the struct page's for the BAR
memory?  

Confused what the plan is here

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
