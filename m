Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E1809DB
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=osA5JA6rUeHkCrt1e//vePLFs10d8271q3mWnhbfGlg=; b=QS7ZPHOPFbkq3fGjT3PrgAEQzM
	AymzVf3E1c7hr1CXstRaneG3dDA7utTGCzUqORVMa6LSlhgQnpV2Vroo74fEypIoFPx+H0n403vjB
	3cMnmUrsVvN71lztvbK1coALGMohpUbSHQgzVx9AZNbxmH5Xk4W15l56eiovwFUPIkXpzh3dSpgQN
	QmIBbOZwIRYAeKArNZdmrFDj3EKFG5dQ6kV2oiHHC/1/sEJ3yO/fvxA9jkcxrlgUrDo8tpqyQfVPX
	oCkvjo+U3OtLJRpCNnemzA0Jr2r0dzo/5lPyU2jjPqHkKbjsUEjtBl1eS0Clju3ke3z1O6jiszpBC
	1oUNWeyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBIt-0002aN-IN; Sun, 04 Aug 2019 07:51:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBIF-0002GP-RL
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:51:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so35174023plo.0
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ANpNLI9gUwUKc1CheszWhN1sonDsHA7z0vH6ZDPhKFs=;
 b=p7fTlqt7sdqDOldIk1p49POR4Bz/qr4hxNLhBiOEBr9ixCr0ggzVJHEnqeKMPUrLpD
 ff/D5Yfevfr2hfXlfO3z0QrQv2bZHPGnoSCCfgh90vgn8fl084ry1FLQPyIcQh12rsc2
 N/6dKsyhtgQSejzi21K/J5TQ2HsskNn411DKq1G7JQ4/+BraRNc/q5VTesOCMdgdiohW
 39u2O1V4ioe53LynuVUhXXTJkZAbZKmaYV8Sxg6ljjPMZEMqIQjcCY6Zt8z26hcKBCZB
 V7dT71ZjTAOP8aIJUBWZxQWx5Ag014Itgtyhz5abgUylftaSsQJpzRx97qK8LsMiedYb
 nlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ANpNLI9gUwUKc1CheszWhN1sonDsHA7z0vH6ZDPhKFs=;
 b=lqL8BPRyAUUfWH54CaiksmRx491jjXJEYE/E5oJtQEC57MiGEls2YLbcP+PhQQk/iZ
 nM4Oot6TKVK0s7AQosLqpT0aWWsyrVmOFqmRPbSmLxqP5stix12HrQHjU30qFFAUzJEd
 ml9kz8XDIkENqKZtbxzezkaMAIRwVJqa7uqHj0BHtSkHwUsRttkvRLQdwyGOgX1YDN5v
 Y9m/xffiwmR0mo6ZnXDbMhGOwvpgPGTQ2o3ZlqJpw6LW/TXyXWDiVOtuuCkkYBLazDMh
 k6iGjwvKM73fdbxQGs1KE+WqH0F2uWTLP1l7YvHnaTdnzTHlcAzdvE0CizkHAUVgHInu
 5sRg==
X-Gm-Message-State: APjAAAXZVtAPze1bccHVNOAsCtLeIAeOdI8QySvsUjOAmaXY6z2Jvb1e
 J7xchRNgCjwxVKVWiUdhZSW1ibKDU3o=
X-Google-Smtp-Source: APXvYqzs7Rc0xkFWhUgq98eAtEsf5MnOZ/BTVuJEW1jlfE7sewhm5FOiXGtUnNWW9HWzcz0t9hVy0g==
X-Received: by 2002:a17:902:b43:: with SMTP id
 61mr142195189plq.322.1564905062913; 
 Sun, 04 Aug 2019 00:51:02 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i126sm94091652pfb.32.2019.08.04.00.51.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:51:02 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] nvme: trace: support for Get LBA Status opcode parsed
Date: Sun,  4 Aug 2019 16:50:48 +0900
Message-Id: <20190804075050.14642-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005104_120192_D0D93682 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds Get LBA Status command's opcode to the macro that is
used by the trace feature.  Now we can see "get_lba_status" instead of
the opcode value itself.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 include/linux/nvme.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index a01277501eae..32c25b46ae63 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -841,7 +841,8 @@ enum nvme_admin_opcode {
 		nvme_admin_opcode_name(nvme_admin_format_nvm),		\
 		nvme_admin_opcode_name(nvme_admin_security_send),	\
 		nvme_admin_opcode_name(nvme_admin_security_recv),	\
-		nvme_admin_opcode_name(nvme_admin_sanitize_nvm))
+		nvme_admin_opcode_name(nvme_admin_sanitize_nvm),	\
+		nvme_admin_opcode_name(nvme_admin_get_lba_status))
 
 enum {
 	NVME_QUEUE_PHYS_CONTIG	= (1 << 0),
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
