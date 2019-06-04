Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D93426D
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 10:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CIZsa18xLReuXzDOrI/ZqiJbrOP9C9oPEzbgptIO08U=; b=ljvm+pae1YZTOhqsCPBtJoZge
	tpyRkBsHMAjOLaOO6vRWzlN6L8SFomreCKwiKRXb6nxTteyPA581VeL0U2x0AbH+Snn21Y5lm6RxU
	4bI0RByVFOkoVYxkqiOjEFtthkcpIcckTptKaEw9qBPAo5qoISHfK+eFJ7Pvize2Soh/U6oa0e4pe
	uZVvUT/L3eFfz1ZKqWUJ/QxCtxHGOImcPLoiMTwHLrCd0tn0XnE8ZLQbWq8+4ydJRUDl7q0AAFgul
	4f6zB41o58mHyHwCOusQv56fOi7gvrGT4yx94Zx8vzMSCcr4BY+bJhJ4Ol2m5vaRvvhAlC9oh/Rdd
	++dO7zSpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5Fy-00075c-3F; Tue, 04 Jun 2019 08:57:22 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Fg-0006oB-7a
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 08:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eqlt2Q2VFkrUi2nWJ7DE2uphfZgYZBPRcRQkl5ighu4=;
 b=cyU2Xgc6errAelMkQhKakGt8qhTOv//fCvBbr4JYtYQm/FmL7Tp+3pOx+AmcmG57xyQldSxgCtFKbtmg4PxbLq3Xkxw0ycIx1jUzYF75LwuUFTSFcFLAhH4QGAeEsqSoTrhVu1v9eh6lIS1qWJDnvhBRUSb30zAL8tV5yuDEyqE=
Received: from DB7PR05CA0002.eurprd05.prod.outlook.com (20.178.85.143) by
 DB6PR0502MB3014.eurprd05.prod.outlook.com (10.172.248.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 08:56:57 +0000
Received: from AM5EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by DB7PR05CA0002.outlook.office365.com
 (2603:10a6:10:36::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.17 via Frontend
 Transport; Tue, 4 Jun 2019 08:56:56 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT012.mail.protection.outlook.com (10.152.16.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1943.19 via Frontend Transport; Tue, 4 Jun 2019 08:56:56 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 4 Jun 2019 11:56:55
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 4 Jun 2019 11:56:55 +0300
Received: from [172.16.0.17] (172.16.0.17) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 4 Jun 2019 11:56:28
 +0300
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, "kbusch@kernel.org"
 <kbusch@kernel.org>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <BYAPR04MB57490F48796046F710BE786C86140@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <585d63b6-78dc-5b61-24f7-0c263cac9cd8@mellanox.com>
Date: Tue, 4 Jun 2019 11:56:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB57490F48796046F710BE786C86140@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.17]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(346002)(396003)(2980300002)(199004)(189003)(47776003)(6116002)(3846002)(53546011)(5660300002)(86362001)(2616005)(65806001)(229853002)(65956001)(8936002)(316002)(76176011)(50466002)(16576012)(4326008)(7736002)(70586007)(476003)(6246003)(31696002)(67846002)(126002)(110136005)(64126003)(8676002)(70206006)(5024004)(14444005)(58126008)(81156014)(54906003)(486006)(2201001)(81166006)(2906002)(336012)(446003)(186003)(15650500001)(356004)(230700001)(31686004)(305945005)(23676004)(2486003)(16526019)(2501003)(65826007)(106002)(508600001)(77096007)(26005)(36756003)(11346002)(3940600001)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB3014; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab791ef2-6009-4598-79fe-08d6e8ca9904
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0502MB3014; 
X-MS-TrafficTypeDiagnostic: DB6PR0502MB3014:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB30144B49E2DF6DA2132FEDECB6150@DB6PR0502MB3014.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:569;
X-Forefront-PRVS: 0058ABBBC7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 8vLpp9zvL0sV2rWnPxCHSdVY1if6+RjTDIBTwueikfdpDTwRCsjTDAE/A1HTw/RSPVUW3zvypLivjIQVvXaqnuUAFarHzESClBwqxiEbe3PpPJoeNTxBh8dmu+AL2i/QkH6bN0xMrMr/VA5EtXJEfuEX4FeGKC3oh5fQAAjCJyE2NEUPuEFWGKWqIvuskfG/CYRZRo6MxlaCcehXLm7bGCK/rJ3PVo4eCwSBP7WsQ/lOaPnEtRWr50PvLMLYPPj1cSTEja5tz1Jp/GC5sSGmq3Kdpv+jhx6jQz72OnHq3W8iXGX2pGeu0HdZa89h+lvUVhPZlYk6EiRKlFLLAQx17EQ/xCVnm9iYClMhxPt+i0/ObgLn3CS+GHR/shfM4GLhexJguA2jVDgPPHioO0XcaxPBZzzdXw/ewo8+4ZOUzH4=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2019 08:56:56.5397 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab791ef2-6009-4598-79fe-08d6e8ca9904
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB3014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015704_578110_6A622621 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 6/3/2019 7:25 PM, Chaitanya Kulkarni wrote:
> This patch overall looks good go me, except one nit.
>
> Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>
> On 5/30/19 2:43 AM, Max Gurtovoy wrote:
>> This commit updates the optional nsid argument to define the wanted
>> nsid for start, instead of starting from nsid + 1. E.g. in case we've
>> wanted to get the list of namespaces starting from 1, before this
>> commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
>> NVMe spec, thus change it to start counting from the given nsid.
>>
>> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
>> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
>> ---
>>   nvme.c | 18 +++++++++++++-----
>>   1 file changed, 13 insertions(+), 5 deletions(-)
>>
>> diff --git a/nvme.c b/nvme.c
>> index 9819fcb..9d763f5 100644
>> --- a/nvme.c
>> +++ b/nvme.c
>> @@ -950,9 +950,9 @@ close_fd:
>>   
>>   static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>>   {
>> -	const char *desc = "For the specified device, show the "\
>> -		"namespace list in a NVMe subsystem, optionally starting with a given namespace";
>> -	const char *namespace_id = "namespace number returned list should to start after";
>> +	const char *desc = "For the specified controller handle, show the "\
>> +		"namespace list in the associated NVMe subsystem, optionally starting with a given nsid.";
>> +	const char *namespace_id = "first nsid returned list should start from";
>>   	const char *all = "show all namespaces in the subsystem, whether attached or inactive";
>>   	int err, i, fd;
>>   	__u32 ns_list[1024];
>> @@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>   	};
>>   
>>   	struct config cfg = {
>> -		.namespace_id = 0,
>> +		.namespace_id = 1,
>>   	};
>>   
>>   	const struct argconfig_commandline_options command_line_options[] = {
>> @@ -976,7 +976,14 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>   	if (fd < 0)
>>   		return fd;
>>   
>> -	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
>> +	if (!cfg.namespace_id) {
>> +		err = -EINVAL;
>> +		fprintf(stderr, "invalid nsid parameter\n");
>> +		goto close_fd;
>> +	}
>> +
>> +	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
>> +				    ns_list);
> nit:- Can we get rid of the new line for the last arg in above call ?
> Can be fixed at the commit time.

I did it to avoid getting more that 80 char line.

I think the maintainer can do it if it's necessary during commit time.. 
(or I can do it also. both work for me)


>>   	if (!err) {
>>   		for (i = 0; i < 1024; i++)
>>   			if (ns_list[i])
>> @@ -987,6 +994,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>>   	else
>>   		perror("id namespace list");
>>   
>> +close_fd:
>>   	close(fd);
>>   
>>   	return err;
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
