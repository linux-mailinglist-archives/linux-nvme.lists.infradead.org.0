Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE77022AA2
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 06:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nB21sorMraOK/Q+Vh9s6LujbqyGNKgHVrFi1o+r22R4=; b=M/KNps3spU0nC2
	ecgbiVwBUFPd/+2bo9aXAZa0IDk8aNQ4XJiJJzxR4v7U/+yesac1ZV586OilMuaxgmylZuIBAOGTy
	3jtB8eJSpRx2Z/wOaLy+LGlMgBDxiGftgUc9/hcQxszWiP8JVOS6ZB0dsnYrLbHDP7mQjbcUGqfoT
	bZZ4iFLKpDvixo7veweGGM92otVgegh3KRz0IOZ9CAAurK2ls+Qo+UGGWWawoQBRpHIL1SwEtVjn8
	KHkUYhZEW28zSF92IatN4orEWx5xKCkKm0fDGNRqLAAaj7Leq/8UCvbNY9ggJeLRB06MYarJvbcgs
	sJdtXwhYy9tOk4i1xiDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSZop-0007sT-4d; Mon, 20 May 2019 04:22:35 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSZoj-0007s3-8m
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 04:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558326150; x=1589862150;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=kniIXfGcpuzxF9hbY1ERDV260pM40cNFcSrmY2lxHFE=;
 b=Xs+1MhN4DSDsLExtvUj52EsTWjqyiTRz6OwniFjWA4WuueQZRPWdxpax
 LI2jhbnZzuTwm6orHY8lE2l/d4X/iRyYzbLIzoFQwOnYx1V1v8BVp4KVr
 0g8ITmTGVUMShJsPnjbgh2e/Ppt5jMfTFU7tBuLDF7//x2eC074/SsTk5
 Df+/UifIRJ84X1t7cCdcwC8iyuNR3khmNm9V9tLE8y0CT3VLsSqM3M1Ro
 ZAqL0p5AgC+EKRWRmP9+Ccc42iYgd9KR37+XALtfIQSZjbUcoiaRN6yvu
 0zSH/SpzRhDmOa9Ugf5LPNFN53qgnztyxhEmIfDiiRDK1VEa21Pbg7IRw w==;
X-IronPort-AV: E=Sophos;i="5.60,490,1549900800"; d="scan'208";a="109872512"
Received: from mail-by2nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.55])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 12:22:27 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/QoYk6s0iHweQQmK0G/boH5Qo5cZAmfrLK4Fo+e8dI=;
 b=raK931xzE1A6b0Hit/YVTdaw/dG/beE+r7ly/GdhOqlgT1FBahRFEENQrfZPZUnC30V4Ny9wpRTmiNDrL9q7gl3Wlox2Aftnvez3ZfoOzvm2zmGbVIGVx7Pp8Zfxg/rTHTfnJgCxqzAB03KNA9Wcod+2psHs9PABUUMsLzSGmmM=
Received: from BN8PR04MB5747.namprd04.prod.outlook.com (20.179.74.153) by
 BN8PR04MB5634.namprd04.prod.outlook.com (20.179.73.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 04:22:24 +0000
Received: from BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956]) by BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 04:22:24 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "minwoo.im@samsung.com" <minwoo.im@samsung.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-cli: close fd before return
Thread-Topic: [PATCH] nvme-cli: close fd before return
Thread-Index: AQHVDmxB/sHGndfBjk6f7qvAb2Tu+A==
Date: Mon, 20 May 2019 04:22:24 +0000
Message-ID: <BN8PR04MB57478A0FFD0196B2D868AFBF86060@BN8PR04MB5747.namprd04.prod.outlook.com>
References: <BN8PR04MB5747CE9613ADDE4BA1D6A5C986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
 <20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d@epcms2p7>
 <CGME20190520002113epcas4p345b92c6d82619b92478af81e81392266@epcms2p4>
 <20190520015401epcms2p413869afe9728ffc36248cf8e5e00888e@epcms2p4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:cd31:e5c8:9aac:becc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0bb27cf-e602-4c7e-3b2a-08d6dcdac272
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BN8PR04MB5634; 
x-ms-traffictypediagnostic: BN8PR04MB5634:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BN8PR04MB56348685B48E231BE94F5D4186060@BN8PR04MB5634.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(366004)(39860400002)(346002)(189003)(199004)(14444005)(5024004)(6246003)(256004)(25786009)(68736007)(6436002)(2501003)(81156014)(8676002)(81166006)(6116002)(8936002)(9686003)(7696005)(7736002)(5660300002)(52536014)(4326008)(55016002)(76176011)(6306002)(102836004)(316002)(110136005)(6506007)(53546011)(305945005)(2906002)(99286004)(53936002)(74316002)(229853002)(46003)(14454004)(186003)(66446008)(91956017)(64756008)(76116006)(66946007)(66476007)(66556008)(73956011)(86362001)(71200400001)(71190400001)(33656002)(476003)(966005)(72206003)(486006)(446003)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR04MB5634;
 H:BN8PR04MB5747.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: l475nx3+3CMuEzRFui+IQXveF4Xi8KlKRNgcMUJlikyJ6IdpZH1jY8RH5M2JnkDjW1ZYb5x2yDDWFNxHiY5YtIJV9X46sVib15WXxT91/4k2rL9ulpKjBIxuWQAXO+fV4sT6CYeiAtenhJTd/sxRLRwoyWzBk6gRPojzymUpU/7Gh5Az98nJ4oyX2Vi6XDAcsNNrcZ1itkEcSE3ET07Xc14h6aWO4xM88pjo5BgtqsY6koKs8d+9B4Lre0Dr+g37vnoHVK/HnQWh/tE41roBYUL7ryvgQgtbPXTc2n+4eZc/W0dVQkcsNC5JcC698p6+Kb4Gc6te6YPFGsV8ZYf+pYnBWcIjKd/4Gqw+P6x+ymcXsleDP7n51tiip2f4dJ7Bcgy4Oa5FNhRMnDEnrtui0EkuG/KoFTCtps7qYSHKSMc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bb27cf-e602-4c7e-3b2a-08d6dcdac272
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 04:22:24.0952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_212229_489087_45D9DDA1 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/19/19 6:54 PM, Minwoo Im wrote:
>> Before we add your patch-series we need to make all the returns
>> consistent which is not present in the format() and create_ns() for nvme
>> error status. Ofcourse eventually all the fd leaks needs to be fixed.
>> This patch makes it sure the leaks for the only nvme error code are
>> consistent and on the top of that your series fits well.
>>
>> Without this we need to add two return calls in the create_ns ()
>> http://lists.infradead.org/pipermail/linux-nvme/2019-May/024307.html :-
>>
>> static int attach_ns(int argc, char **argv, struct command *cmd, struct
>> plugin *plugin)
>> @@ -1216,7 +1210,7 @@ static int create_ns(int argc, char **argv, struct
>> command *cmd, struct plugin *
>>   				fprintf(stderr, "identify failed\n");
>>   				show_nvme_status(err);
>>   			}
>> -			return err;
>> +			return nvme_status_to_errno(err, false);
>>   		}
>>   		for (i = 0; i < 16; ++i) {
>>   			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0)
>> {
>> @@ -1246,8 +1240,7 @@ static int create_ns(int argc, char **argv, struct
>> command *cmd, struct plugin *
>>   		perror("create namespace");
>>
>>   	close(fd);
>> -
>> -	return err;
>> +	return nvme_status_to_errno(err, false);
>>   }
>>
>> It should be consistent with all the over functions with one return.
>>
>> This what I'm trying to avoid (by ignoring other leaks for now), can you
>> please explain why it is not a good idea to avoid this ?
> I never thought it was not a good idea.  I just told you that it's just a
> duplicated patch with on-going PR in the Github.

I've not said anything against PR. I was just explaining the idea behind
sending

this patch. We can leave it to PR now.

But this is a good example of having things not be posted on the mailing
list can

a create confusion, will be monitoring PR going forward.

>
> If we are returning the nvme_status_to_errno() in that other patch that
> I have posted twice, is it that critical factor which blocks the patchsets to
> be merged?
No it is not but it just makes your series smooth.
>
> I don't know what exactly the issues are between "first merge patch serias
> and code-cleanup there",  and "first merge this fix and rebase the patch series".
> When I was preparing the patch series about errno, I was also hate that
> codes you have posted above, 
This is exactly my intent behind this patch.
> but I need to make it focused first to make
> people review this series first even there are two times calling like above.

So far I've not encountered situation where PRs are being discussed on
github and

patch-series is not posted on the mailing list, but it clear to me it
can create a confusion

as some people are not following github as closely as mailing list and
we don't have

the clarity over which has the priority when it comes to sending patches
whether it is github or

the NVMe mailing list.

From my side, I'll make sure to monitor the PR on github before posting
any further patches.

> If you really want to make it consistent, then why don't we just title it like
> "Do not return in case of errors in the middle"

I don't mind that in fact I can resend this patch refer to your
patch-set and mark it

as a preparation patch with changing title, if PR wasn't in process.

>
> If you really want to close fd to fix the leak issue, then I think it needs to 
> cover more than that.
I've never opposed to fix the leak, but this was not the intent.

As far as this patch goes, since you are already working on PR with
github, will retract this

change and we should go with that change.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
