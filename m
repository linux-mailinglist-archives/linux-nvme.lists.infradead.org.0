Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5AC1BEC6
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 22:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BR5JWfdqo5R8mo9Fe6rDzMQu4mAnkDfz20pShBGYzKE=; b=i5uWXfThlVRpB9
	UU5KQqR1LDMj5gTrfdmyOImDPbDJlcrtlwOu2BCoYQH4sN5aAJoD1ZzhZdLJZIrHRqqdr88o1igrs
	N2Sr3kd2n+R+S9L9Z6XbEJA16csoeVNMlNEPafHR9tMzyuAC/WQL9/z1pRTGhgF4USpDApx66Tl9E
	8CcKCpEaxxQPL0SvFL7M/qDoJrJQl2rVcsPxScVhnnooPHghzDzDZCcNzxfWul7bOyQq5GPg0VMwI
	z3WbUIbsW2bY85aQc8Tov87fzZWjJm6Cj/VQjUEcCbYus9wshyDVirFvMRI5BPY6d9BChRacNsUpH
	YJPT40Kjsg3NwH5Xc/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHgi-0006NS-8T; Mon, 13 May 2019 20:36:44 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHgb-0006N8-QK
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 20:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557779798; x=1589315798;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Ugrudu/qBdCR3TUVqa2zbOfwFkPWj6xmNYWy2hKVXkY=;
 b=Y+uhHMfO2aRA8ajSuV0gUoH1XekI2tmy7QsESfy+wEM+btVE+u55+WvP
 xn0nmRCqSl9MKKshz+7KMWXBliQynW1YJqumzVW34kVcsKHCnx6urE7qY
 EDkMr+h7qgpSTNtH9hV/IEGT4KhuzY6sFzOAPYWQzM2Pj8Gri+lK3sJBO
 8W/pbN6TjlbRnQ8GzFJ3frDZA+hDexWg3iCwG8rUMv+jC9VsfjbwVK31q
 ooUJ5cBDZGpd/N78+qSnDnbyTJ1d4zbsDId/Q3N7hVaaZEvrQFzaVu/Fp
 wgOHv9oo4ehengX0Xypw2d2ww63+wjpf1Nf/hCQiSYN5IYOeg4v5vIFJ8 w==;
X-IronPort-AV: E=Sophos;i="5.60,466,1549900800"; d="scan'208";a="109880613"
Received: from mail-co1nam03lp2057.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.57])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 04:36:35 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LixBuVYTHI0NFCf5iDYCQHn8RdVQWaRB/aehd2UZUQA=;
 b=guJReb5eiHjroZfc94UjDpyoV0NsBSx0hYih2+bWFJ9QRyqZs1KIu5FH+97KAcrkuCEvpxI42YeCN4a3i2VrP3dEcwlV+dcRBVwubqv4YlYFtnPadTCMJNDkfczDLXZQmcJJF7O+rJ49LCxJyYPoJm2ljZRVkATvb/WffTQF3h4=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4926.namprd04.prod.outlook.com (52.135.114.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 20:36:32 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 20:36:32 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Thread-Topic: [PATCH 0/3] nvme-core: add user command filter
Thread-Index: AQHVBcz6NLAgsk8/L0+Ngp1zc0Y/Rw==
Date: Mon, 13 May 2019 20:36:32 +0000
Message-ID: <SN6PR04MB4527DBCEE5CD5A54965EA0C4860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
 <20190510214255.GA11723@localhost.localdomain>
 <20190513132517.GB2661@infradead.org>
 <20190513164933.GC15437@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bfa3c3c-90e7-4aac-dcad-08d6d7e2af90
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4926; 
x-ms-traffictypediagnostic: SN6PR04MB4926:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB492684F09DAAF327095F4271860F0@SN6PR04MB4926.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(376002)(136003)(346002)(366004)(189003)(199004)(305945005)(14454004)(33656002)(6246003)(76176011)(478600001)(4326008)(72206003)(25786009)(52536014)(74316002)(81156014)(486006)(476003)(446003)(6436002)(316002)(110136005)(66066001)(229853002)(186003)(102836004)(53546011)(6506007)(6116002)(2906002)(3846002)(71190400001)(26005)(71200400001)(68736007)(81166006)(55016002)(86362001)(9686003)(8676002)(8936002)(14444005)(53936002)(7736002)(7696005)(66946007)(99286004)(73956011)(76116006)(66476007)(66556008)(256004)(66446008)(64756008)(91956017)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4926;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BVOaVqgMRqeQreemSmYqt0BrNBQQHyewCm8OmArQzJIG2gorpftMKfpo0w/IVqTMEmj3A+U+4xhSHzkdsZUuiNzb6XKPx/4u9CEgQXr+YorLUNqrdnoTjICqGI+8KXYWpGHYEp8kgQ4b95XBYbSWc2ZCl/NQV1h1kzBPY7OpE9obJOc5pE8xc3sv6TyBOQq9pLGHDdL4eMkuI6Rd17lXRFRGFHlnbemVL2S1WCJv1lzXCkJRULFbkXr8WaIRwGW28J0bzY9dlgo3jDA1RJTrdXFKv6Yq1ptjfiDhog8GYchwy0dGMkDDhDvH0XAVrUussYgHf3FMioCyTj/XbrL038AxhnTp1s4jWOIWrndEXjZPxKUcyy9AwyXBJyDkEkN3yxTSFn4AKYk2fcGOaVH9PeuOEicwMDbvnIlJb0bqAB8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bfa3c3c-90e7-4aac-dcad-08d6d7e2af90
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 20:36:32.5859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_133638_129337_132B8973 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Keith,
On 5/13/19 9:54 AM, Keith Busch wrote:
> On Mon, May 13, 2019 at 06:25:17AM -0700, Christoph Hellwig wrote:
>> On Fri, May 10, 2019 at 03:42:56PM -0600, Keith Busch wrote:
>>> On Wed, May 08, 2019 at 11:36:31AM -0700, Chaitanya Kulkarni wrote:
>>>> This patch-series adds a filter to allow only certain user commands.                                   
>>>> Right now we use this infrastructure to prevent the user get log page
>>>> commands where RAE bit is cleared. We only allow get log pages to be
>>>> read with RAE == 0 where we issue the uevent to the userspace so that
>>>> user can clear the log pages.
>>>>
>>>> Here we white list the log pages which are only allowed when RAE == 0.
>>>> We also allow Vendor Specific log pages irrespective of the RAE.
>>> I'm generally against the passthrough interface examining commands. It
>>> is not for the driver to decide what an admin can't send to their devices.
>> Well, the whole AER model is based around log pages clearing the
>> event, so if userspace clears these events we are in pretty deep
>> trouble.  Would you prefer just setting the RAE bit unconditionally
>> for these log pages?
> What if user space really wants to clear it? We shouldn't just make that
> capability unreachable to admins.
>

I agree that passthru means we should just passthru. But user-pace
doesn't have the access to take

corrective action on clearing the AEN.

The cases where Kernel is responsible for reading and clearing out the
log pages/AENs

if we allow userspace to clear those it will create a problem in the
kernel code if kernel code

expects the aen bit to be set. This can lead to complex bugs where,

1. Kernel expects the log page and aen to be present.

2. But it is been cleared since userspace read it but did not take the
corrective action or doesn't have the

    right interface to take corrective action so it depends on a kernel
(driver) to take the corrective action.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
