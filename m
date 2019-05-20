Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D1229C0
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 03:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=k4Ii8PilEcTzdFLeQt0D2+3AUnhWw2uHFOe24dgDvgY=; b=uO5Jx6nhuvxR9x
	to7GDyV9+Y6usU3kxdf0S5pUSeP04aiUSLTb1d7oq/j8+/T0l8JRJuWD1jnU4CFuAyJkFS5/cIzaO
	RBxCXMrokph+7s+cFVTn8P/GhpWIDEJcQPmaCrWm1cvxnHcOc5dndrDO7PDQGJS8f/VCQbUuEetDd
	4jNCZSg+//rGbNh0GyRpR4fUiLF5nLNpMhvjR4Jy6yO/fg8PDKlTMPh2UXrW7Vn3JlpPQkn7sHZfE
	mpg8A96XYEnlIRFUzlJCMNkyuMk0oZ/nqFEvzlfEjc4l5QNUJh27eDk+rLamsfAWkDj2DwBY65CDf
	i7CfI31YWV3pKseZzOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSXLs-00063H-V2; Mon, 20 May 2019 01:44:32 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSXLn-00062n-TS
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 01:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558316667; x=1589852667;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=fx/pLhk3An5OHfOzU1mtO+y8MhmQfNzqqW4sTCpXAbo=;
 b=jM7K1c1LSK1USbKMgsoFTtVjJghCHfRTfeBbDEZRdENPbV8DVtxPjjMY
 4hq+gVfF9TJofgbe9qb3drXFVPJaobMC6nwSrNoFcajiE4vy76hU6CztA
 NHzjHKZx+Qm57fxFO90vCXGH9W7L8BspfD86cA3XeiXannMpRudaX3M3K
 x8njLQ7D+OypKaes+6QoByYJF3LgwOTXLvzWtAac2+Wd7HVGzUeZgK+aI
 0AqB7/9n00mdDKTlzO3Rh5u8gjcofYIXD2ZCbOQmKdeDrfeEbHiZyZ7YX
 mnfTFJVsG1cFszj/CtQuGw2NSqtJO7LTLRQmo88vjrk2Ql8R9Xbk3zwC3 Q==;
X-IronPort-AV: E=Sophos;i="5.60,490,1549900800"; d="scan'208";a="214774771"
Received: from mail-dm3nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.54])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 09:44:23 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VN/B+uY1WsbYUgl4CIItKZHwVdvAOmPIBJe5v7OrRhs=;
 b=ftRrXqRjjcGgxZqXaw9W6D9qHxSCAKZ71/qrv7NLXhZL5avpEAB4M/Nx19BOoGnQV+URewdTmpLKrerHO0lf9F0zATXSQVHYZx9GYy3u6Ua/E8rTMDddTnzDK1/biAgl6lc6wXUFo5aAKPDLNX3uiKslwemtvXstfUT8IWI5nOo=
Received: from BN8PR04MB5747.namprd04.prod.outlook.com (20.179.74.153) by
 BN8PR04MB5988.namprd04.prod.outlook.com (20.178.214.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 01:44:22 +0000
Received: from BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956]) by BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 01:44:22 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "minwoo.im@samsung.com" <minwoo.im@samsung.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-cli: close fd before return
Thread-Topic: [PATCH] nvme-cli: close fd before return
Thread-Index: AQHVDmxB/sHGndfBjk6f7qvAb2Tu+A==
Date: Mon, 20 May 2019 01:44:22 +0000
Message-ID: <BN8PR04MB5747CE9613ADDE4BA1D6A5C986060@BN8PR04MB5747.namprd04.prod.outlook.com>
References: <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
 <CGME20190520002113epcas4p345b92c6d82619b92478af81e81392266@epcms2p7>
 <20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d@epcms2p7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97f139e9-f9f2-47c3-3db5-08d6dcc4aed5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BN8PR04MB5988; 
x-ms-traffictypediagnostic: BN8PR04MB5988:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BN8PR04MB5988015F84C4109E82B069F886060@BN8PR04MB5988.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(486006)(68736007)(66066001)(6116002)(3846002)(5024004)(25786009)(256004)(14444005)(7736002)(4326008)(6246003)(53936002)(316002)(446003)(476003)(33656002)(74316002)(86362001)(478600001)(966005)(72206003)(2906002)(186003)(55016002)(14454004)(2501003)(9686003)(26005)(73956011)(76116006)(91956017)(6436002)(229853002)(52536014)(66946007)(66476007)(66556008)(64756008)(66446008)(6306002)(8936002)(110136005)(305945005)(5660300002)(7696005)(102836004)(81166006)(99286004)(8676002)(76176011)(81156014)(71200400001)(6506007)(53546011)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR04MB5988;
 H:BN8PR04MB5747.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HvbW8wgYX34MxJg5MTBzVbxurmFcoRN1Ql+xlbqUGjnVA2j1q0/OvWsQNQxChqhnK8tV1SowpIx0RdcwtjSLaxH6ciDVXXD7yaXFkrf9aYejl4qbLjHeBN6bTLeMRczh094aJyv8eDcPa7d/chhEe/omzMZB4WgdEareOLZ+566WRlgk5WKNxFYOzkMmaEjRebwMROk9qm5WOiNrPlUaN4oLjAi25BGCpGJulrfU0qmdiSEtKZOerkqWqWS75B3SRsbMaKcjw+00LnFqBGzt0wOcb/2ZUTgvhsuy8zVLlqotlhuC5WiN4s+YsPvowjXaFMJVFbwxe9KQCap1GUljp1/njz/pvk2HuYzwwxqRq5qUwyjgIq2MQjTejIV98y9xwQdM4Gb1ywxkiTB7qQYMj1iGraJT4Lx12NgMxvfzd8E=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f139e9-f9f2-47c3-3db5-08d6dcc4aed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 01:44:22.2186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_184428_141676_E8F8BACA 
X-CRM114-Status: GOOD (  14.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/19/19 5:28 PM, Minwoo Im wrote:
>> This only covers the code path for nvme commands failure and not the
>> errno codes ans thi ps mainly to make all the nvme error and return
>> codes consistent.
> 
> I think I don't agree with that.  If you want to fix the leaked fd before
> returning directly, then it should make it go to close_fd for the EINVAL
> cases without adding -(negative) on it.
> 
> I think the PR can be merged regardless to errno update now, though.
> 

Before we add your patch-series we need to make all the returns 
consistent which is not present in the format() and create_ns() for nvme 
error status. Ofcourse eventually all the fd leaks needs to be fixed.
This patch makes it sure the leaks for the only nvme error code are 
consistent and on the top of that your series fits well.

Without this we need to add two return calls in the create_ns () 
http://lists.infradead.org/pipermail/linux-nvme/2019-May/024307.html :-

static int attach_ns(int argc, char **argv, struct command *cmd, struct 
plugin *plugin)
@@ -1216,7 +1210,7 @@ static int create_ns(int argc, char **argv, struct 
command *cmd, struct plugin *
  				fprintf(stderr, "identify failed\n");
  				show_nvme_status(err);
  			}
-			return err;
+			return nvme_status_to_errno(err, false);
  		}
  		for (i = 0; i < 16; ++i) {
  			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0) {
@@ -1246,8 +1240,7 @@ static int create_ns(int argc, char **argv, struct 
command *cmd, struct plugin *
  		perror("create namespace");

  	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
  }

It should be consistent with all the over functions with one return.

This what I'm trying to avoid (by ignoring other leaks for now), can you 
please explain why it is not a good idea to avoid this ?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
