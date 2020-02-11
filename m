Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD28159836
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 19:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oNobMRB5MMwAH4t5KdPVCa1YCMJi19FD10ZRaEQxL/8=; b=GRf1Daqhzzcdzf
	QrHwfRuQeB+z4gCR8raz/KNSEb7DoJVSWhgfzheWLvo4WViZHYm6HkTLpeCsxaB+4H9aRhaUCrOn0
	wHDLlFsxbK3pk/2CdvRBiXwH4qh2HhjQ0RV+nkY+KpZLV42jUHkj3hQXnhFU9+thrk16h+wyPzdSu
	XZvPR95oJz4ak8Rf65eQtFo/YBjIn/SYrWIMTsQV4DkcW3FOwtGb3ZGOaw7ppNBUH7B/WlM4PJC9R
	lySnzWjvGa5D7Js0GPJIKnIc4VdOSe8fVAFb92RfH9+2uiJtn+VOTyW+kBEXMFUWSvVgKYiNytItz
	2ZpHXQ8cQXDbco4ag/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a93-0007FM-Qd; Tue, 11 Feb 2020 18:20:25 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZoN-0000oh-Qt
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 17:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581443943; x=1612979943;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=LjcTBMakBk8MH4QoY9Wem9/n5LWawmk9ycP9t2jFl98=;
 b=oHuFRoAPs8wQcuU0iNG5yLLh1TuwdsK4xBGu7wO1lRVwjnTYqBM5iYHO
 527GNvSaqte2ZSbFMPaBolxbua6/OrwBJmPk5pa/ZFz4eeZmUDrcbbhWJ
 ryo14AIY7mTQDerbOhC5QCH+c+ymOiTaaaQH1SLJ5dRCJZRyZi3QWVv77
 yI4gtFYReuDgSPRR8/1bo4xL6upkunYsZ1x6K9f7PSPb6yLzNJ/tA7I0g
 hJwGR/7WAUFA5/DRwpswXhZWs9bYBW76V5iUwbD4CGH9ti2UQ7x61QyfI
 53XdTynySpxJ2KpJYAORny0jZ5Nji4nxl8/NexCx9UvRvgqTMWpmcRnz7 Q==;
IronPort-SDR: COlTCZn/geEbXcglDDwwUW1zEfXSg2iLUFvu5Ybab8Jd/+RV+NVc2MdhwCAwAgeHvTuzlGTvGI
 UiJn321IRr08xPptDx49Itl0l8DEuNFoP0pTbEq/IrnaHZ6OuyQcmPj0UH93u/0HyD9KY285d5
 KSCc+f1rmNIGdu4SBvqEkxexVv8qCXy3mCGdmKOC3OWRcMZ/FPI2pOwAc9VZ0bZoIHyT0WtPvX
 dHLVBo+PSfFMcpR03zc2TtNb2Ve/IH4/dkRD8gxjhSeMT/INGGSnnUMjVGFj6bGYSrnMerIYBu
 kwk=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="237617932"
Received: from mail-mw2nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.103])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 01:58:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQw9iPJCkbvohA1HzKaJn9kHlKMQtkd64RSzVm68e/zRp4J62QK+d6NaanNPJG1HpMOe+DQhqPuZzN1f2ubFiJkr/hx15OJHc78Z1wA3RHk7wesNpgS7pM6+uC2BEkfw6PmBSyKUE4nMn2c0g1Cr2iIhd99fpji1H9mUxhdo0kx6WLf1eKbhbxt5GvvuHEtB3JoPFosL0inQtmeNRL/CjfM0brivktzpHFXXQtpYctxbLWxVa1j5lUDOXtkCE0H4bhrsaBq+KM9xm/MTlaBR0+DX4nYBHkhAaHJLmOS4a1CmQQVe2Q+U7uuAMGjxjNh82AFFjAmROGd1uYyuGPYcbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LjcTBMakBk8MH4QoY9Wem9/n5LWawmk9ycP9t2jFl98=;
 b=mXm7zyqmT5VZk+Lj+qo2GNSd+Ik22SwQo/ZhTRfohEbryylIavVRZFYDrx+K0WZn/qYtsZU5rIZMGN7eatDILSrbWVdV6sc+G6zs36BcRVdJc67wd8XcITT5NCGm50jBN8niKcwZG8jc31HGJ9gafI5kmrWgTvt465NJwwTbEqKV0VItM8yCXowZ5Y7d9Kr6CIbXCkXXDpVHHuidrHh9X9IDKxvaiQMlhBm7Q0Ru6cucUwF7c/m2Y/BSEkUOyauNTSVdm49rSLjPvoCmGm8UQINodI14hcKZ5Xx5xR3B5W7Ezxw6cxcT1HR3b7JNjoyA01Sh69Bhp5NfjzkM/xR0vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LjcTBMakBk8MH4QoY9Wem9/n5LWawmk9ycP9t2jFl98=;
 b=DYvaD3dlVZtsAIOlZTH55iugmd/V0c2zeCKi25tVkw5uNDjkQ6K5h0HiZlL5ZRw1QxRtQCleJtqvlSHPuwJ1oVKXD4fwvSIz2N8xICF9JEXJRaipTaDXXNCz86XU7P5Amp2Y4LPOngZt7lC1hn1iiDLJH3mWh+RqihfTh0xbhbw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.57.21) by
 BYAPR04MB5014.namprd04.prod.outlook.com (52.135.241.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 17:58:59 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::a8ea:4ba9:cb57:e90f]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::a8ea:4ba9:cb57:e90f%5]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 17:58:59 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH RESEND V2 1/2] nvmet: allow block device to use buffered
 I/O
Thread-Topic: [PATCH RESEND V2 1/2] nvmet: allow block device to use buffered
 I/O
Thread-Index: AQHV28gxfleqlBWK+0CjfcLeTOKLEw==
Date: Tue, 11 Feb 2020 17:58:58 +0000
Message-ID: <BYAPR04MB574951970604C01C22E02DB386180@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20200205020120.22210-1-chaitanya.kulkarni@wdc.com>
 <20200205020120.22210-2-chaitanya.kulkarni@wdc.com>
 <7ce00b55-2e34-2784-5ff8-6b516e2adc85@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8d1030b2-ca71-41f5-3260-08d7af1c11e9
x-ms-traffictypediagnostic: BYAPR04MB5014:
x-microsoft-antispam-prvs: <BYAPR04MB501469BF242C5338A547799E86180@BYAPR04MB5014.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(199004)(189003)(86362001)(71200400001)(55016002)(186003)(7696005)(26005)(4326008)(2906002)(53546011)(6506007)(9686003)(5660300002)(52536014)(76116006)(478600001)(54906003)(558084003)(8936002)(81166006)(8676002)(81156014)(110136005)(64756008)(66476007)(66446008)(33656002)(66556008)(66946007)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5014;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y4pwNoOrLfj0xQs5BBux0+GHRCUxJkqT2lxbUfF+k2eoMCXuUnEJW87tfIlFV1SIuPPkw/IT6bbcfx9lA9B6RI9xYote0npZGGfRHZqt4f5p/ESl8WDUU5jsi7qAOjKuXtJ7BE6QeHtcbSxCl91F0d2/7xE/a1/hE3cYNz+J8/ihlzN33bujOUDeu/1MTLrKy9kNK+dUfKDc/3B2hUPVhwh/zQvwpmy9DenukPvU2PTIb3u3e7dzLucx6ukDtfiCkZuUEYh+S6T+EgQaNq1jwPuSMona677mz2j4vtBl7OFmf0OUoSjE9EoQWPCQt5G9W8e1UVqjqd4TDDhTL+x31JPAeGcJaljymnfr0rStm+e076z71CxIrlk41sRdAJ6+SilC/eL920pIYMtGIGJMh+p1KosYkmeDF4mbJ0garyzjH6ZWlTf0fDTFxayGLjGe
x-ms-exchange-antispam-messagedata: SpGh51RkWCiJejAZkGygOvNDmK1bt60la9QIkzOPjRwCuWrdffmTLd1kjpcmYKNIUOi1EfETODQKIxNO74EgHGESkcQxr2HBiqDNe+H+jKrQnr2TobFGdbW2KNffWFFGYiTr0vmi3EmoZffHxYbKJw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1030b2-ca71-41f5-3260-08d7af1c11e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 17:58:58.9155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uzA+v7DGehc85r+VsY2DuRfzdQXdshaR8ZCD89vcFinI3w5hdPqDxqYbHlOeHG3xSVi4WF++BZzXOgOUMxr3LHNhQnR6IC67VnSDRaL/LeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095903_995410_96265A3D 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 02/11/2020 09:22 AM, Sagi Grimberg wrote:
> Chaitanya,
>
> Can you explain the difference here? null_blk literally does not do
> anything but complete the I/O, how does this patch improve so much?
>

Okay, let me collect some tracing data and have comparison of the
calls.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
