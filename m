Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B1075424
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 18:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2MsMN14RQFiSTP1EaJ0WmaXV8pCl0nMODWmT9v3c0M=; b=SKyqDw0RIyDMoX
	AHAQRfDJFU/OytDM4mtOHho/imDLtM5Ada29Ovj/BNDScABPJeYd3LNPsS1s7OB3dHG47hhhRkFc9
	yFrA8D3S7PQ03TKlJ7aeOaSPto6lij3+Ke2bJpTYpgmX3289wwACyAl0lCXgphRbKiCw+KwDWOdGb
	wJfyodhjeGnigtb4nrmd+YLGwOG1eV/F+uUntNiB71TjwncUgXReJpWzPuWX69sdCQP7RoiXgZjNY
	iXj+WesX0Ybh9i0q17tlD+XCdhnV6NpfJz6hSuYZoJi0M1lgOptQBYb/6Ky1ZjaEIK5Le0tL8aT2V
	T+WZZJRj4z5q3WxS4noQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqghp-0007On-Py; Thu, 25 Jul 2019 16:35:02 +0000
Received: from mail-eopbgr10080.outbound.protection.outlook.com ([40.107.1.80]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqghf-0007O9-T1
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 16:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AMwdjlo0lVa49rx+GRSbHELLMs5Reix4uiMjQ8JikQO30Q9A3Lec9Cb+ccAL1lmKeJPtJkhawUbiJAs+xVJQmJ7QIlzn9nxp8lbqFrbPPN0PNhn9OG1fnuBMuu9rurbBC6UJtABDiPrtjQX7IfzoKaGaM4RqySEBR1CVwUD1m4UjDAcuH4s8I8lnOqG1mAkW9mxVnUZFDDTXJtVYIjIY/I4Y3OOzN9DmqUV9BWs/+9lVcO98zbro7rxOGyU2xjee2hsF7jUlLmMJ/HPUbfop7fjEjIWgS7ecGzuiFZUFUZ7kLHCpscCw7UJk2bzxVjs6kLXESrGcpwzYaX2OtiiNGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXDfkSJ3HbkJRyHV33LW27pBv42JcRgX97lSOQmsnpU=;
 b=YszARQ6GVLtGvIXZtNZEs86iwSSQxCpXsqPFJjBjhJ2PKBygtMrYrIcHMVyPzriTBQlDtzXian79N68Jt9O4aaBDFcnIrdnHJzp3DJ9o7GmrBBRqDqleKCCRvN8Xu/S0Y/lQAesio0jruWkdVCSveA2jz/cRTautTpBB4tbjs3fa0/GSFq2D9ZLLhXO1EySSjBeHqtj2M5FzvF15wFHrjHXJkhu0Io7hKuPrNmynD3X5F0qwpVvo+BpqzdXIY99d483gI3aw/wwMbPGQtpug3VivcqOYq3X5sColl9VIJeeHYPM8e8RuQZIP4TeaqHcR8xUWnlc0l6945iWk2/XDAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXDfkSJ3HbkJRyHV33LW27pBv42JcRgX97lSOQmsnpU=;
 b=XM7a8sxNNqaIW3vdgfmczUkbqmqUP4wuyN4gHRzCyjikBomT+PH+JDdAkguXw89qwxyFjt8RM3q/cns3Yrk0uDzgU7HPuebUZQE9bxQJxpR/0hSDQf0H84Yy8gkmA8zLnQRxKe70gEry9zVXqFtUZdxqLUihhmossoliGny/jN8=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB5550.eurprd05.prod.outlook.com (20.177.201.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 16:34:45 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::5c6f:6120:45cd:2880%4]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 16:34:45 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Topic: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Thread-Index: AQHVQOKBSj2t7d2fJ0uM7qhfiZtzFqbZUWAAgACeQ4CAAO3MgIAApPCAgAAJjwA=
Date: Thu, 25 Jul 2019 16:34:44 +0000
Message-ID: <20190725163438.GF7450@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com> <20190724063232.GB1804@lst.de>
 <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
 <20190725061005.GB24875@lst.de>
 <fb39485a-2914-bac4-b249-e1f4ecc8d2be@deltatee.com>
In-Reply-To: <fb39485a-2914-bac4-b249-e1f4ecc8d2be@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YQBPR0101CA0002.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00::15) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7893a56-4231-4f9d-871b-08d7111e004a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB5550; 
x-ms-traffictypediagnostic: VI1PR05MB5550:
x-microsoft-antispam-prvs: <VI1PR05MB55507ED741219256CC0F3DA7CFC10@VI1PR05MB5550.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(199004)(189003)(33656002)(11346002)(81166006)(446003)(53936002)(486006)(2616005)(8936002)(36756003)(7736002)(1076003)(6512007)(6116002)(478600001)(71200400001)(6486002)(71190400001)(3846002)(26005)(81156014)(6916009)(6436002)(25786009)(305945005)(186003)(8676002)(86362001)(76176011)(4326008)(102836004)(53546011)(7416002)(5660300002)(2906002)(476003)(386003)(256004)(14454004)(66446008)(68736007)(66946007)(66476007)(229853002)(64756008)(6246003)(6506007)(52116002)(99286004)(66066001)(54906003)(316002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5550;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gfrO4g8HpaSnZM7m3hxi1Pehla2WqblbjeiXy5KlFFa7efA8GnLQGRijb/g+HjRvmeNpBgm23Awonezd+gj/gbaYSuA2YPDWNn7+X7Vc1EaSfc4Im8eLVEvDWjLYXIG8+7QmmUpQObw1v0lT9ZjpXCE8BZnKfS0Zc4WHO2BcTVUKnmDBKq5WT62Inzt8dTdvso6nytUApkejxK28M89oCVsBsSgDhV6Ipni5uD02k0/UD/cwZ06ZkCzr2Y9yyfJIcwnqLXlIwLXbciH2p4mtkgEbUFHKNxxDQ+Leqr6SzJf7qknar1vEd6OpSgN3dOYVVpVljNWGgBJR552FW2Pn2qkVwb4wjQ7v7EMPQmcCKWUwOpbWuuAuB6ZlluYe/scO6KbnhdMXkmepYnP8zZTXyC95wxPvxyu0VJW5P79IkWc=
Content-ID: <5857963BAF91B24986E9094C8F84E7D2@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7893a56-4231-4f9d-871b-08d7111e004a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 16:34:44.9708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5550
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_093451_940780_D8CD4BF5 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.80 listed in list.dnswl.org]
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

On Thu, Jul 25, 2019 at 10:00:25AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 12:10 a.m., Christoph Hellwig wrote:
> > On Wed, Jul 24, 2019 at 09:58:59AM -0600, Logan Gunthorpe wrote:
> >>
> >>
> >> On 2019-07-24 12:32 a.m., Christoph Hellwig wrote:
> >>>>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> >>>> +	struct pci_dev *client;
> >>>> +	int dist;
> >>>> +
> >>>> +	client = find_parent_pci_dev(dev);
> >>>> +	if (WARN_ON_ONCE(!client))
> >>>> +		return 0;
> >>>>  
> >>>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> >>>> +					client, NULL);
> >>>
> >>> Doing this on every mapping call sounds expensive..
> >>
> >> The result of this function is cached in an xarray (per patch 4) so, on
> >> the hot path, it should just be a single xa_load() which should be a
> >> relatively fast lookup which is similarly used for other hot path
> >> operations.
> > 
> > We don't cache find_parent_pci_dev, though.  So we should probably
> > export find_parent_pci_dev with a proper namespaces name and cache
> > that in the caler.
> 
> Oh, yes, I'll take a look at this. Of the two callers: NVMe should be
> easy we could just pass the PCI device instead of the struct device.
> RDMA is significantly more unclear: would you add a pci_dev to struct
> ib_device? Or maybe we should be able to simply rely on the fact that
> the DMA device *must* be a PCI device and just use to_pci_dev() directly?

AFAIK you need to use the ib_device->dma_device and add some kind of
is_pci_dev to make it safe

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
