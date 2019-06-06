Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A080237D87
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdOckaqZacvVMrniJS/bDH+fqX4KaLJQ8+WVF4eRcJc=; b=sy6043bvErlsqC
	aZI08JWo660ORFkPieUXRtoKLQjHfrqhxZYv3ZziCy33xjFZ5jHHlOaqEiPXN7NA2CXcSaTl18wF2
	iHhb21/UjjE9ehjYcV2RWA2d5r0ie6dpvwm2cm7vmwJF8BX5cWfIN+AyGvbqTW3x4v206K705vjwN
	F1CSKNfN5jyKXVfuJZTO2n3szyzHRW90oHgpfnOkGy6FfeJFEPNJOnKcwPGYEP9O1VPTIolb7XD+N
	sMHNCH1aZl1K1jxcduJOTq21JuV/II0axo2wka8zaitwWQi/Gc3zGSYA+qBtACKIIQRuFIKBDcpyv
	qsFJUQ8DlyhOD9N2Z28A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyLQ-0003xZ-BH; Thu, 06 Jun 2019 19:46:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKX-0002rE-RW
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:46:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so2140834pfd.2
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=swGOMEHbp8V++L9d8AmrtUrLmMRn0y9gdCyfTZWe6OA=;
 b=D8mG/pErgLbFan92YcT72HDHXHoVQNousPFOroOA1mCP4dE1NXA0USwipVEIF8ojIs
 KCx5x5Us7uUhc7/1iwqsaegZ//8JwhCS5MtwsPHU/gYM4PHtwcI9hnK3nPDzqE9Jhx99
 f5AO9rJr5oLYM8+gT7f5yrYvPLisbgVVZJ2jHFlj0UZjJjUvfqORqTVxCqTVJpzXsi13
 RAlcXmGDS7e3aTLO6Kdac7rrNYnuAg/9FsCRD/NNky/aqRpjYnz1AkO8rRee4iqwFawX
 HUDD8+4NIonQyzg8iISSNHyqONjIv13jNXFbv6Jl50BkLP9tfS4iU83lL1D3LLb9CpxY
 VTpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=swGOMEHbp8V++L9d8AmrtUrLmMRn0y9gdCyfTZWe6OA=;
 b=L+cu6BE8bQ6sxqaGiNaAxAU8bmnMn8Ig+GGdEJIqPe2xDayJKV8CvqO+xTanKuds5e
 zMV9Zj2oGpeemJW2hpe4HQbi5FgdTiyAnq2EDgxD757fG2CwbLBMx0l243g7RqwuLaE0
 zabloo4kUL7qWi9yaQTc3108pmlJl7ZIeZz2D+IL78LPXKPIMMHSh4pie2kWBbvnMaAN
 xIuPBRmO7K8ccSBVL1BN/Js5IqK6UeISUFqMtbJAOUzPFuV9IkAgbsT+O0ys4KUN6Uzr
 ScxZEl8AjZN0MpcEKgaAXoIUqzzA1qArjj3MyMwiIsZB2q/KrHi518/UDDrhNKPcl5GB
 /TZg==
X-Gm-Message-State: APjAAAWJQZ2oi0r9bhvZ1hONRiD/F2oZ15DncH40m4nUBDF6CKN7Iu5x
 onNqMC2k8aUpoIDKzIKllX93nGD3aEc=
X-Google-Smtp-Source: APXvYqw/Q2/mP368OkL1UqEVHNBUBP/cPkCjhhqn2xR+JvpjmSl0990tokAWOHrw4lscT1t8Hta+Og==
X-Received: by 2002:a62:2983:: with SMTP id
 p125mr13967585pfp.154.1559850344884; 
 Thu, 06 Jun 2019 12:45:44 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:44 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 6/7] nvme: trace: print result and status in hex format
Date: Fri,  7 Jun 2019 04:45:11 +0900
Message-Id: <20190606194512.11020-7-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124546_504546_2D71D8F7 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
---
 drivers/nvme/host/trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index fd90fc8fd3f7..1f7678d588ce 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -107,7 +107,7 @@ TRACE_EVENT(nvme_complete_rq,
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
