Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F83B66F
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 21:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=yJQ9B9SC/ctOLzCRKLObnL67roXUp+/fgFEgF/hGxVk=; b=ODmnh4xUNidfG6
	pGUbiAIUnosmM4hKhRq2AvHPvg3ETKj4LScnJMSTYQnKl0rwdL+FvMkp+/7GVNudBl5romOXkMk1f
	eFneGjIo83SOU+ZtWdMaEHDrMFIJRExZD6JadKjO8gSd88K+kJqqY6rUupVazM711bemQ3YYUaodF
	2efIhgMMx1TfBvbNMe3d0VeAzuh2302gci29xMzWRnurGe0Y5lZInPI/j0AdIEXoSaGPYOZRVCO6a
	0SttyIZec2OdvQv/VIMOpT/AUs/tM+JRHWhWjqYMuLne5LvKdTAohyme0nzIXVGQmLTcRMA/R5PlW
	niTgKO34g03XYkI19Z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKpXW-0001Ig-OK; Sun, 28 Apr 2019 19:32:42 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKpXR-0001IM-OY
 for linux-nvme@lists.infradead.org; Sun, 28 Apr 2019 19:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556479957; x=1588015957;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=sNxopWvDftxpjnsFXW1/ZWOllXE1+nhz825jzfWhZ9w=;
 b=MjZtLXNjD/QkZMx75yrjRY0auiiYh3U0wsWmGt60kVRrF5//4Zf6ntwk
 GnOX5df21KvoCYcbhO7h1LHpL9VzbqxXJbSQ9IacExcjvBwO6hzyz2jbU
 fCe3inC/j1RANQoqdgqts2YsHyp2TrDSqvjy+RhQFJYmb5Xj/dwpc0kLQ
 BUPVBYUAtw5Pdzahwr0QwcHVzTEN4U+7GIIvo+HGo4N/HBwy+0BiRFpzY
 8ZMVLA0r6hIeVlsO4PMV22XDFfvO5Q14ZsPt61zIfFkI+avefQsJOKG+r
 Zp88rk4quL672JJBxlXJRJw4bcgQKAWJfTP0wg7FGMdBvvejHwbP4X+YD A==;
X-IronPort-AV: E=Sophos;i="5.60,406,1549900800"; d="scan'208";a="212911768"
Received: from mail-bn3nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.56])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 03:32:34 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SNuIXubSeXzHEtVGe7haOrsELGfw8TYahuZ84i7m6u4=;
 b=TIx6DaMGYdHz28jbWnNt/2ZnpImn4JIq5WP0uiP/3zGyCmuMULzXZ8ZuWHt9eCSZq2huawZBvx4kiOtRxhIerecp4iaI3BMlIEH83WnreOr+W3c8+WFTO5So+uoRZmG2fBt7WAKmYwDSSX3mYMmh1AdXbElNQ4tVTz8rUiEAHM4=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4255.namprd04.prod.outlook.com (52.135.71.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Sun, 28 Apr 2019 19:32:32 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 19:32:32 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 1/2] nvme: improve logging
Thread-Topic: [PATCH 1/2] nvme: improve logging
Thread-Index: AQHU+xBUo0FM00EFFE+9qRUYvDXFOA==
Date: Sun, 28 Apr 2019 19:32:32 +0000
Message-ID: <SN6PR04MB452781752A97CA874A973C7186380@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190425024041.17657-1-chaitanya.kulkarni@wdc.com>
 <20190425024041.17657-2-chaitanya.kulkarni@wdc.com>
 <20190428120546.GB9759@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47542e89-a7bb-44ab-2e16-08d6cc104293
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4255; 
x-ms-traffictypediagnostic: SN6PR04MB4255:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4255773AF3087BEA4239C92C86380@SN6PR04MB4255.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(54534003)(8676002)(72206003)(25786009)(186003)(7736002)(9686003)(256004)(229853002)(8936002)(478600001)(446003)(55016002)(54906003)(5660300002)(81166006)(81156014)(486006)(53546011)(53936002)(476003)(6246003)(26005)(6436002)(6506007)(102836004)(305945005)(316002)(4326008)(33656002)(64756008)(66446008)(68736007)(76176011)(74316002)(97736004)(71200400001)(7696005)(6916009)(71190400001)(66556008)(73956011)(66946007)(66476007)(91956017)(6116002)(66066001)(2906002)(3846002)(14454004)(86362001)(99286004)(76116006)(52536014)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4255;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5nyBbvqkQRvrEQiAGAv6h5UZeNieVHw52pekuyw3Z+Tyq68rxIl9zji9v0yjdGMMRxMOM1+7MOd4PseKeBjqEQpAq5aRuOOqlAItj1VEbXm2BMyH0llNKd8HibSpLtr5E7U/+ry+dd+1c62H32mbAeVEkUYVhyjFZ4OgSU7osgLkgKi9m39T259/QTOPoO2ZwKaoV/QmeP5cL9XplH6m4gkUD01vrWwPDm0h18LIPB/KVEB31yKN+5KGR7oFPBaMioZEoZOHXgJ68yMoHiXkGkR8I/n/BV+u9IjJR9S7zYG2nePgapqn95lhAZ1z99MgoDkxzyo0zzJ8AWB3WZgBmTTszIt0j1qIox20EI55yLlaKy5QPDn1u/0DalJzPCBp+IdqbPpeN+AFmfwIBvzXaYqxKARKp9Qnx8dVZqEzIqs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47542e89-a7bb-44ab-2e16-08d6cc104293
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 19:32:32.5536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_123237_985119_BF63B56E 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "hare@suse.com" <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 4/28/19 5:05 AM, Christoph Hellwig wrote:
> On Wed, Apr 24, 2019 at 07:40:40PM -0700, Chaitanya Kulkarni wrote:
>> Currently nvme is very reluctant if it comes to logging anything,
>> _unless_ it's an ANA AEN. So this patch tries to remedy this by
>> decreasing the priority for the ANA AEN logging message, and improve
>> the logging when calling nvme_reset_ctrl().
>>
>> Signed-off-by: Hannes Reinecke <hare@suse.com>
>> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> 
> If this is originally from Hannes it also needs a From: tag in the
> body so that git attribute it to him.
> 
> Also please add a changelog vs Hannes v1 in the cover letter.
Okay.
> 
>> +static const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
>> +{
>> +	static const char *const state_name[] = {
>> +		[NVME_CTRL_NEW]		= "new",
>> +		[NVME_CTRL_LIVE]	= "live",
>> +		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
>> +		[NVME_CTRL_RESETTING]	= "resetting",
>> +		[NVME_CTRL_CONNECTING]	= "connecting",
>> +		[NVME_CTRL_DELETING]	= "deleting",
>> +		[NVME_CTRL_DEAD]	= "dead",
>> +	};
> 
> Can we move this array outside the function?  Yes, with the static
> it doesn't really make a difference, but it just feels nicer to me.
I've actually suggested that in my review but then it is static 
afterall. I'll move it to header near NVME_CTRL_XXX definitions.
Let me know if you prefer any other place.
> 
>> +	const char *state_name = nvme_ctrl_state_name(ctrl);
>>   
>> +	return sprintf(buf, "%s\n", state_name);
> 
> I don't think we even need the state_name local variable here.
> 
Okay, will send out next version.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
