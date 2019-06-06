Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104E637D81
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8040jsL10ySkTRF7px7P7DefX0vjJzSk56T9Dz99+pA=; b=T/1VfJFpBWyvab
	iUMPw6Zj15UEflucQ5zU5LL1yomuf+gx37xsR9gPTgUGf7PGe21GmFcgdsRcq40y6YHMYL1WWhxHz
	0SmXM4ubt7FlU8sTsg0l4aEoAiubXvUBLCjmYr5l4+zxdlV1xP3hOIu0PnlTOVFKn9PRwBQJchKzL
	3Fxw4Ld3kUj8W/HcmPau5tu7zlB0I4byiTMTAOSI+71UmiCoF/BWHi0euwovn/HF/21cvsxBKJ0/1
	+RY34UJc/njMIawf6WgAmwLspBsmXE73Du0g18oFENfjHv/DBCi9xIWDFRNntoDBG++LHxA2ZO90b
	Jf+o0WhxgSLa70rcgidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyKo-000359-IE; Thu, 06 Jun 2019 19:46:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKP-0002d6-9G
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:45:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id d126so2140652pfd.2
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x2pboyhaSecw7ygNVGotqOpJ9CXDpUIoiprTEAnEBmM=;
 b=P7mm3NHFrhkwy5LkzivnWHrsUoWTsj8/+y29xkXskQMP7VPdRPpjEli0HJV8rLbf4N
 JQYALbUpv3Nikl/Vi3KD3xbGcoeODB6/VbVPMXV8QjA1jEwa2HEhKG/FZkiMBwLw3F0t
 xn7pEpuXEibm1nO1kw7KqWhCf0WOTs7IqfX//bpj5IVLo8Uuem/hPcyXfq+K1k94f8AV
 WQko0Gt/RHrA1mcNEGUQ+xmvWL/Hy9/V82eFzv1XiraWfuyS62SLR9o0gXLys3hqUUhj
 xS+47h5NENaDAKv/ZSSB1wxdjG/ZEH1dNi/fB4jQO0CUJ/dxvBp4q2FcFk/R8p18pnzv
 ntxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x2pboyhaSecw7ygNVGotqOpJ9CXDpUIoiprTEAnEBmM=;
 b=kXcYipHkLtvtKzRP/9bupd4PSX2Vdda7FzL4gb2v0kCOi2vH625T3f+n4iSf0CaoyX
 ShY3oPVE/EZ69k99VVDXAD3c/1qrpVhgfHp+CIR9yHgB4rSmz3MGZzNNvbSSXaMCge5H
 4mHoFTXsTY05kveFStWeRk2fDjG5IPlYAulPKJHNBMNt1RVmdKihAsIcbM0bIF41vEvC
 9TmlKNT9pwe+pPgyYNU+edTprJTA16l7ASANArVT3LP/531BBFWPNsWwJVWHYRaDiNmr
 mpWqF00NmcHsK96uzdaDCUarBm2EZt+gM51lsUCBnUd9lvYjHxQ64gJX002AgaYGVwLt
 Nz7w==
X-Gm-Message-State: APjAAAV3D0HotONOAdIH89w2uBFbqOVTix59xwGLSzJnOsgDQLbXZDLY
 fSwS95qNqicfAFyRaj31puTb9bhu8bY=
X-Google-Smtp-Source: APXvYqwm2uv4P3xTsZe3adoXgTPn0fYO95V59a96XBIsbngpFdyYR45UCqImC0uqz9nQTBuFiXde0w==
X-Received: by 2002:a17:90a:2e89:: with SMTP id
 r9mr1494445pjd.117.1559850336257; 
 Thu, 06 Jun 2019 12:45:36 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:35 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 3/7] nvme: trace: put cid with le16_to_cpu()
Date: Fri,  7 Jun 2019 04:45:08 +0900
Message-Id: <20190606194512.11020-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124537_766764_45FB8E5F 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The CID(Command Identifier) is in 16bits so that we need to convert it
to cpu's one.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 62ee29107c32..59323e68c393 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -59,7 +59,7 @@ TRACE_EVENT(nvme_setup_cmd,
 		__entry->qid = nvme_req_qid(req);
 		__entry->opcode = cmd->common.opcode;
 		__entry->flags = cmd->common.flags;
-		__entry->cid = cmd->common.command_id;
+		__entry->cid = le16_to_cpu(cmd->common.command_id);
 		__entry->nsid = le32_to_cpu(cmd->common.nsid);
 		__entry->metadata = le64_to_cpu(cmd->common.metadata);
 		__assign_disk_name(__entry->disk, req->rq_disk);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
