Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BDB1FFA53
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 19:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DfToEpaLK2Y/cicbVMlJPFml5NKAigPUEEdv2gD9e4=; b=qp3pBG2zocrwKG
	FPRTr0CCLjSeibJ8NBb4gyIeC/4dHthDelEw+TVpbUzlyQ1lAV/GEfFh2jJIERMsR95TwkwSfVXyD
	R08IzJuYKy1Ns7CYP5KzzEF8CSw77USgkcuGo9NFGymSQu95ZgQl3X8WIv0PNz2y14GDIBW4iioNl
	1/EjVMfkdSUG8j5pK5DwyAgXrncMyCLpO77LlS80KnnpuBFnMkMDrb8r6bi4NJ7bP8jUSByNXGBUd
	0oE+MPBiVVSwiuvg6MhBfppz6kLm/IQwCh8hiasaloCSsvNNXxGBa/QGvI/29U3l8gARgXSa8W0Li
	cls87sOxtmbDt8absNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyOi-00030R-9C; Thu, 18 Jun 2020 17:32:20 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyOZ-0002yx-Gl
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 17:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592501531; x=1624037531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=50h5nqlSxkZYqPNcUkA7D84FRuiHVgmoztzin33Qr4s=;
 b=XipZhb/H4+49m85V3BfEFx+/54MLz2wh3vg+sz2dtz3TdrlnslJv/cAX
 Znd7ZK2OfO5jdkO3QccA6L6KqvgEWdyld6rhC49H+Ya8CJK/LECXWrH1i
 cu0DVvxrQhueyew+zvJRXXTZJCxsVk7VnbPlinG4+eGrWONgQPaKCweLI
 WzewmqluUay2ShucYfiHlL1AkIsYlSOLgkROsXapOr+VLfxYn0Y02gTvM
 fOIaTJeCN/KI0A507kBiPuSLx8G82YUpmGlC1PqNJi40w0gDrBt1eP4Xk
 esxNcX+r9f+RHuBxNUKp7Y0AZqigguNWY+hsk8MxSpmFPTE50AW8bK9M0 g==;
IronPort-SDR: Qde5adOLqZGspqZQmofIG7rkrE8qADI9Pfj9SgR0OoHt2avy+4K7RJNjmNu+v8OPQXhLskYbLy
 fuhWlZ8Orlk+4co5Nzcz+1mCbyYYJH3cA1Nrh6LNRDVBwNvrmcm1BXGM4v2COTvmsTHAczjWrA
 XsMoWmpxIxcKOAf6dXpdnygKs9l8e5U73frdrDebuM0x7OiGNFNfbL6rrE0TRicC+NqYlAkMIq
 2SBy4oBNt5kQNhhRzbN7VkZeGfH/RcNGyGjOqzCJK7gF7VclyB7BZiWBinK7kV2C/9z4iKUNg1
 xMc=
X-IronPort-AV: E=Sophos;i="5.75,251,1589212800"; d="scan'208";a="249522972"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2020 01:32:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8vYHDn3QzBEDYJZLe0slco5xO+VT8i2iX4tVk/9Techh32T5I2OpVbUkT7e/mksVPGLBaJmqTVvDyDlO2c0aW0vkTq/yGHAaowIs1AdZb5IvpaFSTqkcI7zWcmU5HsFZwyLM58jpVNLO3V0EfqBgr/k3inw9A2jAHVqyjTIQ5Jk93atnL5durlac/kKpxdQDj7hXgV3MIc3b4Rz7mRPMTPJXWraDykmIoxh3Gt+fJUSkwlCIP+C/okctubzib8c5Fh81Oy2NrR86dIDi+AFohDfMJWXWblOU/VQRb3OVNufLhaE4LHyInhmXZdJbfpPdJ+d+QYOoUl/RdIXwMn3hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=50h5nqlSxkZYqPNcUkA7D84FRuiHVgmoztzin33Qr4s=;
 b=ijxjZu9YLeFIqNbh/+O7p3dpdQb5q1A+NJaeSVIMGKQR1fuH0a5tCSr77jOZ0V12nkUyyzJ6v/uS6qGYfgg1SE9qgBXFWYnFTWorjTuwQI5QL/P2pVah3GIRiRn7oltFSMCOqgfVuTSHSie4fZhcZOXDc4usGetsZbPgSU9Ip8VChMwLfdWV3dNi7w6sSi1PlqRfiAS3on0DXG4WNNjBIz1k7CZ0vgvW3JG0Qb0zZEJOr+DmX0FpLDNOMFL692hadaNPtU19pHxXqgeDLANqjcwwqQCHSC9zXl9rKQeiOpn0N5BIa0jCSr6KSQ8aOyx+vxDrDofDb0TtqmCCBTbrkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=50h5nqlSxkZYqPNcUkA7D84FRuiHVgmoztzin33Qr4s=;
 b=tWtijVREYZW3DEXoNEvYH+G/hgKkVFcHDnFhPwZ0h50Qs90zpyNgoECIC9iEeQJqaMaUtvQB4gsfBWnZsfJYcPmeoZW5p2676ex6uz614d3HjoyvlEisCaHYtNQl/zXtenHN8WMgpe/WLCKMmASKDGtjAhELZdm3XSDA6OBOzVI=
Received: from BYAPR04MB5112.namprd04.prod.outlook.com (2603:10b6:a03:45::10)
 by BYAPR04MB3831.namprd04.prod.outlook.com (2603:10b6:a02:ac::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 17:32:06 +0000
Received: from BYAPR04MB5112.namprd04.prod.outlook.com
 ([fe80::a442:4836:baba:c84b]) by BYAPR04MB5112.namprd04.prod.outlook.com
 ([fe80::a442:4836:baba:c84b%6]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 17:32:06 +0000
From: Niklas Cassel <Niklas.Cassel@wdc.com>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCH 1/2] nvme: remove workarounds for gcc bug wrt unnamed
 fields in initializers
Thread-Topic: [PATCH 1/2] nvme: remove workarounds for gcc bug wrt unnamed
 fields in initializers
Thread-Index: AQHWRX1XXAlREGmmbEiRo2QL+5fiJqjenAIAgAAFx4A=
Date: Thu, 18 Jun 2020 17:32:05 +0000
Message-ID: <20200618173205.GA1068826@localhost.localdomain>
References: <20200618143241.1056800-1-niklas.cassel@wdc.com>
 <20200618171124.tfowb2ejv3bnvxr4@beryllium.lan>
In-Reply-To: <20200618171124.tfowb2ejv3bnvxr4@beryllium.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: suse.de; dkim=none (message not signed)
 header.d=none;suse.de; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [85.224.200.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a3ded357-59f4-4795-9be1-08d813ad8558
x-ms-traffictypediagnostic: BYAPR04MB3831:
x-microsoft-antispam-prvs: <BYAPR04MB3831E9E2E55C00AC9BFFCB4FF29B0@BYAPR04MB3831.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PZeT5dRTPDxENmqY0NwE/fYWkytPBAHkZ60r52325VFtllb7jJy1lsdpId9kKY1cpw4cU+Ff9+yZ7bQBGHkq/ymNBPdrSVzvb2/f+UZJ6tRXkVXaJOrNa2aQpM1qiHYzhSh/gTLcxUDHywHQby0fWCxLIaa7wP+jZ1dYX1k/pFddztqydEwaLeoyr2NdlvJgOtNVtHpssn2Wfbc6rL5n02R5GeLq3kHjJuICrJO2EY6SLfQuwyyuAuCkg7IzA8weTSBo+G4cEdR6Fcjv9nLjDnOSm4/Ug8UE2oFAWiu+cRUF9TM1U/rQWMlRqWgJ85ei
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB5112.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(376002)(136003)(396003)(346002)(86362001)(6512007)(9686003)(4744005)(6486002)(1076003)(5660300002)(71200400001)(4326008)(478600001)(6916009)(33656002)(66556008)(64756008)(8936002)(76116006)(186003)(66946007)(91956017)(316002)(54906003)(26005)(2906002)(66476007)(66446008)(6506007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: gr5dOy951T1e48k3qq15aap8+UZBAKUAeKib4AwRE9lQSQmsLLcVnkgjRxHqH1DoKWEEXPFkpeQgelmrvmb6OHJ0/VkK9/RA7HxoUgXbjADgT3qFu4Bhr8goUHAY+6JwFsvhbFl8XAu3E3MJqAyfThRBAQ3QeLt0LDFp06nsPEASS4lD7rcfBt+LCEmQ7OSgiZXU2wPpslZs7yAQusH101N8pWJxH+AOnCXMnLWSEQyehsyruFADMdYjzipawLPF4VKE0FCDl6I4BADt8Af2vXlLJcq4s8W6aK7sZn3aAJm+c1mDZf8yDP+qws7oCBHDqif8U7E/94j/r1Wrx4Uhe5LBGEVZUFV4BV5lj6S6EKkuv1ygc+Ts8ycIA5/Li2QkDiaFulMiSXpoAvlDq1QOTiwTCf30uQsOSCIYoL2JVXBkNyV8FD6c6xM41o1jBQC3KC6ZUzs7dF13b7p2MuRlezHGUAJ0GFPikrpXnInSsuuIYpegOsMZJ4GRryWvA12E
x-ms-exchange-transport-forked: True
Content-ID: <7227DA71290B444AA8A88D901583F669@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ded357-59f4-4795-9be1-08d813ad8558
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:32:05.9214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNYi3/4jwBjaZ0Vkv/sA20VHrfgzQeXO8GWdmikCMe+rWI6sLVJrtI8ROnLwB4ftDYccqNdi3TEJy3xxCEIiKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3831
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_103211_584805_109F21EB 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 07:11:24PM +0200, Daniel Wagner wrote:
> On Thu, Jun 18, 2020 at 04:32:40PM +0200, Niklas Cassel wrote:
> > If, for some reason, we want to allow builds with gcc < 4.6.0
> > even though the minimum gcc version is now 4.8.0,
> 
> Just one thing to watch out: the stable trees are still using
> older version of gcc. Note sure how relevant this is though.

While the AUTOSEL can be a bit annoying when autoselecting patches
to backport that you didn't intend, I think that it in most cases
backports fixes that has a Fixes-tag, which this doesn't.

Kind regards,
Niklas
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
