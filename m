Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EEB1E6EC4
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 00:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRRi7IpoDPXbXm67Kv1tL5ABBjl1OASfqp3dxlJEigA=; b=dXCpuqbV13hSJi
	Pi/hxdNp5psF8tIHN+4Y4856VNs4ZUFNeY/Kk7SDvx/mSFrcjoxTyf3nzP+85zIYUuHb4RQEEvOhJ
	1FQ8DBQbD2tsj96JLmQ6MiwUVNdt0NOf6DaW6O6wMdmqQwCh11Xh/ArtAo8mQLQ0EmFK7i+uRG0Ep
	wjdHOhwqBhF78ErBACWdxsCrKbXPlr4d8k+zXsZ8bc7vlWpDjkeBioseOlLsXBkkWqql05kf+STdm
	x+U9swNQZxGgXxgJRhut3QjjyPGqr6oSdiAWLuZPm1nEhaoCyH5Io8mBgNOPSL+wltPIp/sUnUHdv
	8dtxb4PfVAalKsWMzKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQxn-0000Or-Jz; Thu, 28 May 2020 22:25:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQxi-0000OC-U3
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 22:25:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id r125so78234lff.13
 for <linux-nvme@lists.infradead.org>; Thu, 28 May 2020 15:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U45IbwVeotrZ4OWpZlm/xOgQ9DMhjtz1KtTMQfBvNRQ=;
 b=PzRdGnhq4CSalj3cemkrVuawgIp0SDPG8U3hb8QRmoeml1qcqku32PtmbrjZIoEbuQ
 hnopWcrPvxiLb65ld8qYIihaGWOZUIWCKCyc0ZEyMBaFewRAYPJ4UR6wA+XwTx3LxVhx
 rwrykdRvl4ff2ER3oxF1OCznTYdqVrbsDVzAS7m1klQDqFGXfzRe3CSxQEIBRKclZwSf
 yVViPfn8R0qOzSnM6tpFChsRcK4yTdxiBd84OKNDNvqknoYSiQFivmiS61nuSBFBdbQ2
 bdqOHOvMPYCSoVmb6u+IgEpqRfQNisPTB0jbMzQkdsmjjYVvTO8D1pEbSRFjSqV9/G8+
 RTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U45IbwVeotrZ4OWpZlm/xOgQ9DMhjtz1KtTMQfBvNRQ=;
 b=Izqhl04kyz2oogjkhBIuLzqiqAmlqbKtLVS6bBpXYs8sJcPADyEbQm5S37g2Ck7AOi
 jh2P1xu//v5EmtFoIr6usIP27p2NltQeDWhwWvmivqeZKjYM6oxkur5ks95pmk1N8xZB
 lnd2ufVWaJL+SyCBXDGaLDWLj1EjCqYH9EKnOJZfRThLH4JcDdprswr4GPqx6TJJ78rS
 /Ac2gQFVEWMwRABVzNs88HA6LUDXm5kWlBQnGsILkrcRqOAJalWNDaxzbcy4SPKSapVS
 DlPSwoU9kQKs0SEbMZ4sRrQ13Jp+YAnbnkGs6PTFHZXuSShjOaj9Q0OytQD+7I44piwm
 pshQ==
X-Gm-Message-State: AOAM532nFMdfaIut8J1LFmh08E369bIsq203kMNGtK/EAMrDqqoCyDJX
 sKRR04VW3L8ka+GLpFdFiBw=
X-Google-Smtp-Source: ABdhPJz/b/GogXbdI0eKf+z+rDIqroFDlYigXrikmC7knoKBvuDwXEI1JzvZigVjFwYdDztgJz3t3g==
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr2771451lfn.77.1590704715854;
 Thu, 28 May 2020 15:25:15 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-22.NA.cust.bahnhof.se.
 [158.174.22.22])
 by smtp.gmail.com with ESMTPSA id y11sm1674382lji.52.2020.05.28.15.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:25:15 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvme-tcp: constify static struct blk_mq_ops
Date: Fri, 29 May 2020 00:25:07 +0200
Message-Id: <20200528222507.390172-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_152518_972435_6A036FB4 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
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
Cc: Rikard Falkeborn <rikard.falkeborn@gmail.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_tcp_mq_ops and nvme_tcp_admin_mq_ops are never modified and can be
made const to allow the compiler to put them in read-only memory.

Before:
   text    data     bss     dec     hex filename
  53102    6885     576   60563    ec93 drivers/nvme/host/tcp.o

After:
   text    data     bss     dec     hex filename
  53422    6565     576   60563    ec93 drivers/nvme/host/tcp.o

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/nvme/host/tcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index c79e248b9f43..2d6c884afc63 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -131,8 +131,8 @@ struct nvme_tcp_ctrl {
 static LIST_HEAD(nvme_tcp_ctrl_list);
 static DEFINE_MUTEX(nvme_tcp_ctrl_mutex);
 static struct workqueue_struct *nvme_tcp_wq;
-static struct blk_mq_ops nvme_tcp_mq_ops;
-static struct blk_mq_ops nvme_tcp_admin_mq_ops;
+static const struct blk_mq_ops nvme_tcp_mq_ops;
+static const struct blk_mq_ops nvme_tcp_admin_mq_ops;
 static int nvme_tcp_try_send(struct nvme_tcp_queue *queue);
 
 static inline struct nvme_tcp_ctrl *to_tcp_ctrl(struct nvme_ctrl *ctrl)
@@ -2333,7 +2333,7 @@ static int nvme_tcp_poll(struct blk_mq_hw_ctx *hctx)
 	return queue->nr_cqe;
 }
 
-static struct blk_mq_ops nvme_tcp_mq_ops = {
+static const struct blk_mq_ops nvme_tcp_mq_ops = {
 	.queue_rq	= nvme_tcp_queue_rq,
 	.complete	= nvme_complete_rq,
 	.init_request	= nvme_tcp_init_request,
@@ -2344,7 +2344,7 @@ static struct blk_mq_ops nvme_tcp_mq_ops = {
 	.poll		= nvme_tcp_poll,
 };
 
-static struct blk_mq_ops nvme_tcp_admin_mq_ops = {
+static const struct blk_mq_ops nvme_tcp_admin_mq_ops = {
 	.queue_rq	= nvme_tcp_queue_rq,
 	.complete	= nvme_complete_rq,
 	.init_request	= nvme_tcp_init_request,
-- 
2.26.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
