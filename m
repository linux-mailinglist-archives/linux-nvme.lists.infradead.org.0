Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0A7184F6
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 07:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0cJbQEGDMGuwa602ntotrJAuYF2RLyWf+IS8myWeuL0=; b=Q1Gn58e+mpMIO7
	tja6VYK7a/Xy1jKASszJM6V7+qlr0jxoUR/GJe1nCO2Awf8OsQ8uIWKhCAHmj7gLdDhTXADJGvsgk
	AjQ2S0DCfSsIiIZpca4YaLSC11b0qPop6A2qs90u9Q2pgCeu0++uNZ8+QDp+991XXMhQEkyO1Bcy2
	r6u1RMdJ491ZZi3COPd2E3pygf/SMcYY4C43tVsLea3aDdPa2pOrvDj18e45Ym9CHRSXVkdzbYPPS
	c0hmj1KsC6sfPf68s2LCcC/NfM7AASeIz8HavqHYx2Cb/kdpNldHl/j2VbqLgfuwovqy7cgHptyjQ
	wf6yboklte0agOHQSmqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOby8-000143-SM; Thu, 09 May 2019 05:51:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOby3-00013R-Jo
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 05:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557381103; x=1588917103;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=IhJAxN6mgT8IPYw3b82QbDmMSDWJiijA4EA4Sa+mG3I=;
 b=a3cBOxc6hb1l9exwaSeAIfif68JCBswYR4FCYhO8WjVaKRDuR/BC/krc
 SuT6P4FkNAX/ilKOVkbzBwN7NWWy5ch5uo+1WR7WAgnbN3tKT6LtJsRnL
 5i6B74zS694917Vqv5YjqzSUfAkDMsGKTpIxGofzLjrg/HVHchpYRfCYm
 mbT7vRM/FhAZzryaTx86CPN4g27npfzml/tu7QupkU7Ax6SE3Fb482pSK
 kpG/QC7PmW275YBjqXLn3hDkXCyqDTr5JEqIjplAWaPA+KgvHk4YylayP
 W6I+46D+PJi9UGbdm4MzaxxvMlyiTSVMiF++U/gyamJpWZ5Btp55hXy4h g==;
X-IronPort-AV: E=Sophos;i="5.60,448,1549900800"; d="scan'208";a="107861922"
Received: from mail-dm3nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.50])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 13:51:40 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwLzioC5hqtC/3ZGgmW1lAGhsRUq/PDHVoM851BrC4g=;
 b=MKmzLEbqTP8lAoZIFMF8k0G2EWnvGzBWj0TfMqUhPBUmJ6YeFhEgQia62Jjs4cfsWxLUxxoI2kb0zuPEAUsBGNB/Osw4UiApondKoV08HCrNuVwez2n81dLCXb02yZRDv9Gj/8V0ZHSIRJFm4IM9SsiewIcgRz/2vyjgMtiXe3w=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3839.namprd04.prod.outlook.com (52.135.81.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.14; Thu, 9 May 2019 05:51:38 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 05:51:38 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Thu, 9 May 2019 05:51:38 +0000
Message-ID: <SN6PR04MB4527510BF05DCBF27E0B6D2F86330@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
 <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <CAA7jztfU+AdUHp5xo8ssjgvXiBFBXJt0PyQTNA8VQU-T-SpKQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:eee9:536e:c194:4e76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a5b32db-f531-496f-8f2f-08d6d4426780
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3839; 
x-ms-traffictypediagnostic: SN6PR04MB3839:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB3839096D446B966B987751FE86330@SN6PR04MB3839.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(52314003)(46003)(478600001)(53936002)(5660300002)(72206003)(55016002)(966005)(9686003)(6436002)(68736007)(71200400001)(71190400001)(6306002)(256004)(14444005)(4326008)(14454004)(229853002)(6916009)(6246003)(25786009)(53546011)(6506007)(6116002)(91956017)(52536014)(73956011)(66476007)(66556008)(64756008)(66446008)(186003)(102836004)(486006)(76116006)(446003)(476003)(54906003)(7736002)(316002)(99286004)(7696005)(305945005)(2906002)(66946007)(74316002)(81156014)(8676002)(81166006)(8936002)(86362001)(33656002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3839;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m5+a/rZAbZI1hkt7CP3qtUgvOqrmcsUHjgGQbX/nOTU/UiuYaUnNx60AQgnBJ+KE4/GswLCUwwIoC4bSnVUx0YwKuc6tfrORku96DA1cN0bnty1OCJ5RwgzJmGYWjAIq9cCzwNLlVZbz9dZqHW3HRPf0OJGHO+CUeu0IaZiKcryDVEPSrXUsaF38rKV02P/9zX4iuK7OtJiGbccXRQvdedfEJYUFid3YU2V/ggY5PG4wAEe1wEDo5ul69nZExXtQtyLNLj+CrKLtpyDqvz1E/2plKpLTfsqPo10KX6X14GhVW+ZJpF0ic/b7kmx3HJAyeMXgmYH1VdAL5/6aGDSzpm5mD6CvImuaoxFJGKYnmCM7JaH/LDL2OP1d5R+sLobfmvAtqh2+5CT6TjmHS0XObeLtGniZHx4dh2D0iqDW1fM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a5b32db-f531-496f-8f2f-08d6d4426780
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 05:51:38.7621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3839
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_225143_723145_9B89E6D2 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
 Keith Busch <keith.busch@intel.com>, Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/6/19 4:24 PM, Minwoo Im wrote:
>>>> I wasn't clear enough.
>>>>
>>>> It doesn't check for the return value for now. What needs to happen is :-
>>>>
>>>> 1. Get rid of the variable strings which are not part of the discovery
>>>>        log page entries such as Generation counter.
>>>> 2. Validate each log page entry content.
>>>
>>> Question again here.
>>> Do you mean that log page entry contents validation should be in bash
>>> level instead of *.out comparison?
>>
>> It has *out level comparison.
> 
> I'm not sure I have got what you really meant.  Please correct me if I'm wrong
> here ;)
> 
> First of all, removal of variable values in the result of the
> discovery get log page
> looks great to me also.  Maybe those variable values are able to be replaced
> a fixed value like port does (replace port value via sed command to X).
> 
> But, it also depends on the outout of the nvme-cli, not return value.
> Anyway, let's discuss about it with Keith also because he discussed it with me
> few weeks ago,I think.
> 
>>>
>>>> 3. Check the return value.
>>>
>>> nvme-cli is currently returning value like:
>>>      > 0 :   failed with nvme status code (but the actual value may not be
>>> the same with status)
>>>      == 0 : done successfully
>>>      < 0 :   failed with -errno
>>>
>>> But, ( > 0) case may be removed from nvme-cli soon due to [1] discuss.
>>> Anyway, if nvme-cli is going to return 0 for both cases: success, error
>>> with nvme status, then test case is going to be hard to check the error
>>> status by a return value.
>>
>> This should not happen as it will break existing scripts which are
>> written on the top the nvme-cli in past few years.
> 
> Agreed.  But, please refer the following comment below ;)
> 
>>
>>     It should be with output string parsing which
>>> would be great if it's going to be commonized.
>>>
>> No, we cannot rely on the output string as this problem is a good example.
>>
>> I'm not sure returning == 0 for error case is a good idea. Checking
>> return value prevents us from writing unstable testcases which are bases
>> on the text output and allow us to modify tools as specification moves
>> forward.
> 
> Please refer a discussion on https://github.com/linux-nvme/nvme-cli/pull/489
> Keith and I had a discussion about the return value of the program itself.
> The nvme status value is composed of 16 bits value, by the way, the actual
> return value of the program is in 8bits(signed) which means it's not
> able to carry
> the actual nvme status value out of the program.
Isn't this unsigned ? as pointed out by Keith ?

$ cat a.c
int main(void)
{
	return -1;
}
$ gcc a.c -o a
$ ./a
$ echo $?
255

May be I'm missing something here ?
> 
> If you have any idea about it, Please let me know.  By the way, I really do
> agree with what you mentioned about the return value.  If it's possible,
> I would like to too :)

How about we instead of returning the NVMe Status we map the NVMe Status 
of the program to the error code and in-turn return that error code ?

The above is true only when command is successfully submitted from the
program i.e. no errno is set by any library calls and failed in the 
completion queue entry with NVMe Status != NVME_SC_SUCCESS.

For your reference In kernel we already do this detailed mapping where :-

1. Please refer to the drivers/nvme/target/core.c file where we map the
errno_to_nvme_status(), the reverse mapping of that function can be done 
with nvme_status_to_errno(). Of course you will have to add more cases 
and do in-detail reverse error mapping from NVMe status to errno and
return that errno.
2. nvme_error_status() we map NVMe Status to block layer status.
3. blk_status_to_errno() we map the block layer status to the errno.

With the help of 1, 2 and 3 you can reverse map the NVMe Status to errno
and add that mapper function for nvme-cli which will be consistent with 
the kernel NVMe status to errno mapping.

Now you might find some cases where you cannot map all the status codes 
to errno and for those default cases you may end up using something like 
EIO, this is still better way than having to return 0.
> 
>>
>>> [1] https://github.com/linux-nvme/nvme-cli/pull/492
>>>
>>
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
