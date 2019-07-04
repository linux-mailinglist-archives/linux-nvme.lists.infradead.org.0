Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7F65F692
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 12:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l5CPNt9fr4WWLa3FOUoZsD5ZfhFFUtX5j8FAE/LFtbM=; b=G19CN68ZadzSADHp9NjGlYT9N8
	kLnoVE2gKRIFhJSG8dKa+BdcQFWAG8FtxITx8FEmYpmSUvsbrESfDoXsioHzM1WMduB4CVJVJW1Zs
	5XrBce2jBBy1ign4AP1VY85HqyIJqOXNM5OkVTaEGQnl5PCUxEW2ZgMKpzPaW2M2TwyBKsuVwoI6z
	po3XoDr/TaW/faOCEoFjyHE1RIvdMaLhgvKDforRXVw49Sxe9u+t98T+BLg/3tjotcFd/qjdMXJF+
	zYz2G1kCoMtHt2LgZvek2HENWxvaPXC6S8TkGxAqmt5/oRpxD6omrdSH2Ay5TnkCNHf+rqeLX2lEW
	Y9bYJgAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyvX-0003sq-AH; Thu, 04 Jul 2019 10:25:19 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyvI-00036u-2K
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 10:25:08 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 1ADDE10006E;
 Thu,  4 Jul 2019 10:25:02 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 4 Jul 2019
 11:24:57 +0100
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 1/3] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
In-Reply-To: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
Date: Thu, 4 Jul 2019 10:01:48 +0200
Message-ID: <8a62f718d2b1b77c548be8009dbcfc9a3f75f7cf.1562234605.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24738.003
X-TM-AS-Result: No-5.426700-8.000000-10
X-TMASE-MatchedRID: TTus4Pg7jbl0pXqxqN18Ro1rvA1NpMHHDvc/j9oMIgWxHvem8y6TrxEa
 mnVaSH89sP08z/N2Yxz9AVZwC0uAmWkXrhAAIT7pkPZB3+Nsm2R6i696PjRPiFjBUeMsjed6QBz
 oPKhLasiPqQJ9fQR1zhkXp4sl8Z/P0oxRWds/GkOeAiCmPx4NwBnUJ0Ek6yhjxEHRux+uk8geb2
 CAVWgJwOYH/i1QwG8aARakG5/xVD3KimIBRI4IImCb7oXLvG0izJmfvg8Nm0p+3BndfXUhXQ==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.426700-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24738.003
X-MDID: 1562235903-qYEqAc_hPcb2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_032504_166491_7A4EEAE8 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index 08dd5af357f7..c91cad4f7927 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -588,8 +588,10 @@ static struct config_group *nvmet_ns_make(struct config_group *group,
 		goto out;
 
 	ret = -EINVAL;
-	if (nsid == 0 || nsid == NVME_NSID_ALL)
+	if (nsid == 0 || nsid == NVME_NSID_ALL) {
+		pr_err("NSIDs 0 and 0xffffffff are invalid NSIDs\n");
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
