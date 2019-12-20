Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75CC1273F8
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 04:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcrE4b3RXYMan6xAFazf/DqlS7o5aQaYhF+QtCtaNq0=; b=pPRzvIREugfJ6B
	1Rkz0i0uvMD3JPVnhdVN7n9XIM2FPr2XAu58T3ZYUUuPPNAKboAnau+nsCbMJoUX8pv45S98iBqU3
	AhJmIym6AqHYOREZnaMWCPRT1+6VflkkqXzd3XXnqsooIvzSOREWqIWIuBhy1BzGbaH8NlCIVGHVz
	3sAiO56zJkVs8hm3/3FW7k6wSsE1rsGi9rsA8Cc8dIoBfAiiK2TYkjD4yYm1iI0wvmE4odF2AcDRC
	WYRTcmYtWlUcet1aYgIzBpPoKZakC7SpG2Gawhat0DhTzdGExSN2+CgR3uD832lSmsqf9USOTiv+F
	mYl9UEwfDTuLqfj08Xgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii91F-0006r7-CB; Fri, 20 Dec 2019 03:32:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii90Z-0006R8-Sc
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 03:31:21 +0000
Received: from localhost (36-236-5-169.dynamic-ip.hinet.net [36.236.5.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2EC124680;
 Fri, 20 Dec 2019 03:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576812679;
 bh=Nzli6fnHFG3frPhu6CE2p6XUrooe6M9887EWsWUvcAs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oxp4O+oPwoBJT9zjdbiDX0HxXhjJheRluBYWA3h5BgYvqc/iv0cnigZq97/38aY0d
 k7eAKJ9xuHosfcneKiUuLmWzMYZHt+8TCxUP2yqsRXp6pbt4xJqOfBY4N5zJbr86e+
 sOqQXuDr2ZjPtbCG3UkaqPwJF/Yu0YUmr1Eo17g8=
From: Andy Lutomirski <luto@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] fabrics: Rename nvmf_hostnqn_file() to nvmf_hostnqn_load()
Date: Thu, 19 Dec 2019 19:31:03 -0800
Message-Id: <99abbf25acb4659010d66fee63bd0924032bb0da.1576726427.git.luto@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1576726427.git.luto@kernel.org>
References: <cover.1576726427.git.luto@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193119_996567_0A66BAB9 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The old name was confusing, since the value didn't necessarily come
from a file.

Signed-off-by: Andy Lutomirski <luto@kernel.org>
---
 fabrics.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 12be2e73986e..4448416f9855 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -721,7 +721,7 @@ char *hostnqn_read(void)
 	return NULL;
 }
 
-static int nvmf_hostnqn_file(void)
+static int nvmf_hostnqn_load(void)
 {
 	cfg.hostnqn = hostnqn_read();
 
@@ -827,7 +827,7 @@ static int build_options(char *argstr, int max_len, bool discover)
 	    add_argument(&argstr, &max_len, "traddr", cfg.traddr) ||
 	    add_argument(&argstr, &max_len, "host_traddr", cfg.host_traddr) ||
 	    add_argument(&argstr, &max_len, "trsvcid", cfg.trsvcid) ||
-	    ((cfg.hostnqn || nvmf_hostnqn_file()) &&
+	    ((cfg.hostnqn || nvmf_hostnqn_load()) &&
 		    add_argument(&argstr, &max_len, "hostnqn", cfg.hostnqn)) ||
 	    ((cfg.hostid || nvmf_hostid_file()) &&
 		    add_argument(&argstr, &max_len, "hostid", cfg.hostid)) ||
-- 
2.23.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
