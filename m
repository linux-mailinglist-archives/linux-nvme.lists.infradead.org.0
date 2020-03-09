Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00CC17EAC7
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 22:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=of75m232+4kwOwNYsPej1ag6hfA8u7U8akifbDcweRw=; b=gXa
	vGP8Uzl54ii5Egdoz6EvI3HC2gPWRLKUQxh6BjkbrXJIM7ALfeXfJvp9BS2N1CeyhDnRGZc/JAbcl
	tbcaUiq4W1qL03QSoW0NrTuXB7QPPsDxeyqbmQjBjzk3LfI45nsPVjd0J0WbgPl7bv59lef5jO+C1
	lhO1UarKH3IczUJn5AWM2log+shds//idYvQW2uWZ9fdhxSUnJ1TpMk4nRwaF1ew+rb3OqFw6brxX
	VzVPloGcJ6Z3YKU14jt3DkT6Sdp6ZhOTSA47tRLOvV3EvTxH/O3KRV9YkJEKkmUAFQunwf6HKrA5Y
	ugq+ktKpsIMTlVO+foAMwMjnYcQ7gVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPd3-0004k2-Lx; Mon, 09 Mar 2020 21:08:01 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPcy-0004jP-RG
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 21:07:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id mq3so459567pjb.0
 for <linux-nvme@lists.infradead.org>; Mon, 09 Mar 2020 14:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Wg7ehxrunSfoR3umIXJG6GeJRSgWVF/eVhTjd0DeUpo=;
 b=czH3TJwKaynTxAvppZyJ015RDYBkBPs2pb5+XLo29ytW+Ib2kKleMNca9WHbclK+ut
 s40C6dyix2Rh5Dng2HUhh6pbw3+n4CtUwPtKc/By8YuLfx/lG4emfrekiHNNKd8R3DFa
 lgt3hjPrRhh7RCQYwjI0Ie4IXv6jEvCuzh0Lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wg7ehxrunSfoR3umIXJG6GeJRSgWVF/eVhTjd0DeUpo=;
 b=ep+LknGYRA9TPN/j50l1v2UB6whuWqfHytXrpt7pHwdlbndEl7s2WnBci3pH+anbAT
 dmhssVrlDWnyZEAZP9kCq3Th11FVs9XmWvyiHl9ju0pK3I4G4typGsyUHMMTH3opzBPv
 8wwP/UPgZINaUi5RhIu3UaEQH4CeasNhD+fgxk79OGqM4bvtfybmo+kCLD5xbEkrFynE
 PRYJUTDVcz5ilxBKkO8mxFasLz54YxRXDR3VI0UPlPTx3pUE9X1eqAs3aupdQc2hyg7b
 SWikzwO1SQC9Ci4Edn3ylwuMNhpN3mpCv/jbKTtjEWkWMFRYiPSqMJdVUJgkP+qV6Ko/
 gpuA==
X-Gm-Message-State: ANhLgQ0vFhca3C3tFLr5EkSN8H6AJQDPRjHCnY5ov4Eserid23fVTrkd
 V5U+w/7cO6U3Z95dF9TRmTHvVQ==
X-Google-Smtp-Source: ADFU+vtxrF3SIlgRDL8tah3k0WYVLq8W7zIdoqLKtPNGtefE87yW3fuwxIJr+qp9R7BfS0ylIEkFOw==
X-Received: by 2002:a17:90a:21ce:: with SMTP id
 q72mr926921pjc.160.1583788075123; 
 Mon, 09 Mar 2020 14:07:55 -0700 (PDT)
Received: from dev-psajeepa.dev.purestorage.com ([192.30.188.252])
 by smtp.googlemail.com with ESMTPSA id w206sm2876936pfc.54.2020.03.09.14.07.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Mar 2020 14:07:54 -0700 (PDT)
From: Prabhath Sajeepa <psajeepa@purestorage.com>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] nvme-rdma: Avoid double freeing of async event data
Date: Mon,  9 Mar 2020 15:07:53 -0600
Message-Id: <1583788073-39681-1-git-send-email-psajeepa@purestorage.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_140757_504322_838BE2C9 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: roland@purestorage.com, psajeepa@purestorage.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The timeout of identify cmd, which is invoked as part of admin queue
creation, can result in freeing of async event data both in
nvme_rdma_timeout handler and error handling path of
nvme_rdma_configure_admin queue thus causing NULL pointer reference.
Call Trace:
 ? nvme_rdma_setup_ctrl+0x223/0x800 [nvme_rdma]
 nvme_rdma_create_ctrl+0x2ba/0x3f7 [nvme_rdma]
 nvmf_dev_write+0xa54/0xcc6 [nvme_fabrics]
 __vfs_write+0x1b/0x40
 vfs_write+0xb2/0x1b0
 ksys_write+0x61/0xd0
 __x64_sys_write+0x1a/0x20
 do_syscall_64+0x60/0x1e0
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Prabhath Sajeepa <psajeepa@purestorage.com>
Reviewed-by: Roland Dreier <roland@purestorage.com>
---
 drivers/nvme/host/rdma.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 3e85c5c..0fe08c4 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -850,9 +850,11 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (new)
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 out_free_async_qe:
-	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
-		sizeof(struct nvme_command), DMA_TO_DEVICE);
-	ctrl->async_event_sqe.data = NULL;
+	if (ctrl->async_event_sqe.data) {
+		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
+			sizeof(struct nvme_command), DMA_TO_DEVICE);
+		ctrl->async_event_sqe.data = NULL;
+	}
 out_free_queue:
 	nvme_rdma_free_queue(&ctrl->queues[0]);
 	return error;
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
