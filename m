Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0151B3A1CD
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ZAmFDbHGH7OYowL76zQV/WTgfy/JYvycbOx1DUfTpPc=; b=HjrT+HfyxcWyq5
	xt1P4iD+tpAceaKosrXaV2gWQ7hGCdKqjZ61gQScWNBO5IHHqy5p076tG1mWxwOLK+8nUq0D737I6
	0tbQxw/GrM6JLz5R9zhen2Zxcs+Zj4jqoVc0kAeIxBmO7DCOuby42TfPDq4UFJRvuDIRJhq+jWzRP
	hf58J20eTbQilNRnzSB2OQhBNvP6fSbpWm6X/AiZRJVOFRap34oYY2hDRt7yVE7JlJ1zbwmEaPoCN
	HBzXwVI1w5AObv+6MSPKiOIuz8jVVTXE8nl0zbvX1UOvNCoUirux3R4bcCMV6plszePjiwP4soyQF
	pQ5awNSI6XISzuXmKu0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhVv-0003qq-2v; Sat, 08 Jun 2019 20:00:31 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhVq-0003qW-3B
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560024029; x=1591560029;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=BOZ9rmrHzMGpsC1x5Wbp38bzLoV2IsedshPE2UzEqa0=;
 b=hActM+rjLtdnozrz3NbW8ow/KSYng+ldXn349OymSaEisFjnw/6Gj4bC
 sZtrsjAae6EiPoYk9Dm/n97M6YRM6GmP4NCaPa/Afy4rZEhy+ZsSs9eE7
 mQDrrqXKymA/uLGYtVwSCSYI5q2mwTRz1OLO1ZtzqOzMVH78ayx+R5ISG
 53SjOwzJQoTR6koLirnxC+ms3RShebxHUtfA0aAdMA3fC0snFO+a9Dvhy
 vs/j+p3j4fK1ABvHSxCI1Ln9N+mwnB3QZy160FQmVOCAHArQ9CVcR/EFN
 DUYl0TwjpXbdJZzrvY/rmG/nCsXFknEILenr726s5yOCEPrfrzKuHBJUR w==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="209752834"
Received: from mail-dm3nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.53])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 04:00:25 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q3lgwV97f6128Y0kCuV6uObSCMWWUehOo9Dx13mIboY=;
 b=w1fhUTWiTHIK/s8k9z1es2ytx+b7opArwJZgekiQPXwvL6UB9g2HOWifPGntVf3xz/uLCGITATbzsTQ4OaWt7qMO+meqZkfoTabr1dAoDaRyNB9Aty+CMbo/JY7jJZGgPc8Z1IJAK2wCEphV8Jcng04QpkQGXePl8wsq5Gd18Xk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4248.namprd04.prod.outlook.com (20.176.250.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Sat, 8 Jun 2019 20:00:20 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 20:00:20 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V6 1/6] nvme: Do not return in the middle of the subcommand
Thread-Topic: [PATCH V6 1/6] nvme: Do not return in the middle of the
 subcommand
Thread-Index: AQHVGuvnAKtvpi8gTUuRl0Mghs+Jhg==
Date: Sat, 8 Jun 2019 20:00:20 +0000
Message-ID: <BYAPR04MB5749608845450D1A13A68ABE86110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-2-minwoo.im.dev@gmail.com>
 <BYAPR04MB57493403FE6895517AC1B39D86110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608194837.GB28228@minwoo-900X5N>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d54204b-f7da-4906-86b3-08d6ec4befc0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4248; 
x-ms-traffictypediagnostic: BYAPR04MB4248:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4248508A5D9E473B7BD569F886110@BYAPR04MB4248.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(6436002)(229853002)(9686003)(66066001)(14454004)(8936002)(81166006)(81156014)(476003)(8676002)(316002)(6246003)(68736007)(55016002)(486006)(478600001)(71200400001)(64756008)(186003)(33656002)(66556008)(72206003)(66946007)(446003)(73956011)(76116006)(66476007)(14444005)(26005)(71190400001)(66446008)(53936002)(4326008)(7736002)(74316002)(99286004)(305945005)(5660300002)(86362001)(25786009)(6916009)(7696005)(6116002)(3846002)(76176011)(2906002)(102836004)(53546011)(54906003)(6506007)(52536014)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4248;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cWbs+WFhaKNrZOmRwgVUlkTgWjrEV1MUaGMuSQUwgLvlfpqE5K856vFt08BoXaGrwdJFs6lJ8E7icdNjuBbc6rfye5S9ExI3+cRBlerYvBcbntiLMjLtYc2bZwyxOs033YROcSQSHoP3yX2bHXbqotsbsoKKvko/3YZM4riKl2TrsrkBTQaoBPozsu495fDr579jTHAXg+hGknfwk+LuCwPyirKr8jCCoEZarIZEAdIlGQ2eW9O8xhwKsbjsphy+KQbdNUO1P6wC7wu58CUCvg+ZTNQUW0ynHQcBFRcVSNVIYOoyEF2Y//KEOe4NcaGdcG1/qADLwoh7go3lEWqL5eR1nKHNJlRboVNUmqbU/B2hKtEZwhie34LreWg63VB3ojPpG3jBWtvRmlKtqH7lhgXRP8ACDfbJCILJ8QV5E3s=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d54204b-f7da-4906-86b3-08d6ec4befc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 20:00:20.7748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4248
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_130026_196261_C5558444 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 06/08/2019 12:48 PM, Minwoo Im wrote:
> On 19-06-08 19:16:08, Chaitanya Kulkarni wrote:
>> Hi Minwoo,
>>
>> Thanks for your patch-series. I'm not sure I understand the comment in
>> the cover-letter, please correct me if I'm wrong.
>
> Please let me thank you to keep reviewing this :)
>
>>   From cover-letter:-
>>
>> "  - The first patch has been updated being without an whitespace in
>>       front of new label("ret") in a function.  The other lables added
>>       followed the existing style in where it belongs to.
>>       The default style would be great to follow the kernel style which
>>       is non-space label, as suggested by Chaitanya."
>>
>> Which I think you want to keep the labels as default kernel style.
>> without any spaces ?
>>>
>>> + ret:
>>
>> I found spaces like above everywhere in this patch, am I missing something ?
>
> I'm sorry if It was unclear.  Simply I meant that the default kernel
> style will be prepared once this series is done because now the labels
> from this series are following their own functions existing style.
>
> If It's now following their own functions,  It would be dirty at the
> commit point of view.
>
> For example,
>
> 223  close_fd:
> 224         close(fd);
> 225
> 226 ret:
> 227         return nvme_status_to_errno(err, false);
>
> It's not about the clean-up patches so that we just can follow the
> existing rules of each functions, and once it gets done, I can prepare
> the clean-up patches for this one.
>
> I hope you can agree with this, but if not, pleasae feel free to let me
> know :)
>
> Thanks,
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
