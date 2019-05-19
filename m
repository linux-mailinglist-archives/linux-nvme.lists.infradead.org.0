Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE642282A
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bRWWucDDjQXf3dxTzeH8xgJsgXkxd/4RskzZgwqVlxc=; b=dTnhKDEHPakJT2
	N9pd8txXqSAbW18WdmXZXpzmeV112dhexJxCM4b5YbDonz8TgeicU79dKGffcy/SXlLr7sCbMwSO1
	nJl3ir1+bn6sMaS6JaM3z7dX+6GYNhobjDTcngJEr5Fc38/KaTtvWIZkNnmnieS3Pbm/EcRKLbsTs
	oDxulpEj8ZF66gQBH4RhE+7B3C64cTP3YVYUcY02/MkjbgoxADfj6qokTs1v3mJfIDKfY7gsuuclZ
	eaBt4jlmlRl3XkefA132zVkFsV+g4dj6L77XDPusIMWDJFo/1K439kbgn2+r6ddWUT2e/PxWmq37i
	JneAMxTReCgE0jao5P8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQ6d-0007YV-LO; Sun, 19 May 2019 18:00:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQ6Y-0007YA-00
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558288845; x=1589824845;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=RwyDSvdQBpN/9elH6VufMuWineTxOw2qDlIWra04er8=;
 b=GgTbJMkVWvEvIov+AmI1h5wG5f0y1vR0UB7X7JKyGkIuwhqXXy2H0cLS
 5Jk3LCsSZ/wLwZo70V/+fh5mlDYf1IqHvsEIListBV5qEs/l3F5X8rLqu
 RKnspYatd7D1isMzVUmdE66KqECSTxuCRCDG5nkJ3qJbdCgOKC42Zfl5u
 xW81g0kJs8lfOoMr779cCVXNMobaRMHKGfrl/Dx0sVSrfJybglM9pfTkn
 045np6Wi402i7T9sLfY5J1kBPON//79awfxh5MyjjxZyYy+ugD81MfoDC
 h7WMyv4cIlAhLPW9qL4uBO5fAitPd8isninVAOfN15Fo9znwpYojsBy01 Q==;
X-IronPort-AV: E=Sophos;i="5.60,488,1549900800"; d="scan'208";a="208061131"
Received: from mail-sn1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.59])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 02:00:44 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/W0UtMN1ZgtkREQtal6oI5SI0T57QFLpDgZdD4uKnyo=;
 b=lho5X/DjpYLqSzpK8EKbkn+RVnLU7eGKZDQS4lP1uzlen1A9LCJXS+7cY6YpKGXjslQfCQi0L63u5KYSSQFmUnO0EFnKkEE/JXXgpa3kTbQacIVoPbFuMePllt8+5WLKuRkXXf5cJebmPvaK4D9opwZKsVoegSrcRLy0R9luYUg=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5493.namprd04.prod.outlook.com (20.178.197.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Sun, 19 May 2019 18:00:10 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1900.020; Sun, 19 May 2019
 18:00:10 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V2 3/4] nvme: Return errno mapped for nvme error status
Thread-Topic: [PATCH V2 3/4] nvme: Return errno mapped for nvme error status
Thread-Index: AQHVCa4ODf8Lin8l30KkwU0rOkmp9g==
Date: Sun, 19 May 2019 18:00:10 +0000
Message-ID: <BYAPR04MB574905F74B2AC5E18BB39B0C86050@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-4-minwoo.im.dev@gmail.com>
 <BYAPR04MB574936E1FDF464243691513286050@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190519175315.GA10876@minwooim-desktop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bff24ff-ee59-49b4-6fd6-08d6dc83d5f8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5493; 
x-ms-traffictypediagnostic: BYAPR04MB5493:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5493F403BA8D27E1E0D657F686050@BYAPR04MB5493.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00429279BA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(376002)(346002)(136003)(366004)(52314003)(199004)(189003)(81166006)(81156014)(6116002)(7736002)(8676002)(68736007)(305945005)(66946007)(66556008)(64756008)(73956011)(186003)(4326008)(26005)(66446008)(66476007)(3846002)(53936002)(6246003)(55016002)(9686003)(6436002)(66066001)(99286004)(102836004)(316002)(6916009)(8936002)(446003)(229853002)(76176011)(54906003)(33656002)(7696005)(486006)(25786009)(53546011)(2906002)(476003)(74316002)(6506007)(76116006)(14454004)(256004)(71200400001)(71190400001)(478600001)(86362001)(52536014)(5660300002)(72206003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5493;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BZl/ZL0hKNP2+srWZfnvQea5MGCZN2n9ssheT7je8eut1LfVbbCok4V8Oy15gMRsy6YaNhWjb4OxTRbI2ltQSDqnPBiH5wGkynNIS4UDltSomIWQM/+msOo0hyWHc/5EdCQoa/R9H82uyVz1C4SfYMJtB41XS3c5szyvjGWFBb871uDAF0U6IiS/ffeW0dw+Z9HjPKlgjbiIdCSlapLqIJccCR6p6yWyob8nFQZA8BDRrIiUBsrnJ9mEUFvEDIdY3TK85UpThFUvRu2brPNALvvEH0xWwjx9xD4DeTCRNP8SQCmI29kGei+wO6LZZPnKrFh8VccRapWnD80YSKB5MeHIfyhKMPtSGWY+A11L1OnjhDj+R49kLbZqF5y/+N/1wViBA0xrWVyUyCBkj6psHGCQd2n31lyIE0ClnFWisXk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bff24ff-ee59-49b4-6fd6-08d6dc83d5f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2019 18:00:10.6459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_110014_126094_B8E09163 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/19/2019 10:53 AM, Minwoo Im wrote:
>>> @@ -364,6 +367,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>>>    		perror("get-telemetry-log");
>>>    	else if (err > 0) {
>>>    		show_nvme_status(err);
>>> +		err = nvme_status_to_errno(err, false);
>>>    		fprintf(stderr, "Failed to acquire telemetry header %d!\n", err);
>>
>> Following line to nvme_status_to_errno() call above assumes that err has
>> a return value from nvme_get_telemetry_log() and we are overwriting it.
>>
>> We need to avoid such scenarios going forward. Also, since each command
>
> Can you please explain why we need to avoid such overwriting scenario?

Printing NVMe status with err by retaining existing behavior.

Since existing code might have assumption of err holding the nvme 
status. Also since we are changing the return code functionality so
it shouldn't affect the rest of the code pattern.

>
>> assumes that err holds the NVMe status. Instead of having to call
>> nvme_status_errno() along with nvme_show_status() we should call
>> nvme_status_to_errno(err) at the end of the function in the return
>> statement. This approach will not break the assumption that code is
>> having now and less lines of code changes, obviously
>> nvme_status_to_errno() will need some modifications but that
>> is fine, untested patch following  :-
>
> Makes sense.  If we are going to convert the positive nvme status and
> negative linux internal errno status to an errno inside of
> nvme_st4atus_to_errno(), it will much more simpler for this patch.
>
> Anyway, I will prepare V3 patch by updating the conversion at the end of
> the each subcommandh handlers.
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
