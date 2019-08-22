Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FEC9A236
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 23:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ow2O/8rnM0Pg8gEoAFiipABkBYAnxrwVzG6fF91c83g=; b=gNXjrfdQdppVpm
	ChqMNdm3cDiDAQ+wHUOiZUKB4vukJGAh0TiJJxMW+atxsW8eUSmiFs39DIwLApQwPe/Bf9UCm8Kee
	Phck5CQ6bfD/kZHi+3V2tBQPqp2bVG+LIPmOJLQ3V/7oQ6LNVZSsktJqArSrM3Z7uMRmrb6PaoYhJ
	gpwDmqDADfCtY/lPA4nYedYKBshTbVtIPT4dTGeMfQYLZmvlzaysr0/2mZzTYkc+ETKIr++xhQgyw
	/80Ylo73Am6ee8qD7nmZFr++X4bO5Qs/+db8s2WE3URpIzorY3NaFplKNtBRVZbua6Pb/dbV/julK
	A7fnSm5JUoAGAqlGzvTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ugU-0004fW-0O; Thu, 22 Aug 2019 21:31:54 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ugL-0004ZJ-Ft; Thu, 22 Aug 2019 21:31:46 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH] fabrics: fix loop connect-all
Date: Thu, 22 Aug 2019 14:31:41 -0700
Message-Id: <20190822213141.396-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we check the trtype, we handle loop like fc
which is wrong as it checks for the adrfam attribute
in the discovery record.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index 333669f84846..03e7210938c2 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -808,7 +808,6 @@ retry:
 			return -EINVAL;
 		}
 		break;
-	default:
 	case NVMF_TRTYPE_FC:
 		switch (e->adrfam) {
 		case NVMF_ADDR_FAMILY_FC:
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
