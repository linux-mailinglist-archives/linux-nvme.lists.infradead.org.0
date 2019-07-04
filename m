Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE8161E28
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 14:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UM11VOiDWgIqxuVQBf6WhNPCsWeXZKwjf1D+0TRNWOE=; b=BrTFn9F6vpDYkf
	1pho65NqE1xxqX2loLIkbjy6BPlkK+TpVhLIFaFsXecTJ4aE5V/BAdsw8Ih/0P/K8+CuIypD4owxf
	VRWqZ2rc4nUSx7NFdViAqaGqFXhH4IBofhB9vM+eHGQcj4n/vpQphOmR6tv1DGdanjfLzTaI17Y9F
	c1mOpK5cF673KelQe2ppirGJpPrBtq/tWIf6MKdy4gwftG8ayXZ1keeqciu+5khOieLEc+nENOHlZ
	dW6WaVlbpmfccicJNUSfqrXnEqvpB74BzRzck8k7t+oWDZKdcJTptjzibdu5l+owDH1DcTo/JGHwS
	hmxDNFfjlsyRYqG2mN1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSPM-0001wJ-7f; Mon, 08 Jul 2019 12:06:12 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSOv-0001lo-Rd
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 12:05:47 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 932F418005C;
 Mon,  8 Jul 2019 12:05:44 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 8 Jul 2019
 13:05:38 +0100
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
Date: Thu, 4 Jul 2019 10:01:48 +0200
Message-ID: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24746.003
X-TM-AS-Result: No-5.426700-8.000000-10
X-TMASE-MatchedRID: TTus4Pg7jbl0pXqxqN18Ro1rvA1NpMHHDvc/j9oMIgWxHvem8y6TrxEa
 mnVaSH89sP08z/N2Yxz9AVZwC0uAmWkXrhAAIT7pkPZB3+Nsm2R6i696PjRPiFjBUeMsjed6QBz
 oPKhLasiPqQJ9fQR1zhkXp4sl8Z/P0oxRWds/GkOeAiCmPx4NwBnUJ0Ek6yhjxEHRux+uk8geb2
 CAVWgJwBpCB7pEdmOhIBjiKvE7Co5/Fp9btAs9X4P8cP9cF604nWjs4NtL+PJ+3BndfXUhXQ==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.426700-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24746.003
X-MDID: 1562587545-OEjgd7uRhUUe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_050546_093544_340A7FA9 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Adding this hint for the sake of convenience.

It was spotted that a few times people spent some time before understanding
what is exactly wrong in configuration process. This should save a few time
in such situations, especially for people who is not very confident with
NVMe requirements.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
---
 drivers/nvme/target/configfs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 08dd5af357f7..cd52b9f15376 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -588,8 +588,10 @@ static struct config_group *nvmet_ns_make(struct config_group *group,
 		goto out;
 
 	ret = -EINVAL;
-	if (nsid == 0 || nsid == NVME_NSID_ALL)
+	if (nsid == 0 || nsid == NVME_NSID_ALL) {
+		pr_err("invalid nsid %#x", nsid);
 		goto out;
+	}
 
 	ret = -ENOMEM;
 	ns = nvmet_ns_alloc(subsys, nsid);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
