Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE196D7DC
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=I3p+5NcXxeAQcYtdvRO8/XPGzflHbACDWUGNDTE3nTo=; b=bqcmD0Kr6fC9z2
	Lbw40+FCKFHVygQbqGiONteApl6nUedMOOdVEt2prRrLvSmse9dHlY+ypp7zpBiYKdSMYosVcqedk
	mBJK1gaQRkWFXrA2ED2fpdfar2qoGJlEeFQ70fiL4SCoTOnS6QCxczZSKArfkxMyBpVUPNQ+KF/LK
	Ju4VFZGrIAquKN7G8dBjlH44Q9+MtHVP+GZAC5TcP/gW9QU+LFaK7mT0Uz3ZLQasYCiiW+PTJ9ggE
	GaYECmygq3j+B1qkNUnW14lsxSWUJRKZQPz9WOWkXrd+l6y1ESEKrRt28FFRFZsUZu1ofS7KEwvm7
	nIspM4kPqoprf29MMFJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGwX-0004qq-GD; Fri, 19 Jul 2019 00:40:13 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGwE-0004qN-JH
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563496795; x=1595032795;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=49qhyrPbAV6nogMBWP31TZaJ2csyh7HD65s3IFSkTSM=;
 b=J8iqnt08W7z7PWjsqakQrPiFNmHkgsiPnxG2uY0GVWhC3blpGaesI2TG
 KkV/b1NADIhSwGDHlmtLid7urimUr9nEAnz/pVANjN8HgXNz8q14yBeyY
 u75CkJLKZX6RaruQsMA+6Tciyeoi2j9+Nsr1i6Wm2iybXj273ZI7sHpgQ
 rdsfE/VkNgXvGMXfnDYayU4KwegljRGny/WV1Tk+GflHhTmuYV+c3Sk4t
 bDGsoeWI5lbk7/VQc4b0qvvzG+6LNfx9BGUip+/eTPjh7wTdkL6ge+gYj
 EMEfsjeAiXsrp/HMYWSIyvngwhoDJ6P1NsCQU0vMtGDjv637GcRS7pQb1 g==;
IronPort-SDR: mk/OFqxerSO3rnFekFRh5Ouds0tbZI/rwe3eU8jtF86VsYs41jheQyUxv1tu/hRJTbmSAMr/KY
 fIBoQVoCOLsUaSuBVyHqU5NU5d+ndLEW6ZbvrjaCk5AVXQDApOmKjTJ6CXNtoddxC7z7gW1Wdq
 uJDyLftTAcR0Swgurmac4HfiguPZ7PN9JzDzmDNR1JaHnJXXkS2s0+6z90TUuTp1ZnY6iPj5xA
 09/mbPtgM0gV0iZFT+wO7J8z/J8+1Lm3SWwN/b364PU1AlSGBFvvVkLnRyFfrW0RiRSXOTzj05
 wdk=
X-IronPort-AV: E=Sophos;i="5.64,280,1559491200"; d="scan'208";a="114557592"
Received: from mail-dm3nam03lp2050.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.50])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jul 2019 08:39:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QjevUS2WGRwwgRdmV3bynjLeLB6jAHxYh+yewPXZbMWewo1oys52t8K6v7MJF7Rbfe4et118h8d9/jH+k6diY6lZ0v3KPKdHLWsCS6o1pGW3NUcNBLc8NFzQ/g72FPk7GWZKjuSP4NdUybKRVK33+vf2gPIaN3Ag/KH7EbOBGMQs0OZmyYJYQOkUMuz2wYlyQjQeAOILI7blX2OrrzX6EdCNSiFUQ0c9Qvw94l7PMeHc/i39BXH0CD3tksZkooG8xWCauQHVySVgjV/Yvuwbmj4qgu9Wk9vRMDDQx/sWTgs5p8mgyiifsF0dFfZsdHbGm+XHGvBoGl03sUd/8gwknA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLbBtvd26Zcy/UTDkFyKPmvT37lcEzpDU5IhISoPCGU=;
 b=dkEAomJvyfjf/AoCVHpGz6orv6Up9reN+pyZfG9B42dtY4ASKlirAk59DeXDrDTJy1ZNo2C8TEwPNP0/Jn/Iu1GOmkm9AkCwu1TBS6sdqLHsAWJ8BGX6nextu+aW54L0HqStMZxd/hTQGAuxPgHkBuFSQt2EDQYilWfIipG3z93DJCs6q8BFr+wMbecPn63+TeWq2b8EXqlZAPeZ5/XiXU9eSHw5+6G3dh9RyfjTJEeioHXAz0kxsMMbDK/jWVGSDLipOBb8y3ejmSnWRrBTaEm9LGTBTs3iuFM6ITkOZvfmch2INTTvh9i73mj4RIPBbeQIOURGoBSj4yadWtZruQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLbBtvd26Zcy/UTDkFyKPmvT37lcEzpDU5IhISoPCGU=;
 b=DGrFm20M10Inky7aQbqnKcZLQfwOiWMA4ukXiXp/UvbszE2Wq2q9Fnk8HkFrN5hDR6hbLMB0TV/Gj8wYj1x58dl0pzD2aIHjNmbsCMij3FyoHZdpda7M10eVwTEKw2fPsf4zuoTpRHoE25/U55oUebYTK8TE8b2ZSSI+FlRm7Yg=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB5861.namprd04.prod.outlook.com (20.179.59.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Fri, 19 Jul 2019 00:39:42 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 00:39:42 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Keith Busch
 <keith.busch@gmail.com>
Subject: Re: Duplicate tag error with 5.2
Thread-Topic: Duplicate tag error with 5.2
Thread-Index: AQHVPQGtycP5nx5l902GqwDALRljIw==
Date: Fri, 19 Jul 2019 00:39:42 +0000
Message-ID: <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 049dba48-2651-4f60-0aed-08d70be19706
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5861; 
x-ms-traffictypediagnostic: BYAPR04MB5861:
x-microsoft-antispam-prvs: <BYAPR04MB58613F3911DA283C91811C2FE7CB0@BYAPR04MB5861.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(199004)(189003)(6436002)(66066001)(229853002)(26005)(4326008)(99286004)(186003)(6246003)(55016002)(9686003)(81166006)(478600001)(66476007)(81156014)(64756008)(53936002)(256004)(66556008)(33656002)(3846002)(6116002)(8936002)(66446008)(7736002)(74316002)(476003)(446003)(2906002)(486006)(86362001)(305945005)(68736007)(316002)(8676002)(25786009)(91956017)(71190400001)(71200400001)(110136005)(52536014)(5660300002)(7696005)(76176011)(102836004)(76116006)(53546011)(6506007)(66946007)(14454004)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5861;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rH3UzqGvVdJ8Ou8jgj8AWo76qhzInByBeA3cCmSI1FcBSrvdO2KdEzwW7BEjJq5h6PsnCemv3zI+1dkuOIqNwnirtLAD6OnXU0EHEItZome7+6fGrbe/LsKa52Fz1y6sL8CreUYLbX1WY0agaG6yGvpVpoW0wJkh7vPbJwKqcR8Kr39PiVn5p4axuNPaADjicW9i0SKCbeI+lOaK6TF8IrxR60FjiBEmXhzF2ADWJuEVj5YsfhrDa5b0Aw4qAG6BZM0BgDq6i6ifY7vGeU0BmeUYtlFYxs2zTR/LV6Y9DJpfnp0q1TrgCg0b5lW+CDXx/Xnautt6s8GtmsCn9l8YP6rK4wvAD/Sl6pSejDEH/hKqN8C510hqCgqDOHaCa+HmH+Cj/6D7BbSPV6gJW70yJRbrOp/KARSm44j0wf2xWGA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 049dba48-2651-4f60-0aed-08d70be19706
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 00:39:42.3328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5861
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173955_306213_95D22A5B 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

On 2019/07/18 16:40, Benjamin Herrenschmidt wrote:
> On Thu, 2019-07-18 at 07:13 +0000, Damien Le Moal wrote:
>>> I can trigger the problem easily now running smartctl -c /dev/nvme0n1
>>> and doing a bit of IOs. It seems to happen when the IO and Admin queue
>>> use the same tag.
>>
>> So isn't it that you are getting a completion cqe for an admin queue command in
>> an IO completion queue ? Or the reverse ? Given how weird this NVMe device seems
>> to be, it may be a possibility. In addition to the command ID (tag), if you
>> print the cqe queue ID (le16_to_cpu(cqe->sq_id)), what do you see ?
> 
> Ah I can add code to validate that it's coming into the right queue,
> good idea.

If the completion really shows up into the wrong queue, a fix may be simply to
hack this code in nvme_handle_cqe():

	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
	nvme_end_request(req, cqe->status, cqe->result);

to use a different nvmeq pointer, that is the one that corresponds to cqe->sq_id
queue used for submission, which would lead to the correct tagset to be
referenced and suppress the false "duplicate" tag issue. Locking of queues/hctx
may need careful checking with such a change though.

> 
>>> I verified after the crash, going to MacOS and getting the log from the
>>> T2 chip, that the tag it complains about *is* the one that we happened
>>> to have used accross both queues at the point where it dies.
>>>
>>> Now, I am not that familiar with the tag management/allocation code,
>>> how hard would it be to split the tags accross the queues ? I suppose I
>>> could easily add a quirk to do +32 to the tags used on the IO queue...
>>
>> The admin queue has its own tagset (nvme_dev->admin_tagset), separate from IO
>> queues (nvme_dev->tagset). So I do not see how this would solve the problem.
> 
> I can easily do that by offsetting command_id locally to pci.c but
> doing just that didn't completely fix it. It just made it much harder
> to hit. I suspect they might also not like tags > 128, so I've added a
> hack to clamp the IO queue depth to 64 as well, it's still running,
> I'll let it run overnight (smartctl in a loop + dd's)
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
