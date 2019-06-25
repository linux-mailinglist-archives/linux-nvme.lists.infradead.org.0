Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2FB553F3
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 18:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q7/T1Z2giDc37yaQo1rXDisQ3sHNFq7Lyy/xkrLfkZs=; b=P+p
	sEQU+INPQbyYrfdJ6pHZRbQRYQcPmYrbovC50rYLfGRKhWB5unuwxbGyL+tokdwyRze7UE9NW+/Vn
	qTcNmm6WsZCEXUBDnTRq8nrkYEIwh3NPeCSQguCCgaUQRPUJajqtJl5PF11/j10r64IkSdvZTpG4v
	ML61dOmaEyzj73WhO+DNvYFQR0au4Gj9AIbOBVpaVenHKh0TkAdvbynfuDMMTlQbejJaAUbHu6vQX
	8NjkXaos/49sIWK5Ydqhv5UbcBLY3icSpZWeMr/pcD2yyPa0JT0fGzgpsxROXTwGMirdQSqZDgt2k
	Lb3HzwuQ99BDiJgTEs+febD6B87hu3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnxg-00008B-RP; Tue, 25 Jun 2019 16:06:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnxc-00007g-1F
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 16:06:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so9172522pgj.7
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 09:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3xUVy+EWXiblTNFSacV09JBGbFGj4bnWmnKZ0Q+8qDo=;
 b=VZAFlVT6qzMs5BDaZytxddMgipfuPEqwOM+MzjS2fJMRrNqjGhqzlbJmBO9oTtjZLS
 dUy88wrqbM/gYvXuNxHt1ue9vjcG24DqsiP8hNyqzwQNGkDXdAF8ZcW1Qxb4lunRpj7s
 n1NmH0/DAtTADahJjZq1VPmKYsweJUz2EYFyCQXpGJ9KVxy1MfsUmS+hRxkwsAMUgwME
 5E9PtQQ5PmOKfhOgOJ710iJf25Pa+y5rYPnY/0QVSkdRh6AkdiURYWJZMGB78M9X9y8I
 ay1Mm2kijKk8ACT91EFid6iVoa0IKg0j/AM3MggcobzXYLVwi4R7iBgNMtzxd2KTEFe2
 qAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3xUVy+EWXiblTNFSacV09JBGbFGj4bnWmnKZ0Q+8qDo=;
 b=ExtQu+0jYfzLNO26bfTAtpPM6CUsKu+asMXfYgeuT/5QgpdbYafkbFGUy5M2N9V7XJ
 O1+XHJnHayxJap41/ptw6/NiB8plaN9YoJWwJFPz84ej0wwsz+pQZ/lHuqzsNmVqTRcj
 j8KR4KhVwGOvsA6nIPwpxEUa9pXSyrz5v3UrtLagRXGmN1Fya5wnTKyjSVCQ3LNaRwo1
 CfZGdwdubgBX5R/OLomLGuLeAdFIxLoAyMUdYMilCQjexvaW3F/Pj1aI8clqc+f02g12
 3NVuh0dikUgzqJSysPhSMLfyOHJUJ/5kLMAm32GGuyodpkdJRc3eomBySfSZeSR4z/H0
 e7eg==
X-Gm-Message-State: APjAAAWU2BOlpohxsL64IFF23B+OfloCK0XP0zq8EzpDBhlI2vv/M22+
 S7zvgmQrsfWsP2rN2XvjMv+6IZ6A
X-Google-Smtp-Source: APXvYqwJoVs4q0DFRWehEPQFWvyecGMF9DHMCGyxh2RY+2IzJveYIEfTBdn0BsAQCOt0vQrG96ztzQ==
X-Received: by 2002:a17:90a:3247:: with SMTP id
 k65mr32700531pjb.49.1561478777457; 
 Tue, 25 Jun 2019 09:06:17 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q19sm17804067pfc.62.2019.06.25.09.06.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:06:16 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fc: fix module unloads while lports still pending
Date: Tue, 25 Jun 2019 09:06:04 -0700
Message-Id: <20190625160604.3905-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_090620_100162_6CCC28B0 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Current code allows the module to be unloaded even if there are
pending data structures, such as localports and controllers on
the localports, that have yet to hit their reference counting
to remove them.

Fix by taking a reference out on the module upon the first localport
registered, and which is cleared when the last localport is removed.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/fc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index b7662e237eb9..bd80e2c475da 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -229,6 +229,8 @@ nvme_fc_free_lport(struct kref *ref)
 	/* remove from transport list */
 	spin_lock_irqsave(&nvme_fc_lock, flags);
 	list_del(&lport->port_list);
+	if (list_empty(&nvme_fc_lport_list))
+		module_put(THIS_MODULE);
 	spin_unlock_irqrestore(&nvme_fc_lock, flags);
 
 	ida_simple_remove(&nvme_fc_local_port_cnt, lport->localport.port_num);
@@ -398,6 +400,11 @@ nvme_fc_register_localport(struct nvme_fc_port_info *pinfo,
 	newrec->localport.port_num = idx;
 
 	spin_lock_irqsave(&nvme_fc_lock, flags);
+	if (list_empty(&nvme_fc_lport_list) && !try_module_get(THIS_MODULE)) {
+		spin_unlock_irqrestore(&nvme_fc_lock, flags);
+		ret = -ENODEV;
+		goto out_dev_put;
+	}
 	list_add_tail(&newrec->port_list, &nvme_fc_lport_list);
 	spin_unlock_irqrestore(&nvme_fc_lock, flags);
 
@@ -407,6 +414,9 @@ nvme_fc_register_localport(struct nvme_fc_port_info *pinfo,
 	*portptr = &newrec->localport;
 	return 0;
 
+out_dev_put:
+	if (dev)
+		put_device(dev);
 out_ida_put:
 	ida_simple_remove(&nvme_fc_local_port_cnt, idx);
 out_fail_kfree:
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
