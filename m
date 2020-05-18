Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBE01D87C2
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 21:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KDpjLItZEgzIHdzWkj403QTpMqdWIpmcKQVXrYPlbxM=; b=jyR0xGabEjtEESaHeggqtzsV+I
	AdwzWnfKp8ntUp2IPPhGstEV1R7/QuH2DfeuXviREho6TAKARvTcwNzd0obmbQlTKQtqTSNatQB34
	C1sva/BHkJt/9GPiOxlYUOI8sgJ0hURVE0i4EiQ5rNUYCi6Bus+Y/XWf7SAT/wSRmxHew0TELmHOv
	rpRbsT6oI5bpIL+zlBf+ybRwku7ZqD2OlCHAejogkt4AH4gEtkYSpmz/tOK6gzRywLPZGk24GtgRJ
	mgaityNpGBq1eRuPO7zuAv4oMR0EiKUZatq3OUbubolopz5M5CTc1THIO5MahOTc1vi8S0C1IKtsL
	Y//O3mAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jal0P-0008Rt-Ix; Mon, 18 May 2020 19:00:53 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakzf-0005OC-6u
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 19:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589828405;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=FJImWYIVLSyMg9cgk5H5LwoVAI09DJ3bDpsTrzlMe5A=;
 b=Vs/vEk+z4zi5xPfim49J33g7D+b7DvlF4O2tQQI4F0mOVvz350QYSLekhMZFMNGU1RDt1Z
 MGsXhsPTqmkyRL954u8wUYEivGTeCPZGd/Xtiru2+CH4jRJ+yzBQrx/c1y6rjNenvrjvGe
 X3e4uAAeeWpNwuuwCdTYP5XXsvShCuA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-fBk4nv9POmCUeO5q9RXCfg-1; Mon, 18 May 2020 14:59:59 -0400
X-MC-Unique: fBk4nv9POmCUeO5q9RXCfg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9C67464;
 Mon, 18 May 2020 18:59:57 +0000 (UTC)
Received: from hpz440.redhat.com (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 605E964453;
 Mon, 18 May 2020 18:59:57 +0000 (UTC)
From: David Milburn <dmilburn@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/2] nvmet: check command slot before pulling and freeing
 aen
Date: Mon, 18 May 2020 13:59:55 -0500
Message-Id: <1589828396-144513-2-git-send-email-dmilburn@redhat.com>
In-Reply-To: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_120007_365819_5399435D 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@infradead.org, chaitanya.kulkarni@wdc.com, dwagner@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Free aens while completing requests in nvmet_async_events_process().

Based-on-a-patch-by: Christoph Hellwig <hch@infradead.org>
Tested-by: Yi Zhang <yi.zhang@redhat.com>
Signed-off-by: David Milburn <dmilburn@redhat.com>
---
Changes from v1:
 - free aens separate from completing requests in nvmet_async_events_free().

 drivers/nvme/target/core.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index b685f99d56a1..dc036a815d39 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -134,15 +134,10 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
 	struct nvmet_async_event *aen;
 	struct nvmet_req *req;
 
-	while (1) {
-		mutex_lock(&ctrl->lock);
-		aen = list_first_entry_or_null(&ctrl->async_events,
-				struct nvmet_async_event, entry);
-		if (!aen || !ctrl->nr_async_event_cmds) {
-			mutex_unlock(&ctrl->lock);
-			break;
-		}
-
+	mutex_lock(&ctrl->lock);
+	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
+		aen = list_first_entry(&ctrl->async_events,
+				       struct nvmet_async_event, entry);
 		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
 		if (status == 0)
 			nvmet_set_result(req, nvmet_async_event_result(aen));
@@ -152,7 +147,9 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
 
 		mutex_unlock(&ctrl->lock);
 		nvmet_req_complete(req, status);
+		mutex_lock(&ctrl->lock);
 	}
+	mutex_unlock(&ctrl->lock);
 }
 
 static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
-- 
2.18.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
