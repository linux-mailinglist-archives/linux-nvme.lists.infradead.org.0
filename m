Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AFA160C4
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 11:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tY6XYpnK81OGz3s1LTBOJ/96SDrMGCf5ploO9XF2jmM=; b=mzRTGPAtpDVrbOuM+4MwLtBYY
	ZV0+JcNJGNgHfhXQyq8/DQ7N/yX3FeWDoPomI1SC7MPc0fXZm/wd8D6moRRjXkR0jhAJ/kxVys56x
	gXbAiZxS5fSl59KH3qF/fIich209PXFWDUlBGNTNmPEmyvIZ4TCleI0kdNTNHh+WT/SZ0T2F2MDbx
	FXU2b1PmNujfLk9NY0M6dt4QJsIVBZJXktsT7PhQuHMYxIjO+FTGjrNJUWZH59iARa+BlYPUmDGf+
	jnD5ah/OZGNtJHrsTydpfBz0qbDSRAZ+prbb/1rXfbWciWvXBlM3bhOmcsCEtNVSGYotCfJZDKsmq
	tOfXnG4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwJH-0007Cv-VT; Tue, 07 May 2019 09:22:51 +0000
Received: from mail-eopbgr30073.outbound.protection.outlook.com ([40.107.3.73]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwJD-0007CZ-HQ
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 09:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8rDycrcizX/Z5DkuUTP0RV4efOtECTDnpjKSRmGhYA=;
 b=Em5c6n7+/gY7EoWT0DJyegcZVveEektWEhG1rIkV0cEyBB2ZEA7H7u86u6T0B4NNCKQUWqmpVEjTBxBBSfdRn9feh6TQjBs6xxl9l/rZaBSHGx99QjafhGSX1SfCO0pePdhHheLE95hFHRBdYSTe17aJdgihPhgL2qXw1h3uqRE=
Received: from VI1PR0501CA0025.eurprd05.prod.outlook.com
 (2603:10a6:800:60::11) by VI1PR0502MB4062.eurprd05.prod.outlook.com
 (2603:10a6:803:25::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Tue, 7 May
 2019 09:22:43 +0000
Received: from VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by VI1PR0501CA0025.outlook.office365.com
 (2603:10a6:800:60::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Tue, 7 May 2019 09:22:43 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; suse.de; dkim=none (message not signed)
 header.d=none;suse.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT048.mail.protection.outlook.com (10.152.19.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 7 May 2019 09:22:43 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 7 May 2019 12:22:39
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 7 May 2019 12:22:39 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 7 May 2019 12:22:06
 +0300
Subject: Re: [PATCH nvme-cli rfc 2/6] fabrics: support persistent connections
 to a discovery controller
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-3-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d2900700-b933-2726-2d2b-89877c61e074@mellanox.com>
Date: Tue, 7 May 2019 12:22:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190223023257.21227-3-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(2980300002)(189003)(199004)(229853002)(36756003)(81166006)(126002)(7736002)(336012)(31686004)(11346002)(486006)(305945005)(446003)(478600001)(65806001)(2616005)(476003)(4326008)(2906002)(6116002)(3846002)(110136005)(16576012)(54906003)(316002)(106002)(65956001)(58126008)(47776003)(64126003)(16526019)(6246003)(53546011)(8936002)(186003)(81156014)(8676002)(77096007)(26005)(50466002)(67846002)(76176011)(230700001)(2486003)(70206006)(86362001)(23676004)(5660300002)(70586007)(31696002)(4744005)(65826007)(356004)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB4062; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e3cefd1-4ae1-4cb5-59fd-08d6d2cd8f79
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4062; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB4062:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB4062E3421A45481CA2E75325B6310@VI1PR0502MB4062.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:883;
X-Forefront-PRVS: 0030839EEE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 0iI0KT+L0WBi6GyCnzQFL0wU21XMDtot7ZazhxBOTxObwKcDfmmzAjieZv84xinj4UUOV7r8Ub7W6a+a0KKM5TE2wvkXSYQ7vbwB1TW1n229kUAm7+eSG0jivRT8HJYepKDu14xkFdGbQg9DaULvgJU+N6tU3wtRtM2SAhdi+hsSUdRrcZ7Kvwj6qweXqYfF3raN0KKQLm3/x3FXlVhVh2TnV/BI+OW1N1l95ktN9DIHpN/ii2lHR1tk2ogZmZLie8ncU/B6Ogkl/FYqtvSGaun2htMVVOpnTFQ7a2filUfIDm/BeMcYPmecZo5p7bVqVUnWC99eFuNMe2Hm8bWqTEspu5+nWiSBfcKjz5qzL7R+rqPqN8TLy5f8Kr1L55ODet1GwQHmY9dD2w2VzFjeWXahn5/acDy6T1FhmUYwbWI=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2019 09:22:43.3985 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e3cefd1-4ae1-4cb5-59fd-08d6d2cd8f79
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_022247_572061_6E8CC613 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.73 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2/23/2019 4:32 AM, Sagi Grimberg wrote:
> Simply don't destroy the discovery controller after getting the
> log pages. Note that persistent connection to a discovery subsystem
> require to pass in a non-zero kato value, so if not provided we
> simply use a default of 30 seconds kato.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

same here for example of the command line.

otherwise looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
