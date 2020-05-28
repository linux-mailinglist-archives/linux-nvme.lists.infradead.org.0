Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0861E65E7
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 17:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ElWTH+EF1jjHHivQgUHEwqCvzmMEhFOjZdiTNbRmiXU=; b=mPzzWgX7dT3nrX
	PCnizXBrbDeWQDkmKv5Vl3CVIgA9jMIWIvuyj4BdfBFbtlJyOdh46yRoWNssq+p1CUrqlNDJOqktj
	o27Lq76IIzP3brR9NLIFtOGXEuW3VnP8iRi/ap85j7WwkIdoefclAWKvTE+5IN7I2GDDLX1Xr7m/C
	Pr/i62FF6zx6+fgivgjEVPxQ61zhBs4k1/DBQoqAiBlKCmIK2uEiifreZPNAvYz4NWdPRTOPucVj2
	2VYGBua9VZhWglcQ2M1RKV3ifeTZ3Ha/46XydlCioPH2XnTTy1WZVYXY1kZV5M/NfwSRv188m5jgq
	y8gQKHt26C5XXJofPrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKN4-0007GC-1n; Thu, 28 May 2020 15:23:02 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKMy-0007FW-8i
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 15:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590679377; x=1622215377;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=VSgSAm4/iGQp1msssU5x36LQ/CBWeVimbOUkTTmm4CpfPIcI2r3u5ptJ
 H/yqDRBAghzqtEBAmAVGGQx/NbcjEyt2cOomatSCmb4Vu0o02S8lrYmvW
 79QS2wO5ae3TmvxiwIgQGTny5xno7S7LHsGTShX34TRPj9pd5j0HUKKLG
 LfKzKoUmeWOn6IzQSP/vvXPeMlzEQviMDX9eyZOWLEdE1jOTVgM+6YLQW
 PEAvrT1FeQFKzOX3SgfH7to9uZi/RkusgtQzmUlnalLTd/n8OX9hEQSd9
 hF/i7PCUVPFMIdAIOasoNAQddGEFPGyzSTadJ9UAjXm1K7Cmoz1udSle8 g==;
IronPort-SDR: lxfDyBQEETZZ2ydyE9G9c3LUbCpEuVrXoTf/s+sgAcSqLbCQxZgxvyLwyu0BOAc63LohanMcMz
 uCGT1JKBi2V8PxBC2a4m7hzt/E4SqgB3QjC5u+X1/ICa/ktrQ5GOZP0o8hY/vfZqqJpRzaMCAw
 4jTzV2yUhwi18PoliBqqNb2M1h2Ll05V/nr1SZh4ifSedoNRQL5+gtCpDCMFgY0mOohxyEqlfY
 zo+KzyqUpNYLDYPIbWr2z8kbbCXZj5AcrDQvLKtUNklaORXRHXaGrsjGm0aFAeNLDC5VqmfrxM
 QgI=
X-IronPort-AV: E=Sophos;i="5.73,445,1583164800"; d="scan'208";a="241538025"
Received: from mail-dm6nam10lp2105.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.105])
 by ob1.hgst.iphmx.com with ESMTP; 28 May 2020 23:22:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l3m9ajj3Xsnd9rMThFS4ekMoEvWGXBOx7h4cWiYZBPhVAqTNrrOrtYb04TZQqhur52NsQJ3D7Km/hSSMq915tolxs5EJb+hnTenbDa+6aIjo3PpPpTF8Ddwrj2OzYlq9Gxa0wjWGT3P/0j9N3+eJnycgAv+iz4wDOsKRbxLkVI1UZnMW0qhqrJVFCMgBxhG4zen9LW3/1fVa1PUplmdGbavKvmuDKCqZrrj0JziMmF/ytx8XRp1SSymVgBNoZip5SYP/mHCvhThawNv+jPhDdEuB/S5yIqdoRS43HAt9b70pnmNdLsNhBwTVWHuxRQjYKHgqJir3alddgeg1abuvIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=IQ2sbbLSnFoj23Agq3goT3vQTWMItzNwqDWWv+L4QAXVCPD8nqoDivpMpwK3V1lDPcgOO69HLYvFG1wP3xHt9ZzuOxZt5DIeeYapAOHmDCLBwc5ntd3jNf9SI5Flk7C/vhqdCYXvQCe/nER5EbVxsEaKCnacUqA9U8NC+YUaEXIcxFZdSXQVRqB/6SEvFs1IOny1f5Sr8ajTMDExaJR9Ozu/tCZ2K9cOT4VEPBmi18arhwYIdhP3+Hs1Me80/fmr9ugsDQcdzLLqymPL1ZcL0ybmo8J5a+aLwvI3yRUW1f72aWghnj0VI7iewr7TehGmV0IxsayJ+gSIrG0vuUqEJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=A+QpCj92bRCxW05XrdXUtEQfvJeen55qa1i4FJeYhWkk+psLqtTwTCCMXkM/wW56caThBiLBZRBrzpSP2vbXqwuXeR3vSSHY+6Jrj3vAY5viExraBjy3t1CvUaw8kg8syAJsPUEub/ISWTOOBTXAWxycFwhWeykvd4QdaWhQ5/M=
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 (2603:10b6:803:47::21) by SN4PR0401MB3549.namprd04.prod.outlook.com
 (2603:10b6:803:4e::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 15:22:52 +0000
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2]) by SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 15:22:51 +0000
From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
To: Keith Busch <kbusch@kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "hch@lst.de" <hch@lst.de>,
 "sagi@grimberg.me" <sagi@grimberg.me>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "axboe@kernel.dk" <axboe@kernel.dk>
Subject: Re: [PATCHv2 1/2] blk-mq: export __blk_mq_complete_request
Thread-Topic: [PATCHv2 1/2] blk-mq: export __blk_mq_complete_request
Thread-Index: AQHWNQNqWxHiFanF0Ued0HvwDP74kg==
Date: Thu, 28 May 2020 15:22:51 +0000
Message-ID: <SN4PR0401MB3598F7D256C7F4C84408F0999B8E0@SN4PR0401MB3598.namprd04.prod.outlook.com>
References: <20200528151931.3501506-1-kbusch@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [129.253.240.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 16bd6677-5c45-42a4-28d8-08d8031afce6
x-ms-traffictypediagnostic: SN4PR0401MB3549:
x-microsoft-antispam-prvs: <SN4PR0401MB3549B38BA0F5D204137FDD1F9B8E0@SN4PR0401MB3549.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5vUJ+BzvPscqgV7lWNcXD8zI2GzKV6HIxCr6YIM9AIKmqdbbEr8W89V4oM3vbVQzozKC0zYJ+e+lUG4klrGE4hVqqyrC8I7gTje6/HkYVMgKuI/PnFWwe8YT6Qmn/ScyRf+PqDkJVLaXxz/6TgO1AuUKHeel8wRcC8/IhlC5uJz3IuxGOMmLIvgzZ6wyri8+JoyFViZBUEl3XyvCL0xKcezVpnrokbR/W3UDf9tBqD5+F5tjd1Pv9zBzd3Yq884sfTBDGjD/3Up+/fZmqKX092pHmn5+EQrv4tHf79AAoMfBaUQB5lSRpjd1wzgKgDkRbQ3OW9t6gMuQ2LIGrAzAvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN4PR0401MB3598.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(71200400001)(8936002)(19618925003)(7696005)(2906002)(8676002)(110136005)(316002)(26005)(6506007)(9686003)(478600001)(186003)(55016002)(64756008)(4270600006)(5660300002)(91956017)(33656002)(76116006)(52536014)(66556008)(86362001)(66946007)(66446008)(558084003)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /FTVkeFOZlr8U2Oo/lXXNslu98XuiWhqh+QSjZAX2t/MPNOOOmFQSfwlM5pul6AqsqA3Q2gNNf6ObARsk+k6bJmAzTguPUHRMuQHG89jqJU05r+sZPAD2Zk2hBfRl94oE8svyKYArdKK8nYNyftKrKRJJb38TaC3kd8CrP4knYbM/Ud+Ml093j4cEmxaf0nZPFWbWzb4Pbm4LzN7SlMKrcAHfmkzRZc70g/A2gQ4WMgc/kE77FU5Tvu4M1qXo7KZmgJDsXG0uq4eqN6sjPEXzYmaw3fatDJzLuJuSB2ps/McvC+rz1WPhm2U7nDhZtGsQajdivmLMEjd/2uKpnfXV8PM++5gSMrmfUunS+dMFb7Fn2SBdhnRMfUbyStFo66XY+M/7gfG4wDe1Jc+xlhbe2zrpynsQE7gD6xeC5kNRi12jZ8tTZu6sVXWo4jmT+CbGJTpRKrfSLJLng7Q0Fu2zlWvN5DlBK//rW/A07bvjTJARCW+sb85XuuKo0+Q8JZZ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16bd6677-5c45-42a4-28d8-08d8031afce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 15:22:51.8621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0d03XIsfT0BnSsVuCzUlDkIciYAcgNdJunrPdkEqkBLywMkiN9NrjqyxUhO/Oy0oJYte1ElPewLPvUBUdOsqMWW1xelCbeFf/QTmSgggyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0401MB3549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_082256_395618_AF967BCD 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 TVD_SPACE_RATIO        No description available.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
