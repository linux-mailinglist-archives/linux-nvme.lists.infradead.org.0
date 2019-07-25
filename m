Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49862757DF
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duYn5FbY5thb//5rtQ+ZX5Y0+13jYwrgYG/jTIcamdw=; b=f7Cn5829zjLFXr
	AsMD0ZFe/12D0Lub0oHrV1v8ZzAVCWdOo0JiZUQXVDveaWzdbWIc1r7uMdJTkFRCRWHrLaPl4Dowm
	/xwJwwtsiivH6g3nebrV2OVHRyk1IWR9qLwQyhyL+FAG3Q1sLYNOfZbTtr/XdPYmpjpLfA8DVjwlD
	qoDmcsvKlks6qQfJKlT5rl9XrqAD2FOBW22xs2vVvT81u2QDl0xbhTsPZVf2J8GG16gW1rpOBdwnO
	fFRr4sje9yvL/UuOtz/NzRN+um7CzfzwNx1mF5VQBhtp/YtKy5/YVSfmwuGG0oAC+B/mlle32+QK+
	+lTcIweNoGMalMtAO6kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjRG-0003Hn-1F; Thu, 25 Jul 2019 19:30:06 +0000
Received: from mail-eopbgr30089.outbound.protection.outlook.com ([40.107.3.89]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjR4-0003GZ-OX
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:29:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVLAgQj6bKLI6GEfpekdTNGYTfbZy0hKh1j5UZY2ePS2JqbIpmn0ao0nTlVq9TUycU1wEOQOp0bZRQErBQ/xtVl6Hoam2pKT3FOrqMZ0T/61YKyLTrD/F73j1s0BiewB7P0DXXlsqPf3/lHFqTdt9CFIkiWxv5qGzbDNUi7WYoxxtN1A0O11MIv9cWyHT14vxvoJHAWe5g64a3Ygus1rUjFT689nq9pjvnPEMrwq80TU/ZX9dN9/sIgM19rXACdfEctgvAurHEuWsyaAbR7bgPY1Cpz3QqxOPALw6fCKDoEPuT//E3Raeu23SYw6UgRJVS7DIB22xQ4rgluxfTkAnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A3FPLuUAvLzM5ewABe3sLYB5sEaP6QaCe81llyV3ZY4=;
 b=Ntfu2BdUM27671y4mOyakooSZN1qzijET7gps30S0xu4gLvpEWev9+wKmZrCXRuu85IiH28EMXg2SdlAHOsfPSMPbczImRHqRN3rOChT2zhPsgDG5a/92Y3uUcOQTtjZ2VtRtMgwqxbSNNhjUg0bKbfB1yPfy6ktSHG7MfdgwC6LOk951jckRAjH8h0HDzyfNmmIhULS4z4/Pf4iEJ7+clYxtoKl6+ohuQW7sx3mtfAdHF+RP4Tm42LiBaeiebcv4z2zTuJpJPRSbBrW0DHC1aK1CH5/oVGWvlQSTBZ3VdckQBXgknLRWNd9HcFwp0TdhNYJi4dzW3q9ckrK7iy8Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A3FPLuUAvLzM5ewABe3sLYB5sEaP6QaCe81llyV3ZY4=;
 b=KCdQPQo9HC4jix3JU4ykc8GRBDv8FOYQBfUV+Uvudcu9jxtpkbq8qicye8lMKDnOtpoqn0trtNJIS6yXk6hFa+MZZ4yQ9mARrU669+craQjycDXEMw09nSsczjzlDPng8VcjnO5uKFR+5xqyu9LCprn1PCLPkTHCFTThOugCrgo=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB5294.eurprd05.prod.outlook.com (20.178.12.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 19:29:49 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880%4]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 19:29:49 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Topic: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Index: AQHVQOKBSj2t7d2fJ0uM7qhfiZtzFqbbtCAAgAAFLgCAAAOMAA==
Date: Thu, 25 Jul 2019 19:29:49 +0000
Message-ID: <20190725192944.GI7450@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com>
 <20190725185830.GH7450@mellanox.com>
 <cf61d237-8a8a-e3ac-a9df-466f20b63020@deltatee.com>
In-Reply-To: <cf61d237-8a8a-e3ac-a9df-466f20b63020@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YT1PR01CA0035.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::48)
 To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39e2b66d-9e1a-4780-bfde-08d711367594
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB5294; 
x-ms-traffictypediagnostic: VI1PR05MB5294:
x-microsoft-antispam-prvs: <VI1PR05MB52947BE15707CB8D96AADCF5CFC10@VI1PR05MB5294.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(199004)(189003)(478600001)(316002)(3846002)(52116002)(8676002)(6512007)(54906003)(5660300002)(53936002)(26005)(86362001)(4326008)(7416002)(66556008)(305945005)(36756003)(102836004)(6486002)(386003)(66446008)(6246003)(6116002)(256004)(66476007)(7736002)(68736007)(25786009)(99286004)(486006)(14454004)(81166006)(1076003)(33656002)(81156014)(6916009)(11346002)(66946007)(64756008)(2616005)(476003)(2906002)(8936002)(186003)(53546011)(71190400001)(66066001)(71200400001)(446003)(6506007)(229853002)(6436002)(76176011)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5294;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7CJuxVXM3aH6BJJy7/HN/xKPxqEsqiz4Mxew2hDrOr4rwoltOuAmHU4Hb6e8kbVFaNVeI782napI8huUhrwGdRs4kzZNvKoRGTg7bNO8TuQSKSWwTY31E0H8tJxxYpkorfxCZY9sirsloN9aEN07N6Pw1+577iRSbimOhDUZTzUGTb62MLp84dcWscpptQrRrXfW6f7ipbCz9gttZaKZohN7OWR5oPM7UDnEEK9b/tJ1KUndTKcxAviBdLs63goubEuUULvkANRAl6b+i6d4UFvYhYcamoaN1IgR9qkLOAFFZuWC5IRzIQ6PtWJhQHePXVCubTgei4yWEK689vUoWJVOEhx7J9JC11CuTed1X08+TA1vkVzKMdmgYI2FPBm85kLsCm+0ZG3t+zYAaGMcOGLM7coJ4gkKaR1/sBjM0iU=
Content-ID: <BF60765BC6FB194DA911DEB33C20BF68@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39e2b66d-9e1a-4780-bfde-08d711367594
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 19:29:49.6632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5294
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_122954_814410_D0262B2F 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.89 listed in list.dnswl.org]
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

On Thu, Jul 25, 2019 at 01:17:02PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 12:58 p.m., Jason Gunthorpe wrote:
> > On Mon, Jul 22, 2019 at 05:08:56PM -0600, Logan Gunthorpe wrote:
> >> Any requests that traverse the host bridge will need to be mapped into
> >> the IOMMU, so call dma_map_sg() inside pci_p2pdma_map_sg() when
> >> appropriate.
> >>
> >> Similarly, call dma_unmap_sg() inside pci_p2pdma_unmap_sg().
> >>
> >> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> >>  drivers/pci/p2pdma.c | 31 ++++++++++++++++++++++++++++++-
> >>  1 file changed, 30 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> >> index 5f43f92f9336..76f51678342c 100644
> >> +++ b/drivers/pci/p2pdma.c
> >> @@ -830,8 +830,22 @@ int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
> >>  		int nents, enum dma_data_direction dir, unsigned long attrs)
> >>  {
> >>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> >> +	struct pci_dev *client;
> >> +	int dist;
> >> +
> >> +	client = find_parent_pci_dev(dev);
> >> +	if (WARN_ON_ONCE(!client))
> >> +		return 0;
> >>  
> >> -	return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
> >> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> >> +					client, NULL);

Isn't is a bit of a leap to assume that the pgmap is uniform across
all the sgs?

> >> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
> >> +		return 0;
> >> +
> >> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
> >> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
> > 
> > IIRC at this point the SG will have struct page references to the BAR
> > memory - so (all?) the IOMMU drivers are able to handle P2P setup in
> > this case?
> 
> Yes. The IOMMU drivers refer to the physical address for BAR which they
> can get from the struct page. And this works fine today.

Interesting.

So, for the places where we already map BAR memory to userspace, if I
were to make struct pages for those BARs and use vm_insert_page()
instead of io_remap_pfn_range(), then the main thing missing in RDMA
to actually do P2P DMA is a way to get those struct pages out of
get_user_pages and know to call the pci_p2pdma_map_sg version (ie in
ib_umem_get())?

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
