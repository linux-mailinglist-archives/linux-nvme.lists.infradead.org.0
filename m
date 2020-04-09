Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06CF1A37CA
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAZM66BgwZnwC29t3HvczVIxLlUaGCU5wT5VsBz/kzU=; b=XyDFcvoxgtFtqS
	AawQinduBTMJj5mM/prR44fuCEh+tWp/MxeLG2hiCKt0NZrY+Lcj32GUUEm7neRJoc31j1wjnJfrx
	w/hE+RO768sP2ywmndOA59gbC/S2x6++aXHTyV85j79a3O8OBFkimPVFLnZjIKzAIbqe94ZWf2xHD
	xtKNuxgxfaRL4xLrLD+6s/8v8ilVCCFQuvc34xkpK+rpXqZ7WE+imaVy+eMZG1p+bgal2j/a96zm1
	zeepJ+S3V+owYtIvsS2ET437kA+8wLF9vQFvxH8ZVuYpluwbSaLgsiAPXZ1lsvO/2ZmMdfjvDnPbG
	Sw9KjtBXeCEuihaJNM+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZkT-00020j-Ib; Thu, 09 Apr 2020 16:09:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjr-0001Qb-Oo
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:13 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 279A620A8B;
 Thu,  9 Apr 2020 16:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448551;
 bh=QenMdfrQokvX3bX5WUBtdLEPDkCYyHyuXmsrZOgs9uc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k3GVy1wHeUfbfi3ui0Zh/H1++FTsug0p6adMUIqUIKYjDSBap7GETT3JR32YvFnO9
 BUWW6DyPR1BTOWULb61CwcB0jj9GwQOTGU4z7+2byGa8W5UZK5dpCThGcxf1yABX3v
 Ly+jojfCHawI6MlOoKOtLkHkmw5WYjPRaTSIuEVA=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 03/10] nvme: always search for namespace head
Date: Thu,  9 Apr 2020 09:09:01 -0700
Message-Id: <20200409160908.1889471-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090911_829375_D17C31F7 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Even if a namespace reports it is not capable of sharing, search the
subsystem for a matching namespace head. If found, the driver should
reject that namespace since it's coming from an invalid configuration.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 253ea57855db..be2d856923e8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3489,8 +3489,7 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 		goto out;
 
 	mutex_lock(&ctrl->subsys->lock);
-	if (is_shared)
-		head = nvme_find_ns_head(ctrl->subsys, nsid);
+	head = nvme_find_ns_head(ctrl->subsys, nsid);
 	if (!head) {
 		head = nvme_alloc_ns_head(ctrl, nsid, &ids);
 		if (IS_ERR(head)) {
@@ -3498,6 +3497,14 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 			goto out_unlock;
 		}
 	} else {
+		if (!is_shared) {
+			dev_err(ctrl->device,
+				"Duplicate unshared namespace %d\n",
+					nsid);
+			ret = -EINVAL;
+			nvme_put_ns_head(head);
+			goto out_unlock;
+		}
 		if (!nvme_ns_ids_equal(&head->ids, &ids)) {
 			dev_err(ctrl->device,
 				"IDs don't match for shared namespace %d\n",
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
