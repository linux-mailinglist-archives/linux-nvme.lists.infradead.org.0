Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C3217FF0
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Q9nOVH8cNvv+0clC1Joa04+mdvjCbs//k6Ss02Ci7c=; b=qKo03bR+2WPaAFWazoaATwUtwp
	6CJYYUYvlGHxBge71L445hhorD7X4Yxew+yXBUGZDOMrcAY5JuP6zFuR1FrDa6/vvTCQsliEhw2ho
	3Z4bnkcJQQrXSbMynbZ4h5Y8BgYaGTVzxRuqscAk6PpGIufDqPFRYf7UVo83yRLhQv+ceEfXdtTbo
	SjbHUPRRP3iGdoCfJOOV0L3o/t5LgNX/xvYuPzvDcds0Mq+VB52CD0SxvTeex0wAxEiQ7cX8SiHp5
	kADsSSL8mErn7VK7pFdgGwHWymIQEAuwtEzOcjGtEPOlX/Tk5Q1v6uBS3GqvquHnLYwFcqtMqjFoL
	Pqyly60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORR4-0004k3-Jo; Wed, 08 May 2019 18:36:58 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORQu-0004fv-Et
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557340608; x=1588876608;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=gLSIB9+d0kqhKgSpwGBml0oDiHV90smri3YupPvZbs8=;
 b=F3HvhrZ0RE1OM6BfzRZZ5DjCxClR7JTOW/5HyAmVp87MkUiZKpeWb65i
 hHUoCdzGEiKLAC6HIw17Hd5nUZKXUukzkBKK0/QMSvYi9DzHOrVJfIM8I
 71T8c/5zAx6R9Pen1uw6z2uaWSW18hrPe5NS+ZBkIIofF3HmPGWjOZ4bT
 2PjNpaBeI1OZKxpxbANtAAHh4ES3tdlPAJ22WBVJGrE14t2EaL46Twd6n
 eNPor4jXwbS+64qe6fPK9HVNo0XxNnow7bFbmpHN3416TZImb1LeYz4Kx
 bIBNfPtjdfdF55Npfhoq6q0cwAjNcg4J25MXsm5fh6hNNLjSFWquClzNy Q==;
X-IronPort-AV: E=Sophos;i="5.60,446,1549900800"; d="scan'208";a="109543226"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:36:44 +0800
IronPort-SDR: B/G2W0bsPM72xx4vALhl5KnqfFLvpSrJib87YwG7WyQ6lC2nhW2kPQdOiBoXUMXECcwyJGw7P1
 AMD+1kgW5G7IEOjoV5JsSFmkl8H5snh7j2zr2ejeUUtb2vpGf8Hz0KInWt9cwk/AdOfpZ81wJ+
 5L0gsrUu+FfeQcPrpeYrUDWbrnj24liPQAV2I4kfERBhAhHG9j4O5+5e0zcLBS2aAy5i5tIawC
 ZwQgF7LScJQqQHZMljpzBBEXKRl3BpVeCHfQNeiwW8nnQsmbh/AtBL0BeC2b+jMK3J/RmyhGpa
 mZ7sKFrLGT2b4gm53i14CQ6j
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 08 May 2019 11:14:57 -0700
IronPort-SDR: Tg38hEeOTH0P3E0IHNAqe4vl1+G9oOiguH7VxB4maM/XyyBTcW6Yy7eKXn/fwxTpWTf0gFAc8Q
 Lm76BFCCdtP3iU/tGJlcmRYA/2DeslaoklfYEckQoj4o6Jc+JNFQJXgSRCCGRKEABHHWB7QnVk
 7uvcQvGEXadgBRzig0UAvRfl/2SXreXb/Sxld3CIoavuYdUPU3m0wIDGQw5WBskhMXwKIWcZ3w
 n2teF6TmRAyU9bijpNGMp/UzhELtgpPv3rCX6qPhjm7b3eqyMVBnqI7WJqdvbx2CEzscPDyXcx
 5m4=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 08 May 2019 11:36:45 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/3] nvme: add sanitize log identifier
Date: Wed,  8 May 2019 11:36:33 -0700
Message-Id: <20190508183634.4682-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113648_533165_5723D086 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Introduce sanitize log page identifier which is used in next patch.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 include/linux/nvme.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index d439c129d8af..35381d689936 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -835,6 +835,7 @@ enum {
 	NVME_LOG_ANA		= 0x0c,
 	NVME_LOG_DISC		= 0x70,
 	NVME_LOG_RESERVATION	= 0x80,
+	NVME_LOG_SANITIZE       = 0x81,
 	NVME_FWACT_REPL		= (0 << 3),
 	NVME_FWACT_REPL_ACTV	= (1 << 3),
 	NVME_FWACT_ACTV		= (2 << 3),
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
