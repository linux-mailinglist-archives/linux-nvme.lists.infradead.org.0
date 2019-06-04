Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5517F34DEA
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 18:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=J9IzGhGk2LBa9KhFSWZYjKc3Q3P9+m4KfXkV7nIibro=; b=AbUMywWNC4qosW
	3+txrHYUK/a7MXBX8BYyYQrrzdii3Fx3RUHXGGLrGaPthfmdBS3ZwOLN/R5wbz1qXPwuumh0jaGCH
	B70usTnwd/jGSuGrXFFgIKLgjArVcK4mMtRe3Kvffdp3kao+ARqZdKmXQjjg14f8tKOhoMZFpGGdO
	NnG5PbJZygY0jnoeZGFofCFQ2pzilhgEakV9HdDYi/+S4chLFOU5oRLgLU6+iemxrPZYN7moVjNmW
	148eYFlkO9qvnpJJLNApNJemVvv0drA2GA67Ccm4pFb+NGB1lSg9H0b7W5mIokFma/mO7ZfmvWHcO
	DGCyejQyaBOg5T9wxxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCZf-0000Bx-Hd; Tue, 04 Jun 2019 16:46:11 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCZa-0000BK-Of
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 16:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559666767; x=1591202767;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=oe01oc64PqOz+96Zy4/2MlQ9WE2buQcO+ZQQjanR4yE=;
 b=KolVP24EaOJGlkxE5youGzhDWvAwVUXy8bLxGk0paUJLt3BQy+xFaX6n
 UoZ4FbfwYPmvYmyTdYa/gMixupKK4Ui+j0VvddMLAOkYARw2iolQPrJJL
 yh/Zo8izlRZuoaxk6a/jXATA0oPMwAGyA48aWKMiiK8tef9iybPZQpY15
 53zW0qN/ej5WZhfqRSRanZGARcnnCT6pMj0k7q4E0F7dQiBgTQxC/eGBO
 iPV4LNo1azpIcSxjmLO2j15VssoBbOa0cwS+hMeTs3Kvi6phj4X4ni3zB
 RR7sokAb4I/dhLwEEYNYzy699gkKyrWU/97Q7K21eX3tjUKd4aMcqHvjU w==;
X-IronPort-AV: E=Sophos;i="5.60,550,1549900800"; d="scan'208";a="111462507"
Received: from mail-dm3nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.58])
 by ob1.hgst.iphmx.com with ESMTP; 05 Jun 2019 00:46:04 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Im6mphIddn9ECV3tqb+lzQBtBf98PtnIpg9RKtYro48=;
 b=sDuE245z+dQF6Ood8N1dy3D/kucJeHdtFqO01BH3AQIWR1cQkDT3wab/yLrUrXDcfLCN9oRNQjt276gcf3GOvcH5XkPaFcTZi8P9JK9kSElJK0wq7v24+Wm0m9U0GqD3D69BwLJVN2kfkh2SqcPgn/JODfOA3kyAo/TsgY5bFdw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4327.namprd04.prod.outlook.com (20.176.251.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Tue, 4 Jun 2019 16:45:58 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.023; Tue, 4 Jun 2019
 16:45:58 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
Thread-Topic: [PATCH 1/5] nvme: update list-ns nsid option
Thread-Index: AQHVFswvZdPx8Y1hckC3ed4FG/WDMg==
Date: Tue, 4 Jun 2019 16:45:58 +0000
Message-ID: <BYAPR04MB5749649DBE7DE55B665DBB9386150@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <BYAPR04MB57490F48796046F710BE786C86140@BYAPR04MB5749.namprd04.prod.outlook.com>
 <585d63b6-78dc-5b61-24f7-0c263cac9cd8@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:9442:bc4f:5548:5fba]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf0ba808-73da-49f4-c053-08d6e90c1ef0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4327; 
x-ms-traffictypediagnostic: BYAPR04MB4327:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB432736E65C904610F3FA397386150@BYAPR04MB4327.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:569;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(478600001)(229853002)(53936002)(6246003)(81166006)(8936002)(15650500001)(476003)(8676002)(110136005)(2501003)(68736007)(486006)(14454004)(81156014)(446003)(74316002)(25786009)(4326008)(54906003)(72206003)(6436002)(9686003)(7736002)(55016002)(33656002)(305945005)(99286004)(316002)(256004)(2906002)(186003)(14444005)(6116002)(5660300002)(7696005)(52536014)(71200400001)(71190400001)(5024004)(2201001)(102836004)(86362001)(64756008)(66946007)(66556008)(66476007)(6506007)(53546011)(66446008)(46003)(76176011)(76116006)(73956011)(309714004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4327;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: priGYtTSEXEboy2v43vSsE+Bbs+xlRF92qZXqtLqr9TeNyREJn0N3XsHbCBI4Q+6vsr7NinwmkLZ/gAHXarhap5pW83+/VSphZZWhMYsWsXwJgHJsd43ZvxjxwX/emcml0QUuZFATBl+zvPPDcfgDIuTBn+Etrxb/Cejt5x3SQN1x4KBtRmwfYVJYFkz16Rt+FkR5h2jf6xP/L0zA0wZGsviV9KYVpSbjLqqc33sEZHWq8Ghi7NcAGrOgFRIvrVoBV2pz4SP8hu44JQ+MJvzyRUJsl+RFIYEVrCj+TBP4nyzHwYCWuhJ37LLX58dEApdg2lKrlvqIQIUvS4+hpgKeazRq7UDn3SIZF/ECxXiScxcE0Casv38j0Axgtza5kVzkjH8AP/KRC43S3Eij02IL5cQs90pkzOuBYtFfPBM/u0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0ba808-73da-49f4-c053-08d6e90c1ef0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 16:45:58.6997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_094606_894192_DE388287 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "shlomin@mellanox.com" <shlomin@mellanox.com>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/4/19 1:57 AM, Max Gurtovoy wrote:
> On 6/3/2019 7:25 PM, Chaitanya Kulkarni wrote:
>> This patch overall looks good go me, except one nit.
>>
>> Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>>
>> On 5/30/19 2:43 AM, Max Gurtovoy wrote:
>>> This commit updates the optional nsid argument to define the wanted
>>> nsid for start, instead of starting from nsid + 1. E.g. in case we've
>>> wanted to get the list of namespaces starting from 1, before this
>>> commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
>>> NVMe spec, thus change it to start counting from the given nsid.
>>>
>>> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
>>> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
>>> ---
>>>   nvme.c | 18 +++++++++++++-----
>>>   1 file changed, 13 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/nvme.c b/nvme.c
>>> index 9819fcb..9d763f5 100644
>>> --- a/nvme.c
>>> +++ b/nvme.c
>>> @@ -950,9 +950,9 @@ close_fd:
>>>   
>>>   static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>>>   {
>>> -	const char *desc = "For the specified device, show the "\
>>> -		"namespace list in a NVMe subsystem, optionally starting with a given namespace";
>>> -	const char *namespace_id = "namespace number returned list should to start after";
>>> +	const char *desc = "For the specified controller handle, show the "\
>>> +		"namespace list in the associated NVMe subsystem, optionally starting with a given nsid.";
>>> +	const char *namespace_id = "first nsid returned list should start from";
>>>   	const char *all = "show all namespaces in the subsystem, whether attached or inactive";
>>>   	int err, i, fd;
>>>   	__u32 ns_list[1024];
>>> @@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>>   	};
>>>   
>>>   	struct config cfg = {
>>> -		.namespace_id = 0,
>>> +		.namespace_id = 1,
>>>   	};
>>>   
>>>   	const struct argconfig_commandline_options command_line_options[] = {
>>> @@ -976,7 +976,14 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>>   	if (fd < 0)
>>>   		return fd;
>>>   
>>> -	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
>>> +	if (!cfg.namespace_id) {
>>> +		err = -EINVAL;
>>> +		fprintf(stderr, "invalid nsid parameter\n");
>>> +		goto close_fd;
>>> +	}
>>> +
>>> +	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
>>> +				    ns_list);
>> nit:- Can we get rid of the new line for the last arg in above call ?
>> Can be fixed at the commit time.
> I did it to avoid getting more that 80 char line.
>
> I think the maintainer can do it if it's necessary during commit time.. 
> (or I can do it also. both work for me)
Let's leave it to Keith.
>
>>>   	if (!err) {
>>>   		for (i = 0; i < 1024; i++)
>>>   			if (ns_list[i])
>>> @@ -987,6 +994,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>>   	else
>>>   		perror("id namespace list");
>>>   
>>> +close_fd:
>>>   	close(fd);
>>>   
>>>   	return err;



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
