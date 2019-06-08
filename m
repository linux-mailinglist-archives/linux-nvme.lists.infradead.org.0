Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EF03A13D
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 20:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9F03Z/XKvjGx5mvwyLRoH11UCjOGRZGiHWlvFGLx0dU=; b=ZJpbFZ95VrIUTj
	+bYaQgTDQwT4rjg7V2cmov+fd/Rkc1AbwkfZbIoc93Y20L/+McGxAyKwaUxTUo1mNMddjs25OzV06
	Av7z5ojw+xT48gTkb82jFTfhVFzsU68nb7jYaqvC2846gXATsLMMU3w1X8/GUCC+ndZRKmv6o3BcZ
	pXUII5kVPcPiOvHe4EZ8s1P/DD2l41Q4maISsa+Acc4fcU8W0swRs1QJiTNzEklT7mKJkEJfs5bc7
	fjCz1G8kJvgM6BVgK2T0CMY3SPJG5U3Kqp+3PAtMDgalj02M0RN8cJSB36CBUYwLydgx5QiimNDnV
	IhvpY7Uwyi21fcHLRLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZgBo-0005ox-3R; Sat, 08 Jun 2019 18:35:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZgBk-0005oP-2y
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 18:35:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so2986712pfd.2
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 11:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ecBtC/9ExNpspx1n4UBnB6AWMs5hI01UwmesSx4s9kQ=;
 b=UwYBn5TdqbJUh5PVR2eHgGGLgJBvFY4wBt+5rjzejS8aT5bS+QEc2RJAk0Aum3akfL
 sKCcRN/xht+R1SiQZE5qXVz23yjkooedympRAL13sV1wMSUCdB+0a13Q/H5MboM8cMjm
 pb2Z9g3XtlO5ri5Yr1lgW33v0y08fohNpJq8cqcacapcf/B2RF9jAgS+CmGnzqfJp5wK
 iv22AnTNP6xH7Ci8zcdZzmo3yRB412PtOoEZOkWs3MXxP7lYlGVaosj9e8DDeBDF1PjZ
 NKqozrtiqfbiI25Vq6LYXx00sJi82JrLn7K+6zdvBFERj6F9//Oi3Ok9vb9FINatfmku
 ioGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ecBtC/9ExNpspx1n4UBnB6AWMs5hI01UwmesSx4s9kQ=;
 b=VXSJZMYNQ2C/gol1E2tZf9KUGKntOpqbQmBgWGjt0/sLnHVZuXFgQBPTX0wd30TxQs
 OB8vctZ2I2AEGjm473EpsnuYLXEQusewoXOwOP01c/GIvFw1x2i5XydZditovlHx3iK9
 G9sL3Wz9DfLbrTbWmKRep6DbeasbjAvKLz4fHFpGRxSB0qDd6GymnAFjI6bVQ6Ip1btd
 rySJ3j6S+3kBvEzU0nW9HPjzBG7fmdZQMft7HhKoL6tgxMqf4NuvnantNQGHVofeUiYj
 eB5/MCR4jANr4ZnaVEq25AKD0b1Qk6GU9hpi9NXtESEyW46g4e7uXmam1AEtcDzvqZJj
 r5Gw==
X-Gm-Message-State: APjAAAV0yNZwZW2/Lw6+vembccQMqZvHQe5yZ9akLwkb5G76dq+bgbi4
 E7ZHeeoR2yPIY4N/2HNJCVDrjHRD4ks=
X-Google-Smtp-Source: APXvYqwULTbnjWFGxxnTX5ooyNfBQvxXtnXeF2eUnPUVDhVTGuA5ZT4RgnyRpd7afhbeVgY8w9l11w==
X-Received: by 2002:a63:2224:: with SMTP id i36mr8607282pgi.70.1560018934826; 
 Sat, 08 Jun 2019 11:35:34 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k2sm4902834pjl.23.2019.06.08.11.35.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 11:35:33 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: put error value when state change fails
Date: Sun,  9 Jun 2019 03:35:20 +0900
Message-Id: <20190608183520.25926-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_113536_156024_CD3A55C6 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If state change to NVME_CTRL_CONNECTING fails, the dmesg is going to be
like:
  [  293.689160] nvme nvme0: failed to mark controller CONNECTING
  [  293.689160] nvme nvme0: Removing after probe failure status: 0

Even it prints the first line to indicate the situation, the second line
is not proper because the status is 0 which means normally success of
the previous operation.

This patch makes it indicate the proper error value when it fails.
  [   25.932367] nvme nvme0: failed to mark controller CONNECTING
  [   25.932369] nvme nvme0: Removing after probe failure status: -16

This situation is able to be easily reproduced by:
  root@target:~# rmmod nvme && modprobe nvme && rmmod nvme

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 5c051a8470d4..fa0a1983d6a5 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2524,6 +2524,7 @@ static void nvme_reset_work(struct work_struct *work)
 	if (!nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_CONNECTING)) {
 		dev_warn(dev->ctrl.device,
 			"failed to mark controller CONNECTING\n");
+		result = -EBUSY;
 		goto out;
 	}
 
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
