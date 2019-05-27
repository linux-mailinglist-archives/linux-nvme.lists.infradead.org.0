Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E836B2AD77
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 06:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vdizmOYkR2op7BHzAWc/7K6QdkWBIAnIPTk4gN3rOFo=; b=rrsHe1g5+Els4m
	yNP9xcK0P41uaRE6OhvmC6Rdp1yE3/2YZMOfGntxHOHeh6JP+2lCLDG2AcIZEbbzu5c6+BU+/BmXR
	S2NjFxrYL3P+7qIe4rsCMQmX+n4ZCPYtP5aferwf04DhmKCxwYCmx8CykfWndK6E+UqAghWSb8I1l
	h2/aPESEUatierFrK3DQ/hms2hGxSKbcA87vsyfu1IsE3Zkf1hiHjjG4tAov2fvsKr/vYPVuVHuTH
	SOedpQrTgHTSSebknAudxflRJ9VUheV0okJN3KESUMU4dVjZdSo7T1krrUbUGwR2kEBKEPZCsNCg7
	qXb/FjkT2hFbwvU/V2ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV6qH-0005o5-3o; Mon, 27 May 2019 04:02:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV6qB-0005ni-C1
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 04:02:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn7so6486063plb.10
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 21:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o022v61cdmDX0LDQpZs0PvIpwd3Jlk4QVwAd0UcgHd4=;
 b=o91cTa9ZVZ0Cb+0VAXdAHA05CI5C1qobd2alaFGzBTG4YQVDy+hBK/OB92VHjJ219g
 XDx3KMPWK6lTN+9TGYt8tLKtr2I39ZCPufBJ58oxYnL/KW17X2d8x4GNZK+Z/wdIleDE
 YXtKVSQHgV8k9YyALGSMqPLdnnedwYHmKEkHQixTBB6ke+MHK1w21KnoUFsylMQMrSoZ
 VvPJC7uAmQQGlhz8Hg3ZzhhUjgF93it1Iffiw74IYQnIN5Pcanf1htIaMexLE3U0ITq2
 pJpzxswooRT6p7ZWI0+pDcuPSruhobnjUB8VjncAzSBRwRvAk5bQON1YUEouWQR6dPVU
 2GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o022v61cdmDX0LDQpZs0PvIpwd3Jlk4QVwAd0UcgHd4=;
 b=ANyxK+jZNIEqyw/1VZId/8hggTk7UbqftW2PLu+dZmbutxm0T+s9dS+leXQv/iiFV0
 tiD9fmCwYHyK2/ZLdhFhA9CQ2z+NxUjkkb0T7urLPGhFXJfDLe9Iyp8LHWUs9JcuIF/B
 2pqJm1iQ4Hhy+twqiqAUf9CfHB2VMFkoXXiBf8FCs+SwQxvFvRHT5rhW0hIrXD0+6l0O
 GItEj6hTuVniTLjuWf1EnNczT23jCdjTSMzbqao+cOWPOJjNtZLpVRP3twWJN+vP31fn
 9sexMrZZU/kZ55MYrcD4J7WTGkKRvm4cWrg5sUTxFGNdlO6GQP5+UTTjkho1NmY7mELv
 U3Jw==
X-Gm-Message-State: APjAAAUr+xpWrTdDkHT6Mh8W9juynxLXCkeufGkXJ95y+kt/3e31E+JI
 Vw2iCukZXlnhxwj/7nJJ8wTZUUCG
X-Google-Smtp-Source: APXvYqxJUWbwUzpRI+RC217MSNpOuy8ml949hm+Upfl1JrLBC8orjVZX9P+WkIsqRlfbZ2bf1az6kg==
X-Received: by 2002:a17:902:8305:: with SMTP id
 bd5mr98898329plb.339.1558929745691; 
 Sun, 26 May 2019 21:02:25 -0700 (PDT)
Received: from k8s-VirtualBox.cn.ibm.com ([103.49.135.195])
 by smtp.gmail.com with ESMTPSA id p16sm12443373pfq.153.2019.05.26.21.02.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 21:02:24 -0700 (PDT)
From: Li Zhong <lizhongfs@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH] nvme: allowing transition from NVME_CTRL_NEW to
 NVME_CTRL_DELETING
Date: Mon, 27 May 2019 12:01:59 +0800
Message-Id: <20190527040159.3631-1-lizhongfs@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_210227_433971_D49FBEEB 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lizhongfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbusch@kernel.org, axboe@fb.com, lizhongfs@gmail.com, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It is possible that nvme_remove() being ran concurrently with
nvme_reset_work(), with following sequence:

nvme_probe()
  nvme_init_ctrl()
    //set to NEW
  nvme_async_probe()
                                                      nvme_remove()
                                                        //can not change to
                                                        //DELETING from NEW
    nvme_reset_ctrl_sync()
        nvme_reset_ctrl()
          //change from NEW
          //to RESETTING
                                                       flush reset_work()
                                                       //not yet queued
          queue reset_work
            nvme_reset_work()
              ....                                     ....

With the above running concurrently, then it is possible to cause some
strange issues, like kernel crash with illegal memory accessing
or something like:
kernel: pci 0000:00:1f.0: can't enable device: BAR 0
 [mem 0xc0000000-0xc0003fff] not claimed

This patch fixes it by allowing NVME_CTRL_DELETING state to be set from
NVME_CTRL_NEW state.

Signed-off-by: Li Zhong <lizhongfs@gmail.com>
---
 drivers/nvme/host/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..035aa086b26b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -347,6 +347,7 @@ bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		break;
 	case NVME_CTRL_DELETING:
 		switch (old_state) {
+		case NVME_CTRL_NEW:
 		case NVME_CTRL_LIVE:
 		case NVME_CTRL_ADMIN_ONLY:
 		case NVME_CTRL_RESETTING:
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
