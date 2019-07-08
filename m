Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B05C61E25
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 14:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1glF+w9YBSpnxrbGOkr8zfiLawxOrQXZIgailZqGydY=; b=Fbz9qJ4I3padsV
	hgGfxa5Pfu9NozxK7fG9gZteNQVSbPDVZYrJFKEjunFI0XcoRW9PjUPUF0Ao1X6CiaiJCrkF233lW
	PDvC1bTB4Q6lS4rGagxXgPZrbiNrFsdsxQ701JzCJ26/BC4yh8cQucKxxSMtMDucls9hY6PWJzCUS
	PXzGtGRhaPbsf8YfAPzxDyb3d6nhUXI9wXZw0y3r1BxV7dUtVuwDB+UhnPWCNF23loyIdlTZVriHY
	vM9WQeMh5JCfnDWvbWJYiiy1Ce2wsxOhtgDh/HZ8AJSceBOoUy/q1YJYRhgqXEvzPFKYuWSFNgdCx
	IHCPJRfvysQ0zOMPCAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSOr-0001VT-If; Mon, 08 Jul 2019 12:05:41 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSOe-0001V2-0G
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 12:05:29 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 45B3D8007D; 
 Mon,  8 Jul 2019 12:05:24 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 8 Jul 2019
 13:05:12 +0100
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v2 0/2] Miscellaneous changes for nvme-tcp v2
Date: Mon, 8 Jul 2019 13:53:24 +0200
Message-ID: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24746.003
X-TM-AS-Result: No-2.934200-8.000000-10
X-TMASE-MatchedRID: CeFUhkA4YSYiLS38rUYb5H4neC0h7SADwJjn8yqLU6IoFW8VuxQzlbXQ
 PQH2e5fTpHMI9S5lkTm1zfGba1EKfZE4FU2ZdQO4EhGH3CRdKUXqZ8otpu+6+MAkyHiYDAQbdEc
 SyvjnoeK2LUeOAZoLHU4OkoR+1mrTBm30RORoPjN8nLwuiNHSSH0tCKdnhB58I/9UW5M5dRPefx
 4FmMaZTOTCMddcL/gjymsk/wUE4hrVhIc4ZC2qXjnSps7XDgaazBVwyQCIpf7HBoJi7c0vzg0jr
 dn86t3Pnd9Stmy6668q504a2KMgCmSYI1GDqq+GNaLSAr1/d6vd0RArmVqfIXhb+tXQ0Z2H9HOa
 lI4Kiyr2JUHlN8ax9F7RiZtjf98i
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--2.934200-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24746.003
X-MDID: 1562587525-p1a1l3dGBV2S
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_050528_075500_C11D41A9 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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

A few unrelated changes for NVMoF subsystem, that was found during testing
of NVMoF TCP.

patch 2: found during extensive testing on various filesystems
patch 3: found during testing on debug kernels with VM_DEBUG enabled

v2
  - Moved hint patch as separate patch;
  - Fix commit description in stable writes patch;
  - Simplify check for SLAB check;
  - Remove unnecessary replacments of sendpage calls;

Mike Playle (1):
  nvme-tcp: set the STABLE_WRITES flag when data digests are enabled

Mikhail Skorzhinskii (1):
  nvme-tcp: don't use sendpage for SLAB pages

 drivers/nvme/host/core.c | 5 +++++
 drivers/nvme/host/tcp.c  | 7 ++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
