Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A92515641
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 01:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xKXyMzn9sNbYgo+qbapwwPl9+nKMfqs8+Ryw1S+uuy4=; b=lOCNnHgFddwlog
	LT/e7TeKXBTLxf3Q9yi7CadNMpdOcC9NrbM7Xp5dKGLRTQWGMuqABbyNHhppox6lgGypbAspcFdqo
	g2eJrSNbZBK1JdOveXx0/QLLTYYNTuybjcHGvU0sHXXl2dW3ZZKv81IjVnZPXU5LJo+TdiR7/qEXH
	H9E74Z1UVGOPNztrQMidKq1i09hYY2yUIsjtcYO/1uRH4Cbm638uxy6X+1oUxpvQEynHptwzopG3g
	EwsXVuu0e6nx2qOimphyyYgD41eegS/Eez1kNtcZvd+5FrEofRP/EVy88dRL7CQx6bm858MRu7HvG
	+22fzTqyquho+Opv88xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmbf-0007g4-Gw; Mon, 06 May 2019 23:01:11 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmba-0007fi-7v
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 23:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557183666; x=1588719666;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=UavILbRUOStU2sEdzEAEID1TYYoCmdY3B45C8Sz7hK8=;
 b=VpjxRJdz4PG06dYAHcW7Q4+Ph/23PyKDOizOa3Xad0kqH/CvelBN5qOC
 Zf73sPRkBVCpC7j3evcIQaV+fXG4AJCyX1buftU02gRu/8ocduAl/IMlr
 iO3ei2Vu8ShSY/52ibGxhaJWdPJtUZ8RIoJ/qrFbkwyyF8Lew8tYYfrVv
 rtu9azXtsA8BZ2KeaDNDQB4Skho1kt5/hHwZFTyOKd5b1ymdnR4ntpQYW
 ouNW7VsBWkKksuJDqBh/IdnviZHvcC/LjXVUEQUwia/nUfUTvYQM7hdMK
 axPe3Sqt4J8tJwfLjN8d2A6nfBCS54v1V4VMPIDxdcfw8aAoEHzAYbVyo g==;
X-IronPort-AV: E=Sophos;i="5.60,439,1549900800"; d="scan'208";a="108861121"
Received: from mail-bl2nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.54])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 07:01:05 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bcKayQ/1kN7djSQcqfwX297rQ2XI2e4ZqC5iQQkMP7Y=;
 b=NZbrJM7QO/bH5woxHsmZPMDnYB5y6o2FSwEKLzwx8drbE1TlbS19FYB6t0BesdGLvghsjwOxSX/pRsmFUPyWdIDymY9Ot27gX7+3ZvqlSbv44LdAnLlL0UohaXOXrcodQchJ6dEjdlN4zA9Wgg6UV9rZc3Qdqd41Rv8V1bx9IAc=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4893.namprd04.prod.outlook.com (52.135.114.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 23:01:03 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 23:01:03 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Mon, 6 May 2019 23:01:03 +0000
Message-ID: <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5baed53b-c548-4bcc-d76d-08d6d276b6df
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4893; 
x-ms-traffictypediagnostic: SN6PR04MB4893:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4893FCDC8369ABB301C9EBD586300@SN6PR04MB4893.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(376002)(39860400002)(346002)(366004)(52314003)(189003)(199004)(99286004)(2906002)(4326008)(25786009)(71200400001)(55016002)(71190400001)(256004)(14444005)(7696005)(52536014)(3846002)(229853002)(53936002)(9686003)(5660300002)(966005)(6306002)(316002)(6116002)(33656002)(6246003)(53546011)(6506007)(186003)(102836004)(26005)(72206003)(86362001)(478600001)(76176011)(66946007)(73956011)(486006)(91956017)(66476007)(476003)(76116006)(64756008)(66556008)(66446008)(14454004)(446003)(7736002)(8676002)(305945005)(68736007)(66066001)(110136005)(6436002)(81156014)(81166006)(54906003)(74316002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4893;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: awnvgO2dTOnuW6Ytzkc5KyjtbgCKOmD11jSOQ0B52cuXr4IUHBkrXrZhGnY7pgcT50dKp9KAN9/JHB5MMklBIK3kFiZxxv4HiEA/0C62rG0iGc2bYDBVLvF4NixtDxSwaxnNti2PFALetLbtS8qZ+WmKocSKy2pTA2qMOPCgYvln33UcHL/Q2HORQ/994E0QrhvJQRlFrMy2HkbFUUiYQbCwB0PYca132Iqvd169/XfSbNdSQs/m8/SJCnD+MSxOn9pHtc27CIhtXV+UAJbL0FfpXiZSqzIE4AL7MB3RpSOGMjpbgxWJ4AzI0RerD+wNSYSK2bdgn858h6ldXku+vOPyc+AGHvWGV/yD6z0vE035vK6q22toAmibroq+mav2uiZhLDguYKTW155RLq+Xlx1Ij1IZO3GTPZaCFq8d7iA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5baed53b-c548-4bcc-d76d-08d6d276b6df
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 23:01:03.4369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_160106_295907_FCC6DCEA 
X-CRM114-Status: GOOD (  17.99  )
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
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/06/2019 01:13 PM, Minwoo Im wrote:
>> I wasn't clear enough.
>>
>> It doesn't check for the return value for now. What needs to happen is :-
>>
>> 1. Get rid of the variable strings which are not part of the discovery
>>       log page entries such as Generation counter.
>> 2. Validate each log page entry content.
>
> Question again here.
> Do you mean that log page entry contents validation should be in bash
> level instead of *.out comparison?

It has *out level comparison.
>
>> 3. Check the return value.
>
> nvme-cli is currently returning value like:
>     > 0 :   failed with nvme status code (but the actual value may not be
> the same with status)
>     == 0 : done successfully
>     < 0 :   failed with -errno
>
> But, ( > 0) case may be removed from nvme-cli soon due to [1] discuss.
> Anyway, if nvme-cli is going to return 0 for both cases: success, error
> with nvme status, then test case is going to be hard to check the error
> status by a return value.

This should not happen as it will break existing scripts which are 
written on the top the nvme-cli in past few years.

   It should be with output string parsing which
> would be great if it's going to be commonized.
>
No, we cannot rely on the output string as this problem is a good example.

I'm not sure returning == 0 for error case is a good idea. Checking 
return value prevents us from writing unstable testcases which are bases 
on the text output and allow us to modify tools as specification moves 
forward.

> [1] https://github.com/linux-nvme/nvme-cli/pull/492
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
