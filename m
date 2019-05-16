Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927E21FE07
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=lVXuOxabqvYMIwQ91k+5/wk6/uwf6xdMIl0LEdAkJAM=; b=pxPJWWhh1LeE9Y
	Lt4Cz+PfBDdeSR70sxPb7zDv4OgYH68N5b3APwo8Q7GAj3r4SOpmoOgDZhXd7yCxBN4n4TAeD6634
	S5O0IWR2hvAXbkebUmOLVBsI4Le0CXmKuI1jA4Ac/Tt/ccjCuPvFrrhHEZ6S900fTNK09UYI45Mg3
	WU4kfhR11HCm11z9S5fxfoRYJBJsQFOgpPcxAojLio3nSLLCKilRu1/7h0wcFmjWdnOyHmb9npdNw
	3lBozssYGaF04u0ULvMtV7Zmp7J/W1p6tph8NTn+6XATjIe9LwVouyHh6X1xeqxAs6JnntsUPBvvo
	PsiKIxnY2W/bjXStVmnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6ya-0006DA-PJ; Thu, 16 May 2019 03:22:36 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6yS-0006CF-E4
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976948; x=1589512948;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=gvQSm21k4MKNyJIemRR8e4JEGDD0ziaIigFDo8gBY+4=;
 b=Gz2rr7g0HjZtnIOsswnd8rZ2yYx1aJEFTOOw3xSbDihbZVvsQJRRWfjV
 A5v3gwADff4UjH/q2NjqmWWIDtEg21cmUKCM9VA+U4ofWMNv1ju1x51Cc
 0FOfx6AtSZOcJ7PQH8F4yf4TwbuP9x34JgsIsCsQTL80V29voQnOazJdg
 YbP4uAoZApzXC0YL1tjPNTTE1eYSsRbSceH7zVwBEGMhE0e9K+y2PjQPi
 Hyz9+QC+1vJUoGERn6cTVq0RhaLpLxXLVaG1WIKhXn+1tCzVqcVQybl9C
 mlzTNyCTKFmUalXenC8yOohVZclFyKTIsGw87b926iLv9g1fMjnckyk+V g==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="110084231"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:22:23 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G86YxvpmlNmk4nnPoTZKpXtWDAj+cuYlA2/OZB1sx/U=;
 b=QrEVwjZCzA1rmBIiwhB/NNrg3wCiWr5Uuf8cIjdXIh6RdJ0COTi9TCumY6o5INvBAd5r3Dr3P034mZYDsycv20OOxImQwaTxBlBWBpjUAbywMCJHJieSA8IFjWIUSiEwzmwo9Jq3BAyChdEeAheidJYW++qp9+66GkoER/CBEg4=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4400.namprd04.prod.outlook.com (52.135.72.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Thu, 16 May 2019 03:22:22 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 03:22:22 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: get rid of extra line in the tcp code
Thread-Topic: [PATCH] nvmet: get rid of extra line in the tcp code
Thread-Index: AQHVC5Z3fvDuxD4u7kuVQJ6Y15coEA==
Date: Thu, 16 May 2019 03:22:21 +0000
Message-ID: <SN6PR04MB4527A95E95B73029A2D5D89B860A0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
 <20190516032109.13048-3-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f95710bb-55de-4450-925a-08d6d9adb5b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4400; 
x-ms-traffictypediagnostic: SN6PR04MB4400:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB44005127DF7E232AD16A863A860A0@SN6PR04MB4400.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(39860400002)(366004)(396003)(376002)(189003)(199004)(3846002)(52536014)(76176011)(72206003)(6116002)(91956017)(305945005)(53546011)(316002)(6916009)(7736002)(33656002)(186003)(74316002)(76116006)(55016002)(9686003)(81156014)(102836004)(2351001)(229853002)(2906002)(25786009)(6506007)(53936002)(4326008)(54906003)(6246003)(81166006)(5660300002)(8676002)(6436002)(26005)(68736007)(7696005)(5640700003)(86362001)(14444005)(256004)(2501003)(8936002)(478600001)(99286004)(71200400001)(71190400001)(476003)(14454004)(486006)(66556008)(66446008)(66476007)(73956011)(66946007)(64756008)(446003)(66066001)(4744005)(26583001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4400;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ttZKLEI81o6FzsGF9xNpzkPURFXPjcwjFsinHV1b8ZjHn6+7UtV8HPyPZBa7i1ORHY5PaiLTaR6BRV6KHSW7buyF6Qxm4+j6TDfsLJIT1yLWuPns8FAj3J7QFwyFjh1kJYb4QYxJgvCS5qqFgCzNLZBdUb5lceqhWkulRvP860l7tiBU+ziE89kUUpuPzakwgppbRCB08is4ohajwb97iL7rF489bReK6fvvWowzd8h1RinIbHcT5i4U+2RtMQjKwMjocITO46Z3TVfVg3dDYDfYL842byBPsg0uhByxTOfxOcF0XAmLlMNZ++bekxUP0a68nyRLFpGkK7wjY5NtkBy0gAM6qAzepAU6ZcJB6wCoIO6h5iImdLQ8w/Y2W6l0buVY+rcED6jkSBGHD/7EO7cl/ZcD+VlX+UDsCURNnuM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f95710bb-55de-4450-925a-08d6d9adb5b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 03:22:21.8802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202228_682153_BEF0FDAD 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jthumshirn@suse.de" <jthumshirn@suse.de>, "hch@lst.de" <hch@lst.de>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please ignore this patch, sorry for the noise.

On 5/15/19 8:21 PM, Chaitanya Kulkarni wrote:
> This is a code cleanup patch, it doesn't change any functionality,
> It removes the extra line at the end of the function.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>   drivers/nvme/target/tcp.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
> index 69b83fa0c76c..f019af264081 100644
> --- a/drivers/nvme/target/tcp.c
> +++ b/drivers/nvme/target/tcp.c
> @@ -557,7 +557,6 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
>   	}
>   
>   	return 1;
> -
>   }
>   
>   static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
