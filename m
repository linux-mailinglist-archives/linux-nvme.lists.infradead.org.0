Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95C0321B0
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 05:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eDBV2yVWWbLelQqcRaw84MhtgHJQRNkeWxg2RAUiyB8=; b=rLuJd02gjOt8ah
	SKCH6qDKK0pCM4+PKAG0xHBJs4aicEobQaDZ8TINt5p2uMk7/UUQaITpEgwimLkuOzpJmDkx87AvT
	G3gaAjyI5OwMSeZ5kDBADnKFA8fmDvaBMIMyak38fEy1bavFFvXszmz/KVBO52u/ICkh5zn5ZHUtS
	P9UwFRDdLkl2KLzGT6hhJugMJKFZBWNNYKY4Rpsz7vzc2MLO5U3HrLEJRBh2fdyHXvURxk4WK7bs6
	cM9xQTZwvWkc4KIgD0ucmpHFUlZovtH6hOhKdZEj/h82r0ASuwVObVOtLR2MKa8FOHutQA6SzExZ2
	EIka6ILonzZoZfItppPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXHPf-000321-Hv; Sun, 02 Jun 2019 03:44:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXHPb-00031i-0Z
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 03:44:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id a23so8589858pff.4
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 20:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GY85igdreVsvDNeGOnmNR1MlSVJ2ljY3Vkv20VfsHjI=;
 b=jWFDg0qEb7Uez9u7pFB0q5xfdmlss7c8Y9XUNX1RaRxT9RHvFMpN4lXPB1IvMk09lU
 XmXIWBw5uz/MGPCD7OzoMPfkNRtVJfE0GggAea6BaYlCbg9OgDY7Ujq11DMOZ1RpNFWn
 DbGlcllSUowl09E4kqfaSV9tV+qR3nyFqkSPs31fbExSGpc4L29Iu0kTBTLWK9/xJxxm
 8U2XypnDFh2dbFlrYp3c5aaudK/G06Xu6cri0lEU6Z3AOc1yAo0t6PH3DYzC6v31KhS3
 aafhquBMOOmdc4km7rIOhl2L1NorOIrjlzI5kyTP965K3Z4jW2GrH5vadzRggwkJPH7x
 +IaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GY85igdreVsvDNeGOnmNR1MlSVJ2ljY3Vkv20VfsHjI=;
 b=Z2Gluy5FBWdARd648t49eeuV5rG+NgDqQyye9BfpMmLglhEk9aSQJmxFC9s7FKhrOa
 FAhaB/8K8mxQ5dw+GcaMKAifyZW2JIZ8deO2jSkPLZ7y9PEyIa59JCg7tbZDhqxO5KlK
 0/HVnL0tdlN2p4tBE5/MOtiBkzezlAHjpRPHwbwWgT1wHWBeO6YJnub2jb0czvs4hG8X
 98maty8iFiu9+mxWqnrtBg7qABRlHo4KcYjpZCtz3xcHyHvI0RRXscJiGRqsiIoAOnUi
 XVtegN9riQNUxyzQY+GwAuIwHXx3qWzWPs9xROooNTFxOCGGdmLJgsYQcQOnIZYKE3+W
 4FPg==
X-Gm-Message-State: APjAAAVgwsNs68eA/VjszyI72uoJMcuH/Z/UMMH7G1eRZpswj0kLbMH2
 bS1RbpsRqz4CQwLVcUjIXeawqbvnAjo=
X-Google-Smtp-Source: APXvYqyWPTeKTftPBy2/rsHVrBBs7FZ0eS4Rr7SnhD9ZRy8njCbIk81bh1ksI02xqFNhhdu4pBhnsQ==
X-Received: by 2002:a17:90a:2ec2:: with SMTP id
 h2mr18982961pjs.119.1559447036599; 
 Sat, 01 Jun 2019 20:43:56 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j11sm11506411pfe.46.2019.06.01.20.43.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 20:43:55 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: fix data_len to 0 for bdev-backed write_zeroes
Date: Sun,  2 Jun 2019 12:43:39 +0900
Message-Id: <20190602034339.11246-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_204359_083572_9D3EBD4C 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The WRITE ZEROES command has no data transfer so that we need to
initialize the struct (nvmet_req *req)->data_len to 0x0.  While
(nvmet_req *req)->transfer_len is initialized in nvmet_req_init(),
data_len will be initialized by nowhere which might cause the failure
with status code NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR randomly.  It's
because nvmet_req_execute() checks like:

	if (unlikely(req->data_len != req->transfer_len)) {
		req->error_loc = offsetof(struct nvme_common_command, dptr);
		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
	} else
		req->execute(req);

This patch fixes req->data_len not to be a randomly assigned by
initializing it to 0x0 when preparing the command in
nvmet_bdev_parse_io_cmd().

nvmet_file_parse_io_cmd() which is for file-backed I/O has already
initialized the data_len field to 0x0, though.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/io-cmd-bdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 3efc52f9c309..7a1cf6437a6a 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -293,6 +293,7 @@ u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req)
 		return 0;
 	case nvme_cmd_write_zeroes:
 		req->execute = nvmet_bdev_execute_write_zeroes;
+		req->data_len = 0;
 		return 0;
 	default:
 		pr_err("unhandled cmd %d on qid %d\n", cmd->common.opcode,
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
