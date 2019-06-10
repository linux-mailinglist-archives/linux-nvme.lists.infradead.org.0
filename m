Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FBB3B0B4
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 10:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PJFhQxKtrwBuS4ppRxVLb9Vo/7+wUXqiVAlEWusJgRI=; b=tNMXmAp192Ua0QoGqRzSzgA0S
	EL3NClPxpeejWLIKucKIcPaxieTOPYTWU0ZoM0IxLZvOk38zoul9cgcncFUF+kkatLV0Xy95+qumF
	lGR/laTv+ASY5tvruJyYXRGF+hiq5MsBErk0YrmFNs8QJCGao50804WVZFjcmw4a6wXnybAL86Pxq
	CH9+UnQLfEqsYqHnFM5CDlpFiCvJQs0HPMOXinVEkGjyA2Ibt1Fl4TynwIwwUeCnQ+Xka/noh2WH6
	8EJNtNqSSoVs2qjOs+0sv//Muta7/C0HjU7mN7Lvhm4oKRDiS33ZfbhgEFDKtTrWbNwDWInrci3pi
	vUStYXcew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFaT-0003Yr-FE; Mon, 10 Jun 2019 08:23:29 +0000
Received: from mail-eopbgr50080.outbound.protection.outlook.com ([40.107.5.80]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFXl-0001Nr-FE
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 08:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yewIeGMlKT0hTaX3/7bLrjh3GJPfBYedgjQ5RxATM0k=;
 b=PokJWR5wlrMuVd+6w8G0Ei27a8f9BS5KrDpxH5RNf/5r8MgkO+gmqmdQQWXPnWACDEHLbUp/kch7e3rJ9img6rBKO0FXqQ1BRxFOv/on3xeE3KhTPIQC7ip+XxZRJfok3nKhd/ceO1zf16EtzUhydioB1xx2PJhSLskNpek4lk8=
Received: from HE1PR05CA0359.eurprd05.prod.outlook.com (20.176.161.18) by
 AM0PR05MB4978.eurprd05.prod.outlook.com (20.177.41.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Mon, 10 Jun 2019 08:20:37 +0000
Received: from DB5EUR03FT017.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::209) by HE1PR05CA0359.outlook.office365.com
 (2603:10a6:7:94::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14 via Frontend
 Transport; Mon, 10 Jun 2019 08:20:36 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT017.mail.protection.outlook.com (10.152.20.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Mon, 10 Jun 2019 08:20:36 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Mon, 10 Jun 2019 11:20:35
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Mon,
 10 Jun 2019 11:20:35 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Mon, 10 Jun 2019 11:20:33
 +0300
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
To: Keith Busch <keith.busch@gmail.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <CAOSXXT5tZa_hoybxbQRpYuOmQKki7gDCA7jcc4a4hfmDiJxp+Q@mail.gmail.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <f013edcf-c218-f2e2-2213-85d14688b2f1@mellanox.com>
Date: Mon, 10 Jun 2019 11:20:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAOSXXT5tZa_hoybxbQRpYuOmQKki7gDCA7jcc4a4hfmDiJxp+Q@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(346002)(136003)(2980300002)(199004)(189003)(47776003)(2486003)(23676004)(86362001)(67846002)(65806001)(106002)(65956001)(31696002)(50466002)(558084003)(81156014)(77096007)(6916009)(53546011)(26005)(8676002)(64126003)(81166006)(31686004)(4326008)(2906002)(76176011)(6116002)(3846002)(65826007)(107886003)(6246003)(5660300002)(305945005)(16576012)(8936002)(229853002)(316002)(7736002)(54906003)(58126008)(70586007)(70206006)(126002)(486006)(356004)(336012)(16526019)(186003)(230700001)(476003)(2616005)(11346002)(478600001)(446003)(36756003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4978; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fdcbd619-59ff-4ed9-30ff-08d6ed7c83e9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR05MB4978; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB4978:
X-Microsoft-Antispam-PRVS: <AM0PR05MB497833372457FD2ED0C8BA2AB6130@AM0PR05MB4978.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0064B3273C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: L6Ta4gliySBhmF5hK7XleXafj+bJBEgzBCx5IurXl4v3N1ByMRd1s/pYbN2zNZO4pWai2L6XUjeqVynMW/lMLI98hviEu4r/+N8mlYXmORN1ujnv9k8nXILAWeqx0mnF0q/Y9PAQEZKBFudV8kUg8mleYlqyxXG7953GiAM6gxINQ2RBcnYaXik05LK4EkHJ6n0F2G7EvNQWoeVCr9LDB9AzHiMFtOt2dyGVP5iLfc7cIqijRnurB69TamTnoZwwnsZsjtM+KtIdKtlN533s29tL+t2i6eOyhUKjvRBIAregdpQdG4fMZTCT6r13gX5hZcE9CuzN2u9S8167B3Ww0BLUYovu/zF91YyKJieh0fL09cftF48QRDHz6oVs504agU7aAqRvZIdWBQRiOiqMu6h+XZe5mIpa69iNS3ixYyc=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2019 08:20:36.1076 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fdcbd619-59ff-4ed9-30ff-08d6ed7c83e9
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4978
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_012041_791400_CCC14165 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>, shlomin@mellanox.com,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 6/7/2019 7:19 PM, Keith Busch wrote:
> I've applied the entire series. Thanks, Max!

Great.

Now we need to decide how to proceed with the original purpose of 
improving the "nvme list-subsys" cmd..



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
