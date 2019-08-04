Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301D4809DA
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+cqu6Y18P4qiPYqURZBIMIQq4gFJ/sc1JRB6/xDsJbY=; b=WznaR2ZwqXS67R35lysfOycnzk
	cZgNIi7U4jWu2tKZP5uJ5RWfe5Rtl7QGPTcuWYD52FG38GMUK7HA5TgP8t3lr5CNqAK3XucetPsdi
	A+URQLJ+UtZumyPQ5I0Mossrn/hPOEH+LO3zwZnuq9Pi2qbk9ZQ+l/REy9FRIwwoFEeJLaI2z4nWz
	Ec9Pc6KdImLA/rMtMpE0c2XcNjetv2DrTc8Yy+U9PGWDlf9JqOouTq/r4uRD4hk2jaykQpiN4SwpE
	ZuDmimEG2LumJV/LN7Ms4sE0Br7dRwYvQg/AHOp0a9OREL/utdCEFAPGaRcc5qy5PYI8hjQfFnmri
	3HpMiKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBIi-0002L2-5A; Sun, 04 Aug 2019 07:51:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBID-0002Fj-6m
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:51:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id az7so35222278plb.5
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iNL705Y9gCyblCT7gIbT1GC96Pwkm5rH3KGDHP/UOWo=;
 b=qJuC+AGyqaq70OvV202/kHjpOpei9k7K4d4LVsnp8c/R/danpn2x5hsO3pc0KpUtxY
 ejZ2TYmw0ywuom5kMzqAwkt3Dyg1eNOlIjhnsnvMa/S7gmC/0dxGLIOwMC00mMEls2YT
 6c7cOvVixfwN6svK9rWcSd5KOwfRUI7VzpO7QpF//aY6vKmWwF7Qpo7dx6t2jnK80/oi
 PhAzlD72eUsWa9VIGQ1RmtJF5RQ8bI6u5U3o/OXE2gnBwsOPeZ8gHGWXWdRB9tQTnvoQ
 H3kOQyUkU3wua1yk5tfnCHEMaYU2Ua1Gb5wbG92HAUMLC17PIo0+GmNlyKT+Let1urD1
 RK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iNL705Y9gCyblCT7gIbT1GC96Pwkm5rH3KGDHP/UOWo=;
 b=FVKdxVwMxVVYYVYnBFx+GL9vHuBIRpvA2gT4KQFpNdJAYTIypTjoCqSm7qaPY7d8AE
 xjCXZTyYs91H2FI7W1XkoM6nsdivmEe40C1AMww5r2fd0I7smnaKKFK6l1ZwifbYL5vO
 eBBgYzI7CeJGkAKN2/idLaPmOY1eIQzLDpXnLYj3bdpZdchdxnrXwI/QSvzrN62Myl1q
 EjTepKG48dPpRWmqroCHlN4OAZqt07bOqoO2oiDycLbkSlDmMTbl7XR/YJU9VqhHSDtc
 NT3zK/q/rI5yNxINX/7Hqs9mJjVIuns8abVsTaAUCODwfzGoVLsIGw4NFf35KF2swYbw
 9BeQ==
X-Gm-Message-State: APjAAAUxwdoC+1x6n4g7gId/6KuJjDvP2m0kTKbvU5Kpc43WB6l2XQLE
 TzG7y7ma7KUU9WOu1X1gYTZC2YxCymA=
X-Google-Smtp-Source: APXvYqwpkzU44LNsGE0VQgYReBIVmS9jXKmsDpuCylSP1Pz1DLsG2d5oOweiK1LHMbN/ltVemRLvfw==
X-Received: by 2002:a17:902:684f:: with SMTP id
 f15mr139578141pln.332.1564905060332; 
 Sun, 04 Aug 2019 00:51:00 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i126sm94091652pfb.32.2019.08.04.00.50.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:50:59 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme: add Get LBA Status command opcode
Date: Sun,  4 Aug 2019 16:50:47 +0900
Message-Id: <20190804075050.14642-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005101_243976_5B35B116 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVMe 1.4 added Get LBA Status command with opcode 0x86.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 include/linux/nvme.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 01aa6a6c241d..a01277501eae 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -814,6 +814,7 @@ enum nvme_admin_opcode {
 	nvme_admin_security_send	= 0x81,
 	nvme_admin_security_recv	= 0x82,
 	nvme_admin_sanitize_nvm		= 0x84,
+	nvme_admin_get_lba_status	= 0x86,
 };
 
 #define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
