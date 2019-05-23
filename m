Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814BA278A5
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 11:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GG9xw2gO67qIn3dqjk9vhbvkGPs/nQgD1ddbsejD2eQ=; b=gMyKe4pYo6Dl2SNci28c6vH8Uz
	AEHMVWJ7QBASw5mdGQxT0UlP21GldyMYK+07NA4yCdYRCaTE8OzneFblsf+f0XESUHqSDXOFJ5Pjf
	Ph3P0tpYCtkOnger5JRI6pug7lI6fF05WQD8vdQ5xPqKxT2jZzr8Mc/IWJ5zEp2/uIllf9JuscoWc
	WV3L+atkKKaYKRaXuIndSosvXZu3D1Xgaqe7SFWOOPVfaQl3T/XebCrXYmjaBcxb62W0YZde/BQrr
	BSI81/+HB/KLMqkVpWWsOpglJ3Co0FHrpAHq0XvAVK5sCZOGSSaRp8ti1A+ZYba6rx8BXL4+czjMX
	q74B3DQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjb4-00088E-Gg; Thu, 23 May 2019 09:01:10 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjav-00084u-KH
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 09:01:05 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 23 May 2019 12:00:59 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4N90wUG007383;
 Thu, 23 May 2019 12:00:59 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 3/9] fabrics: Fix memory leak of subsys list
Date: Thu, 23 May 2019 12:00:52 +0300
Message-Id: <1558602058-29434-4-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020104_556896_3E1401F5 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: shlomin@mellanox.com, maxg@mellanox.com, martin.petersen@oracle.com,
 minwoo.im@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 fabrics.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fabrics.c b/fabrics.c
index 511de06..b42a3ce 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1203,5 +1203,6 @@ int disconnect_all(const char *desc, int argc, char **argv)
 		}
 	}
 out:
+	free_subsys_list(slist, subcnt);
 	return ret;
 }
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
