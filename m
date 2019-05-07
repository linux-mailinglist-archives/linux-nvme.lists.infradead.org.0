Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B931609C
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 11:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qE9fxWsE1vYJv1GTFjmfNGOz7h+50uYZUTlhchkeqKI=; b=lSzNHv7Z/YVQcKBSQCPfIR6UK
	5aZQEduCaQEi2Vzh2MuoC1MzF190zTH9HejggAg3vBoRM3R6J9tE1ID9UzY96ZlnIgf210nCCMb1R
	MfZ0Pvd6ycY5hdyXop3kluLGCxeLhOUymVdn0kV/XOYRVbZuWMDrENqLnl7JJ99Og8E7AMNa70UM4
	oSF2SCwl3IzPyRup9aAk4FDQvbAMG2oNcO4JEHB6wUs3cWXlooNC1oWgnjtjhqhQvII8+Trlo6fGt
	0WdGr9AfMdhQsdshikksOmn82jPiQnnKCycw9Looep98KV6hPkI/izRgt+9FYXctrCpnIX03YAzGY
	Ram0x2qhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwEj-00036K-G6; Tue, 07 May 2019 09:18:09 +0000
Received: from mail-ve1eur03on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::622]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwDk-0001mA-Lt
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 09:17:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMbc3MAZotw6fbjXjLBrLRvRguWecq+YtEsGkkCifi4=;
 b=ptR3hQG8cy7AxJzR8y0RYnCI1nulCwE14nab2dBQiVzpnmItYZExfnTfumQzjj/Kv0D7pNGB9VbZmEkau6yo4fJHql2LFh5I1jAzV39v9aLc3A1dicrUq4WvqkKt3zhrC5SF+A6lGRSYrRWm7PpTHggsFdwc5+yd/BP8MLuywmc=
Received: from DB6PR05CA0024.eurprd05.prod.outlook.com (2603:10a6:6:14::37) by
 AM0PR0502MB4049.eurprd05.prod.outlook.com (2603:10a6:208:12::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.14; Tue, 7 May
 2019 09:17:05 +0000
Received: from DB5EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::209) by DB6PR05CA0024.outlook.office365.com
 (2603:10a6:6:14::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Tue, 7 May 2019 09:17:05 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT014.mail.protection.outlook.com (10.152.20.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 7 May 2019 09:17:05 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 7 May 2019 12:17:04
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 7 May 2019 12:17:04 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 7 May 2019 12:17:03
 +0300
Subject: Re: [PATCH nvme-cli rfc 1/6] fabrics: ignore arguments that pass in
 "none"
To: <linux-nvme@lists.infradead.org>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-2-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <cd812103-3023-4563-2be8-3d22e85e5389@mellanox.com>
Date: Tue, 7 May 2019 12:17:03 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190223023257.21227-2-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(2980300002)(199004)(189003)(316002)(476003)(16576012)(8676002)(26005)(11346002)(16526019)(230700001)(2351001)(356004)(70206006)(486006)(58126008)(23676004)(77096007)(70586007)(2486003)(2616005)(126002)(446003)(305945005)(67846002)(2906002)(31686004)(229853002)(76176011)(36756003)(65826007)(106002)(478600001)(31696002)(336012)(81166006)(186003)(81156014)(65806001)(8936002)(65956001)(6916009)(7736002)(64126003)(47776003)(86362001)(6246003)(5660300002)(53546011)(50466002)(6116002)(3846002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0502MB4049; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fcb0a14b-b745-436b-de2c-08d6d2ccc5fd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM0PR0502MB4049; 
X-MS-TrafficTypeDiagnostic: AM0PR0502MB4049:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB4049DAB8A055A2F5A986D6EAB6310@AM0PR0502MB4049.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:595;
X-Forefront-PRVS: 0030839EEE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: IZCH9bHr2XY2sJTdMWrkMhZPQSkhe5o8e1V/YMqo9nb5AomtjAboW+6nX+ywPxJJep2JA+5ljFzuJ1Zaw5Wpc1r4MSXlUgaMqVJIFezzUt9p4AUtixmcfKGvcj2xHrxvMMKLkHVDaW8CEte098t2uPe7VZZvHZfoQIX3ecgZ39RurXvytUZUW7tnT059s3L7Z1Vi+y8ZKAfOwiEqVW+SIk5A3rxrsYEvVN4Hz74N0zuBP3DHYW2wJ/f8S6p460MorKK3ox+KlbEd1Rhu36J4FTEsvaCR802q8txynFg4WoyZGWmfFoLTPruwS6CnD+z8asFWF5miyMhiTN1QTSGzqS5pR/yJXioIDRg9DePkKrdR8AiybF7/S3Pk3sRQ5Uyvyxiueeo1asRDFBmQzhKQaC0F6o8bE41vr4UsZQOO0qM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2019 09:17:05.4372 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb0a14b-b745-436b-de2c-08d6d2ccc5fd
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB4049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021709_348661_62E2D907 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:622 listed in]
 [list.dnswl.org]
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
> As we want to support discovery uevents over different
> transports, we want to allow the kernel to provide missing
> information in the form of none and have nvme-cli properly
> ignore it.
>
> One example is the host_traddr. If it is not set (which means
> that the default route determined the host address) we will
> want to do the same for newly discovered controllers.
>
> So allow users to pass 'none' arguments as well.

can you please add an example for the command in the commit message ?


>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   fabrics.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index f5cd2127db05..ad9a15e72070 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -565,7 +565,7 @@ add_argument(char **argstr, int *max_len, char *arg_str, char *arg)
>   {
>   	int len;
>   
> -	if (arg) {
> +	if (arg && strcmp(arg, "none")) {
>   		len = snprintf(*argstr, *max_len, ",%s=%s", arg_str, arg);
>   		if (len < 0)
>   			return -EINVAL;
> @@ -658,14 +658,14 @@ retry:
>   		return -EINVAL;
>   	p += len;
>   
> -	if (cfg.hostnqn) {
> +	if (cfg.hostnqn && strcmp(cfg.hostnqn, "none")) {
>   		len = sprintf(p, ",hostnqn=%s", cfg.hostnqn);
>   		if (len < 0)
>   			return -EINVAL;
>   		p += len;
>   	}
>   
> -	if (cfg.hostid) {
> +	if (cfg.hostid && strcmp(cfg.hostnqn, "none")) {

c&p bug here ?


>   		len = sprintf(p, ",hostid=%s", cfg.hostid);
>   		if (len < 0)
>   			return -EINVAL;
> @@ -700,7 +700,7 @@ retry:
>   		p += len;
>   	}
>   
> -	if (cfg.host_traddr) {
> +	if (cfg.host_traddr && strcmp(cfg.host_traddr, "none")) {
>   		len = sprintf(p, ",host_traddr=%s", cfg.host_traddr);
>   		if (len < 0)
>   			return -EINVAL;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
