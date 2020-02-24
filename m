Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D3116ABAD
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 17:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5AaUQQKeT14A4+flv8E/Gs8WNwDCCVmfYHXmo4hh1zU=; b=Mq5
	QN8En72PL87lyN9kXCaK5vjzbxYWdZYZBy29I+UhCBTO6nmDU+zbGJTLCvba0BaPrqr+gQrXzv2++
	jToWoE6ACwykM/gJznlCdKm7vZ8kZwEOx2O37by6tdiTUs0PU8IbNKPVh8R0MVX9qQVg4G7fR7omT
	I+wUQZoWORXWk87JBcMLJlV8n2S7XzKYmZBvQS4BQCyfM2afDoFVK20p/joZnItpIAjDTZPpqCRXk
	6lRN7nhw6pfPEMtVeDF8bGGFEgQmENeSqTawIX4jKX35JEHBiry1BDNOpDuGk6loNwGgjh1XwfTWY
	Q+fNGN/F+qH9//o18t9CFgMdmER1hzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GgP-0003na-QU; Mon, 24 Feb 2020 16:34:13 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GgL-0003mg-8O
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 16:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582562047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4TiliuXG7Xh5hkWHCmE6hVqn38gt2FN04yxxs/D+Q3A=;
 b=YCrXOLMYodlWP//U2QwTBfTm8kBsyTGBCmoHXNJI7KtYdpZaVEqS2uGMM22W/LjT/1UD+a
 X5jVhDdxH8spxIEWr+07pAwbs98C6O6R2pC3LV8tN1m2nruqHntT4J4q/8ibo/vZAIf3y/
 XKc4dm2SZus0siSg8/K18IFeGdc7qFY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-3DeUejzFMK2VqmioMGxoTg-1; Mon, 24 Feb 2020 11:32:12 -0500
X-MC-Unique: 3DeUejzFMK2VqmioMGxoTg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D0938018AF;
 Mon, 24 Feb 2020 16:32:11 +0000 (UTC)
Received: from rgirase.pnq.csb (unknown [10.76.0.83])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FD0A8B755;
 Mon, 24 Feb 2020 16:32:08 +0000 (UTC)
From: Rupesh Girase <rgirase@redhat.com>
To: kbusch@kernel.org
Subject: [PATCH] nvme: log additional message for controller status
Date: Mon, 24 Feb 2020 22:02:04 +0530
Message-Id: <1582561924-8017-1-git-send-email-rgirase@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_083409_378588_E8DDA224 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@fb.com, Rupesh Girase <rgirase@redhat.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

	Logging the controller fatal and ready status would help to
	identfy if issue lies within kernel nvme subsytem or
	controller is unhealthy.

Signed-off-by: Rupesh Girase <rgirase@redhat.com>
---
 drivers/nvme/host/core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ada59df..2dfca9d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2079,8 +2079,9 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
 			return -EINTR;
 		if (time_after(jiffies, timeout)) {
 			dev_err(ctrl->device,
-				"Device not ready; aborting %s\n", enabled ?
-						"initialisation" : "reset");
+				"Device not ready; aborting %s, RDY=0x%x, CFS=0x%x\n",
+				enabled ? "initialisation" : "reset",
+				csts & NVME_CSTS_RDY, csts & NVME_CSTS_CFS);
 			return -ENODEV;
 		}
 	}
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
