Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09936C10C
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 20:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=naETDm+gUrZOFuFZziqqoLWxHJ38rpIBCW0tjM+5gWc=; b=ONiQ6rFie2gQ70
	Jiajb7gVVNJn+WHhFVeSPNlpaqs741UwdvTAv8xYnit4n0XCASJ2qI2sc6gHiWSgRcKE5D83cQdz2
	dawJSOejPu+LkCmhu+rxheKSI19y80PVH+OUwtEubBzNl5FMByy/r8OU7Eo9YDzEf2WuVj294XYOK
	itYCk8huPow6CC5EUzJFrWSKjKhOqNg/+7vRIrRwQcMFejg/sfbUD8WOxJdwsRiVEKaFbE8TDJO9J
	eXicvNhO/WWM4IUekWf5Px5qzIcEOeD6mXxQ6rNuNRqUShMCYK6pjFpJhvH0Qu+X5s56YcQvBg51v
	1cAUrGyYsY0JIvTfyeGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnomM-0003KF-GN; Wed, 17 Jul 2019 18:35:50 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnom0-0003I7-SY
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 18:35:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563388528; x=1594924528;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=npA5ARj+GwXWJpeyBmWB7akT7BrpCPGMHSQgfAAUmDg=;
 b=QDU2E2Ymm+9AhyBq25hWu0IH5eW38iRohx7bIkDylw1Sju1M3+xsuiFE
 NLX2OgyxvrB/280q03TMxdGycxIkMNd4CwDtUb6WiM5u3H75F9j3eONsa
 kFPQD4ciwnTBSEpUWGH2l5d79LXVJKb+UUpOi39z3fs/NlHdv/Hs1SEU9
 062lsnCd55JFHCB6SS1NGtY9WYAFx1w1WV1OruNOfdFmWlHab/z5lJMa+
 mpWeWxSmHtlFs+n576SRQeUJeYw+g5gbIVICc5dV6NUDL7/8gasCiYx7Y
 QvYuebnKx6OYT1wPnx0S5fCU/bwWrZ1JvEev7lYJPs3mD0nlsUzpkKal/ g==;
IronPort-SDR: mxhRoaSH9F/33v1ROF1+kpVhJRy8MwXt9lAO0/GbY6sEFRvCTTlp6G72uFGL13mnc9oNAvfypK
 zfGy08YzX+cUYP6u6CAfZJGrqIwdmxdaGMyMae/XFGzDLc8wRurZBQZu+o/AfGdQiDI/VsQQ5g
 X0y2KegfFJebyhb0uqVVIYWhj25LDUmE919458DBTc2gAECRjWsSNud51drdyVNjTh7mxiBGol
 dLK6zZpIcItkUXBz8iQxbihfg5AUadT9ReroVjIUfOkXlBjgx2Nf4XHdyhk6BfFwj2uf7byMRC
 8gE=
X-IronPort-AV: E=Sophos;i="5.64,275,1559491200"; d="scan'208";a="219753321"
Received: from mail-bl2nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.59])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jul 2019 02:35:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8pT8vZRLTeak2VCpboknKgj7N0MaOPN9Sn0LigWUY+cZuz1rhA/fXQIIvGxGWQRWJozHLycZDC1J6elY/3KNIzjiC1Bn6OBhydfLxPCYQwYZK9qBNayeBKN2gMETFs3DOB2nLKCbEWSeRxVzflPK2C1prxA+SAY3lD2dtcKfwpUpviE+HUs80khbBmzS0clIUghxvvCqk1OFeY1jEUUKeVhuh3Uw41dhuzOZJenVydKP6DtS/rqjOXCgYqKVBLzosFyx0tZo5XAJcJRAayHj6v0SGgBziLhYlU1p829FG/vgdaWdjuAVVCMU8Dt5hI8E9CePgQfRhYctJD+qQMdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npA5ARj+GwXWJpeyBmWB7akT7BrpCPGMHSQgfAAUmDg=;
 b=MA3AcBFx1+m89u9zrEMw70JxFLhvBfoDbwGuetAqBghKoaeHvrH0kMMTkfieMe8bnBLjPl7w0K+cdObGL+doJr2pJiXser3uQawDyvRuh+J5hZZbP63fSbQLLYyLrHn31mBPOc18rmls+ge5I85ieqIof7gFiex0z2hQijtVqb7uF74WS3vtoqcbP5w2AwWjlSNuf17HVYWrlSKwsI0YaA9085KqwpRCF9/9OihxY3FNnkinxY10GwC8kSOeDoZowAXCGs0vdglbaHf1U3ODCkzuF8EbV4g5oOeamGH9Sep+64IJz9p7U77+z8pa+QBcBt+kuyoWxlD78DLnmdZTkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npA5ARj+GwXWJpeyBmWB7akT7BrpCPGMHSQgfAAUmDg=;
 b=XcogKFpg3m0IySu8Zj2EXRM9B4u2zc0k2FiivxwYu1hDJp34LWyPURH0LPYhQQtgkIT0EeW5MmfFlPreu18Ik1EMxHImKlEFeXFFWppFssXlLTaMK7mKsBRBi/fjZP/Lisq/oNNvcy5K848ju3Ih7f2okU+D73rZZGbT3/RZB40=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4775.namprd04.prod.outlook.com (52.135.240.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 18:35:23 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2094.011; Wed, 17 Jul 2019
 18:35:23 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] nvmet-file: fix nvmet_file_flush() always returning an
 error
Thread-Topic: [PATCH v2] nvmet-file: fix nvmet_file_flush() always returning
 an error
Thread-Index: AQHVO1sRlL6YpeqcQEOD+On3jfJuog==
Date: Wed, 17 Jul 2019 18:35:22 +0000
Message-ID: <BYAPR04MB57492E5376FAAF29B70A46F786C90@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190715221707.3265-1-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f552c421-7704-4c59-f8f4-08d70ae5874e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4775; 
x-ms-traffictypediagnostic: BYAPR04MB4775:
x-microsoft-antispam-prvs: <BYAPR04MB4775149D2B214656FC84FC2A86C90@BYAPR04MB4775.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(51914003)(199004)(189003)(6116002)(5660300002)(14454004)(3846002)(66476007)(66066001)(305945005)(25786009)(7736002)(4744005)(68736007)(74316002)(256004)(14444005)(7696005)(76116006)(316002)(6506007)(76176011)(66946007)(446003)(53546011)(110136005)(66556008)(66446008)(486006)(33656002)(229853002)(64756008)(102836004)(54906003)(99286004)(52536014)(186003)(26005)(9686003)(53936002)(81156014)(8936002)(71190400001)(55016002)(71200400001)(2906002)(81166006)(478600001)(2501003)(4326008)(6246003)(476003)(8676002)(86362001)(6436002)(2201001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4775;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gX7mnHsTLOD2jvm8sCU56K0XveoHIXpVN68Gi91jPGbh5mFXT/SzRrGWJh2/oy1rpSEJwnkdUDBAbSH1JclV5+OZw3QZroKX9mLd1qvgK2bpH7C5jr1xusve8RMdse4w6/iJyc05wa72aoj+8ULcCumZtrkMYYhnV0FIvDo3OyrLE72JCpfgBY2rS51IRZ6YTcC8ahL68wB8v9u5jFy8hk8P7ZGNUd1gumAR/kv/xkSR0qbBpNIuUXvffwdAVcpm26EZKq0VVQZVPKw3wJs4iVNkZZtgo5sBTMqM6ESb3ttdi9kJtf6lXjlDyneZlHYPSnKBFiV7sQQbS1sMN0eyK+ycYVF56fQkHemr0f4Wun5PY6+ycKt5O8ZRmhOy8jiVO5XmlVOxJ0rs2ZHjh42zuk6kxov7lYME22RwEgW4EOg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f552c421-7704-4c59-f8f4-08d70ae5874e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 18:35:22.9113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4775
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_113529_115901_CDAFA127 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 07/15/2019 03:17 PM, Logan Gunthorpe wrote:
> Presently, nvmet_file_flush() always returns a call to
> errno_to_nvme_status() but that helper doesn't take into account the
> case when errno=0. So nvmet_file_flush() always returns an error code.
>
> All other callers of errno_to_nvme_status() check for success before
> calling it.
>
> To fix this, ensure errno_to_nvme_status() returns success if the
> errno is zero. This should prevent future mistakes like this from
> happening.
>
> Fixes: c6aa3542e010 ("nvmet: add error log support for file backend")
> Signed-off-by: Logan Gunthorpe<logang@deltatee.com>
> Cc: Chaitanya Kulkarni<chaitanya.kulkarni@wdc.com>

Thanks for the fix Logan, errno_to_nvme_status() needs to be only called 
in the case of error. Clearly bad example of calling function withing 
function.

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
