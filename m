Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59776C0D3B
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+Gsem5lUPBx5kibvjkmqdeGYdW85PhKJozPvmVKlSNg=; b=jJB
	SbgABA7j2FY4KmCk/uWed0UDXKxemRh54xUhXgs7a8cULov36SxBAly2hnBgKMI/x/vzp6sWzlwWe
	ZeQqBbYDntDGdADgvypsQpI8tJXmDmZls+v+6rQ5QIu8fPoSqUIKY/J3ONiAYLBTSr6Y2HWAurccD
	uAuDDO4O6ldTo3dSlzwrmwbBhQVBlpJGfz6PVvoepDnRaZHV9O41RvJmoulFt3qCX7fuH0e4g+czL
	j7fE62gnRxhhyJUL5QnoVqGlIzSJU/FOST4WoAq96dN8tSj4XO/+ecY5aFkIk1HAhtdmrqkMvYabP
	RPufTLeROCWOsjrdS21nuEb7GxRjRNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxmD-0006iV-5T; Fri, 27 Sep 2019 21:27:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxm7-0006i5-GP
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:27:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so1567238pls.0
 for <linux-nvme@lists.infradead.org>; Fri, 27 Sep 2019 14:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1eJQKtbkclE/CWlbeO+0j67l4XZCcNZQ6h0LIYyXJrI=;
 b=sKmXXFWSJbtWQcnbSXTdNP0rHyhTl2jbk8Erg5lW7wV+MYLkFTX1vNtsRsUXq/1rli
 SJZgdSj+XlLnkf+QuQfMx7rwNOUTKHxikdcYZ7ftvMV71JESsgJXbTuRUvTwN/d1OWYf
 k+TPin1n2cw/WLRwhU4+V1HFdBxNndwlWSASD96Oc6NYMWjQTf2v7JataUm/TmalZxSI
 lpYyQi8y8fdOllyStUneEEpXEzXsh5NEhSBnCC6ZMHGtRZQuGLjG2tO75TY60sFEK2aU
 hmZEg0bbcSkchv1czYkVQtiyMXvZd7Ot7+4q3kQOrNlVuB7V0Eugo+O6bWSzcyJpELOn
 G1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1eJQKtbkclE/CWlbeO+0j67l4XZCcNZQ6h0LIYyXJrI=;
 b=NOGTqZMfVoqbkOYnOkGSBuKaE/5ueZZ6Nr8Rtttn0KdmrpnJm0OIMwgcWG9egebRCZ
 hg7IMOaLdtRHj3Ks2YX/lxmOHLyIHyKrOERk4L+MpjpDURju4FOaGbBfiRIE0VVZm+/X
 hXrgbF6P6VlkII61OV4a3I+WMvm1AXeQdVrFnDFjrF5oIuoyHXBWH+Yj3QslgRw4Icrw
 TAAlAPLxPZsni2XPoPYfDDiOrG/OQ/GEOBmlnay3BwRtTekz8oL1bpiGR8Ysb0glwC9/
 kyJrr46xnYrIEioGxehkymYRX0BFBVpBy84nZQs3KqFTXzxlNPfZLCWPZghKuEQkLTQa
 ahqA==
X-Gm-Message-State: APjAAAU17Z6AlAOO0IMmU4IZfmo7RZy5Xs8wrL/IqWRpEiZ4IfWINOKa
 Pryl8pvg3kDsTcDyycjcIMZxKDQ9
X-Google-Smtp-Source: APXvYqwM9R1ta6XNX9jb8nVSL9e68pMi8g3ONnedReHVlbe93AP9dluyZu2wb6Sv0HpDNPtlKzw/3Q==
X-Received: by 2002:a17:902:8ec2:: with SMTP id
 x2mr6735209plo.250.1569619658224; 
 Fri, 27 Sep 2019 14:27:38 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s3sm5964300pjq.32.2019.09.27.14.27.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 14:27:37 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fc: ensure association_id is cleared regardless of a
 Disconnect LS
Date: Fri, 27 Sep 2019 14:27:22 -0700
Message-Id: <20190927212722.31870-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_142739_545979_A45FFED0 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Code today only clears the association_id if a Disconnect LS is transmit.

Remove ambiguity and unconditionally clear the association_id if the
association has been terminated.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/fc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 265f89e11d8b..9081ca9e8621 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1464,9 +1464,6 @@ nvme_fc_xmt_disconnect_assoc(struct nvme_fc_ctrl *ctrl)
 				nvme_fc_disconnect_assoc_done);
 	if (ret)
 		kfree(lsop);
-
-	/* only meaningful part to terminating the association */
-	ctrl->association_id = 0;
 }
 
 
@@ -2739,6 +2736,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 out_disconnect_admin_queue:
 	/* send a Disconnect(association) LS to fc-nvme target */
 	nvme_fc_xmt_disconnect_assoc(ctrl);
+	ctrl->association_id = 0;
 out_delete_hw_queue:
 	__nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[0], 0);
 out_free_queue:
@@ -2830,6 +2828,8 @@ nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 	if (ctrl->association_id)
 		nvme_fc_xmt_disconnect_assoc(ctrl);
 
+	ctrl->association_id = 0;
+
 	if (ctrl->ctrl.tagset) {
 		nvme_fc_delete_hw_io_queues(ctrl);
 		nvme_fc_free_io_queues(ctrl);
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
