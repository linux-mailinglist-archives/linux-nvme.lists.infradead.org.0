Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDCAC0DAA
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dAeNyLPAci6Y4UY/PZYJsgoCtf8yAGjEcs8XYFElyuU=; b=X5LTuhiFwLcFnlvPkBvLmN7+Ep
	KwbRuekECboAHdnEpKbmUZhrYOwV5BWee+T1ClknA/RHuhHGAEEQvRv29v6yKDiu+klWC5RT3MCCm
	0NO5uw0TCJGAlpLxWVISGWcdzKlPmBgJ/U+SY8yOykdaSL5bPXEz9/QN37PjWTllcFU6iYrDnBQ3n
	bl7dpznKgbIKXSN39J95KOQRMEZydeFgwYleJV0ULSOgFwUvB2hfLEn2Z5COzPRkl/0/iQ2lTxzvH
	b+UKdYmB5TTJXEEDQMctuqJ0UMQpxyvIey/b9Aa5TQ7LeNm+k4IXQ/7aAz4ugHzyCimI043ffnbwh
	qoMMcY1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyAD-00011L-Ts; Fri, 27 Sep 2019 21:52:33 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDy9a-0000U7-SJ
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:51:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so2274260pff.9
 for <linux-nvme@lists.infradead.org>; Fri, 27 Sep 2019 14:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JLJqdW1EyMOPIF2UQVS/MGqWiMPZKuo/kTghAPRr50Q=;
 b=Z+Rez7xDYTN4z5fGEgg6tn7gk8SjwxZd129qFNUzg8AVFsgZHrwHWiC4EcerjvXGz4
 DMF13UvaNP8CBGT0oqTjPwB4eF/6/hjgisMumROVLZ8xeo9gLZRliFjfMuZXHcu+nyfu
 T0XS6lVORmSNBanHBKvqri8d8D+0r2suAoEK8tg1URR3dbgx+D7BUMb+Oimwf9zg+gNi
 ZE9Qq2ZOsze9mwA7YRKGf0BmOY6t9QywyLWailIY2t68xkxOewfbuI5gNxQgd+yj9rte
 /7uDcM1ZRF5HfYcbSXztm3X4dByKeCW9ZuluAWkynsDgQYfMx6ldiqoCmBtt5zcGMYz2
 MrnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JLJqdW1EyMOPIF2UQVS/MGqWiMPZKuo/kTghAPRr50Q=;
 b=kGWiPd5BxyVMNqEPVr6AVTBldA9tzE5YVao7nvz9pt7Jp3WvG4JDcIpvyw6ge/Xd1w
 tEQGpNKVphLF8RjezDWRVTLf8qx8RB1BsDak7NdXaj6rOuxVurTGI597I6fJ01yfr03W
 29j1iKEEG2nRRGm7TeiKrWOO7nwaA8zQPaIV6BKFnfk6NbXq2JN55oNmVJqHrBAyA62Q
 t6UrsyOwqh3UCDf5RHefk/HXn5C24/0Sq21JXzoCjR4AXpoRFAwrhHhp2whudbKSU1AK
 /He2gvbLCnYC9tkV3C1Sr8POQYTg9A+zwN9l8iaRsmb8LXVFR2qV6xTxoiqg2oYQys58
 aD8w==
X-Gm-Message-State: APjAAAUvuIGrdz1/Lmww+fuKzrOVodHoc2gGBkhPeMwqFGvu6Wpi9jbN
 MyIt3dlNQwmpMcgmQmWi6rc1aKpk
X-Google-Smtp-Source: APXvYqzyGw9811Oy+wTpTAzMX/IpShNsNNBdq9c9goNYlQn22/GuT8B0fhV8/YVoQN6eJEbkK3K8xA==
X-Received: by 2002:a62:d419:: with SMTP id a25mr6837922pfh.117.1569621114344; 
 Fri, 27 Sep 2019 14:51:54 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g5sm3430507pfh.133.2019.09.27.14.51.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 14:51:53 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] nvme-fc: Set new cmd set indicator in nvme-fc cmnd iu
Date: Fri, 27 Sep 2019 14:51:36 -0700
Message-Id: <20190927215136.3096-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190927215136.3096-1-jsmart2021@gmail.com>
References: <20190927215136.3096-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_145154_911862_B3A03A08 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Set the new category field in the FC-NVME CMND_IU based on queue number.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/fc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index be99b3c8264f..b880c5b3d3e0 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1729,6 +1729,11 @@ __nvme_fc_init_request(struct nvme_fc_ctrl *ctrl,
 	cmdiu->format_id = NVME_CMD_FORMAT_ID;
 	cmdiu->fc_id = NVME_CMD_FC_ID;
 	cmdiu->iu_len = cpu_to_be16(sizeof(*cmdiu) / sizeof(u32));
+	if (queue->qnum)
+		cmdiu->rsv_cat = fccmnd_set_cat_css(0,
+					(NVME_CC_CSS_NVM >> NVME_CC_CSS_SHIFT));
+	else
+		cmdiu->rsv_cat = fccmnd_set_cat_admin(0);
 
 	op->fcp_req.cmddma = fc_dma_map_single(ctrl->lport->dev,
 				&op->cmd_iu, sizeof(op->cmd_iu), DMA_TO_DEVICE);
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
