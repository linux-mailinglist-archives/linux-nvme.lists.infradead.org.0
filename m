Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BE612ECC4
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Jan 2020 23:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=yBNKKJ54GSWZOBr15oYvThb9m1qLEDjB/Ec+KpufmJE=; b=h58/ega7eA/17Z
	vTxGpWLD1LeJbfHq2f7DFLli3i7Zy6YQnMJGRb/sNeCuddY4iPNAPv+epvIs+0P7MC3OaAohJ2Lcc
	WKY6ebWs/RW2E7SCdFK2zIt05BqGD0wdZbO72Z3wFlvAoID9bJ+iLXbQZDUvzMIRsw1g2S9kHgipU
	Z39xSt6XqSzQws2IBgGEH0XY3hiD/gsCVSww9gZIgW4VD15JqRwZtIuyB79RlGj0OJ/30c3ubLc3W
	GrPgUTjL4GYQOKx6B8yi2ReLdEaMsPrEv10a89bQ4Df49ylhBmtqBM6kBp5WYsoHExbIH9LzrXu2p
	FJrmwLFzADdfgaFABsTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in8qe-0004su-Am; Thu, 02 Jan 2020 22:21:44 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in8qZ-0004rq-Rp
 for linux-nvme@lists.infradead.org; Thu, 02 Jan 2020 22:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1578003699; x=1609539699;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=6q3ThP82AciiuxrMhJc2aJNx6FrGfWPwXaCZHuy4gyY=;
 b=psLERlVAesJCyPuPG5nBlasCf3cTYd7o4evHMAEqGFl27owak+lMPSlE
 HWaAAUkl1HM1Px+oXrn2f15e30W7mYbHc1O9niVl1ylDaKpOD2RmSbj7h
 yS45DK8lz/xAPM135RuWmIejjEYOkplbdmw4zU0dQ8g3fIriqEejTO95e
 XSUmAeCYewGEHB2ZYg2CaQgtjNxwTVbVbFcC2S+XbANESqB44ABH8tjA9
 ytVYACj09zwp5RNqHWJ7tBUs441E+RrdZZYspaoo066f7EngKjsoSEPvB
 UpifoNNlzYU+/F+q7pkbdE9lcxwpSOAjQLvO/VBYoa5ZzmORB4m/whJOy w==;
IronPort-SDR: VAywryTFBLudoxVlLX+QA1N1A7Qp7gGfVPz2XAiaqHi7fVJe8YNH9HbqlcTQiKuYu3mKnxMbKi
 VEbPQRoiRXWiA2hK+hN3v7MVbxNbRf/kE5Vd/f5qNx8jxJx7qLdS6UWEoMSXxGcuqKe6503ELm
 OObdf7FJuyrlX/Uwl/zM+Pz5KYvUe1QXp2B5Y0QiyqBanzOyOYvO4rAYHBYb5ouUWvGM7kQcfd
 zRbEOKS1MOvFukFpLzUdmxlJZ5DaT4F9V36hXma1fUX7mbxmbup/afJ8mg0DmehJYN3bbvoDTL
 QHw=
X-IronPort-AV: E=Sophos;i="5.69,388,1571673600"; d="scan'208";a="234360199"
Received: from mail-dm6nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.107])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jan 2020 06:21:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VB6Fr+FK3CNZ0/kBml0UL03jrIoa+SzSn1byqDyECMVSLI5taZRczSjwK/GYl9LKSOv7++u5DJXIkBmwkq2whj1EmNfR1ngmG2CetHFDBeYgJ2yIXjXrME5hR16esimgDGRfJqlDdqGOZuoTUaa+ITBXl1h2JV31RZEPDcqlohRt+tYcREX/qtff3AVIeHi5yOgnUZAqmgITpCGJm5Y1JmOxw1SloV3DJctbCrU5tIHmOK7pe2TwsqygFzPLmagbOGcH9JSVE09B4NvzQXBG+YGwt+FMvyjD3REmdKDb8lgdQsCR66fxA9k62gLUdmLWBAv8wpC/vWtpDCGt6J6lcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6q3ThP82AciiuxrMhJc2aJNx6FrGfWPwXaCZHuy4gyY=;
 b=VqwCKRkR1c7JW5LPFGQLr92RqDGqqgfNv9kP1Tqn7bFEaYBd2NThlpvN2E37jWBZzJsIjvVJ6NbX9GziCg0bgr9YqlkVM7hrzTNno3qjjhrE2bQ4aM3bNRNjkUbRCC1Q/4utoAg7X5D3tYLn8AG35G0jxusbKSXTdkkWAEd2qy5MIhILL8yCNxDuvr+u6v8GaNBFywBaz6dRb4g0DWmWndFmdO6NKVO952vHrLSvgZXfilxDfMZQOT/YJsA0yLDunp6sYMiSAEnTgy3s4l7teAZCY1MJc6cgGOHymsOSiooQTMlumP3xR3nHW08zULpy/1zqiXm7htQvj7p1oWzXFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6q3ThP82AciiuxrMhJc2aJNx6FrGfWPwXaCZHuy4gyY=;
 b=esDXn28sHmrQv5c1pHtzL70UBwCWQt6s1wGsuADMeyfY7MhjBafalx2YpP0ks+PcxgkzSC/0/f7/b8RRoXszJfLGO+oOZh/ISt8VsnCls5v15poVV2+CUcBq9K9+CLBtoj01NKd2OED56ZKhXQ56VoYhupl3CNsi3Fu9Z+R/U+o=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.57.21) by
 BYAPR04MB6182.namprd04.prod.outlook.com (20.178.232.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Thu, 2 Jan 2020 22:21:33 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::a8ea:4ba9:cb57:e90f]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::a8ea:4ba9:cb57:e90f%5]) with mapi id 15.20.2602.010; Thu, 2 Jan 2020
 22:21:33 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Balbir Singh <sblbir@amazon.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [resend v1 5/5] drivers/scsi/sd.c: Convert to use
 disk_set_capacity
Thread-Topic: [resend v1 5/5] drivers/scsi/sd.c: Convert to use
 disk_set_capacity
Thread-Index: AQHVwUG9IR4HOIdwfki8zg3ec4/H0g==
Date: Thu, 2 Jan 2020 22:21:33 +0000
Message-ID: <BYAPR04MB57496B5D29688B7DA14F53DB86200@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-6-sblbir@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ffe38698-04f8-4c60-4061-08d78fd21fd6
x-ms-traffictypediagnostic: BYAPR04MB6182:
x-microsoft-antispam-prvs: <BYAPR04MB618263963C6244E1F74DE39586200@BYAPR04MB6182.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(189003)(199004)(4744005)(81166006)(81156014)(5660300002)(8676002)(316002)(9686003)(55016002)(26005)(52536014)(110136005)(54906003)(8936002)(53546011)(4326008)(2906002)(186003)(66446008)(478600001)(71200400001)(76116006)(66476007)(33656002)(6506007)(86362001)(66556008)(66946007)(7696005)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6182;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: plhAYnd3AJiCqfEJrQDjSWHpgM0AH/qymGO2ROhRKBE028yz1cvHPMwP4suqlbNTvuYWhklwQdn7SeZUl/FU2oYU512Pes6GsC8QPIDeCVTyGIY/v65v0SHkrtaPwD32ztw5fLl0hTebdIPx2wqKUYy4BGqmFtd4qE37w9LCC/HHqOV8HIG+aAt11D4N8c2v4le6RIoRNrMF5lHEgNbg1yDh1kuQcLAbVmU/3kISwkxyefqnOajczzR4QZEjfK20Nk/C5606dFQDt67/fhb7ug4GbA+nzAfyzbVdth9gNVBBLtseak7xImlWwG35VRhl2d6KPXkY9dgBdxgKQ0+kF4578FWwhMmy3JZxTVx01e8vjJSBh5QZghJs5bvSqPpw9DaMy9iW94OV00QImWOQO7Bho8670vPjwEgyOx6qq7ko1AGhtqxgN0UFP5c1/ada
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffe38698-04f8-4c60-4061-08d78fd21fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 22:21:33.4504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zeNjZxsri3D4RK3mDeqrIMhhwikxRrD9Qi83oc03Lum6hO0Nb/ktgQE7IHFyndamHM0Cz0FOYMQwP6kFQmvMX47A5I7hJQVZEOKlQv1jrj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_142140_067521_C6583B32 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "ssomesh@amazon.com" <ssomesh@amazon.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>, "hch@lst.de" <hch@lst.de>,
 "mst@redhat.com" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 01/01/2020 11:53 PM, Balbir Singh wrote:
> block/genhd provides disk_set_capacity() for sending
> RESIZE notifications via uevents. This notification is
> newly added to scsi sd.

nit :-

The above commit messages in this series are looking odd from
the ones we have in the tree and is it possible to fold it in
two lines ?

[Can be done at the time of applying series.]


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
