Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B7121BA3
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 18:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tawtm/UrvczWi6/IoF1ir0eCfydAHRp7Y0FQRy9XqgM=; b=BRKK3Hc0QLODTK
	T4kPcECJChAvzna3ZZjyjptcx+OVmEndP5XBHYjbI7Ii8EVr2ANHmPSkO1GDwnr+nY5sB8E0wxT6j
	IVEU93vfk+ExlCp9j5vntTumhlJKLOVMhh92EyIS+NnJ/PSn9Rgu3WTdZPLJOVPsd8S/+bJYrjgye
	WYqfpxEINdugtdFvNE3nVb2aa/TYbU6n5bDq3yV7ID/DjTtQ+ehxE5n8WRtTBTWFlHM8I61GZjpQ5
	GFEtM7AgR6HvQqzRH+7Anpts4Y5SeUpJ6gOPhv4vYhhFfb3FaCIw/wutYpgnpyCkkKBj10zfkAMIW
	OgdEv4D46JHpizogfwRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfmM-0002Cc-Dk; Fri, 17 May 2019 16:32:18 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfmH-0002CD-DK
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 16:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558110733; x=1589646733;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=qvM06v5LK2earYmAgDdwZOgIJmtAceqfZkuhQxMz6Cw=;
 b=VyNulwBOGNOsr4+Ru9BAivl1QODeQqBmJkx/B8O3wVnuZ7kbPih/4fVi
 itPyqaN5dsdQEceYCHiXB0YvOrPeoH9sMWOlZX9vcVSr6ODa8uRGBK7eo
 s7IAECQ7h2W9ObGjjFClX+yzLVdSjZcKj1wj+WNxk6BLlhrnW69FuF7YY
 jXfNSWbBFf1CBaI1tudqUCWWu6yNgaH5jecBX8QPHuFKC8pp70LqDkPtU
 KDbLdddgH1Q+fl6nDce6f+HV8TAXUpp1QWaZRiUOgDjWxB04Z2JSaHRHT
 2T+upCZ/XUCmVywddB44czoDKQB5f2HBGRPOSWpbUNCfp5381/Uh5rgAj A==;
X-IronPort-AV: E=Sophos;i="5.60,480,1549900800"; d="scan'208";a="214659982"
Received: from mail-bn3nam01lp2056.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.56])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 00:32:06 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LRwACc9N4amVXgP1c6tadnlQKYFBobfTc5Y5y4YkQE=;
 b=YoSB3Czkud8aJNPxHvAQaHf4f99iV1w4AxEj2kIMsIN29G4BFaIlkOm9UZ0ny0IH0smzFlY+uP4xUUuXQI88pl2gP0wG/PQR88RYexvgU/y7D+ZBeO2yfRZpgqNGyiVt147QI3ShUiwXQ+U2y8uBkzrb92nA/26U4CHauGHXbXI=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5312.namprd04.prod.outlook.com (20.177.255.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 16:32:02 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 16:32:02 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: xiaolinkui <xiaolinkui@kylinos.cn>, "hch@lst.de" <hch@lst.de>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: target: use struct_size() in kmalloc()
Thread-Topic: [PATCH] nvme: target: use struct_size() in kmalloc()
Thread-Index: AQHVDH8oTBY/BlMzjUaR4gerzBgDxQ==
Date: Fri, 17 May 2019 16:32:02 +0000
Message-ID: <SN6PR04MB4527D340D48215FE19335A99860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1558076615-8576-1-git-send-email-xiaolinkui@kylinos.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:f9a6:10ea:e679:e2ee]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4796274b-408c-4ef6-5450-08d6dae5312e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5312; 
x-ms-traffictypediagnostic: SN6PR04MB5312:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5312C1606B7338188D04BE4C860B0@SN6PR04MB5312.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(476003)(4326008)(46003)(55016002)(14454004)(53936002)(9686003)(486006)(54906003)(446003)(229853002)(25786009)(6436002)(102836004)(6246003)(66946007)(66476007)(2501003)(66556008)(64756008)(66446008)(2906002)(76116006)(91956017)(73956011)(81156014)(71190400001)(7736002)(71200400001)(478600001)(72206003)(256004)(110136005)(7696005)(186003)(86362001)(76176011)(316002)(5660300002)(81166006)(33656002)(2201001)(52536014)(6506007)(8936002)(6116002)(53546011)(74316002)(8676002)(305945005)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5312;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i4zpuG7JX247DZ+MTcifqpzAXSGmhIGLB+CsJ4Qqr88okPesKhUaIElQlkuZTmSrFLHOJBlWCBzh+N5tSq3dhPKFkFQY6EuzMnsOVZtoIMNbJph8cn7TeQSwKHPLvxS1v9Jp5QEDuMF7T43oEenaL53BFIJl29tZ+I0qo3iLdNe1U69zLFES7AXmx5O2Iyf+dv90t38NXtv8RsWLfnjVn2W5z2EtQGJzcMhkH4k3C4fNMCoxdVVcMYvJp9QGzBye1DaIAQ8pt1AVsQF2XcPt0afHQlDJR83SOYTwjIh45sXBGRXzVyQkp86Zosa7fyiWkc77qunTDn6v/7pcgQzlS0Vnd+MCv1eYRWJbKPqS4mtDqGky2VWbYY5tetlkRoQtsh/0QeJeZjZqXxG74gzzyssNGUW6kcjH6oeZDu7BAa0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4796274b-408c-4ef6-5450-08d6dae5312e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 16:32:02.5530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_093213_567725_3F407870 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If maintainers are okay with this then,

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/17/19 12:07 AM, xiaolinkui wrote:
> Use struct_size() to keep code sample.
> One of the more common cases of allocation size calculations is finding
> the size of a structure that has a zero-sized array at the end, along
> with memory for some number of elements for that array. For example:
>
> struct foo {
>     int stuff;
>     struct boo entry[];
> };
>
> instance = kmalloc(sizeof(struct foo) + count * sizeof(struct boo), GFP_KERNEL);
>
> Instead of leaving these open-coded and prone to type mistakes, we can
> now use the new struct_size() helper:
>
> instance = kmalloc(struct_size(instance, entry, count), GFP_KERNEL);
>
> Signed-off-by: xiaolinkui <xiaolinkui@kylinos.cn>
> ---
>  drivers/nvme/target/admin-cmd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
> index 9f72d51..6f9f830 100644
> --- a/drivers/nvme/target/admin-cmd.c
> +++ b/drivers/nvme/target/admin-cmd.c
> @@ -248,8 +248,8 @@ static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
>  	u16 status;
>  
>  	status = NVME_SC_INTERNAL;
> -	desc = kmalloc(sizeof(struct nvme_ana_group_desc) +
> -			NVMET_MAX_NAMESPACES * sizeof(__le32), GFP_KERNEL);
> +	desc = kmalloc(struct_size(desc, nsids, NVMET_MAX_NAMESPACES),
> +			GFP_KERNEL);
>  	if (!desc)
>  		goto out;
>  



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
