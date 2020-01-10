Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB621374D5
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Jan 2020 18:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UWIHCvc0hhFmgs40pCl+uX5t35oXoPrjmzrnrpYSoIM=; b=L25EWvtIk3nz5H
	rERZp3z+FQv5aDK+LrpTq7JEBcQ0mQvDYrxBjHxjn65zjP0Q8WAcsJJIr+e2TTaoea6jACSn9s1Wz
	li3S/97sZfIM5ZplBkfVfXRLA4h0/h2BLZO1SZZU6wBjuWQ8INp1FE7UcaJ6suq5U2zxcPFTRPTak
	E2bHFAEC2FpV2NhQUToR2z/EW7QDXXMMgimGsixGfRiSwyLoVelxtLK+z1BIdyZA9dHsX+te4Wzvc
	JArPo95jZKroRorZOig6G4qVMHoMi5rttkB64UwUhSRlY6z54AxE5vn66erDcBXkMSzxRXlrMueBh
	ekN/BCgeze+tRSdZEuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy6z-0006hn-6q; Fri, 10 Jan 2020 17:30:17 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy6Z-0006a7-8n
 for linux-nvme@lists.infradead.org; Fri, 10 Jan 2020 17:29:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so1239914pjb.0
 for <linux-nvme@lists.infradead.org>; Fri, 10 Jan 2020 09:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=if4RAkhreXdypvivvkzUzoNLQmdHtvLSynu8xvJL9L0=;
 b=P0P6lIkO0vEXevJyCi0Ve6nTaWGmPr9DQ9iU9vm86zyegmAuPFirXAbtYuTbzz3vkX
 IwYPqghnfSK4u10G0ECYGMKyJNdS7dH7F0qOWU1LKQiE9fdExxHqQ76dxjgxGrkSGBWD
 b5/sRrmV9CfAIEL7nUH2bj2hPGDnrM9VcBEwjPOyYzL6h49AmjZeWsuVinNCId28pAio
 sOAq8PD1HwwIvlTtUJG8cdfc3LQmrxFQKqn1t2TVKKnbqRrS+I8Zy5+rld+yTe4ACTcA
 kNaaR7Ar2b7FVQ2UoIyG4ivhwcahOq5BR0mV4fY0Em64olkCNL6Wh3hEVEV/FlxbNYla
 gUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=if4RAkhreXdypvivvkzUzoNLQmdHtvLSynu8xvJL9L0=;
 b=Z1mRPUIuJlSawJnIWaqxQzqV77mnYoqO9DbN50KySJLdWVz7z2QN1eSYIPCCaAUCwM
 S/STSOwDk2wTc2bBN9igV/BVJ4EKbrRQGocKo5DBsIzMQwUSGac/Jtcf+kaXUqqikrEW
 l7c+Cgcx9DOmLAkyabBYvoOq3ac5YzpBhtamUxNoEhJhhgrhWUSREIXs7Z73Nv+T1oH3
 gX66dyx5rB7TTN33DiUaUoiVWkAd+tp6MloQOhULfyUfZbiGkpF3f+9n1wt9O3jnTjw7
 l1W4q4zIGVWR9qjS/MRhxb3px6pDDAwyezcj941bPHO7UbbMSsED+0CFOa9sKP97Rq7D
 1l2g==
X-Gm-Message-State: APjAAAWgq6dYa3ZUDw3rpuPQtnTUFrLXTUEFEb2MkA3vivUoqPrees7J
 Hri14ePM4MEf7gcfgyPsZoc=
X-Google-Smtp-Source: APXvYqyRCM49T218y2zPfZg/Q1kMxItt+bAymfNhW/HR5muuMaPgLbxwUDSNLZMQCHjcIKtBirsL/A==
X-Received: by 2002:a17:90a:ead3:: with SMTP id
 ev19mr6168728pjb.80.1578677390808; 
 Fri, 10 Jan 2020 09:29:50 -0800 (PST)
Received: from localhost.localdomain ([103.211.17.220])
 by smtp.googlemail.com with ESMTPSA id p28sm3513553pgb.93.2020.01.10.09.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 09:29:50 -0800 (PST)
From: Amol Grover <frextrite@gmail.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: [PATCH v2] drivers: nvme: target: core: Pass lockdep expression to
 RCU lists
Date: Fri, 10 Jan 2020 22:53:46 +0530
Message-Id: <20200110172343.17796-1-frextrite@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092951_307227_6AC32D0B 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frextrite[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Amol Grover <frextrite@gmail.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ctrl->subsys->namespaces and subsys->namespaces are traversed with
hlist_for_each_entry_rcu outside an RCU read-side critical section
but under the protection of subsys->lock.

Hence, add the corresponding lockdep expression to the list traversal
primitive to silence false-positive lockdep warnings, and
harden RCU lists.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Signed-off-by: Amol Grover <frextrite@gmail.com>
---
v2:
- Fix sparse error
  CHECK: Alignment should match open parenthesis
- Remove global macro and use local lockdep expressions

 drivers/nvme/target/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..c2d6c2dd53fa 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -555,7 +555,8 @@ int nvmet_ns_enable(struct nvmet_ns *ns)
 	} else {
 		struct nvmet_ns *old;
 
-		list_for_each_entry_rcu(old, &subsys->namespaces, dev_link) {
+		list_for_each_entry_rcu(old, &subsys->namespaces, dev_link,
+					lockdep_is_held(&subsys->lock)) {
 			BUG_ON(ns->nsid == old->nsid);
 			if (ns->nsid < old->nsid)
 				break;
@@ -1172,7 +1173,8 @@ static void nvmet_setup_p2p_ns_map(struct nvmet_ctrl *ctrl,
 
 	ctrl->p2p_client = get_device(req->p2p_client);
 
-	list_for_each_entry_rcu(ns, &ctrl->subsys->namespaces, dev_link)
+	list_for_each_entry_rcu(ns, &ctrl->subsys->namespaces, dev_link,
+				lockdep_is_held(&subsys->lock))
 		nvmet_p2pmem_ns_add_p2p(ctrl, ns);
 }
 
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
