Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A3426879
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3nMgzjDr5si0Xj+2nHF8LKlcEyMj+q+w57kkgiH4gwY=; b=dfYROIn8CFd7+M6U7tr/wWsC/Z
	QBV7uxL7aCgzV5vc3odGUsx9ah15ArVvYUEGthcjwAS8RDJ15JXoJ1Diu7tiNlFklnNf8Z4k9Ey+j
	ogebcGkypO9eXMISmBAwDygRTuzlSGUm6ZW4+VCQSaWdIpdMMEzIz97BxZPviehklrCJezupM4IQa
	3Yq7CuHlsFcOeT5YfVOGuj801KKfFrsTevHXRNwvPbDvXSpYJ5YtF29iVNr5hW3gWzdraWImlMBUN
	6pgv6a6QpSkyiN1XvqdZrHJ+OQAniJ/pzX/OIqwf6Rp2FrVbzfKhrZuWfUSUBKWQFM6ckR6DOFIRS
	LWNv9nTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUIW-00039g-Cj; Wed, 22 May 2019 16:41:00 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHY-0000um-2Y
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:06 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:54 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAU001383;
 Wed, 22 May 2019 19:39:54 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 8/9] nvme-print: Rename "Paths" --> "Ctrls" for json output in
 list-subsys
Date: Wed, 22 May 2019 19:39:52 +0300
Message-Id: <1558543193-24752-9-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094000_566394_C8FC3999 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: maxg@mellanox.com, martin.petersen@oracle.com, shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme-print.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/nvme-print.c b/nvme-print.c
index 7e1f9ea..b3f08cf 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2904,10 +2904,8 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
 					slist[i].ctrls[j].state);
 			json_array_add_value_object(paths, path_attrs);
 		}
-		if (j) {
-			json_object_add_value_array(subsystem_attrs, "Paths", paths);
-		}
-
+		if (j)
+			json_object_add_value_array(subsystem_attrs, "Ctrls", paths);
 	}
 
 	if (i)
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
