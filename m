Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B05184F8
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 07:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=SlVWd8+kZk1/vps943ilGmSTMBS1nL3dnH2xEc5OHUg=; b=UMPQPEJkrzFdDv
	ZcPOzfK25La6bZb7v0Hpn/KS1+VuFcK9lIC8iReSUrcUSRHo1Z9i2cOANG6Ycqlw3c/dYdEze7OT1
	maktAmOXN0+dbhvMBR4lDkKr4F+SZ8TzrJTzFv5ibq79/QZFoKWY3OBX/x9qxqo3a+5MxdzGJf4lt
	cvXQtBfMbsYQSdJPNuunzw0ZyCEl+6izp+uUA3PMcvE+pNzxQ2opsM+YqQhLsxxU0Ijhfpm5H472u
	n6gHddBxa4Rn50KtcZy6hF7bLSZsha2G96rNtB7XBB5G2A+mgel7QsUAgz6na4p4ia2XDdeUMo6pE
	9mnbJSrz0xpFlYOwfpgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hObzJ-0001GU-7s; Thu, 09 May 2019 05:53:01 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hObzD-0001Fv-Uv
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 05:52:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557381175; x=1588917175;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=DjmspzCOUYLMyYoWtjAA06S+S1HMC7srn4InVsa/CMo=;
 b=k2Kf0Y2w+6GkwGxGrYnLnzy7dIAddyua58t8Q428RLAbRjS406fvCdaa
 1lFWmWFhJWj8o08DIBiv6FX94rdejgqhuPJ4dOXTyRDbh8Cz+mjvZp/0A
 ITjWzxGEiDZcFRPbwnxeOU5DQwM7Ndb73dNkJOZpIB3p20DGdFG+DRcwO
 y97H46V43LwoYo7xhXorNpPPKJ5/Xj/GRn4VJKEqIWb1+lyo31Pn933ov
 kwNW/jGAuZEtDxRtguD7D+xjkhC1hclXmvkmjHgzDAT3VfzuFbaQMyVpy
 p0vgARXTtCcRWEPUokZPrBoTgVjjxzaSv4zuoEGeoIkJ0bZ4rwb89scYL A==;
X-IronPort-AV: E=Sophos;i="5.60,448,1549900800"; d="scan'208";a="213877508"
Received: from mail-dm3nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.54])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 13:52:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMNvkAoav8Zb5of2o3uF1vWSYNII9Tj9rv+2Ndb5r0k=;
 b=TSqTBu4uaw5xr4mzPkh+o7CtPNl68DoS1hEL9YB5RqyPeAW2UAx2oQGvoYNwdDz/cww+IxwM+RcJdroPjMkApxuL47Ov/EFbaIcDrHmXg9XRIykbJZmPla3C9gwIWSH65kBsYu3eZF2QyMGp334BrtyRfHdxVs9ul2XiUVolOgQ=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3839.namprd04.prod.outlook.com (52.135.81.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.14; Thu, 9 May 2019 05:52:51 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 05:52:51 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Thumshirn
 <jthumshirn@suse.de>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Thu, 9 May 2019 05:52:50 +0000
Message-ID: <SN6PR04MB45275DE10FC6434B85227BB686330@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com> <20190507062034.GA3748@x250>
 <e118dbb7-51a5-d013-8c85-391452846411@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:eee9:536e:c194:4e76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d38b7371-2723-40a9-bedf-08d6d442927e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3839; 
x-ms-traffictypediagnostic: SN6PR04MB3839:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB3839DBDB121FC1D20FB10FE286330@SN6PR04MB3839.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(46003)(478600001)(53936002)(5660300002)(72206003)(55016002)(9686003)(6436002)(68736007)(71200400001)(71190400001)(256004)(14444005)(4326008)(14454004)(229853002)(6246003)(25786009)(53546011)(6506007)(6116002)(91956017)(52536014)(73956011)(66476007)(66556008)(64756008)(66446008)(186003)(102836004)(486006)(76116006)(446003)(476003)(54906003)(110136005)(7736002)(316002)(99286004)(7696005)(305945005)(2906002)(4744005)(66946007)(74316002)(81156014)(8676002)(81166006)(8936002)(86362001)(33656002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3839;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cf652UPAMMPBZv0au09vKNnrvz7NDMx5d2l1pvoNgbdzFp+D547itAPTOkSGaoc+wLfXwZbubOfFOeSlwEl9K9JDH30Hy+4Wgg6Dsnv7lV6Su+GRpr3EY1ndvfcAL5BXvdzakfI1YtoMZMemg/IDz32IxFv9SeEE0ijXzdoTkKdUQzm7mTOLy0px+gguR89Al3jMkFNG+gXHQrd1POHK1PwPg6auqFwKeCk3m+t0TyAlcqDesW2ifUvuO1VKPqY7A7A3W5fIuyaAls7VCSjxGr537Sf672+aA3F7Y5egwTMnOivbxya5P3AVfEagi0IVBJ48Kn2iHQksa8D3bChc2TUQHmhsv4WcKFbrnSGPu92kOSxnTHzu2LMxZKYCvviPsJhofoV1T1iCAwTl2/F0XLScTxQa3aAoKEUCFh8SIiI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d38b7371-2723-40a9-bedf-08d6d442927e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 05:52:50.9413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3839
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_225256_007723_0F98A943 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 3:23 AM, Minwoo Im wrote:
> On 5/7/19 3:20 PM, Johannes Thumshirn wrote:
>> On Tue, May 07, 2019 at 01:54:09AM +0900, Minwoo Im wrote:
>>> If Johannes who wrote these tests agrees to not check output result from
>>> nvme-cli, I'll get rid of them.
>>
>> Yes agreed. In the beginning I though of validating the nvme-cli output but
>> this would grow more and more filters, which makes it impractical.
>>
> 
> Cool, then I think I can update the pass condition of this testcase in
> other way.  Once Chaitanya gives his comment on this, I'll prepare it.
> 
I think responded to this one.
> Thanks,
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
