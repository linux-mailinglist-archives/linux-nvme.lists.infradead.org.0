Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE7C1A927
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pt1MJePJW4fuwnNOBstatGB0Hnk0LBePOuOvxjJH/yI=; b=l2tXeQtFIrTuhx
	gPmSxmNPGfVaEeFlB0Jl1AIg7954y3aFI+kkCA7d0yYiqoiraG1j9gzGH+6mBycf1YO9H8xjPNfJz
	VSg5LdBehG7Ze3dYSGqqNa3H5I1dbG5p1pVP4h5NPFrHvh9IOdx66VeRxwPq7wwSVwam8B3sq+Kb/
	XgPFdRqbHz/xKGIVtZqdwRXyeEcgZqxBcH/UyfFYcr+hHnjmLsI1ienx7olyUYbxzZ2NQbfYlJGWm
	5WmNRayUhpLnsHyU+3P7xyngfEWJUHQT4A8ztPg29ZPlD7bFXYbTv0jNvj+F1vGTzd+92oQlvqH9a
	jzf5S05bNT/AhhxXYQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXGv-00007P-UO; Sat, 11 May 2019 19:03:01 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXGq-00006p-RH
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557601377; x=1589137377;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=lfnU+y9krWU+qXZKwYJUiBQIELJezIfJG3FzByQOyHo=;
 b=k/TcJVHnol8HWyTOb2X/cHluszNzLVTJhEqUxAOUTE2QD4MfkELXzcFW
 0sumIkjwPWP3LuFxHbLzoGQCjAC9FnCjhXav57e38LU6pBJf17zzuWrTA
 Pw1wSprLLK9fpAhT/npBV5PBzCmWfWW7AOYZEU7T+KQCnzzwMvKJulTF8
 VRIL4r9L31m1p3auPGCiNRfKCtV+60qokjFWqKwTRXEI7H0JMKqurDuv2
 VIuU9bLQIU5ddC47fOJmQp/6KP1TTDk4m6XyovYSv8HZV6+ClKOWij3by
 3fk9tgJQzavynXchia+QPP67JfTQkqxlT2KCNUEZSVMZdXJqvwA+e/RU8 w==;
X-IronPort-AV: E=Sophos;i="5.60,458,1549900800"; d="scan'208";a="113001728"
Received: from mail-co1nam03lp2050.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.50])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 03:02:55 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpOZrLn6rVfmXmgQ64aexLbFC2emoM3UwI0u5/+x1lQ=;
 b=chGb+HLfe451YSR9+nxjR46HzEyrwyMSOhZK0p4k6tYarxcrBJonVYUM8glmBLABH6YNAA/pzV1hUksBpKjmpjIfBxMkvcAUbpBTKtbDMnxrBZyDG+uW7iWnV/vx1oO/DxAUYU5bxCrXK8xL2hGUwhWhDYqNQiUX/l7pOL14B9M=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4144.namprd04.prod.outlook.com (52.135.71.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sat, 11 May 2019 19:02:52 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.016; Sat, 11 May 2019
 19:02:52 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme: Fix typos in nvme status code values
Thread-Topic: [PATCH 1/2] nvme: Fix typos in nvme status code values
Thread-Index: AQHVB/+CAF4QInurH0uJrg4sTGGtIw==
Date: Sat, 11 May 2019 19:02:52 +0000
Message-ID: <SN6PR04MB45278A253C166069DEA27F45860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:30d2:a20c:290b:1bce]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6310fcf9-ae4f-4382-ea24-08d6d64344b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4144; 
x-ms-traffictypediagnostic: SN6PR04MB4144:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB414468C08BF1542B853A1FB3860D0@SN6PR04MB4144.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:525;
x-forefront-prvs: 00342DD5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(54906003)(99286004)(110136005)(86362001)(558084003)(76176011)(256004)(316002)(7696005)(6506007)(53546011)(9686003)(14454004)(8936002)(5660300002)(52536014)(68736007)(7736002)(55016002)(72206003)(6436002)(8676002)(229853002)(81156014)(81166006)(305945005)(6246003)(102836004)(2906002)(476003)(6116002)(186003)(478600001)(33656002)(446003)(71190400001)(66556008)(25786009)(486006)(66476007)(64756008)(66946007)(76116006)(4326008)(73956011)(66446008)(91956017)(46003)(71200400001)(2501003)(53936002)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4144;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SmkuNJVOktcJzsMxn/XWXd8mBZqivK+Cgwzqa/mT7rCUX+uhKBKQ3rKzu7LLbngb+WtINQGSqi8aAdVG3FxisMxn8/0/1+JqYPHUeE+uqw6r9Ms+pyjV6L+v/dOuD7B8nxfGa5xIerKcLxlBLBG9WVDrkXF8bP3quwbbp7oYkL8BtnzXWwfsGYZJeRlcLbn4+uwzlx16+VcNFlpJMjh28kGTBwot8T2Hq+hQqM2LJletBfHN0XebZ+hV2B44BIbCS8gcUvfdfHVjLIacwnc8bssXOHfyeZxfMdULg1HPK4DcCaUiG6pe1se2/TuuZc1bDl6zXs9cu8MvQTRKJhEiYic15s8HwXlq9m6bEGmMSANmIviFxBVtJaXaCp5xRVgtOWinG6dd4i1lh3nghXMi9yx0ga0+OUXPndv6DpMMNGI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6310fcf9-ae4f-4382-ea24-08d6d64344b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2019 19:02:52.1808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_120256_951951_1F1BD0A2 
X-CRM114-Status: GOOD (  10.27  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/11/19 6:43 AM, Minwoo Im wrote:
> +	NVME_SC_NS_INSUFFICIENT_CAP	= 0x115,



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
