Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D2A829BA
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 04:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k1bIQUla5BVFUODVvXtDxk4NSPr/dcG84Hj3YPdng4o=; b=gDNOIW9jenMGVEHKHYzMRAlUU
	nk9dXrcELho5IJOFsMyGj3PrVt8N3GVNNKktTYUoeR6g8gpJTo77eiCD7IKUoA7H6sC9QHZAEOONM
	XZNAtvZTzIG+eLWCTIiH6fgmWt7iTSVJxtw8NDWucRdoBthmIHjoRiQw990dMaXS3H/e3wfAy47an
	5WMGRO2JoQbE9eCnCopiBJAUErHdFwzxArjM2FldLQ1k+Txhe7GcJU1hnnAsdKnpATVc7esRY9ie2
	EkrxkwpFGjXt0RNQdJtjsqe/qveBCIxXcghDUKPl/rpQYK1/UPOkOzw5+5xx6QiYOPmupJqNvZUz4
	1wdXFwp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupQg-0004ij-72; Tue, 06 Aug 2019 02:42:26 +0000
Received: from mail-eopbgr40067.outbound.protection.outlook.com ([40.107.4.67]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupQa-0004iH-2Q
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 02:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNP1JgfAGRqqXbDhfYG+ZczTePT+GbbJeto5X9N3O4nBKF1c4B3Wp9Y0S1rqC8FCXKFNR7hdqbTrRjgZZ9+OHrH5Z+65AhQgAgIOqki6V3+nxZBwsQPML1PAPLwIwXTPuWoPNz8jVdgR96pQv0dZ5BlO61+X5vlTxWPFi4ctEFvQsNGpvMqNvfwKoUHw4Vavu9sHgrOMbr9VM18z23i8Cq9hgFYzbuAetqk0TWrXQQqqqx7MMb8Ezz5kNpGmupukQphSK9/Bl24RZCSdELV2z07rVc0UM6VXLmXDLUoY9GusJ7y7YjyvlotmnTnH9quCuzOlZqdwUYpn8V7YFrnCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EUFYWfVHhU6h2nBkUJjg9vqgpvKiCpuPjSUkTVtUNPU=;
 b=Oq7dtOKOmKlBKjRe2pkQPdgKDYzmUwoM6MRHB42H5OCtsGOQU1evMHm9lKvDjXpJ16Pc7vUr/Sf9/Yp2F4GZ1emUb+s0yhAI0giaQi/+/JFR+/rVXUL2TcCvQYI/kQGXRQYYcQmJvoImgmdSFTnzg9D/0+Ln5xX7LCt2YaIYrUfONduyp5pJblMdLdpptGBCrM9BrNct3wYs+ZD+ojgzjUF6qIVtrvro+49H8gJKAY7qqeggpcBGesPNJ54tKGS/OSNaFiQOX87GQICTqzStV7ywdBw8Qrck7+buO1oTLEDRQ6SYYIHp4xa+Bi9WoUPxu8Lszm3tGNK1ybMH+pt5Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=grimberg.me
 smtp.mailfrom=mellanox.com;dmarc=pass (p=none sp=none pct=100) action=none
 header.from=mellanox.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EUFYWfVHhU6h2nBkUJjg9vqgpvKiCpuPjSUkTVtUNPU=;
 b=fo2+KdnuW1TFGXKuXY6ewRMvK/YqATQr5SAqhTQhoWB7ZhXH1EuMw/MbyhaJcKOJCzyQqYHPEFTAhhpBifZkh+lxjLWd8Ns1RUhgJJb0KrMNH4TBH+OtkVp5iM7gfDiOdolTsd+sPdTVaptZkQeZw+JxSPmb69VrWLiqv4a81aI=
Received: from HE1PR05CA0220.eurprd05.prod.outlook.com (2603:10a6:3:fa::20) by
 AM5PR0502MB3092.eurprd05.prod.outlook.com (2603:10a6:203:95::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.12; Tue, 6 Aug
 2019 02:42:17 +0000
Received: from DB5EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::209) by HE1PR05CA0220.outlook.office365.com
 (2603:10a6:3:fa::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14 via Frontend
 Transport; Tue, 6 Aug 2019 02:42:17 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT044.mail.protection.outlook.com (10.152.21.167) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 6 Aug 2019 02:42:16 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 6 Aug 2019 05:42:16
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 6 Aug 2019 05:42:16 +0300
Received: from [172.16.8.22] (172.16.8.22) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 6 Aug 2019 05:42:14
 +0300
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>, Linux-nvme
 <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d6ef0513-b271-6cb4-b1fb-aaed071cab91@mellanox.com>
Date: Tue, 6 Aug 2019 10:42:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-Originating-IP: [172.16.8.22]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(2980300002)(199004)(189003)(8936002)(558084003)(26005)(6116002)(186003)(58126008)(65956001)(54906003)(3846002)(36756003)(76176011)(486006)(81166006)(23676004)(2486003)(68736007)(478600001)(2906002)(5660300002)(65806001)(316002)(65826007)(16526019)(16576012)(106002)(67846002)(31696002)(8676002)(126002)(336012)(81156014)(476003)(2616005)(47776003)(11346002)(446003)(50466002)(305945005)(31686004)(7736002)(6246003)(110136005)(230700001)(86362001)(53936002)(70586007)(229853002)(4326008)(64126003)(356004)(6666004)(70206006)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0502MB3092; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 373c591f-cc9b-40b7-8240-08d71a17b1f5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0502MB3092; 
X-MS-TrafficTypeDiagnostic: AM5PR0502MB3092:
X-Microsoft-Antispam-PRVS: <AM5PR0502MB3092042EBAA83DACD717F0B3B6D50@AM5PR0502MB3092.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0121F24F22
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ynp7P6uKDWVL8R3jRGM/EOcVwyGyADbALuZtAcQTwL+myPffM2YMnclk9fAcO0+yw+v04gTm6Tiqqq9jXIaZ7O8Y12vdg3OW7PYSLpxUS16A9piz1t8TTmMtS10InR/oJN0tMHlk+0vchR+EyIrEq31MR/yes6yLWK9MfevaisaEslnMhdfc45xVXVhhBjTWgfFPM2gDHgagPcXgPaQhr+C0DqcbwtztEZHE6HjeuMtziUUEqfmsjwCDFblJ2FvC7mnvio1YrAKyyB6gDlVMbTWR9cn3GRKh/Wymgf5B6CAH95Iw/ahEUaSwtR5A1BySRMcIMgeUZbxPg2oU/v0rAOlQHcHLODL//umTwy8Cta6X2u7bAEwF9jz+2HnsKcPmlWQe5XxuXsCSHSvEeapySJFCVWJw25XLLaOtoL9c/bQ=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 02:42:16.6509 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 373c591f-cc9b-40b7-8240-08d71a17b1f5
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0502MB3092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_194220_108842_C874B7D2 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.67 listed in list.dnswl.org]
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
Cc: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The series looks good (sorry for not reviewing internally :))

please add to the v2:

connect example for the kernel commit message (rdma + tcp) and please 
show how the TOS influence on the traffic:

e.g. 80% to ctrl_1 and 20% to ctrl_2.



Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
