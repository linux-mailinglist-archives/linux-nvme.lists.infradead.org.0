Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8518245
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 00:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RLRQRkW87AwpuaEO/YAmoKgaBVCyq1dwf8FusvkJAJo=; b=HVvu1LaVzQy4GQ
	uvDSpRsWyEI77c2S0ICS9fFUxwxCPoplOJYlTHMjvxIKFNrDpjvLClX7LXcTx/KHOZ5pJguFiJpGw
	woa8z1nWvfgdmm++mHaoiYeMtK/cx68Dc7aMJ0NpOwiwDbpC7EdQpGzuNrBrZHTnTcZiOOwVHBQM9
	areS0/vRnnP+nK+QPfdJw8fBPdePoswrqQPyXko2kLBQshS5tf3FJ0MeGwJt5RBYF/LKsWZ3ul4a5
	ijBYQcglkjSmTfVkX+xZ95hXr/MOm+YgvJmaDaKkPlFRlSStka6OJjrpbhuoQPIyw7huspDfqGUM7
	+ytSa3NHeC3eyK6h1E4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOV3M-00066l-VM; Wed, 08 May 2019 22:28:44 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOV3H-00066M-8s
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 22:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557354519; x=1588890519;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=L/KM2hB0aXEvIT0CDqqsQd7J2hQUn/XZecskVtGLLV8=;
 b=Vk0IPShoirDtfLQXNzdQLk2YjbWN8xQzq3QaBqfWkXJjQC0QdeMDxrAJ
 FPeuc11KnBTzCUv6rgRgUcRq0KDV92MjWSsZGE7aGJqXwdPctO/wo0fuU
 DxwGqcRn6aFoVZu3VnkTTqGfJRX1BQs/+9vB9whSKoXEUNa/zi1+gvf57
 UhxvxApeebASevpDZ41y/9NC4uAq7CIn9kFMRi5au6Zl5/MC+hFl8clAG
 EKhJSH/ry2Idx2Q0zOVOdXiQj+W7l4jyaMujbM4ZrW/HEopYYmGFnrG6k
 7KOweZPVvGEnZh9U2N8iKzk8UF1zp2+eHvQ12UHYiPxhuZpbC+IYmNXfR w==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="112782033"
Received: from mail-cys01nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.54])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 06:28:37 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5brTRT2dK5uPmJFUksfxl7sWcwvcTTEVjISh/f84dgY=;
 b=Lm9PoAcNlsF3eTVfzaiIXgiBCTx8tqJ2Hp/K+WSxnC5Y6uSrsEPgnT244QhA0c9c0ihnONzCHgSXqXGCblIJiRlbxO/0D3izXCzv7QCssaz3W9mENssyWmHlCUo8d6BtLzei99qFW5LY56KU5OitCMxkujgW/QDj8efI5mHofFU=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4301.namprd04.prod.outlook.com (52.135.72.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Wed, 8 May 2019 22:28:36 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 22:28:36 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [RFC PATCH] nvme: guard ctrl->state by lock
Thread-Topic: [RFC PATCH] nvme: guard ctrl->state by lock
Thread-Index: AQHVBebOXoP/SOewd0uBC6I8YkmoGA==
Date: Wed, 8 May 2019 22:28:35 +0000
Message-ID: <SN6PR04MB45277F01185CE093ED40B3B386320@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
 <20190508214201.GB8365@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4bf01a5-c7ee-4c28-c949-08d6d40482df
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4301; 
x-ms-traffictypediagnostic: SN6PR04MB4301:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB430102E69DF48ED1B3A59B2E86320@SN6PR04MB4301.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(86362001)(5660300002)(55016002)(68736007)(33656002)(6436002)(52536014)(66066001)(9686003)(3846002)(6116002)(4326008)(229853002)(2906002)(102836004)(71190400001)(71200400001)(8936002)(76176011)(8676002)(53546011)(6506007)(305945005)(81156014)(7696005)(7736002)(81166006)(186003)(74316002)(99286004)(76116006)(91956017)(66946007)(73956011)(66446008)(64756008)(66556008)(66476007)(26005)(6916009)(25786009)(476003)(446003)(14454004)(14444005)(486006)(478600001)(72206003)(316002)(53936002)(256004)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4301;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gj+nL/15f3vcAxrPgry2gKH3dPxuzO10uiQjrAeR5HGnnLr6tjc9FXQkoT20E3P1Ud9gK0G+eXTRMAP3qy3BXds1ZCT6WMHmKYF1xtMEML1K7ZDvBJP51+IYZbisyjmfyRMJTvwPMa/Yj0asF8OcvVdgQPK6FpR/4Qb1FOCWHZmnQ1QmkQJNmrudLKlDB1Dj3uBJICRfQUM/7QKITS9L158q/kCzIe7JKaMvzjLlke5FE46hvlaY15V0Kjtku5eGm1orz5UpZvOSwITpMZe09fYrfm7/kTxT8nxfVv1BE8mD9gDSyjVOWmsaMCegew6+/kFeXLKDsISk60ebc6mhUQeBsvw5Cb4WLRiEARkH6prrpNwuDgO/n3Z7vbLId9TYgUb1UMqs7nFsoHQzpFqMDniAdwlbtjLZzSt2Ttmb3LI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4bf01a5-c7ee-4c28-c949-08d6d40482df
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 22:28:35.9335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_152839_423051_FC27B58B 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/08/2019 02:47 PM, Keith Busch wrote:
> On Wed, May 08, 2019 at 02:41:28PM -0700, Chaitanya Kulkarni wrote:
>> This patch adds a helper function to check the nvme_ctrl state.
>> This helper function uses controller lock when accessing ctrl->state
>> member which is guarded in the nvme_change_ctrl_state().
>
> Does this really fix anything though? None of the readers prevent a
> state change after checking it.
>
Thanks Keith for quick review.

Couple of reason :-

1. Having one place where we guard the data and rest of the code
    seems to be accessing the same data without any locks weird to the
    eye, especially if controller's state is being read all over the
    different transports.

2. Possible scenario could be if a one thread trying to iterate
    through the subsytem's controller list something like
    nvme_active_ctrls() which is guarded by subsys->lock() :-
    nvme_init_identify()
     nvme_init_subsystem()
      nvme_active_ctrl()

    And another thread is trying to change the state e.g.
    NVME_CTRL_DELETING will result in race in nvme_active_ctrl() due
    to unguarded state variable access.

if need will look through the code, but this patch will definitely help 
avoid those scenarios if not exits right now.

Does that make sense ?



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
