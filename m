Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700349C2D1
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 12:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k9AVPB9RHluBp0+h1R4I6rw38GIuJ+eVHu4yJ08X8Ec=; b=kvLW6iMywyqSjTgx7Hc/+eXvO
	Ej/WHxWRSHT6ftxQBPDQD2HGkdgjo4ktiCA1rNSuMJi0M2tC8KPIWZj3ItqPByC9XUEy6IfjLKPD5
	poLwiCH/MAhF9flTGt2f5l7TFpWnqx7xZG2v/sZ9/FdshhxLnaKPoEBPFVmBxmuD27/p6h/GGYxwB
	fSe6WmN2kS8MqNB5pyMVwx4SJU6cE633uK88cbFnjDiu7cE1J/kQ8k94n1b0onvPJ9mzmTRWNDDWg
	C9XFvQ2j2n24ruuhbPcJkKO0wiA4gz5UIcg4jiq2BTYI7gt9furHIAV7EN01rGRqGt0yZel+xEsN2
	JaYx/hPLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1pMy-0005lj-88; Sun, 25 Aug 2019 10:03:32 +0000
Received: from mail-eopbgr10073.outbound.protection.outlook.com ([40.107.1.73]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1pMo-0005kt-F8
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 10:03:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PdwsuICnn9AZS2b2BQ36t4JhFKbBgQGMOLNmsRZIjCZOt0T/7M7wzUDUX5gM1Wb4H8xB70WaPQhUhsKK7JnrwZC4s5d0syMBS8FeM6hTOmv2NMEHZMizSZqcjiRKlUpUlfVAdwbGUQQ86qBzJsoH67x0zHXEIGDDDrFdxUz9jbXowhEzGddfvte0QDawHXcQAVEDG3IQ1EvF1u3xs74DxEheJIcqDzNnIoepxiTt0ShtxpUa87WtSAXrrHKdd+XBu5yOdKTfsZonKhy2RrHUTkgtBzddMyamwJfGoEzeqwzTjlTtOS8GSWOJW5JlTVcCZqG/1PL2bDjwYlU8w2PD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uz5DLkpOMMVzmhsyHrVuPZMRA9DkKXXwiNGK0JIJm5E=;
 b=lAhKhql2qmyt5dQtAlt2/AkDzJ0hY1WUdwJtSBtUCyXmEri4Bx4JiA0qgSUd5m5GJZexwMkWo+6uTzVXjc0x6pC5rub1aabJiibgZCSxx9QuiGa1c540CnfYZtl1cG/u3agfz65UbwPNfFbyc3vUZ8zQZSOgIpHe+SSO8jvlCkqO2s2Jf+6OohUDvZKWLFIYfG2jTDpo9zXg9WOMPdJn/+2gwpuxRxCzLIcxe6TtdEU8Z1+DdHzGWPjL7xiT1WnWtrxw7sYoKUdwQH8FSB9m+Ss2Hj5lVmCmVqqyHUQfGf6grNW4CWbexr145YQeaUjhu0/ArDpOZBM/KdHSESBs5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=suse.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uz5DLkpOMMVzmhsyHrVuPZMRA9DkKXXwiNGK0JIJm5E=;
 b=HCxOJFfMfJc4JYoL78Z5JI6DqPvqcCdqBbJapbMRVTt9I6ezYqCMmUj1L4VQJ1v/4XEnAucyauEDjMeAyW+MtRy8z5y5tu192kNgS4M+w8CBrxeRG7WVMg9y2JkZ7jFjdG9btnqkO+YctbXsu7/3IbHBEio/0Cf5fP2o2uWqWCc=
Received: from HE1PR05CA0211.eurprd05.prod.outlook.com (2603:10a6:3:fa::11) by
 VI1PR0502MB3679.eurprd05.prod.outlook.com (2603:10a6:803:10::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.19; Sun, 25 Aug
 2019 10:03:14 +0000
Received: from DB5EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by HE1PR05CA0211.outlook.office365.com
 (2603:10a6:3:fa::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.14 via Frontend
 Transport; Sun, 25 Aug 2019 10:03:13 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; suse.de; dkim=none (message not signed)
 header.d=none;suse.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT008.mail.protection.outlook.com (10.152.20.98) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2199.13 via Frontend Transport; Sun, 25 Aug 2019 10:03:13 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 25 Aug 2019 13:03:10
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 25 Aug 2019 13:03:10 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Sun, 25 Aug 2019 13:02:47
 +0300
Subject: Re: [PATCH v3] nvme: make all fabrics command run on a separate
 request queue
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190822233932.29003-1-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <573e9574-c0c0-9d2d-39f9-be9bdcf87032@mellanox.com>
Date: Sun, 25 Aug 2019 13:02:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822233932.29003-1-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39850400004)(2980300002)(199004)(189003)(16526019)(478600001)(47776003)(65956001)(65806001)(4326008)(58126008)(8936002)(14444005)(186003)(446003)(2906002)(86362001)(6246003)(476003)(31686004)(305945005)(31696002)(54906003)(53936002)(3846002)(53546011)(356004)(26005)(16576012)(70586007)(70206006)(8676002)(6116002)(110136005)(316002)(7736002)(23676004)(2486003)(106002)(81166006)(36756003)(81156014)(486006)(230700001)(50466002)(5660300002)(229853002)(126002)(2616005)(11346002)(76176011)(336012)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB3679; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9ead042-7d75-4a95-d7f7-08d72943714c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3679; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3679:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB3679F314C8989C9E351749F2B6A60@VI1PR0502MB3679.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 01401330D1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: i73WK8JOD3uUuz/79kjhML7IsRBtOkdKUeOF0BW4E5g9HLaODgP2JgyYPYm2HmWZZKok9CjOei8XDnKURsyLU+/BgHfOpJq2l9xhMTWXu+k1vdMNBly6ZzBLU23kWIyRIgE0cK1qy7QkzBSA8qPDzwqe/bCX+2v9Y9iBsUkj+GB6sJZBYjqjV6E7sQiNDSrLQXueoWgavX16z2RIBV4amJ8gICC+3FsvTvwPS8ApAYzV2M6KT4JifopciKs0HgcqARSEwMf7P2pDmGHqeLnzvqkBlnNHCNZCuUj0dYFD9JZ9zAlcyDrnlISCzj0SkE/7k4ix+I7UDbUPIdyi3HpoluT+tq6QrULZ8D30ikb47fryPsBO/X+0sVs/SbpcQsO6mYwl9uWdTK2hKHC+I8t9Oubemf7/ee7V2deP8GYY13s=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2019 10:03:13.3651 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ead042-7d75-4a95-d7f7-08d72943714c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_030322_576471_61917119 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/23/2019 2:39 AM, Sagi Grimberg wrote:
> We have a fundamental issue that fabric commands use the admin_q.
> The reason is, that admin-connect, register reads and writes and
> admin commands cannot be guaranteed ordering while we are running
> controller resets.
>
> For example, when we reset a controller we perform:
> 1. disable the controller
> 2. teardown the admin queue
> 3. re-establish the admin queue
> 4. enable the controller
>
> In order to perform (3), we need to unquiesce the admin queue, however
> we may have some admin commands that are already pending on the
> quiesced admin_q and will immediate execute when we unquiesce it before
> we execute (4). The host must not send admin commands to the controller
> before enabling the controller.
>
> To fix this, we have the fabric commands (admin connect and property
> get/set) use a separate fabrics_q and make sure to quiesce the admin_q
> before we disable the controller, and unquiesce it only after we enable
> the controller. The fabrics_q lifetime is exactly like the admin_q lifetime
> but it is quiesced after we disable/shutdown the controller and unquiesced
> before the admin connect.
>
> This fixes the error prints from nvmet in a controller reset storm test:
> kernel: nvmet: got cmd 6 while CC.EN == 0 on qid = 0
> Which indicate that the host is sending an admin command when the
> controller is not enabled.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> Changes from v2:
> - sent the correct patch this time :)
>
> Changes from v1:
> - quiesced/unquiesced the fabrics_q when we teardown the controller
>    but do it where the admin_q quiesce/unquiesce used to be.

Sagi,

I see that we have lot of common code between the transports here.

Can we move it to 1 place instead of duplicating it ?



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
