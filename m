Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F4C4DB0F
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 22:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MMeNTrKgz5xw3fG6UAbwiCAglS7xERMV9+R6x9whEK0=; b=V+a
	AtD/wZqh0ufONsu+XNztToy1fCaEpzNBByS1vGP0ukte/rj7leCUi4G2JM7itfJmok9OIMce4Efa2
	oE2CzUj3d8VXi6DdO4IwTTMIBrOjMG2YZfZHTPMZhdwwN7POYpxSj1ZwoXpjVlLadM/+84EIiHT9V
	iiURn1Xcer0xK3834Fxlk1w2tRy/jPaF/Zz/Mrlomu2ussKbY2wIaLs4k+3w+7+s9Pk6jY9DG/3vT
	173EGZxAXhXV7zZTv9AIxkkkSDoR09VK0jmf6sI6lWaVvS8JMPKeCEYKkrkNDw2jzo0kvvKZDPvlm
	tlkXkFAaU7hplrUFjNmubU+8s7SJutg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3Uj-000799-3w; Thu, 20 Jun 2019 20:17:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3Ub-00078k-TA
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 20:17:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id p10so2163136pgn.1
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 13:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OoArljCk1jpPBpk2acBDdgZ56/jT+avxm62xbugKG5w=;
 b=jSHaRJB7arhLKMv7Q1fu1XhyFSLdjEgUc4LdXkHUpPsoR0jQojLWWKVBnF0HZEFhEB
 EqOvptIvuAvusI07pRYSfEQM10KKq48EjBJThwqPMZZLR0IqVxNBaBuUP9RwYSWyla3E
 2MBVbCFNi83cEIuYdWy8fKt43BPC06pG7LxWYrkvIObO/AltgnnFOEB4UJvObqWYKaZG
 UreDCTzBDRkr+9RqlZeOMlOv1ygPxJsF5vpPAQR8CQ4iv3xQFL6Flee8JXzjJ3VJjK4M
 tcbEqF92i4TsWhpPw+zsRYC7b3Bf2mhjMDxY4bjNshnQ0z1Uessobx8Ywyel87Cz0du7
 xZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OoArljCk1jpPBpk2acBDdgZ56/jT+avxm62xbugKG5w=;
 b=XGZTBTfbCBpacqTwi4V/TnbA+CXdsjqjqo97z49g9hzIrQZ9VFGbiiBndzRTq9DFXe
 Fa4jqUewNoSGMFDDG2PY6cdV2bPSxa1CM698ToK/2bRPVa/B9BPksZ5+ZfMKSnEe47o+
 QcvL1G6FkZAwQ61NuwrgGlI6YnT7nwVwKQRVy35domlxLz4mKmJAC+AlZkYB9TaMZ+VI
 5+KXpoi7fn3IiV4tlABGYPUsPTcBWh+auZlpV8SdEm8L7FGuVZos0puv53SMGg8txDaU
 Z3IIeAwPSP80A3D+KnUhtHleJfNljukV/zY7oMbEbatxxpANClbZdpVoGMjN7ES06C9L
 t5wg==
X-Gm-Message-State: APjAAAXhDA7ofNhWTSpKxp/bpGq/zWSmlhjrfs6y2GkdockkEA5tN82K
 CsCb4udl6LsbJXDbz8Lk7aIGLz/l
X-Google-Smtp-Source: APXvYqw+LHX6oZBcHkhf50LUMXr/e0/OhlY1XksYlkOQXY2pyWnqBSvnfMPxBHqILE+iXNciwYHVCQ==
X-Received: by 2002:a63:595e:: with SMTP id j30mr13519181pgm.2.1561061829026; 
 Thu, 20 Jun 2019 13:17:09 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r77sm396505pgr.93.2019.06.20.13.17.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 13:17:08 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH][Repost] nvme-fcloop: Resolve warnings on RCU usage and sleep
 warnings
Date: Thu, 20 Jun 2019 13:17:01 -0700
Message-Id: <20190620201701.16833-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_131709_945785_522AB051 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

With additional debugging enabled, seeing warnings for suspicious
RCU usage or Sleeping function called from invalid context.

These both map to allocation of a work structure which is currently
GFP_KERNEL, meaning it can sleep. For the RCU warning, the sequence
was sleeping while holding the RCU lock.

Convert the allocation to GFP_ATOMIC.

Signed-off-by: James Smart <jsmart2021@gmail.com>

---
repost fixing munged title
---
 drivers/nvme/target/fcloop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index e64969d2a7c5..b50b53db3746 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -535,7 +535,7 @@ fcloop_fcp_req(struct nvme_fc_local_port *localport,
 	if (!rport->targetport)
 		return -ECONNREFUSED;
 
-	tfcp_req = kzalloc(sizeof(*tfcp_req), GFP_KERNEL);
+	tfcp_req = kzalloc(sizeof(*tfcp_req), GFP_ATOMIC);
 	if (!tfcp_req)
 		return -ENOMEM;
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
