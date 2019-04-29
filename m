Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63726EC94
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 00:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fmJ16cirfVw6VuJAXuWnYnozZ6TeSd88Y0n2KNuDM6E=; b=U294MbaCgJ4S2q
	2obMDcy6G6rxA+ZtD9+A4THqoWynLIGfm++HxnA57XhxKS89b63+rA+esTRM57zJtF0Mh3sgN0Vog
	Bm1LXCmPTBRKucRZpx3lIJ0tegLy4FD4eGgjnw8rvewnRKKDyzhzHbmjQB75HyvpfnLRmVIl8n8Te
	tJsPJRyq6z7AatXBwXGJkAuOz7TQTd+oEDBdRXClJNWuTDdauynG1cp6rUt9f6h8VUdXK+ztB+GcO
	BAoVWKa/6yUzJHMrVg97S8JDTOp3VMfjQWSnjNIJqlaAktqKck/f2a0A1TNHGn1nQMZ884wjlTK15
	XBZURpwWGM5QmXcrQd6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEVR-000841-9O; Mon, 29 Apr 2019 22:12:13 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEVM-00083d-Jj
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 22:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556575929; x=1588111929;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=8w4XI+MkEw5Sc/3eZZXz7cRjl6zlse4a4z8xuzpfXlc=;
 b=dbJyq2NFZGXUkh+rH1nKVTp99GlOp83w3/Mn6f4yqnyVVp77x4eLXuxS
 Mh6sUCFHhvsGkL5Gl9uTKSUoxWKrYYqq48GC1MQfuQUCG5dyXWmBCjuAG
 0en44tkg3e+2cmSDVVRAQ8mUHsZvM4RKUivxg8mpy3BLUUU8UJRIQI2Rq
 YEKUj4H5ax1jCxivUbYwSMgMfSrgxOJ37BDdNMXBOZrKHD39YK9HYOs7k
 A34XzFdOuMnnVSNvm5Q93OKxWEPuiaeyWh47Vn2Wj3PuUu2YYUVoV6liu
 0+xiWyUsEwZwGWtmRrrKHN/X+IEDWfllKlLfDgm4MQiLrRFKOcVevh/2Q Q==;
X-IronPort-AV: E=Sophos;i="5.60,411,1549900800"; d="scan'208";a="107111112"
Received: from mail-co1nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.50])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 06:12:08 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P0f/6w/xN42pomsdBvkRIb02z7O1iayxpMO//u6/os8=;
 b=nAEJ5lX0v4a1+CrWQIFwbDRgcD+KCVNZC722dlLHtlARZc4uegRBpU9q1sjEaOqQXd7GAsKmEwmtkU99XC09mLbVhgmEARkcXhKBBKDm9mQqds6YW0fgcE73q2CXlvGXvgneDxph8BTqZ41RiFJ4zFX87cbSHBPbu18aipkNd/s=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5438.namprd04.prod.outlook.com (20.178.6.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Mon, 29 Apr 2019 22:12:06 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Mon, 29 Apr 2019
 22:12:06 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
Thread-Topic: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
Thread-Index: AQHU/jsbSpPrZgEDa0m7M4oze4sBGg==
Date: Mon, 29 Apr 2019 22:12:06 +0000
Message-ID: <SN6PR04MB452783333EA5F5FE1190294886390@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
 <067b8ef5-abea-2bc8-9da5-a39ac3b54a1b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e944923a-fba6-4b75-5531-08d6ccefb740
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5438; 
x-ms-traffictypediagnostic: SN6PR04MB5438:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB54388FDD698CEEA3E06DCEF886390@SN6PR04MB5438.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:639;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39860400002)(136003)(396003)(346002)(199004)(189003)(74316002)(305945005)(316002)(2906002)(9686003)(8936002)(2501003)(7696005)(229853002)(478600001)(14454004)(55016002)(91956017)(25786009)(76116006)(8676002)(110136005)(7736002)(71190400001)(71200400001)(86362001)(81166006)(72206003)(76176011)(966005)(81156014)(6306002)(256004)(6116002)(6506007)(3846002)(486006)(102836004)(66066001)(6246003)(97736004)(54906003)(33656002)(26005)(64756008)(66946007)(5660300002)(68736007)(66476007)(4326008)(53936002)(73956011)(66446008)(6436002)(186003)(476003)(52536014)(446003)(53546011)(66556008)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5438;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: L2x2RILKJz0y80kuchHD0/MGdA/r+6dNnGa34q8wSsDgMPy4MjNGYvjJVUk7YoUR2XeBwGtfAV/FWE4MkytOVXKxVTtgF9rJuxoTuiPDYkM/THRofQC3hCORiiBbx64SdRL1CmYKzzFaeH5GFtIpd5JE82qgR9frojW8L236A7k4xMqleq7ahgbyDX6BfHACzlLOdpA7D1YAthBFbJ4egc9ph2/oPG6OlRAchgwvAP+z0eFPoov9XWZVK+d6W9FbvC6ZABCxFx05tGg131rIzXUJyJJE6KLeDkcqRQrXCsQm9h6baQpi8m3DmlONOvw6Z+/jzT10ljeAFKl5kZXkfq1e+WkBckVNyDBXsmktFvbSa4G9cKzMWoxg2aZZ280aDXB86Alx21eEIs4p1ZbfLNYEB7uw0+YvaPy22LbTwj0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e944923a-fba6-4b75-5531-08d6ccefb740
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 22:12:06.1729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5438
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_151208_795496_8426BB29 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: "hare@suse.com" <hare@suse.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 04/29/2019 10:41 AM, Heitke, Kenneth wrote:
>
>
> On 4/28/2019 9:24 PM, Chaitanya Kulkarni wrote:
>> From: Hannes Reinecke <hare@suse.com>
>>
>> This patch intoduces nvme-ctrl state name array which is used inthe the
> s/intoduces /introduces/
> s/inthe/in the/
>
>> later patch to improve the logging of the ctrl state.
>>
>> Signed-off-by: Hannes Reinecke <hare@suse.com>
>> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>> ---
>>    drivers/nvme/host/nvme.h | 10 ++++++++++
>>    1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
>> index 527d64545023..01a36bbafed6 100644
>> --- a/drivers/nvme/host/nvme.h
>> +++ b/drivers/nvme/host/nvme.h
>> @@ -146,6 +146,16 @@ enum nvme_ctrl_state {
>>    	NVME_CTRL_DEAD,
>>    };
>>
>> +static const char *const nvme_ctrl_state_name[] = {
>> +	[NVME_CTRL_NEW]         = "new",
>> +	[NVME_CTRL_LIVE]        = "live",
>> +	[NVME_CTRL_ADMIN_ONLY]  = "only-admin",
>> +	[NVME_CTRL_RESETTING]   = "resetting",
>> +	[NVME_CTRL_CONNECTING]  = "connecting",
>> +	[NVME_CTRL_DELETING]    = "deleting",
>> +	[NVME_CTRL_DEAD]        = "dead",
>> +};
>
> I haven't been paying attention if this was bought up before but won't
> this create multiple copies of this data for every source file the
> includes the header file?
Yes, we did discuss this.
>
>> +
>>    struct nvme_ctrl {
>>    	bool comp_seen;
>>    	enum nvme_ctrl_state state;
>>
>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
