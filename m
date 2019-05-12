Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8941AD00
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 18:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYLCpBA4/yXZj7vu0jAcktrKgEaZyy/B+8i6ajH1Aac=; b=KyhOKeJTH75wUHmawo8zoiPwaG
	e+P9AEeUOalUMfsQNddAAOjCI5vWM1f+2NAy1A9+TtlWonGYDnXh+DarahZ0NngG7PDWZN/Qu6NcW
	2LOSQBJ5x5aNTw0F1ivrRPXr7OwN5nCZxzoAvb0DgvbhGvq++IFnsMf0GfSewnYIMdcgItaJFzOos
	XZqbQK73fR4GKm8Xtjtm6vfkCwvn2ImMux6oyUGtth+P12gTixdQo8kzZQNSIJwEbZzGAzgBxs5EY
	s6scP4N4IriZu7InygxPLJJLaZZEv3oPC/a2Zo4qHlrEpM+DhZZMRVt6W2vDW84Sl2PUqDFzwnI5E
	ucdqgrRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPr3H-00074w-VW; Sun, 12 May 2019 16:10:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPr3D-0005kz-HP
 for linux-nvme@bombadil.infradead.org; Sun, 12 May 2019 16:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9NSicMFWjbWD88Z8OYiXMq0OpWbZms4tV6m9iLfRYwk=; b=uSyJeDMM5nUEmNr3Ypo1XZJLt
 uHeAPfTk6hKbXUchugAuDnh+OBJSNgrNZITRHJ2unPGc48XTWUYCtzHMCzw3erWEbgJ5n+X1NpPaI
 YJdTIFm6VDsK6MaxWamdzPw2IJnWNLuWh0UHUZBRXxpyYTAjYY0oDKv8jhC83qQTY4NzSTwf+hatc
 +Vs6JVxtZuP1ouxpri7N4ZdTH627mJQyaEqMTW4fn3R2ibMPHvKLrUGbj5ZP2guNcXw3NLITbdRgc
 IxFHgmq7cOGQAFDrcHQDMlZddTPYzwQfL4/ObYNZDuehi+tV6v2xTOWBNLkhcXb+ZyRCgypfDq9HL
 MrM7qPqtQ==;
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoY-000227-Q4
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:55:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id f97so54139plb.5
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9NSicMFWjbWD88Z8OYiXMq0OpWbZms4tV6m9iLfRYwk=;
 b=NLaGsnEfT+5HzCg3xLdNw/k7DfR417SiGvB6mw3zPLPqzG50VaumHeo4S8t0Ot3HXn
 0YGWqc+c9E6lfQ15Wq9kO7SzoHBSnY4U01CS8LyUqNcbR0N4LJDSXXO3rfZZ8LrpjoL0
 7FQ39M3cy9kmNQgJ22unLA/1L2E0QaLiY5nj4hn1NQDm8whhN4Ed14IDxwAnuH1P4PPn
 K+p1RzQ28p/ioZPfAp7a/3kHpVaC7Mp5K0BbIRN+FIhYeKpXX0FfW2MxqNMeqx4kkRG9
 LB5YbzDDAzYfffW400cfJDz2VRkNvxJdb/9QNfhamPgrAGuP3E8QX/H1a71rULz6Uhv8
 wO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9NSicMFWjbWD88Z8OYiXMq0OpWbZms4tV6m9iLfRYwk=;
 b=bBEK1HyaK2rJ49a0Z5/MtWIIdYEV3SolYI2ALke5lneqkEJYbu5YhmC+jkI2aik6Ma
 8aSBeu+s7zNEr4WdzH0DfS1g9qxtWK8MGywGkYEitS24ELuCm6CpX3r6AX5Q88zRWsfA
 qVOfyMMXHs5GJOAYW+KJkVtiKNmfaSSrULXAGpBK2WJ2v2eZVbiL7/5cszi4lBxHPTet
 t9oU3860uJq2UlJ4wsiohBV7XQdv3Cxiyl4uc16OmikivH6DGo9CnsmRFZJTRrvSSYY3
 7fhIh6bqLJ6fbs2uGDb6uVnnfPYTci4BGAUUFWI0yx3UUJ2drNyeaLFvFppehXQg8PBa
 dIkQ==
X-Gm-Message-State: APjAAAVh6tFZqgYSD7kkECZ5h90udJLrwDkOfQolFs2DhJAbiScKCSIk
 v8mGOge8vdb9wipLNpfazRIO2XfN
X-Google-Smtp-Source: APXvYqzpucnDaVV+9QWzfN9AMvf8/RCf6mKKQPQaefH9m2mKDYkIJc5dyBnUu62JSgr+2XLHqSJTew==
X-Received: by 2002:a17:902:b18c:: with SMTP id
 s12mr6727525plr.181.1557676500305; 
 Sun, 12 May 2019 08:55:00 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:59 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/7] nvme-pci: enable to trigger device coredump by hand
Date: Mon, 13 May 2019 00:54:17 +0900
Message-Id: <1557676457-4195-8-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_165503_006096_60F770AB 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This provides a way to trigger the nvme device coredump by writing
anything to /sys/devices/.../coredump attribute.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- Extracted from 'add device coredump infrastructure' patch
- Avoid deadlock in .coredump callback

 drivers/nvme/host/pci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 6522592..fad5395 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3288,6 +3288,14 @@ static void nvme_coredump_complete(struct nvme_dev *dev)
 	nvme_coredump_clear(dev);
 }
 
+static void nvme_coredump(struct device *dev)
+{
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
+
+	nvme_dev_disable(ndev, false, true);
+	nvme_reset_ctrl_sync(&ndev->ctrl);
+}
+
 #else
 
 static void nvme_coredump_init(struct nvme_dev *dev)
@@ -3302,6 +3310,10 @@ static void nvme_coredump_complete(struct nvme_dev *dev)
 {
 }
 
+static void nvme_coredump(struct device *dev)
+{
+}
+
 #endif /* CONFIG_DEV_COREDUMP */
 
 static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
@@ -3409,6 +3421,7 @@ static struct pci_driver nvme_driver = {
 	.shutdown	= nvme_shutdown,
 	.driver		= {
 		.pm	= &nvme_dev_pm_ops,
+		.coredump = nvme_coredump,
 	},
 	.sriov_configure = pci_sriov_configure_simple,
 	.err_handler	= &nvme_err_handler,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
