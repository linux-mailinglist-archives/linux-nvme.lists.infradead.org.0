Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968E8174A71
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 01:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FrUg65IlHOu2VyQJFCpE+Frvut5NFVQ4gNM7Pshn7vo=; b=Nzf
	oss6uVyLLUfR0Ieu+1n2jLQHqDQuctKAf3N2squEkHi/gsIjYrQgECVcjHHVH1F6P24wIYMilSxGi
	w8ecnqp5lgO4T66mhOn+Zl1AKBLgx29J1s91fBUgybU8MPduI/xYnHYPQyLB0/45XaJ5JKGgIYizK
	Xmk2SL3gZBRHF+rQwg4Fc9VqH/UWAXYqYNpC33QnNueEgUju8L3i7cynZTC7G+Z7wCLl3NDroWtod
	kI6KRFHElAJUVCfUiuKN0ht5+wJFWUVLmGkQevoDkiQzsHUEfgRZ6D7Ab+vGsrwkjOQ7BthnvyoId
	16c0xQSlga/sQqtqQcZ0IFCEUD4P+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CTn-00054B-Ak; Sun, 01 Mar 2020 00:29:11 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CTi-00053c-Er
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 00:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583022547; x=1614558547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XqApmXJK9cNX14N2gaKmnGmF4YJCc5e+h1T0BYhaatI=;
 b=CeMpvfIfmLdXAN3rCBEokFN5ac6bZk2xQyx59vEJEFKj2lUb5NRl5Qpx
 SpUlXQQpTj9qRINLcd3NFzduoYytnMtb7swUa7DP3QUWYQBcHcz18YxTo
 6VYDmgahzOPmK6TZGWqH8p/mghjkuhJz0O7fKYOcUvAfCV5Ju1UliBeXU
 FtFtD77e7sD8h8tAXp+MsCH1PUrd0fgNcqPrOJebNVildAU3aakRmpo+I
 D3C7qEzslrRRslQiIdcjRjlG9tO5jMIGAYLi68AV7JPUhPUQAeKZXmEqk
 VHQat/R5WtjLT/CsKgH8o86/RIrMbPzPpx045UETEfb40zSS2tJZH8srV Q==;
IronPort-SDR: PCdelslh+8pizQWNZoDbPCOEwMsFlODqYKP9RdiAtJnPO5LNT4OKTaDRlIBkt3T4+pNu0ud1py
 JBrGqc2kIwjRFvRzonix7KSnLngWOqI/jL9xWz4zMT+fDFgsHQlBAKE1ZW/nyXlYErW362yz7r
 0IfJzXCsSm1c8y4Gbr//9STYm3YA9M9wbH1wR+V6uiKdeYgtm1l2n1dMhzQ3sEaAy1bMTw6qF6
 Ghkyn/ptqf3GzldZJsA6B1G73vxWAOtuNkX4p04s/Y3ZFPQzNd6jAaIQA4MbBYgcPRQOmmiOO3
 bzQ=
X-IronPort-AV: E=Sophos;i="5.70,501,1574092800"; d="scan'208";a="132526221"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 01 Mar 2020 08:29:01 +0800
IronPort-SDR: /SD56x3U+xRdSQyA3XVmoVlW2KfcHJxYLPb5pW3HHxmarjqprLMw8rYnISSFXwMDU4E74MLOCC
 b82XCfC8XNlUWFdnHdS/QVfAx5FfLfI02I6AZIgQCQWbzdS3Q21d58AiIFvdl+GzB4H7+koc+A
 R9QwzeRtF+VEcAyJCbWQlZ2k2Tg6bzPdrZAUF3rdG4tP/NfbDPsCn5mZZxXaHU75VBhEOOa7et
 zXEJz96J5UDokzl4DswnBn1gO4lCFKF/I24WaSAcB9x76OGDogdqdX0gGSgqnSVUc+MIqpSq4H
 8yRBzTXLC4VaF4wZhYggq9tS
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2020 16:21:20 -0800
IronPort-SDR: tKUxstkOjP5+SMQjb1Sp6F74RrOFAe+hhIQusPvisDxrWFrHwXECy2WlN9V23ujSFn13aQ9P7C
 ezeWsqfdlmo1Olu4cahvL8RHyH2vSxBAT/80rTubCawWxj8pLWoy0SbnBTiFs9M1h4E0kqx7za
 rzWr7dKmeRDZhqQ3vbPI9H+iq4NRutsCYTCsyeVWFBl2pf6e6aySoe046dWp6wRC+awA5RzyM7
 kXMMmrO33HKIYEnT90v4jd59g4TIluLzskZMu0IExQaOe2KjNXkdxSHPxtunxL17LaY70PtZ69
 wV8=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 Feb 2020 16:29:01 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3] nvmet: check ncqr & nsqr for set-features cmd
Date: Sat, 29 Feb 2020 16:28:41 -0800
Message-Id: <20200301002841.3959-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_162906_581476_753F913D 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sagi@grimberg.me, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 amit.engel@dell.com
Content-Type: multipart/mixed; boundary="===============2881231313122061208=="
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--===============2881231313122061208==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

From: Amit Engel <amit.engel@dell.com>

For set feature command when setting up NVME_FEAT_NUM_QUEUES, check
Number of I/O Completion Queues Requested (NCQR) and
Number of I/O Submission Queues Requested (NSQR) before we proceed, for
invalid values (i.e. 65535) return an appropriate NVMe invalid field
status.     

Signed-off-by: Amit Engel <Amit.Engel@dell.com>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
Changes from V2 :

1. Remove initialization of the ncqr and nsqr variables at the start,
   and initialize them in the NVME_FEAT_NUM_QUEUES switch-case where
   they are actually used.
2. Add a patch version information and the history since it has more 
   than one versions.
3. Fix patch subject and description.

Changes from V1 :

1. Avoid parenthesis in the switch-case statement and declare and
   initialize ncqr and nsqr variables at the start of the function.
---
 drivers/nvme/target/admin-cmd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 19f949570625..83df11a7dace 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -733,13 +733,22 @@ static void nvmet_execute_set_features(struct nvmet_req *req)
 {
 	struct nvmet_subsys *subsys = req->sq->ctrl->subsys;
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
+	u32 cdw11 = le32_to_cpu(req->cmd->common.cdw11);
 	u16 status = 0;
+	u16 nsqr;
+	u16 ncqr;
 
 	if (!nvmet_check_data_len(req, 0))
 		return;
 
 	switch (cdw10 & 0xff) {
 	case NVME_FEAT_NUM_QUEUES:
+		ncqr = (cdw11 >> 16) & 0xffff;
+		nsqr = cdw11 & 0xffff;
+		if (ncqr == 0xffff || nsqr == 0xffff) {
+			status = NVME_SC_INVALID_FIELD | NVME_SC_DNR;
+			break;
+		}
 		nvmet_set_result(req,
 			(subsys->max_qid - 1) | ((subsys->max_qid - 1) << 16));
 		break;
-- 
2.22.1



--===============2881231313122061208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============2881231313122061208==--
