Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2353C36C52
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AANAL9YaJGX89Uawm4XtnnLzHPURr/miT7zkZPdBP1A=; b=aDDScJOW5pdVDV
	csJV+LMd9HbpIEOVlTGpv4gbHJIPJHmZqAhoVKtK+plNzqF1f6D1UzTltajwfuYeN/0Y62qoEiIIt
	lpt30eJMEo3eqb4ZKvmoukNQ6mAomkgtHWNq+o5sOoS8KCuF+Av/fIUhSsykmgFK5n//WyO/hgqpD
	WQCvaMa0+vhhyGJtqn1TALimUoNVU96faBafd5opWHN7J9vzOIw9Tkk3a16PKLAfQermJadmHKr9f
	C6riprgAQF8l0LZwXZRxoIRM7go88CtAlV1ZwB0p/JyTTwurq0BTRWtltIEQ7dAHKdIbBgxUr7OMB
	Zfqw8uNU6VRJm3zkSSeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlxO-0002K5-26; Thu, 06 Jun 2019 06:33:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlxB-0002B1-CS
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:32:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so768575pgb.3
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 23:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qV7BYsusa/BkjRaIAt5JcaY/btz3GAJvUQJzpnho/mA=;
 b=MSNPPEm2SpRSs5uFnh4sFaJhgND8VUd3lj9r/d930IVjSgPtFN82NRgu3SVXAVAHeh
 3C42QH6yfWGow1QIH9zWdPzL1OShL1Lcdff0lqk8BKVLXdimuH7Dd9Mbuq+gPgiRGNaf
 yyatFYW9o3w4mSYLGDpSymeTYkwSjUHEL/vfE+QFOIiaoVQ2pQki7YJVVGbEQm+B/VGY
 a4TixDrNHsXB+e1Hx8sph2bcOZo74sftogFuCyfktOBZ1GIdW9rgDfj7TmHf3fJeYDpS
 ibDALU0qr8oZZAq+MeeA4K/u89CTIQqDHd30lXziYE1sITNThyJjESNO73DWt6QrbP+F
 gESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qV7BYsusa/BkjRaIAt5JcaY/btz3GAJvUQJzpnho/mA=;
 b=RiZ05aRzZRQKHp/t1OQbXsD97zRfNe7LTRzyAFEZVsraM0Oq1QYE6e/EJCrzdGfBOw
 BfKF6s8tmFSFMjcHDXXOcvxM5RoOuyvr1M1WyU+CP5lFu7sQTvMhgZf7ttmQpjjJxqOp
 fRfHm2wYWY9R/t2O3OcbIdcRxEny5Y0OARFCGGDY8Ra5x+a5vF7ArD3DydAQwOfsM1iD
 8A7n7/RfQMijFoHuaCZm9LeHsQ96JMOymWrU01YHEGNtjcof+DeilahcYRWcc3Q9JG1Q
 tFluX+gS1gwwW/LVRkF1FonDFAd0vr8w/yHKCuNtGqV4t8BbvJacjd+GW825Zxou7Y0K
 MlUQ==
X-Gm-Message-State: APjAAAUmQjlCkG2oCYYKoAZVJ5AEXzFgsOFzhoUagcMgY5VjL/kpLo+e
 MVzLYwjf0lIdi4rmbNX9p73ptuu++WM=
X-Google-Smtp-Source: APXvYqwO6todhERiIoiK742se/wGBl0TfzJdibw7vdhnQjiDr5StjZdiZeWdK0LN3YwgdXV9fOX5bw==
X-Received: by 2002:aa7:9342:: with SMTP id 2mr43173317pfn.241.1559802768197; 
 Wed, 05 Jun 2019 23:32:48 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r64sm1202562pfr.58.2019.06.05.23.32.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 23:32:47 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V6 1/3] nvmet: introduce nvmet_req_to_ctrl to get ctrl
 instance
Date: Thu,  6 Jun 2019 15:32:27 +0900
Message-Id: <20190606063229.17258-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_233249_597572_BB527ADD 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme host driver can get the controller instance from
nvme_req(req)->ctrl.  In case of target driver, it needs to get
controller instance from the struct nvmet_req with sq where the request
has been submitted.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/nvmet.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..2d569a1dc3f4 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -318,6 +318,15 @@ struct nvmet_req {
 	u64			error_slba;
 };
 
+static inline struct nvmet_ctrl *nvmet_req_to_ctrl(struct nvmet_req *req)
+{
+	struct nvmet_sq *sq = req->sq;
+
+	if (sq)
+		return sq->ctrl;
+	return NULL;
+}
+
 extern struct workqueue_struct *buffered_io_wq;
 
 static inline void nvmet_set_result(struct nvmet_req *req, u32 result)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
