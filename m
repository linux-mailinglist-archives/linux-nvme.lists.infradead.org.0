Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2085C16114
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 11:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BGO5z/gwvQeFpgsPi8HgNn8MyWAHcqT7Z171UlH8FuQ=; b=iNKu0JbaW7IQzMhjUxUJ+GyG7
	cbifPl4UyadaeGt5tNgL9me0CLaxdk3JyW18EfKygWx8ebKw30DbwPaJ9CfbWm452o7J5OBg8KrWq
	aCB8Gbr86Gm9bMymcC8O0y6DlEx6XZtRT4W3ox62jLmIgfnuqiESewTQeT2J7NsE1XY9UFO7tjNUX
	xBzRwcrOT3EM+ks8b8CtJq+DTxockTxI66Ua8IArVketCX2cSIjmE/hQhGWInkFGQT89VNj6Jktfh
	hyrQSfSfrB/PU6ZMJt7OS9Z/7S0QxymXdzQp668djb2Vounc/TODMUQ/kyrhXA171KwFqM25N9Xh6
	vS0By6wVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwWS-0007Kr-Ci; Tue, 07 May 2019 09:36:28 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwWN-0007KQ-Bz
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 09:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyiT0kv3GAjkc/xo8q6JTQCoQlnh9cY+sV8/VN3nyi8=;
 b=A2Tlb4g+3kWIht34c+vRo7ZDREO6YabOmRsFfiJhpsQvXj8qYPoJRLQjxNbmKDRQt7uLEAWfuuc1n5vuUSQ7Zm6XTbzLbtUGd16j7mRnRfeVtCeK7BabUP0WswaCiVs743TlHuodk+3gf9utHMqjeI4TXbwVCYxAJ/4q09YFGYY=
Received: from AM4PR05CA0004.eurprd05.prod.outlook.com (2603:10a6:205::17) by
 AM6PR05MB6424.eurprd05.prod.outlook.com (2603:10a6:20b:bb::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 09:36:20 +0000
Received: from VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by AM4PR05CA0004.outlook.office365.com
 (2603:10a6:205::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Tue, 7 May 2019 09:36:18 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT041.mail.protection.outlook.com (10.152.19.163) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 7 May 2019 09:36:18 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 7 May 2019 12:36:17
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 7 May 2019 12:36:17 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 7 May 2019 12:35:32
 +0300
Subject: Re: [PATCH nvme-cli rfc 4/6] fabrics: add --quiet option
To: <linux-nvme@lists.infradead.org>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-5-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <58b674a5-a40e-c0b1-2b89-2fdc89d8efa0@mellanox.com>
Date: Tue, 7 May 2019 12:35:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190223023257.21227-5-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(396003)(39860400002)(2980300002)(189003)(199004)(2616005)(486006)(476003)(126002)(67846002)(6246003)(3846002)(6116002)(2906002)(26005)(31696002)(16526019)(77096007)(186003)(81156014)(81166006)(106002)(8936002)(8676002)(7736002)(11346002)(446003)(305945005)(229853002)(31686004)(336012)(86362001)(316002)(36756003)(16576012)(58126008)(5660300002)(14444005)(76176011)(356004)(47776003)(65956001)(65806001)(65826007)(230700001)(50466002)(478600001)(64126003)(2351001)(70586007)(70206006)(53546011)(6916009)(2486003)(23676004)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6424; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 386efd6c-df74-4998-a441-08d6d2cf754b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM6PR05MB6424; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB6424:
X-Microsoft-Antispam-PRVS: <AM6PR05MB64240C27D57561103120481AB6310@AM6PR05MB6424.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:22;
X-Forefront-PRVS: 0030839EEE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: YvSum07UKXBqd74Y8UwhQGv5uJ8FiEzfmvs16zcYoPyqNmatj7n6q3+5T+hBfIjJ6MWjxRpyTSaxENIGjeDDCqmO3uwceAe92ngvfc4yAwsaorvECbXQ0+vKyJYDl43r7iljzcF7ksxBemFMjBwOasPx+jDuOo4V3fI8ONmcmNada9JAp3thtEZ1LyHc4nW344EtdMBpa2c3HSdbA/hobXjAphDBMGbhMNPy2TcgD6eNGuZ7nAsklBPZYCtoFqV98wnNROd123banAJhvbJjcopxlliwg6LuQwU0dwrBhMrQqpWt+CnuD4j30fqrfWCOwPNzzc1nMsexyKY/C5kA194BWR3MLRKrooDQNf2kZxaB7hFlM75L4ffF3WHjLLf0DlPkkRvN0KguqQSR0PQL8a2iLkYK8QomXqXGTTqBXIo=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2019 09:36:18.5466 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 386efd6c-df74-4998-a441-08d6d2cf754b
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6424
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_023623_406800_DCEB43EE 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2/23/2019 4:32 AM, Sagi Grimberg wrote:
> Now we are going to have discovery log change events, so
> instead of trying to figure out which NVM subsystem ports
> are already connected, we let the driver do that and
> only suppress the failure messages.
>
> This option will be used by the discovery log change corresponding
> udev rule.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   fabrics.c | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index 702f928cd8ed..f08fe3f9a0be 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -66,6 +66,7 @@ static struct config {
>   	int  hdr_digest;
>   	int  data_digest;
>   	bool persistent;
> +	bool quiet;
>   } cfg = { NULL };
>   
>   #define BUF_SIZE		4096
> @@ -216,9 +217,11 @@ static int add_ctrl(const char *argstr)
>   		goto out;
>   	}
>   
> -	if (write(fd, argstr, len) != len) {
> -		fprintf(stderr, "Failed to write to %s: %s\n",
> -			 PATH_NVME_FABRICS, strerror(errno));
> +	ret = write(fd, argstr, len);
> +	if (ret != len) {
> +		if (errno != EALREADY || !cfg.quiet)
> +			fprintf(stderr, "Failed to write to %s: %s\n",
> +				 PATH_NVME_FABRICS, strerror(errno));
>   		ret = -errno;
>   		goto out_close;
>   	}
> @@ -840,6 +843,10 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
>   		/* already connected print message	*/
>   		if (instance == -EALREADY) {
>   			const char *traddr = log->entries[i].traddr;
> +
> +			if (cfg.quiet)
> +				continue;
> +

maybe if(!cfg.quiet) do a fprintf() instead of continue.

(and also example can be added to commit message :) )


>   			fprintf(stderr,
>   				"traddr=%.*s is already connected\n",
>   				space_strip_len(NVMF_TRADDR_SIZE, traddr),
> @@ -996,6 +1003,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>   		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
>   		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
>   		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
> +		{"quiet",       'Q', "LIST", CFG_NONE, &cfg.quiet,  no_argument, "suppress already connected errors" },
>   		{NULL},
>   	};
>   

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
