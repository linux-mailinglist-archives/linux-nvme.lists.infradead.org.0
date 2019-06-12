Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFBD42647
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAgAir8YB6n54Uz7087Bx5bIy5A9l+D0Y9vE7yLZTRw=; b=Nte9oSnfwDbPe7
	W2yhbjesZvHNVF5nbGPDkbnOXuGLbYLelXyfPIaGGUtTQoHm/8HQ+jyKg+BlvUTVTqnKAVxJdxdvb
	+sfnp5RA3OmBPJpLVjGokoIpgQV4skkuvLnyuPUPfmxbyTPSDFTJVjb80WABA07QyleWE2CSponVj
	d60FdVkYUa08/l1qfcW22MuKWQd1G4+6IgXUr4nRCa+ZVXQi+mlZWQfoU/iyWeFgvlT5p2Fx8fq8W
	/lwzafj61OpCPl590CqkIyNI5DyAjV1WjvvlDWETvTddP6uTfGVx4PcNHpHfDDQANwzVlm6jWgcXo
	kHAKLDq0CXAfzg1mZmpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2eh-0002LO-HY; Wed, 12 Jun 2019 12:47:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2df-0001iW-C1
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:46:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id 196so8886605pgc.6
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=boM5yx59egWy49lf7g2xGNaB3xhR+MTyyz0FP7QreKY=;
 b=Q8zSMFwNBXtTF4kW7xMmV+oe4opMZAsTknDodG2LrN8baaINKDG5c1wgkWYLDq5j4c
 LsCDBmowO6zg9smaPSTaPxx8M1Y6Uz17UZRyWdIWexIOV4mZ6Ozdc9p639XrKiQSP7r4
 T4yf8kpvE+zJjgYgJtUYyrJdWtnnoSpb8//VznYmzPSrRXOYwaq8oSpv6mGQgMkzYBqQ
 c+aXs0F8VOBnt+94bXp8r8F9cupygk+u1fuDf37z69fxhsibs9mp7qNhWjqranbu362k
 bCJb4Fy39frFNBCPcF2S9Aq1wXQas0TcITt2+L0jEfquovzNTL8nCQZx7DUTv/NR8eAd
 pTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=boM5yx59egWy49lf7g2xGNaB3xhR+MTyyz0FP7QreKY=;
 b=K3kluNwashzLf9yKa8pQhsuw0EdwCLT5eRn54nEKY909S22ZtAoSxAeGaYmX78e1m8
 r0HsYF3PUrG9EqgI7TJHp+6ejoholmevmIAR1u+4RXQwPXDPbaY+39DaseoeP1YUi4Pz
 5KQMsNUpZkjnJWmMsRyoTy6hfcy8m2ZcAohxkFUKDSj+nri7fS5gq2Z1frxUBueX9F3M
 QlA6an2/c9Ny40uQp+/2n7sV5ZGU8cheGo9f2nfcHWMOQ6A/q2Ji4JLpPWZCtQ0LDoAQ
 vEPpglut1PjJ8b4ajFh8gI3Ffk49wc6PSOp4i5hxtPY7cmUsTH7u1w7MXIUkQRMBM1VH
 EBKg==
X-Gm-Message-State: APjAAAVE/XEZPZ++gC0XrJsJR40rtQd74VgugmioZrwzTnEp+/4McGCJ
 Qww8P4pV4wdzbrBAPl+ZItbXGbHwUfo=
X-Google-Smtp-Source: APXvYqx2No2rKcL/kmJSeZ0ncqgOwP1FfDByMhuKjI2qUGSnvKTYHn6C3AS13fzse+NvDPnrQBcv5w==
X-Received: by 2002:a63:1d1d:: with SMTP id d29mr15014223pgd.259.1560343561939; 
 Wed, 12 Jun 2019 05:46:01 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.45.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:46:01 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 4/5] nvme: trace: print result and status in hex format
Date: Wed, 12 Jun 2019 21:45:32 +0900
Message-Id: <20190612124533.10299-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
References: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054603_496348_2189A3DE 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Sagi Grimberg <sagi@grimberg.me>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The "result" field is in 64bit to be printed out which means it could be
like:
  nvme_complete_rq: nvme0: qid=0, cmdid=0, res=18446612684158962624, etries=0, flags=0x0, status=0

Also the "status" field would be great to be parsed if it's in hex
format.

This patch makes them to be printed out in hexa format.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 19a18c87fb7b..daaf700eae79 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -105,7 +105,7 @@ TRACE_EVENT(nvme_complete_rq,
 		__entry->status = nvme_req(req)->status;
 		__assign_disk_name(__entry->disk, req->rq_disk);
 	    ),
-	    TP_printk("nvme%d: %sqid=%d, cmdid=%u, res=%llu, retries=%u, flags=0x%x, status=%u",
+	    TP_printk("nvme%d: %sqid=%d, cmdid=%u, res=%#llx, retries=%u, flags=0x%x, status=%#x",
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
 		      __entry->qid, __entry->cid, __entry->result,
 		      __entry->retries, __entry->flags, __entry->status)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
