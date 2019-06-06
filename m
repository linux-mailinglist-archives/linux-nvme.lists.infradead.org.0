Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC537D7D
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVOpYiwH+SOHC+GMcXWrVPUCkVjPp/pnbQIMqUrWQbo=; b=KwZ2psaLxWaM3/
	7OVo9p4pwBNL0q5cPneN2s5hh6Hbbx7mk3tsJ5XF+2psMURSsgsE7iVbbWmGnqAyxdpsomNOcerbk
	rQniA3kx80xfvhfejN/ZSmc3A3nC4bKj4Grn2bOBICchi7MyIzKA3QSxjjbwNe02ZNJQ04OvDQ7tG
	3DLNkHusBtz44L6pupnKZ8PDruvHAiiAcrfUwHAb6kSG+HoMGHVEEGqj6QLnAHly26qxiqzeTboj3
	6vgHfbhddJSBBmzlcN34M6NV7el9IUo81cEW7UHk7fHQlb390q9ta5wXbzFFqw1UEQ2NrkG7ML9g5
	ejNUBaPvEOnb+U/Jyqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyKO-0002at-O3; Thu, 06 Jun 2019 19:45:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKJ-0002a2-Ih
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:45:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id go2so1318211plb.9
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SUCKwr0SdIoEiPlnGhaXp+yBjtDEvKPXQIsBp/THBDU=;
 b=tWc/elmvaApwLqnOSSazoMyvd1D/d/ROlNm4yRO1UTS4wATjXHKpES97xypedZ0fir
 Rlk4PYs7giJkEzDDotztu6WF27ymBHP1GKKos8IXEQ/7kHOlI+sZSBOLFJRDHdleZWmL
 6QnRWo9nCIsLBbXgnvyFk+oPQC8lZisVLhIIsrfGMo0GnvFV8oxIVBKqdqgxMLoMdikp
 T/jL39eEylkasSbGoHm7InZREa2R8Idwqx5otZEwb8cpYDAQjnckAxmrqUP+5lBM5sfb
 iI6SR1aSWn/Knrv/vikbumboPF+13Bg8TVjzG36ecWl1WLmp+9d8gOE7PXVGO1HMKcDV
 oLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SUCKwr0SdIoEiPlnGhaXp+yBjtDEvKPXQIsBp/THBDU=;
 b=Ahr/RdmxlQAkuk3OsXgf0ntI/J/FyTVFpZ1lbo25Hzs77kTLIJ1pFrTvgWyZex/7my
 +cnCWQ7WDP90iYaLs1uJQShvCJykYwCpthGcqK4ARGrWn/VuxPVECrT7R1J6UH74px7w
 ZdfWnpWtlgloZLq4tQKEnXI9NfdpHj9AQVCsMIN2cw+iHyoRabvMbcfCaQnkCiHeXNXc
 ZDCyrAYvdxdBU0xUzlbmV9NnkXbOZvI5e2hPbYa+RHCPiFNHx75d4Zwj0+088v6HpvXz
 MA9uGDrZukNEdJ12d8OJximeHJrHFj32msFH1BTslxsgVJkp3RBRuGhjtiJ/D7ntnrXC
 BcUA==
X-Gm-Message-State: APjAAAXdrvZsqe3cR3aqBqNO4Q1xHAHK3Bi8NriSJPxuedrrj3kHC+wH
 KizUj/TPxb7eJGq9MH0GI6f32FXCLIo=
X-Google-Smtp-Source: APXvYqytPvlzG4ZblktO2retO4LjRzKb0ioVymSAWRi+fBhrZOSXRZBFIl8ASwIDRKaZb4BVL2UztA==
X-Received: by 2002:a17:902:8ec3:: with SMTP id
 x3mr50271579plo.340.1559850330454; 
 Thu, 06 Jun 2019 12:45:30 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:29 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 1/7] nvme: trace: do not EXPORT_SYMBOL for a trace
 function
Date: Fri,  7 Jun 2019 04:45:06 +0900
Message-Id: <20190606194512.11020-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124532_330675_BC4DFAAC 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_trace_disk_name() is now already being invoked with the function
prototype in trace.h.  We don't need to export this symbol at all.

The following patches are going to provide target-side trace feature
with the exactly same function with this so that this patch removes the
EXPORT_SYMBOL() for this function.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/trace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7a28eb..14b0d2993cbe 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -145,6 +145,5 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(nvme_trace_disk_name);
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
