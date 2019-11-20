Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2178C103296
	for <lists+linux-nvme@lfdr.de>; Wed, 20 Nov 2019 05:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8+Dj0h6rYdSJZpimMfj+dSXSrbFV5rJzpxitFbK3hxI=; b=jrKOWaJdRZ92z6
	p8txU98LrUj1leAsxsvnlt6/WwV59PquxMxplggLyjc08/tbptoo7zRTuubtbWvePPis0kn+b5iQX
	lGYIMk+zTy9BMbO09KrgGeNS0TBnXAJ8bhBppwlwC8vdhjrF+tN8DKKT4s/Ty50gbQjb8wXt3uSpY
	98mEBpVU5IV+Sydah1QNhk9lyfLr4dxbn567PREGZH9KatWlhl7YI1sxm8vlOCiIJcNCk7Ndk+fdm
	2D9djt57eAB+3xrPsKPgOgpUmu2ZPrBhV8y0TBw8JsNMI98khK5iJTPT/qxkvSACYcRiWauXmjoRx
	sKgTDCQZFrlzioN965rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXHl6-0001kV-0i; Wed, 20 Nov 2019 04:38:28 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXHl0-0001jt-Td
 for linux-nvme@lists.infradead.org; Wed, 20 Nov 2019 04:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574224702; x=1605760702;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=76lU9Pfx5kqDXvTpTym8BfD1fDPOV/L0CI2PF2bkgmg=;
 b=K3R0mgdTzxmqiiRq1m8//AccU3HF6NyD2oDD0K8m/CtZNtvbq0albm4S
 txVAQKd1EuOm7X2uoW7qqP9sEFV84XQ+mY7klw6MgjE+fML3I55Nc4UoW
 InpfDj8LNovuJcsihZCjOrqEEySspylqR9b87F7SGKAJI73HUx/Yrz/R3
 wV/ZwYGSO1d6TQ3qxTnckrip3mMVDC/ijw6Z5zOyERPLL1y/srKq4TC0C
 cFgXnEGVzJ16ed/FzkYMjAcYhsxNKwpDWhHkT3tsMOJPh6DY3GLP/RTuT
 fdQwBaoHPR8J5wTftTgeCgl72ZYD2IWfi56wRRn/FfUqHVaVwPDxCE1Kt Q==;
IronPort-SDR: CWzMCx6LB04jEggwgDaxg+huYaby18RQkcaw++lwLXdWaNF2cQL3rEwiHYM+26ClcGyItX5xza
 pmW3AOis/Wo8XMjjzkbNlgB6uL1bkkzyF71ihAXMuZ/7TJv/02gCuEPyJy9r++zYe2/vex3J/a
 OUbG5B1yUOE/EcwEws/lFzR9faplBShYUIcoMPxTt4h/Nos8cHQFqOuX3azcp6k5MEuLid4xrn
 Hi+C6Q79HNb6ARFoHrz61X4ipprc27Rbcyx2JziSyqRZ3Wi60OcJx0uX+ywdtH2z6SPEJJj835
 z/Q=
X-IronPort-AV: E=Sophos;i="5.69,220,1571673600"; d="scan'208";a="230873993"
Received: from mail-co1nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.50])
 by ob1.hgst.iphmx.com with ESMTP; 20 Nov 2019 12:38:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khbxatPJwIlOQCc/1cPxrAexwpruZFfwn5HG/gQP0JGdDbDCef7V1qQX70X1phNEZuDPJdQv4y59ASk1cUnGOFjuUEp7J4WiAUEUqrV1VPWfX7E7xnTypXNyNUJRdcPKEgP+9aZGkTAFvay97WV4eugT/c76adopUTTB1g81opjtVZyQI+4oHSJ9RHntAVVFWlPD9MACXcVR8dHHgvDbHjyH9iJllqNf67SvMN9TzrOYYtVQfuaUR1278ie9gJTUc6Yvo+3Za+4qMeUiSQrKEDQA+qNxKTBbO502YzGUvB11De8SF78bLE+XAZudlt3IVxI5cVn3FYkRfHDvfnEgiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dJ2W08Ypv2NS/DvBmlm9jAbZRk7EAwUBp9lIATNIjY4=;
 b=KD0XKeNOxnw5YbEu7q5XmRUX/fTjTYPYfJLPz6NzwqgIi9OevKFY69BX4GJqLCA4ul2H3oeJyd9alIee5+kdYmKVaIgNcRCkRaLklBcMOFk0xvho3AfXvO2CbWyu+3DyEOSckyg4ZGOwXJCCK1/I1YyzuX8HpM8hrx5Y9CZHm+absNvl9cA3M0cCAzqosV25oWiv5qvdmtBzy4qRBbib3KfC3OaOz9W4eU4+EUzUBhukAy7PW/gSj9+RgQ1ydZiIXqfsUHDPuuqyyMYsg73AXsjm+6EmtkTPBmDy5iTbp33XWIBXag2cS5CxSJcZY89DxJ83qJpcr6SoVsT3tE7alQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dJ2W08Ypv2NS/DvBmlm9jAbZRk7EAwUBp9lIATNIjY4=;
 b=gHCzJfnMAw1wVea2TSmqULHwo3sv1vB9jDhnPJccFH7/BCLQ9+lN363hfvQCCrAOslktko06VL9CcJRpy1jD4Eebl63lOP9J+J7iWfl0aCar3D1zAj8NH293nqYcpiKR4vvWlREsQjH3f+Qk+hpiVv0BIe63McijMYBAl1JQgNw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.57.21) by
 BYAPR04MB3862.namprd04.prod.outlook.com (52.135.214.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Wed, 20 Nov 2019 04:38:17 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::6066:cd5d:206:5e04]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::6066:cd5d:206:5e04%6]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 04:38:17 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2] nvmet: make ctrl model configurable
Thread-Topic: [PATCH V2] nvmet: make ctrl model configurable
Thread-Index: AQHVmm2LL7ba88RVykClXTRqXgsNHA==
Date: Wed, 20 Nov 2019 04:38:17 +0000
Message-ID: <BYAPR04MB57492D38E78427EFE5F39595864F0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20191113215846.22399-1-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8e994a7-4559-436a-6967-08d76d737697
x-ms-traffictypediagnostic: BYAPR04MB3862:
x-microsoft-antispam-prvs: <BYAPR04MB3862DDB5D7E0D910C085A7F7864F0@BYAPR04MB3862.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(39860400002)(346002)(396003)(136003)(199004)(189003)(8936002)(102836004)(99286004)(33656002)(7736002)(2351001)(71190400001)(305945005)(3846002)(71200400001)(74316002)(6116002)(66066001)(6436002)(2906002)(256004)(5640700003)(55016002)(9686003)(66446008)(66946007)(76116006)(6246003)(229853002)(6916009)(86362001)(4326008)(26005)(81166006)(8676002)(81156014)(2501003)(14454004)(54906003)(186003)(316002)(76176011)(64756008)(66556008)(66476007)(7696005)(25786009)(53546011)(6506007)(446003)(486006)(52536014)(5660300002)(476003)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3862;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ccKKZfq+XSG5orX1hjwLb/7NHPqag9bwjnQR212aZ3XRYlgr4Hlc2u1bcIzXRITXDyqWiJx1Lb6+kUgDf+wRVlKSyfWOZkyAqjDJ4hMzHBWgt+nv+5/Ze/Wom5wmJjBpfQzFn1pjWIABqD/WUemUgB9gH3YSO5EJGm4y8nGVke76NpQ/g/esVRMT6c5wLdSLZ3RUbUCTWuU6cSz2T8ctWdDwLagzGGV3Hi3vmy4O9o/DJ7PTghPHMzk7XNzaiNQNe/l9f8L4G17YXd6IgM2P00TwB+BHt6dmwwVmJT0UwHKhr1x0GHRyt5GMs9uTtIIpJbLpDbh75jLFk7hn18jnc/H0bgtoPLBWgr21rId8kQuwsuCiMVUijSmMN4AIh2wmy3wf6FXUf163h1U5jYPmL+37Lyj3n2Nl5pa+X+aDhrPSi6iJhIxil6Nf1XQmsL8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e994a7-4559-436a-6967-08d76d737697
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 04:38:17.2017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B+/mwQQTtZHrrq+oIIwrXeDEpq5ByPkoi4ATYHZosf5cQPR4qX4jK7aRWBN6IZAop6MHZ3fvU1EqGWuh1LCsdTZk174JFnqv6iFdVwzVbm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_203823_011520_901FFFB4 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "MRuijter@onestopsystems.com" <MRuijter@onestopsystems.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ping ?
On 11/13/2019 01:58 PM, Chaitanya Kulkarni wrote:
> From: Mark Ruijter <MRuijter@onestopsystems.com>
>
> This patch adds a new target subsys attribute which allows user to
> optionally specify model name which then used in the
> nvmet_execute_identify_ctrl() to fill up the nvme_id_ctrl structure.
>
> The default value for the model is set to "Linux" for backward
> compatibility.
>
> Signed-off-by: Mark Ruijter <MRuijter@onestopsystems.com>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
> Changes from V1:-
>
> 1. Don't allocate memory for default subsys model,
> 2. Use helper to get the default model string from ctrl->subsys in the
>     nvmet_execute_identify_ctrl() and nvmet_subsys_attr_model()_show.
>     Later is needed so that nvmetcli can display default value Linux
>     when the model is not set from the user.
> 3. Get rid of the extra variable c in the nvmet_subsys_attr_model_store()
>     and replace for with while loop without loosing the code redability.
> ---
>   drivers/nvme/target/admin-cmd.c |  9 +++++--
>   drivers/nvme/target/configfs.c  | 44 +++++++++++++++++++++++++++++++++
>   drivers/nvme/target/core.c      |  2 ++
>   drivers/nvme/target/nvmet.h     |  4 +++
>   4 files changed, 57 insertions(+), 2 deletions(-)
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
