Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7853CDABA
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 05:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3EjfEzjObzmN14aflDxq6/Z0DGb+GX4HwefrZF0IprY=; b=t57jGboFwINvZ8VpVAVruYOAkA
	nx2rNn5vOJi7YwRkP5yAcvS7PQ7GJ11O7C73LOm5KZ4AwEECHTtnZIRPltALyGwR/XqWhpDWwK+Nw
	RPq0hqldOJrlyTNo5BFCB8a8d6ITgWA/fgtkvfdlzGdVhy69uLCQD8WEoUgH7hTO12OH7ywwyCPjK
	bUFQ40kpmzn6s6jytI4Y1omkHtEQv9LaUjAihSzPnoA1xajY3jxElaSRwFnaTBorkYc5ssNggWfQ4
	/V/C+EcOdv2BWYsaIN/HgPwgAtFnreWjhfk8QARU3DZvJKtZ/h9G61wPm6qlYdymBV/no9KK1rb4I
	V8NODAXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwub-0002nu-0t; Mon, 29 Apr 2019 03:25:01 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwuQ-0002kS-Cs
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 03:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556508291; x=1588044291;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=NxDXf7cbkmIE4ldEMZZmgq7J6gPSPqMlXk+2wxz2lZg=;
 b=J73v26gVRJkWmVhpUYpTf12wMss9mo1Zupjubx9CVePAZTS5zJa6a9AW
 85JU7pAb4/i/RwWZclXRC6RVQnK/7S0TaIT/ZW5D+6XeJcf4vxt2bJwD3
 2f68FXgPvmsO1ACxw4v7MeeNOpd6SeOgixlcE6Px75QPVmLRp6fbEBAY+
 6bHvDJ9KIZi++VSI91RTPV7FKxhQHrZFLYg3yB8FrnrKlYXW/um1HJU/g
 htU5Z8kPSrpl7ivItLHclkliYNwC/mFyFyTFtNCAqGDR3oYLubSyBx68d
 snaV9MXFCL9ye0El7fxZUakfPgLmvPEWNofwjBV6n0oPCLe/Kgy3xW4Ws Q==;
X-IronPort-AV: E=Sophos;i="5.60,408,1549900800"; d="scan'208";a="108245361"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 11:24:48 +0800
IronPort-SDR: EJsRLCnA0riPe14zorqIsxJRHlJ3VXNa5c+VeY6KXF0LfnBLuGIAJ6zrGttWFVUQ3jgUA6g7RH
 kWcZMuu7kSba4wJ65mvOUWMulTIXTZls9FDkrGd8q+AL0AlgUQNcMxGjGSC/xaXlQLg31qpMIz
 w0Kp+LFq5go78cKomzC74LhLGE4PFw/OSc2Z4vhcBmY9qsj5MNbykLvAVaxoUz/8st3AmyfJH6
 LqaYvgyUWUsIB9np1RWBuz9WIqblSfbQ2Z9pnaEP5V+5XtJmF6p0C4jofaU/fV0/MsptKyhxtg
 UjkqNwkRDUVbVU8puRLPvhza
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 28 Apr 2019 20:01:11 -0700
IronPort-SDR: OWXHgFTDtZoD+AtgQgCia+/cvR94QBnzbvRMl09viYglqKdYufBBtrwXN7z3rwgj0arepHWMCM
 oUfZLwBlJdj+e4Id6d3NmWyCOFx9wjLZ7OOEJBCJCOdMuSyj1JHwkp+Q96xa0huWOH9c5VWM55
 KoXMNoT1o0UHXrhdRvqv9VVxjtEE5cfX+FlxMvC3vhs+Z50vdnBtkQ+8Wp3Lo4c6xJkrUo1zSx
 S2YS9xK2MXu7nLtl7bU1eHclfuAnk3hgbdCnqwwOgxV8VG1AcNVID0FSBann9WNQg6ZKbxIOpG
 8Ws=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 28 Apr 2019 20:24:48 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
Date: Sun, 28 Apr 2019 20:24:40 -0700
Message-Id: <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202450_545344_362A95B8 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hare@suse.com, hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Hannes Reinecke <hare@suse.com>

This patch intoduces nvme-ctrl state name array which is used inthe the
later patch to improve the logging of the ctrl state.

Signed-off-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/nvme.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d64545023..01a36bbafed6 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -146,6 +146,16 @@ enum nvme_ctrl_state {
 	NVME_CTRL_DEAD,
 };
 
+static const char *const nvme_ctrl_state_name[] = {
+	[NVME_CTRL_NEW]         = "new",
+	[NVME_CTRL_LIVE]        = "live",
+	[NVME_CTRL_ADMIN_ONLY]  = "only-admin",
+	[NVME_CTRL_RESETTING]   = "resetting",
+	[NVME_CTRL_CONNECTING]  = "connecting",
+	[NVME_CTRL_DELETING]    = "deleting",
+	[NVME_CTRL_DEAD]        = "dead",
+};
+
 struct nvme_ctrl {
 	bool comp_seen;
 	enum nvme_ctrl_state state;
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
