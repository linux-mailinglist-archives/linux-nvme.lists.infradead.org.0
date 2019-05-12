Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DE51ADE1
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wmq/Hs89AsSTb+UHW5gw8XvBgyrHbcrvkDoSedj050M=; b=WvGiuqGgC8JH87zRcGx33tBB3i
	ZtlZdGeWeR3kXQZY9kj5pjP+fZwLbq7e4rJbm2oMQGKCpjhxmtPbe+aG8BbMOkaA23g+E1aJKs+ao
	Xzlp0nVkNM5rrUUNxoPY6f1SFjpu3VH8yVEtytntyv6qFg78k1PZGYydiMEVGXSldOd8WifQki6hR
	1B6JJ3Jaf4V99RQu3I6jWs3ZuxI0qEJbzGPNdIGmG8RHjzCNQs0mX/nA+1uHOnjDo31uIxTZNhFif
	LIMsrkUiC5pcjhfDjg7kfEaCgX5Pw0YFAIN3OuBTLDxQkQMpOallMmFiS9BTXsk4maZUmmNX8/wQx
	HF95VBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgl-0005jX-E8; Sun, 12 May 2019 18:59:11 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgR-0005Qf-O3
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687606; x=1589223606;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=cCALKi0qNvbTkTU/9YLcdoqyBk5xzpXclwRitKywb40=;
 b=Ou/gPZE00JllVbFnaxmbwby+diU+jcO9oaayLWM7htJCPlW+D3HBDo4N
 3MC+H2d4iabJ2suyRTh3Kfk9ivoAwImMPXJzlk+hhleeqAdQG+EW1Heq/
 rJj/aWOcyhVULFpMeZbv9NHpMPkqUUxj2Asc31GVb15ZJiLSY84UQ0d2F
 ci5g5eZ807qz9DsU8ObX8FGzp8KoiKGWHUuVfUq7jRwtLqsEdPrfNu5/7
 OHAfQogMAfI6NBpst6qC0J7yFGtevJhRMywBNy3zD6WJMHobwo977dAxH
 xsoNTTHcIwpykzBW9UQWO50RRbsRqUDRbXuniei6Xi3Ugc8z1klwDcLPQ g==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207452165"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 03:00:05 +0800
IronPort-SDR: jWzJMN4oBxx1O+qwm8+SYX6VjFQ75Zemk/Qp3bJ/Ux5U2BA8Sv3cR5uhQRkNz4yjeKuzBdySvV
 4PEefbx0OhMgb5O+LfFSgYpNuZRaEl8x/UVbDp266pcZBnAOXRu5YpscURu09g2pNuhJVYBmcj
 4ADz9VILn6NDWB4Ed9/eDOn9zOSC4MAKVtqZaIEFs7R4HrE/ltEzn29+l/1YAmTnhvvpR6gaa3
 ZFC0quP6P54Yg+uk3bbRJAK0v7wPHkzUmSwSHUTLKftl2mvOUUZNc1+hZ3B+mpCq+iBqBp4vaE
 SFSP9jnsYGaoLt/HYN5WcKrm
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 May 2019 11:36:54 -0700
IronPort-SDR: sbrHgO4beb5YbCIrpQcVCLjBjlYaArZqDAGh6PGKys28Pq21hTKqdQx4HNWPhMlDYK5hBU62A9
 eFyMpDGt/2Y551oNPrQg2i14E8iSMkYl38d0xoFBbuzzim7eVAAsh7eivJkGw48KsYj3qgKy/I
 fhDYhYQls3idnzolEGyZY+UoJBTf4lQK0n8T/ofumDSkhcAmGNmXwhJKsTwP1Pz/YLgvO+ONxJ
 GIsM7Tojjg4wPnn+dxQuKcqE/RWMTzGfmVcnETiCkjsDESp1FJ/D6K2NuSEGzMy5nbTjkdp+8c
 nqU=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:51 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/6] nvme-cli: use uniform if .. else format
Date: Sun, 12 May 2019 11:58:18 -0700
Message-Id: <20190512185820.20098-5-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115852_262251_E7840631 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/nvme.c b/nvme.c
index 220fb18..971a926 100644
--- a/nvme.c
+++ b/nvme.c
@@ -212,8 +212,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
 			json_smart_log(&smart_log, cfg.namespace_id, devicename);
 		else
 			show_smart_log(&smart_log, cfg.namespace_id, devicename);
-	}
-	else if (err > 0)
+	} else if (err > 0)
 		show_nvme_status(err);
 	else
 		perror("smart log");
@@ -2244,8 +2243,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 	err = nvme_virtual_mgmt(fd, cfg.cdw10, cfg.cdw11, &result);
 	if (!err) {
 		printf("success, Number of Resources allocated:%#x\n", result);
-	}
-	else if (err > 0) {
+	} else if (err > 0) {
 		show_nvme_status(err);
 	} else
 		perror("virt-mgmt");
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
