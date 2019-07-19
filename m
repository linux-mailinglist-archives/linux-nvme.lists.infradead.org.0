Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2886D7FA
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=33BfkNTJ3tEG/YMqh3SsZWplXdKp1sDIq3Rnn/LkpEQ=; b=hnsep8nvbjKb/p
	YcjopKQfgfrllg2BuwfALQkCNhPB+mBXCnv4/tZKWjMOe8SBZ3YhEQtNlhmip4Zy9OfmG1Bj76BTV
	aPaNCeUcWolwxWsNyU064VoLibba9TNOuSGbp2Su7n/6qgRZQjXaMjw+IHvMlDv+CMQyc/yBFZc2f
	RMUV1UDEQm8BsNbtMwosKpFubJj7Ei7UWPZfYmK2v+VYRMOw8q69CYK8b1QjHNzEFhqJcPFvsJgXK
	iF99N4S+PPljoZkbB5ydJhnFq1wwyDRr4+Q+VFqeAn3DOpV1W+Q3Xr38tmhxbVXJWBtYICRYRiEJJ
	EAs5zpNY04FiZ4szOzkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoH9n-0001Pz-C8; Fri, 19 Jul 2019 00:53:55 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoH9e-0001PX-Le
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563497626; x=1595033626;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=+659ppZuEXSFUQHocVtiuKgtJSOFUUwxDoHflIl+cXA=;
 b=V2maFt0gKgYKtJ3bnrAQ+0jhqEsHtbnt2hWdtYZrJVr1yYasUK1kKHBW
 pFkaon50nUMAD3NL61baxrGzfnj7lsDs2qtkxmeAxnbJSMmVapFyBty7S
 ILYcpx6U0WnZuqRSB377ogqS6DcuFMiGh17r4oduMhlicSNyisR0rpl4R
 y4TA/blwzOsvzGzEV3Sdq1+KS5DXhN7x4YJBTTo71UZffQV151tSvtZPx
 z8o7lNUA9Y5QHqtInYck7pbR194eKsrOG7569vMt/pHpgm1YIxibwHVjf
 h7qAoJTnlKLjLZdhRFGTcA3imz78EtuAuC+fOrJ3NaZK4EaFZcq89FFSL A==;
IronPort-SDR: pM9reR91kOKWc8+pe/k9n2XxxojennbynPyCQ6br+gMiYSTDjr0K4vdZFSYT4f9EQzjbSSrtls
 Yg3/WkTPi5u+r3s2BHUEmNSO6hikDYILf4J+EuquikQ5sLqsGtz7FkoOuHA2xDa9jYox4dmev6
 Z9ybSRqg6e6PbxOSTlsZtJ/nICARLoJBMxb5djUC9Awt4QXbO0zFblilUfXy80tridjNpuXBy3
 2YLb3pmL++EtJjWP2GDCCnkfxwojd4Z/ifYP6sB50K1TNwLIsBabfJpYgCxEJkHIbXaF9AmvOP
 +iI=
X-IronPort-AV: E=Sophos;i="5.64,280,1559491200"; d="scan'208";a="219881458"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jul 2019 08:53:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdILqPeHKIDGiCVJeT3CMsOFHsHkNdgFxTNWI4zLEYNGLipGlvfnecaU6U4X0ltp4Zo1Xk3rqMkJzEpyt25dChl+s8FOrVmUmOgfqeiYfnCGMpj+MzQjF061wSN5LtAd8fJCJejqXNR894PvJOTF2IUNKjyhztKsbAtr+ori2aPVKeTaaqA393R5W5plrz1SEG/Up5Gu+EcKvAfvxuYadaNL5MnbnejQtIUZgjyYwW+XDgF1GSRojvYhchHJxVKIL8/hc6jJZchVjfprUpJo1H8FQ/d/n7MSSOqQ9r9a8DEuVf6/fn+pbtlr8RXI0tJixNe/jNUngmWN92vsCkRTZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlAjgZFnGwYCTw+iYCGxv+TiO6i+x+0VkzuNaJVmqH4=;
 b=S4TdrIrjUI7kmcJUBjhPLfDVehq8DYbAZKyRrrQwuo2cS7ysKUEaIDvlnQI4yMeIeeA3CGWLfMRQqR8wKNRMqLYhGdPPOHaG29dyWMeUEsofm25vf26R0IiTtKytm+BN9/8Do9EParb+0ikpTRhXtxmjoU04ltu8Ag/Zh3VAqOEEAFJsTkj01D33XEsDLAIzgkZZAtfQSW4s/IHAmq3FDykumzSqoetPKUZt5iz0eaofEbkcJQ2OYD4tYv1bVGeSwG8ZMdhHhl5QGuUT/oeI+bK336P+cIXhFwJWOOk70KYiOGfXNp4qSihPdNAnpP+L2fuzZl41Qtdq2Hh55Q4hSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlAjgZFnGwYCTw+iYCGxv+TiO6i+x+0VkzuNaJVmqH4=;
 b=thXx+sP3KBa/okWfynqySWwSH9AYSVUTUxmH4qltIZFWkUcpLhYFT8TiMH3pp0HHPnjg1rFsdHK7y8Bbsj78OKLmYFlKtNWfuKHGd2ZY/91cTr9cNkFSPr6estu+DM9eLD4Ifvoq1kiXw6iT4xTv399I0yJ7/mjoeQPtRntn4tQ=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB4245.namprd04.prod.outlook.com (20.176.250.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 00:53:38 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 00:53:38 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Keith Busch
 <keith.busch@gmail.com>
Subject: Re: Duplicate tag error with 5.2
Thread-Topic: Duplicate tag error with 5.2
Thread-Index: AQHVPQGtycP5nx5l902GqwDALRljIw==
Date: Fri, 19 Jul 2019 00:53:38 +0000
Message-ID: <BYAPR04MB58163BC85D7A5351BC053D43E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
 <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <50c35ab3db7745875476c0966bf191ab42de4dd1.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e209d25-c2f7-4f92-d0a7-08d70be38947
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4245; 
x-ms-traffictypediagnostic: BYAPR04MB4245:
x-microsoft-antispam-prvs: <BYAPR04MB4245BBE7554DE5694F456B15E7CB0@BYAPR04MB4245.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(366004)(51444003)(199004)(189003)(81166006)(81156014)(7736002)(74316002)(446003)(25786009)(8936002)(64756008)(91956017)(66946007)(66476007)(66556008)(66446008)(86362001)(76116006)(316002)(8676002)(110136005)(55016002)(76176011)(68736007)(478600001)(66066001)(52536014)(5660300002)(6436002)(6116002)(3846002)(14444005)(4326008)(33656002)(2906002)(7696005)(6506007)(476003)(14454004)(99286004)(71200400001)(71190400001)(486006)(305945005)(6246003)(9686003)(229853002)(53936002)(102836004)(186003)(53546011)(256004)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4245;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UGokOSdM9/wRA2YAZ9+AL0uNWE6mcs+J5cV6gIegz5iP6a5BgBV4dU00RwfsAM/twshkrQzvrk3HF9hDLdshF+qYjNRkEnb76GmH2OaV60YRIV8M06aPWINz9nDc+vauK/UOh7pccGDB6a8rSEpQcULXzFzSPSDpMS/vEhJuIWIMQ+5yniUTITAiBI3elsmSauiZnmzEMHGiIbr9FuM1MhDjSh8Xd02Pz/1vWg60yvXDcJGuw9PHLmqYeI6or3tYUfym9/fQ2PBuglXjndLq7HeLLC/zPkpYHW5QSk0AMoHmo0K4pFoGwuySOfJ5qx59PQPtWupNP8fp4Px0d0oRjwgeSsTl8/s3ybX/nu4xwaHZ9zkuUSRU75bUDPuiiryMA+AuqYblLfz+1+jgDg78amecB+rnUfGI9Xc9xvxW9No=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e209d25-c2f7-4f92-d0a7-08d70be38947
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 00:53:38.3272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4245
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_175346_831153_1CF2C9A5 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019/07/19 9:44, Benjamin Herrenschmidt wrote:
> On Fri, 2019-07-19 at 00:39 +0000, Damien Le Moal wrote:
>> On 2019/07/18 16:40, Benjamin Herrenschmidt wrote:
>>> On Thu, 2019-07-18 at 07:13 +0000, Damien Le Moal wrote:
>>>>> I can trigger the problem easily now running smartctl -c /dev/nvme0n1
>>>>> and doing a bit of IOs. It seems to happen when the IO and Admin queue
>>>>> use the same tag.
>>>>
>>>> So isn't it that you are getting a completion cqe for an admin queue command in
>>>> an IO completion queue ? Or the reverse ? Given how weird this NVMe device seems
>>>> to be, it may be a possibility. In addition to the command ID (tag), if you
>>>> print the cqe queue ID (le16_to_cpu(cqe->sq_id)), what do you see ?
>>>
>>> Ah I can add code to validate that it's coming into the right queue,
>>> good idea.
>>
>> If the completion really shows up into the wrong queue, a fix may be simply to
>> hack this code in nvme_handle_cqe():
>>
>> 	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
>> 	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
>> 	nvme_end_request(req, cqe->status, cqe->result);
>>
>> to use a different nvmeq pointer, that is the one that corresponds to cqe->sq_id
>> queue used for submission, which would lead to the correct tagset to be
>> referenced and suppress the false "duplicate" tag issue. Locking of queues/hctx
>> may need careful checking with such a change though.
> 
> But if the completion arrived in the wrong queue, wouldn't we be
> missing the completions for admin requests and thus having all sort of
> issues ?
If the admin req completion comes in the wrong queue, then the admin queue
completion queue should not be changing and not need any head/doorbell tweaks.
It simply stays as is. Since I think that nvme_handle_cqe is used for all
commands regardless of submission type (normal, polled, sync, etc), this should
work in all cases. Not sure at all for all this. Some side effects are
definitely possible. But worth a try I think.

> 
> Things are now solid with those two changes I've done locally, I'll
> send a tentative patche:
> 
>  - Offset all tags in the IO queue with 32 so they don't overlap (I do
> it at the point of writing into the submission queue, and undo it when
> processing the CQs).
> 
>  - Reduce the IO queue depth by 32
> 
> Without the latter, I occasionally (but more rarely) still got the
> error, but always with tags > 127. I suspect that not only Apple
> implementation actually *uses* the tags we specify for their own
> internal tracking, but they also only support values 0...127.
> 
> With those two changes it's been solid. Thankfully the resulting quirk
> is reasonably simple and self contained to pci.c. I'll clean things up
> and post.
> 
> Cheers,
> Ben.
> 
> 
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
