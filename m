Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CE21397F
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 13:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F08awXjU/NVQ8JY3d/522EQo58qBM0XgUP/AuoQsjTE=; b=WsO
	ScveqDB1GcHWf9pRaZKZ53k/ABhXUjZFwW48Xk5E1NePY9JQr32374u6+97LWW3cBg3yTVO2R2V2N
	4ivBd45bEtsoUULJJ81CYk+COrUbqYeaidVa14BM0pZWNPaDwjyNH6FMIgljRXCKS8Vp0Nht0UZ6i
	L/2mxB5/JSdweVIIXXyJCA0Dl9DeUJiN5lspQ00wrY4vF5X4un3o459pNWE1EP1hD2phbjYCAPTN1
	8Jbw3biFrW2OAhBUZjh44R1Q+Bab8auJtmYSMsbtwESc2ubSXeqYOUMrTB7y9TKii/XnOCmRpzon5
	UDo21pbJKqpH6nzJWI0rSm5ovrdE34A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMt18-0007Le-PM; Sat, 04 May 2019 11:39:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMt13-0007LH-HO
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 11:39:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id a59so3993241pla.5
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 04:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nnFMBo+p9x5MQfKCTg27aN002MiY027jJD/RWFN1tQk=;
 b=JGE3fqWbeex0m2IwyagM1ppZOOESW5n6rMkZFPPde36wsIJjmalsRrkFhS83uL1UeY
 IvjvGu2QyPRy8GrgR7j36aHzUbs6UGdVQnPI7qw4+kOr+UCfbYuD26dzwzOJo9WszRAx
 Sav4p2K7FGAxHQdv7Hk3e5V+czHsaY5xaiKg7PtW8q47LxdY9mkTA0AUhg9o75Se8X/Y
 9hF9TkAEBG+xOIh/zSHAOvpRoasxaF4x77cISO4Itp74Kax3IwC8QzMQj3O4iyoCqkQB
 0L/ETswVRoojWHMqmJ4qbklUWjhVV02mc1ne3wrAcj1hxRa9wPrLnFQxrrhf0ofRqd6C
 d6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nnFMBo+p9x5MQfKCTg27aN002MiY027jJD/RWFN1tQk=;
 b=Yy+8tL2UIz+9tYKGe9Bbi8O67HDjKKPY2UuCXXxsaPj8sVKTn9YL6vrCQGEcdI5CjQ
 B/f3rFNsEI2xGhIkTRDV/q+KQkm9WJafyvURAv1tLBZ/T8B2qMHs4LuiVnz9t73UmIRg
 jIk0ns65QMZOXGQQ6EYuEHDoCA7MVaWXpNZuo0UOaS4fRhwm+QECCEJCuM9btEdNLEkI
 ABWo95g6F1ZYFYkHGSqIIkIOBQcKV7dPTN2aKlhwyFv8gbhPSK9TL1ke6V1L13DXDoYf
 bXiMp3jwpGclSaAFiBDo1wK+Rs8ZmOL5nj649JrIZ0UPkTZgd8Pf4FzYGsxy5nMP7ItK
 /dgA==
X-Gm-Message-State: APjAAAX3pxJUHiYlIg8/jDDCKOSDh/znZ2EV+MIgtCjLoc0GxqMJapoH
 bCgryBR8dM2vaAHz/VMtpoue6zcJI7c=
X-Google-Smtp-Source: APXvYqwQzzsTgzip+Kh/MVxIdUm2vTBlBVYK5PZ6GqpSiPu7TqcKOIrGOEnUee5EBj4XpBb/gT8S7w==
X-Received: by 2002:a17:902:bb0d:: with SMTP id
 l13mr17979845pls.141.1556969978197; 
 Sat, 04 May 2019 04:39:38 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm6003341pgn.64.2019.05.04.04.39.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 04:39:37 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: Fix queue_count to consider nr_possible_cpu
Date: Sat,  4 May 2019 20:39:23 +0900
Message-Id: <20190504113923.32316-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_043941_607373_9A8C53D4 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The parameter should be set with the updated count 'n' instead of
'val' itself.  The local variable 'cnt' is sized in 6bytes because nvme
supports up to 65536 io queues.

Fixes: 3b6592f70("nvme: utilize two queue maps, one for reads and one
for writes")
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/pci.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 3e4fb891a95a..d3be3193d023 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -147,6 +147,7 @@ static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
 static int queue_count_set(const char *val, const struct kernel_param *kp)
 {
 	int n, ret;
+	char cnt[6];
 
 	ret = kstrtoint(val, 10, &n);
 	if (ret)
@@ -154,7 +155,8 @@ static int queue_count_set(const char *val, const struct kernel_param *kp)
 	if (n > num_possible_cpus())
 		n = num_possible_cpus();
 
-	return param_set_int(val, kp);
+	sprintf(cnt, "%d", n);
+	return param_set_int(cnt, kp);
 }
 
 static inline unsigned int sq_idx(unsigned int qid, u32 stride)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
