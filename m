Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7BE334FB
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 18:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=QW1h1qS1f2BsyadwM4LoaY/NGUXuDqeAlG4tvozdF1I=; b=azCuJrovdTvSym
	/3WMjv37+qdXbI7T4qe7G6sLGa2ormXmHoidFrXOC3dOtXOpmUMcQqelFBitg6KH/9KNqlNR/xQwZ
	yuAW3cMzVjh8GZqesv5+sKFFCqWuaHSi/oBY1dyHVDy1b4c9EHubwUGKi5oPtPrLD8paCfys4prD8
	WOnlsUQYehcKt3JIbF59VsFigEInxfn242OTZr7HqHuTVOMepRwHbktGfT0mi31O9COTLe4YzkVMD
	HmiAfDQmlrkY6YReubaXMl56SXsdWPSZxWBDAVXOkPXyQKJVZfBdAmitY3RpwCj6+eGgK2gmTFPV7
	/G3vM0K22+PbQLpUqrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXps6-0006nh-77; Mon, 03 Jun 2019 16:31:42 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXps1-0006nO-FW
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 16:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559579509; x=1591115509;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=yHuvY4fgiG+ZlPqdPBwcJlVw52C5usBbA3rwgCIwolE=;
 b=Yoy9bx/sbz3fHxZAGjbcwyzst7FEmrnpyWEr1oBnJku4zmRk7PWe8FzK
 tirZn6Ly4pBBy+47biiwurm9LDjGts33r0xT1zk8fJhmx2TVEdUsJNOKC
 JC9rPFTUc2s1OpADFKx+aBKn/781Surc/plDUfR1eYysAZKSana412TRG
 /ZHZ4Aq+2oHevitF4jpFBTEDcmfMdaHA8OYn84XnoxfUDiGhSf9KmPALD
 NK/64rziJsN8AjUohZHw/sJYbv7hiwcRcmdlmhkBvcsSj8RgbNn80f3F2
 xdCZFbLfH4G6/4iVY8AiTUmwBFr5AtxNa+BsIGOkKgkoSAYjS2oC97bHl g==;
X-IronPort-AV: E=Sophos;i="5.60,547,1549900800"; d="scan'208";a="209278344"
Received: from mail-bl2nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.53])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 00:31:46 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+bqNLGLgKZM0Axx4ddqghF3xhpQS+bAFxhkqhdohpv4=;
 b=NBPnZLIcDMKfkYZ/cA6W+mjgZijkfJAsyQDplUpF0aNJedIpKnNferd5KeNHfDjYDyNVGv/iX4QzqsrB7MZhDvEcJWNoIAfqI+DAiEIZYI09PqMK4f9o0qjW3asRX8TPNna27IVFRwVpdtKGGoBBlYdcSsCJEk0Nbr2JJ+/nkJk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4405.namprd04.prod.outlook.com (20.176.252.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 16:31:34 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:31:34 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 3/5] fabrics: Fix memory leak of subsys list
Thread-Topic: [PATCH 3/5] fabrics: Fix memory leak of subsys list
Thread-Index: AQHVFsw2D2tLhwNUy06qwFwcNbrs+A==
Date: Mon, 3 Jun 2019 16:31:34 +0000
Message-ID: <BYAPR04MB574904A07AA236EC9D47A29A86140@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <1559209406-713-3-git-send-email-maxg@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c1d2fad-4e6e-433a-5494-08d6e840f155
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4405; 
x-ms-traffictypediagnostic: BYAPR04MB4405:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4405436B479FF8CFA0770E7386140@BYAPR04MB4405.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(376002)(346002)(136003)(396003)(199004)(189003)(6116002)(6436002)(3846002)(2201001)(478600001)(110136005)(25786009)(86362001)(4326008)(76116006)(66946007)(73956011)(66446008)(66476007)(66556008)(64756008)(68736007)(9686003)(256004)(2906002)(55016002)(316002)(53936002)(14454004)(8676002)(74316002)(66066001)(26005)(33656002)(52536014)(6246003)(186003)(2501003)(4744005)(53546011)(6506007)(71190400001)(7696005)(76176011)(71200400001)(72206003)(102836004)(81156014)(305945005)(99286004)(229853002)(54906003)(8936002)(7736002)(476003)(486006)(446003)(5660300002)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4405;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dMMw4EUawl5masP1I8zUiA4bKK+lA7Sh8Qi08dZN4IZ4uWllIZBr8Skz9ky2STF1Mtfh/zs6g6ujUFHsR283zqyaDgt8FHA4djn6Ast51u32L1Tbhl8HYSdL4knI38aNCKeXvyKD7yAL5FOyAdMea6BfvwkOojZyUOVcLkZq3IC20j2nvphUNiL2SxKDTZPTKgbleLpRPknyRKftJigBAvXW5AnelTXdc5OZJsI48lSatFcf4eSlaRPoaD8J7WQ5qbuVdUZ+h4pUdV+0Z4ABO72kbYnAJkjiLSYakzg5CWserxX6WnS2U5jC8L+YbPSiqIUZ/wdFQl9RNiLNGc3i5vDKEclJFa0dYuC2hqyqsT0PZXHJsLPm/CIR1MowxpgftZG1qe/qd7m2klxzFxYZKMOG+n3M3R6AaXgZOfkPmpo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c1d2fad-4e6e-433a-5494-08d6e840f155
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:31:34.2147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4405
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_093137_556381_0FE896C8 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "shlomin@mellanox.com" <shlomin@mellanox.com>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 5/30/19 2:44 AM, Max Gurtovoy wrote:
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  fabrics.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/fabrics.c b/fabrics.c
> index 573a6ef..9ed4a56 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -1205,5 +1205,6 @@ int disconnect_all(const char *desc, int argc, char **argv)
>  		}
>  	}
>  out:
> +	free_subsys_list(slist, subcnt);
>  	return ret;
>  }



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
