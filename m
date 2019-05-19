Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE6222713
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJuJWmLju4dr5h5UcBA7v/DVDsZMovdyLEA3ofhmtdM=; b=glyVTULNkn/kFBybQihASPwuWO
	AIkoZMST+yXHydZ0D0qTpkpLHbVlfoWyRI5WeoGt6/Uw940VZfYrdswbRFvEG610QG01DRHXxfD+D
	jOdNKDZrq1/mHY/J8c9hoLhWBvRfM03pK4jYVMFfC+a4ZzAUMzBZu5iOeSojTT/C4WOvKEh9LnULo
	TfbKORytWvC41GCRf50TLdxDUqLqek+KDuom9ZdwpKlXK856HnvjFuyGy69S2BM54JXTPw+r4T0aN
	ex0aoyE/sDpffu7q+R5fVDdg/wq8xlytlH8Tbuyu1+7BOV34roTXZfUxm0c02ShDDyWvO8wK2rkhn
	w6HStaJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNQH-0005rn-6u; Sun, 19 May 2019 15:08:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPU-00050J-J9
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:08:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so5973254pfa.3
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3QptrOrhoRrb+8UfSBrbIZc3gQ6845r98RHnMaT6MkU=;
 b=NTnrrmFjSAkT60/o3iMiUogVQSY9vFrlR941e/UEVCPbk7my1cYpToGhOVsbHjEFjP
 3zDpnUc4FdRMlgm1Nrblkd3XZHcr0l89OZGXVpBddWBkyN8DlU8yqG52Cm7Gv/LhXBrb
 HGo/AYFcgTGn9k0UqOK3iUF7FhvHyCNCjdpAt9DMwjzzCSLCLwJ9nJPF55vtRsK/i60/
 dJ3ViHfAyIgIxKd/5pLms/Hoidm6ba4JrcSSAvll88MZhanV1UHaXqgZJi/OXDs7W8HU
 qyKQGsRzok+Bt9Y5clcxEf1jtAIaXo+MNbWWfAF32omH6E857+EyzebipgXjQ4VebecE
 WuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3QptrOrhoRrb+8UfSBrbIZc3gQ6845r98RHnMaT6MkU=;
 b=qfFOogwQOD7Od3YuYax1GULj37agr11DiDZLufZfk8Gyexb5GsheS5uQa8zCTITkuX
 nMsjk69nMZzwy55mb9VAVQpmuwifHhceKqjHsK428xcXVTmWsbBMrCpYEYkA3rjiX2ty
 EQSc/Iec7sTqfcTUuQE98bBTVrLBlvvqWBnd7ZeI6Uc9s81ZLiuEWCr9Kc+vqvR6H9/W
 rQsxZtF1hxJhpQGACrYkj+CHMZJbcqA/FFJkBKFjPkXmduFlcvEpKwo8FUgqrZqWNtVY
 OSj0H8ekYAzla52u+pLZFBNk/wqCKGncj2b4qwVQzmMXQBpHDovi2/iChGBT4FK7BFdD
 vbjw==
X-Gm-Message-State: APjAAAW4fBENMo1VIakHLGDfbCv7abGrvzy6c8FGZTl9ZuyBrznd+B5R
 5xOE6FLYlEl2TnYYtbzP2BidzQof
X-Google-Smtp-Source: APXvYqzHNKOqcWO25MtIB2d+/lQBkISHLKuHtnvwtHM/ktImBVFZhohz6aCLT34vgGaW+GF85+FAwg==
X-Received: by 2002:a62:1483:: with SMTP id 125mr45143058pfu.137.1558278455161; 
 Sun, 19 May 2019 08:07:35 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:34 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/7] nvme-pci: enable to trigger device coredump by hand
Date: Mon, 20 May 2019 00:06:58 +0900
Message-Id: <1558278418-5702-8-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080737_203669_AA48BDCF 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- No change since v3

 drivers/nvme/host/pci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 6436e72..04084b9 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3266,6 +3266,14 @@ static void nvme_coredump_complete(struct nvme_dev *dev)
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
@@ -3281,6 +3289,10 @@ static void nvme_coredump_complete(struct nvme_dev *dev)
 {
 }
 
+static void nvme_coredump(struct device *dev)
+{
+}
+
 #endif /* CONFIG_DEV_COREDUMP */
 
 static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
@@ -3388,6 +3400,7 @@ static struct pci_driver nvme_driver = {
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
