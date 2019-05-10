Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40E61A2D9
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 20:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cB5bkLRdqS2AhDXKQNfX3RcpFnbnQvWWKg+y86BcIlU=; b=J4ER7XyWP5xT20
	eQohTH+Zf/yMIoFY1Zd6LMTNYHsgrgKq4EgUNfa48Vpz6NqFa83UDQ/I2BxPmNJaPrSgCMYluukux
	GRvp4x+56L5tpCTFYAiTvZDbfO4JPbm4zcwoX2UlfW5ARR8ELreJW6pHXFm+BJqdpEwU/Ho6+jP6d
	LIn6XxcvFfqYdxLB7b3t/0NwLwbfE2VXcKXz85bN4h/3nHh/2iLCoILfkihLs0flI03JjMzJjgaW8
	FlxyenTF+ocwndnNEwBV4Golh2aKw6wMrZCRvs4UjThrBYLWt8hyiL4XI6JuoZca7b8v5sZ8qEAaN
	IDnUIgdkO5QFkiVTzAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPA0O-0006JY-Oy; Fri, 10 May 2019 18:12:24 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPA0J-0006J7-6n
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 18:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557511940; x=1589047940;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=e7J/SwLEEsRQqYlQvbOwiI2h+XQO0d8U3B9A0Axt6oM=;
 b=qg27m9PFnn/erwL0Iixdko3a/ocOVzzsRsU3yopLRhzhIcr0lnYuiNP/
 izBw/HRoc4/QV7t3K5xE8wufz/mLMYKrC1IZ32OZYwYo1kx1Zh6boIG3N
 +U5vY1FAy8nAtRYsbYFz3a03UR+abVBrXoGY6yPZuYeCv3aYZmtHNgPqk
 oW93SgaR7tqOiFxsU4NweLfZqb6pCRBnZib/z3Y7iLQoug48lhmmEIHu2
 lxCs4jjDoCRQGaTsHoPyWontFIlkvfpRIzpj7SB+6E/QKX8CP2SxJV/q4
 6GaNpZOZWDxN5yxINsmJZ7d00Sbf6UNTa/usnUmDClHHWTUMZp7+/DxzT A==;
X-IronPort-AV: E=Sophos;i="5.60,454,1549900800"; d="scan'208";a="112947776"
Received: from mail-cys01nam02lp2050.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.50])
 by ob1.hgst.iphmx.com with ESMTP; 11 May 2019 02:12:18 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQN+ThFflXFXOX+klfBVTsiu5RQYrurtLRKhT59qRMY=;
 b=J1wWA0kJALs/s5Z4pkAWdoWkQoVYxNMseBfayfF1xORyvNx5htnqWLGwLVmDt5UJDFFE2b1YgfMZJxbVJkMBjLJB0idPbP6/rkd+z+cdWQdKIqGS+1jXaqw8Dq5vaVZNLYxRc0vjPP19sKkRMw8jgQbsus1hD9FGx1o7IZ/j7Ww=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4847.namprd04.prod.outlook.com (52.135.122.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 18:12:14 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Fri, 10 May 2019
 18:12:14 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: John Donnelly <John.P.Donnelly@Oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
Thread-Topic: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
Thread-Index: AQHVAbVyFI2aZaG8d0COLcvDkmxGHQ==
Date: Fri, 10 May 2019 18:12:14 +0000
Message-ID: <SN6PR04MB45274F1821B5D809E34AE9AF860C0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-3-hare@suse.de>
 <6e3b55d1-abfa-a67b-f2d4-fe083f3ce37c@Oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a12e485a-68f0-4c6a-6de7-08d6d5730770
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4847; 
x-ms-traffictypediagnostic: SN6PR04MB4847:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB48473F8D2B96F0B50933B6DB860C0@SN6PR04MB4847.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(39860400002)(396003)(136003)(376002)(189003)(199004)(55016002)(26005)(186003)(66556008)(64756008)(66946007)(66476007)(73956011)(6436002)(68736007)(6306002)(71190400001)(76116006)(2501003)(91956017)(229853002)(33656002)(66446008)(9686003)(7736002)(71200400001)(446003)(486006)(476003)(66066001)(110136005)(305945005)(6506007)(72206003)(25786009)(14454004)(8676002)(8936002)(7696005)(74316002)(14444005)(99286004)(256004)(316002)(86362001)(966005)(2906002)(81166006)(81156014)(6116002)(3846002)(478600001)(102836004)(5660300002)(53936002)(6246003)(53546011)(76176011)(52536014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4847;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OoilmYjtvwTZ2Eyc4DH+itYj+sy9T+YuGmUwyFxZxzmujaY4d/fRiPu7RKcSr5Htz+8wdOsHYFI3OaSYf8aecVBTUuXdB4wuJhrl3vLNwqE3U0BY/VDqcx7W0v0uV7e8NMmeorRQMNxMaqHlqJ219vYRpsSd0Hdeo7LKnluTkNfPmNMdwoWWI3a56Hp9WmK65siZZ3Y25HYUKPq3nG3PogrKbuf0Wd8jx54M09y/UXOtuKgmP80WK46coIHfznHxd96AhkIzmuVVnDc3sOIU9rxqPVbu3SO27ONAsJ5oPwCMehmZhd9l/evOD3EWQpH2xfvrrbpVbGYpjOUlJ+OJetmGkRkIpP6LcHFi1v4K/CEhnUqunrEQl8aFVzOJXtsMY+3hteplOG9wv40Zx/IOuBdpXLNAumpeLMhoW7TsW3Q=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a12e485a-68f0-4c6a-6de7-08d6d5730770
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 18:12:14.0676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_111219_267925_97849897 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks John for reply. If you are interested you can always add tests to 
blktests framework here is link of the project :-

https://github.com/osandov/blktests.

On 05/10/2019 07:52 AM, John Donnelly wrote:
> On 5/3/19 8:37 AM, Hannes Reinecke wrote:
>> From: Hannes Reinecke <hare@suse.com>
>>
>> The CNTLID value is required to be unique, and we do rely on this
>> for correct operation. So reject any controller for which a non-unique
>> CNTLID has been detected.
>>
>> Signed-off-by: Hannes Reinecke <hare@suse.com>
>> ---
>>    drivers/nvme/host/core.c | 32 ++++++++++++++++++++++++++++++--
>>    1 file changed, 30 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index cd16d98d1f1a..dc74f7ba6f4a 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -2358,6 +2358,23 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>>    	return count;
>>    }
>>
>> +static bool nvme_duplicate_cntlid(struct nvme_subsystem *subsys,
>> +				  struct nvme_ctrl *ctrl)
>> +{
>> +	struct nvme_ctrl *tmp;
>> +	bool ret = false;
>> +
>> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
>> +		if (tmp == ctrl)
>> +			continue;
>> +		if (tmp->cntlid == ctrl->cntlid) {
>> +			ret = true;
>> +			break;
>> +		}
>> +	}
>> +	return ret;
>> +}
>> +
>>    static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>    {
>>    	struct nvme_subsystem *subsys, *found;
>> @@ -2411,6 +2428,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>
>>    		__nvme_release_subsystem(subsys);
>>    		subsys = found;
>> +		ret = 0;
>>    	} else {
>>    		ret = device_add(&subsys->dev);
>>    		if (ret) {
>> @@ -2434,10 +2452,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>    	}
>>
>>    	mutex_lock(&subsys->lock);
>> -	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
>> +	if (!nvme_duplicate_cntlid(subsys, ctrl))
>> +		list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
>> +	else {
>> +		dev_err(ctrl->device,
>> +			"Duplicate cntlid %u, rejecting\n",
>> +			ctrl->cntlid);
>> +		ctrl->subsys = NULL;
>> +		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
>> +		nvme_put_subsystem(subsys);
>> +		ret = -EINVAL;
>> +	}
>>    	mutex_unlock(&subsys->lock);
>>
>> -	return 0;
>> +	return ret;
>>
>>    out_unlock:
>>    	mutex_unlock(&nvme_subsystems_lock);
>>
>
> Hello,
>
> I am interested in testing this series when they are finalized. I
> believe I have a test scenario for it that was discovered using the
> recent nvme-cli.1.8.1 release.
>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
