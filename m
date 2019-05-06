Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15227151DE
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Ltb2uc/60htPZbUG446V9M9g/afjEd3+k6A7x0IyGEw=; b=CPVmO+dry24YP/
	UsvnY2Wzbqp+kaiUP0Hhil7J1NWsnxy2qmmpBsKaRCBaAtnYZSQcSmVNnDRYEAB0rTK6VmcJZeIlF
	W6u7xj/01aBINz7G/gUyCtsskbsSimIicbmPX6yP1egClStadzt82QsHnj4iaF3tTwNBRAjm1eX7M
	u8lWAuXb2NwcU+cWUbmQWNj+KxNm5Vkhs06/ubVa9dF0V9ENHpVJzZbopY2OIpC0T0r6bIlev7/qq
	4s2qt6Qg2D6kFyjp3gvJlVRQ4Gj5ZIvEtMp8ziVlCW3EMO4qoLZEm/wwXJhR9zBwEL47AO4+vfJkE
	LPdXs4vzmhnWFHsjrbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNglN-0007u0-Ij; Mon, 06 May 2019 16:46:49 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNglI-0007tf-EU
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557161205; x=1588697205;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=y2OjkSeqmFkP0aomMl7IKfPQKqCQF5bziomLCBfPotU=;
 b=kZm2v8jxzqRBEqZwjxIpLLlY659OSTbgHiL0LSRWnOJZKEC9ge06J0hU
 9uToA2/EwqNb+D/+SLc0BH6hk2sKZmbvsZi+KRbxCzFAjNC90xkWka9+w
 UNwzrboFrh0HZsCMbdAf+jPMdQrs8m3HE/p5pXEtcsyycVlfJprmt94Qp
 YTqYyQpJqK4Np1lLg8gIYik6ry0cG3Ya0Wj/gQuJhasYP/ikHZZWQab/m
 o0j3d/jTOv+KHAU5/jDocmzw7tQwZ26bmVOvPMQvabP3wx68ZHLbIYVt8
 PjNFejcxd6xvwCtTf9a3WrH+Q0f+CbnEinDO7R0yqjIr5uMVmlWrTTLqQ A==;
X-IronPort-AV: E=Sophos;i="5.60,438,1549900800"; d="scan'208";a="108836057"
Received: from mail-sn1nam04lp2055.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.55])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 00:46:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2OjkSeqmFkP0aomMl7IKfPQKqCQF5bziomLCBfPotU=;
 b=k4HHp9dVX5qt8wMN4/u9q0dv9eSGP6tKcUB3fmqi/jnHurs2UkS6kTq8vtRnxKTCMT2HQdmb/IsqJrs84E83ORnpBfBBYLDj30dfu3Bydxy7egQaB7qWmY9nWJC+QqFWqH4IoejHJ0SstKaVdNudG4KHnOHJB3Uj7y00NWuz35c=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5182.namprd04.prod.outlook.com (20.177.254.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Mon, 6 May 2019 16:46:42 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 16:46:42 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Mon, 6 May 2019 16:46:42 +0000
Message-ID: <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 996a3b8e-29c1-40fc-d391-08d6d2426af2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5182; 
x-ms-traffictypediagnostic: SN6PR04MB5182:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB51823FEAA3F7BFF1CB8CA51386300@SN6PR04MB5182.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(346002)(366004)(376002)(136003)(199004)(189003)(54906003)(102836004)(53546011)(72206003)(6506007)(110136005)(316002)(73956011)(76116006)(66946007)(91956017)(33656002)(9686003)(66556008)(64756008)(66446008)(4744005)(66476007)(26005)(186003)(25786009)(6436002)(14454004)(53936002)(256004)(66066001)(4326008)(2906002)(229853002)(5660300002)(7696005)(76176011)(55016002)(52536014)(6246003)(6116002)(3846002)(478600001)(8676002)(74316002)(8936002)(86362001)(446003)(99286004)(71200400001)(71190400001)(305945005)(81166006)(7736002)(476003)(81156014)(68736007)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5182;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t/ckC+/u6lLXR6oBjKM4DYvSF+M1ajBx5KV6nPBzkA28oeqJOxO6olMcqzzRGQhWCHdRLMLruLrW5/hHqPngUz58SJ05wsiEd7ZYfEuSAHTf0PiyqCb2u/7mJo5OkF4euBIumSmYSo6WAtey2WZpoMfIWituon3/2K/CQhSAkYCXnYY3XFlin+kAm15EYPZvZQgHdu1YHP8siGFbaCgoDoTURx9+P2CSFvzdDElwdI75M6cVQ0UdwRnSvK1dE2v7Uv3SXgd55FmKQshTK3ObyUd7uyVzj9LOvpobmF/Xa279rRSN4AQN+kP2iZgkPfVjVvySa5U76ZDOLLbfz3rMJHWubaAfLt8mJ4UeTf9U+uzRp4wi8K2BWbTidgXxfRyoalnLBc7+kAWZYnW16oEVgC03SEjXkvyl/bgjH9pnsEQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 996a3b8e-29c1-40fc-d391-08d6d2426af2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 16:46:42.2436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_094644_495921_96ADBCB1 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/06/2019 09:38 AM, Minwoo Im wrote:
> On 5/7/19 1:25 AM, Chaitanya Kulkarni wrote:
>> We need to get rid of the string comparison here.
> Chaitanya,
>
> Do you mean that test case bash script should check the result of output
> and return some error value instead of zero instead of *.out comparison ?
>
> Thanks,
>

We need to get rid the string comparison as much as we can e.g.
in following output the nvme-cli output should not be compared
but the return value itself.

-Discovery Log Number of Records 1, Generation counter 1
+Discovery Log Number of Records 1, Generation counter 2
=====Discovery Log Entry 0======
trtype: loop
adrfam: pci
subtype: nvme subsystem
-treq: not specified
+treq: not specified, sq flow control disable supported
portid: X
trsvcid:
subnqn: blktests-subsystem-1

Reason :- we cannot rely on the output as it tends to change
with development which triggers fixes in blktests, unless
testcase is focused on entirely on examining the output of
the tool.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
