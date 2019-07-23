Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39471F60
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oP+bJpgU7TDdb1Yx3dpDOX7hlq2fr4k11kjLM26f0eo=; b=PAo1wPXkKNrLkRBzCeox3/KQAf
	YlUx7PRxIq6P3kFLtrbedgD78GvHdDd31g6qIuwyC46BRfjmTAr4dUx1WbItKJM7S18hmXE0bTGGi
	ZcsSjJz1/svXdj1D3MMEroctj7Aj4gmxJTbuT/1nKk6+9MZZLygYUvxdOYM1SQVc86WC4pNrj38dz
	Z0OFxhPIEY29AZXDHAbz9vN6phMvFtSBMMOBjWQqVgLUPyJf1H6Obf/gZUshsER6Swp+sMVOq2YxW
	/d0eU5b2A0oxz5yw6scssqzKjfPL7aP9fyr4jVHlxvDueRDu9NaxvC2lzQ09ubGGz7hpMG1mugsC1
	+hWA7r/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzeL-0002cQ-AI; Tue, 23 Jul 2019 18:36:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpze3-0002Uh-7Y
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id az7so20920782plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fQ4NcLefdFM2Yxw8rDjnw+RdkrSXkxogNc6DEZd2fQM=;
 b=mHQwwJ+Vr74ZyDmvzRdcZkDaApErzyEzJc+oaJIazSHrq20CgiTY5lHaEaUIkjI6e0
 XmWevQEZc3WNN9+30lYwHQ90hnpMFG6u7oNK32xwER0SNXKveA6Q32fe/w/OnD3RVWYE
 +HTGViPXXAoD95EHrjqX8/EjApuPjo0vbNRO0K2ejDoXVI+Hj+8Izl3RpA2BlYe5irgJ
 UzX/VkmGr3in8TkOSjN+GeHzOHIp/clrnkuqaH8D0QozqOUJwEwHZXcdkLEJsTstn52i
 V2ZfiQJ3Y/NzotfgShRbyVe0JUGeeUpLAJSWGtJfpOn2dKv6LFSX8HCmqnNbUbiFrBVm
 27xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fQ4NcLefdFM2Yxw8rDjnw+RdkrSXkxogNc6DEZd2fQM=;
 b=asKPiusJYjy7QQrhb6xQrkK6VQYJe3sni/XHPoRGh3V/uD/qeVxLEnqtBSXSojc6LG
 djdZrvZcO3m6nVUQbrzeolG/Dq4nGoSJ4vpVurdHnmVxOPl7T4VIAPtML5SbJIBbezjI
 EC4/VnEtMV/tnuEqFAaqJCKaxW7Zje4Qn2lh+rU9o/EXg4tGheRMtu1qlj2ex6Oq86dW
 H41wv1WNfmkcNopEQz1jeIBWTPAMQSFIcVewAIuX3RdDriBk4IU21qjErGeb1msHAAvA
 BlNJVlhXGhLxT5EB35yPQWnVDy4g+LbX1k2bs9bW8h2n56tLs2Qoe2BhAkw/7N724AoX
 r3JQ==
X-Gm-Message-State: APjAAAUe4TieNjCaqtpYDCVVWkSXWfO9Di18HZ4UxH/JpSUXg8sU33Qp
 zgYaQrr2L2TXxQ/4aZswgKyIlzSAzRo=
X-Google-Smtp-Source: APXvYqx9Kqm0mulp7QRD7qTMjsYwB/k2I3NuPg3omUhGf7SwEg5b20Q3qho3mwkgKGWfYVFFDEBaIw==
X-Received: by 2002:a17:902:a413:: with SMTP id
 p19mr82453665plq.134.1563906973103; 
 Tue, 23 Jul 2019 11:36:13 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:12 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/5] lnvm: make data_len to sizeof() instead of magic number
Date: Wed, 24 Jul 2019 03:35:57 +0900
Message-Id: <20190723183601.29370-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113615_359104_A0EF0363 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can have it as a sizeof() instead of the hard-coded value for the
data structure.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-lightnvm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index 0b99786..e8cdccd 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -442,7 +442,7 @@ static int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id)
 		.opcode		= nvme_nvm_admin_identity,
 		.nsid		= nsid,
 		.addr		= (__u64)(uintptr_t)nvm_id,
-		.data_len	= 0x1000,
+		.data_len	= sizeof(struct nvme_nvm_id),
 	};
 
 	return nvme_submit_passthru(fd, NVME_IOCTL_ADMIN_CMD, &cmd);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
