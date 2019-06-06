Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0DC3782E
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 17:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=f1ErLccP3RYC7j2RMoZbn8bJEFlXKbtHCAl9XB5Dku4=; b=tmfVD6VJRdEqI6
	uon5iCh568adOH0GCvrVCs4cMlli2AJjjR5PgqWPp4g9z4ern5N6GuFsdzSDz6E6JfIIi2EyflMh8
	iB6sQSVPArZK9rmHAWY0iPZeqr1ixayI8Lh5vIXabgQR7WEBvK1NLG569vQg4AT9Qab3V+bElYQlZ
	8vbRsKTGM69tOtstxQ/NuuwEOOlI9oTi0IQEQUixzCqCjv9JM2dR8q7nYvIFEiXeZnf9UhdM4cANP
	8PIYdm27aCjJe4cwllS34rCd9jEavCzuhKWitQvAFzaGKYH26+bvTGfaQW0CuSOmdbpOT3Oif9gqQ
	QcbCJCw79SiOG+mZpj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuSH-0006bz-Gj; Thu, 06 Jun 2019 15:37:29 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuSC-0006bH-Jw
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 15:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559835445; x=1591371445;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=34ONJfJEEYqnm+TB1s0yu28ilDLmSgnoI9IlQ/2UxVA=;
 b=Reyy0xf7H40FcrXWcnzrLe9VfcDhQbh+wGiOhtmwjSq89GlsbrAEwPx8
 H+9DS0HErRwrbYelom/spdyAM9ytELCJUEjhvWwVHZl2UeMVqmIwwSuCY
 +eV0fJkHZvti84jhjMrGRJ3ihuLez93WrRt0rCne0RsCOQe+xYOG+1jMg
 bKzLxbDf8LI0BqGNuz/GM+Lzf49/fy+KWOii7bokmi6R0UO0CV/013bRR
 W9k95bPIeSnHDF4lhsFVjY7oHdnzIVCGWO1jEwYLkIRoij4FYB+X+TtM2
 Yyct+Zorf85nAX7plLTgcfjNJ/76JK3KbstXQs8JygRXjzQpfQFOdCfp+ A==;
X-IronPort-AV: E=Sophos;i="5.63,559,1557158400"; d="scan'208";a="114909037"
Received: from mail-sn1nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.52])
 by ob1.hgst.iphmx.com with ESMTP; 06 Jun 2019 23:37:20 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+koGRBe3ar10y2QIYD4mjjexzLb8iKo/9cz107BDwM=;
 b=kYNfFxrUBVdRItMCtiLk47sxyf7MVapoVagsoIgZmVl04hY10hQSgeixz1oZyQViXyyBDmUHqRB3h+k82dMtzeAKi87AGBf1/JMeCHVcww9Cdfs8VqZuhhy9Kd6fRRakKxzXwI4oKC9Cez5nOVv1+ygLkSytimKo4nnhTNIgU10=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5014.namprd04.prod.outlook.com (52.135.234.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 15:37:10 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 15:37:10 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [RFC PATCH V6 2/3] nvme: trace: do not EXPORT_SYMBOL for a trace
 function
Thread-Topic: [RFC PATCH V6 2/3] nvme: trace: do not EXPORT_SYMBOL for a trace
 function
Thread-Index: AQHVHDKn2sslllH8o0KNLSJKE5J5zw==
Date: Thu, 6 Jun 2019 15:37:10 +0000
Message-ID: <BYAPR04MB574962A56158412D25FA54AF86170@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
 <20190606063229.17258-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3690064f-be73-4529-42fc-08d6ea94d703
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5014; 
x-ms-traffictypediagnostic: BYAPR04MB5014:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB50144A1D89DA53222779AE0486170@BYAPR04MB5014.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(136003)(396003)(199004)(189003)(81156014)(8676002)(33656002)(8936002)(54906003)(66476007)(66556008)(64756008)(52536014)(66446008)(72206003)(76116006)(86362001)(81166006)(486006)(476003)(4744005)(73956011)(186003)(5660300002)(3846002)(99286004)(66946007)(26005)(66066001)(2501003)(6506007)(6116002)(53546011)(76176011)(102836004)(7696005)(229853002)(478600001)(14444005)(71200400001)(71190400001)(305945005)(74316002)(256004)(110136005)(14454004)(6436002)(55016002)(6246003)(316002)(9686003)(7736002)(2906002)(446003)(25786009)(53936002)(68736007)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5014;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bSQplQcoRJlRonPa/L/KCotDoDpj6HZjaLpGnBqLjMF5gyAxs2+95RzHABd+XHi8dDuFmO30babIgCaywWKZlGeQDoqC81PrE1K69lZzitipXL6e9goo36gYRkHuAL1Khsd8+yobp+0e1MfDX1t/DJhSTIIF3qjMlcikOaQnCTt5XiYPaTU6HYzWE2uh1lREQtKyxpGuFV78v5FOV4A5vrUl6dZbn0IPp9OpRqfFcNtt+dseJxw9J4oea+4Lqd3lzO/jxPYHSrnHijtAaLdzLTCwv2/UR5iMAdubFkPGXeqGYI+5uWQWme7dYmP1I19okXbtRp2UUdIk6LlfDo08qt6Ty6nWKJWdUNFxX8ajzfpPRglLi8pMtoB3YifXpX6pa6uNiE/Jd66jCLc6U1oQyPnKphaevqo6pYI6g9eY1Y0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3690064f-be73-4529-42fc-08d6ea94d703
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 15:37:10.1019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083724_789420_118A2C61 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 06/05/2019 11:39 PM, Minwoo Im wrote:
> nvme_trace_disk_name() is now already being invoked with the function
> prototype in trace.h.  We don't need to export this symbol at all.
>
> The following patches are going to provide target-side trace feature
> with the exactly same function with this so that this patch removes the
> EXPORT_SYMBOL() for this function.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/trace.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
> index 5f24ea7a28eb..14b0d2993cbe 100644
> --- a/drivers/nvme/host/trace.c
> +++ b/drivers/nvme/host/trace.c
> @@ -145,6 +145,5 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
>
>   	return ret;
>   }
> -EXPORT_SYMBOL_GPL(nvme_trace_disk_name);
>
>   EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
