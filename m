Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CB5137C33
	for <lists+linux-nvme@lfdr.de>; Sat, 11 Jan 2020 08:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NvVMcEotgRqEvZHo/MOJO290rRTpliaXPON/qziT11w=; b=Yme/b3LLE5tAmo
	8MNwIWmcoC/y0T3cSq9Ve7wLcF9lOmaxtcl6FZhfwLUOE3dR3thEG1/u5ur1w3M/ZHWWurk48L/qh
	CmCj9ZA9cM6i1vMTquc2LtL0fyKz0Ud4Bv6lCeFiGcE5uPRfd3kOlA26rubful7SUNGbseF4JojcT
	tjKjTqHY0NZ/J6mDVJTeDz0VC4tmq13WkSowZu7c/LVl9AXw33I5LHJHZjQ5KXv+tYMYaAwfwWQiA
	LR6vJgsSV5SI9pK2MI/rYTC77svYqasiKoh2nHAAQ2MfQtBplXdKs1u6ccrnYg4qAyg1FGjvYEkcW
	FTjvoi1pSKTOerM1fjcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqBNI-0004yV-HT; Sat, 11 Jan 2020 07:40:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqBND-0004xr-PD
 for linux-nvme@lists.infradead.org; Sat, 11 Jan 2020 07:39:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id az3so1738631plb.11
 for <linux-nvme@lists.infradead.org>; Fri, 10 Jan 2020 23:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sj2E8hbf+1n1JQewsDgj2Fs29eg9VqanuSP3luTlahg=;
 b=BRq3uXnfOC/WIjl9+DbaxslikTOCbxvw6S5ZzMoh4VEfmtZlzzVlFRaHOrgci0WAyE
 DVwlYZ/G1nx8+Y+ZCNlj/3oY8GUL2ALOuiYPxwJEykRMfQAmi3LDX1vsEy4rYKWeMEP9
 9wXW7dXUK3CkxPh6L70MMH9ULPtXUIo6H6bJRU49x77fPNzY6G/H/HaQ7mpnd4yMgRWx
 Ujqwg0XQgfw02W2MFxuW8EePWRt5AhXTOIegnlKtxPP+w7QIupOKFWBngtU7XMb3cFRh
 uvPRzR9VOsY/PxEC8sZagAbNn4J2tlzh2kMr4GEPgrF8uMOjGqDoHStkZlIyY9XRsUmP
 uLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sj2E8hbf+1n1JQewsDgj2Fs29eg9VqanuSP3luTlahg=;
 b=CGQpFJtNCooOK2aErrrynqYJOb9L74859QuVugINMTx2QnaHNZiTn/T4xiems0ZC2J
 cunUeLfKuP9NWC1PPuIvyjjrg+YN9NlCui/IutG4nRf4vRadQ8T4UobnQwwJST0B5xAW
 VtAXo1MmJCYUk/vxsjh3w5c/cjYWPQJPH8ZbNyB9aS9vx+E2Fd3mSdvuHrbZRY5TFRI7
 Y+FAzSLZWRyRu/shKpQS1Yqb0o/znrMxh7yGnkpnY0E3r/QyAlsyxZjBVbG34m2r1/hE
 ZEoXUZiAYTxvixHpQ9kXEGWoEzEHtbcwf/HKdMsRSdg1ywsKMN7ywz2tQwkeHGHc46Kr
 rtLA==
X-Gm-Message-State: APjAAAXNVEeb4R1jye9vkbmOL6uyRPW8+GBkXgQ74u93IXuqdTJVUgEf
 UQwm05Qu5YY4BhPHuhLMqMQ=
X-Google-Smtp-Source: APXvYqzQun+14sGBUPw6UTkEDD50gGQAL0YWb8/xCo0l7Y8qM6mXd12JR0SEd2bwgk3cOVE3zuf3UQ==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr3257670pla.17.1578728394863; 
 Fri, 10 Jan 2020 23:39:54 -0800 (PST)
Received: from localhost.localdomain ([146.196.37.13])
 by smtp.googlemail.com with ESMTPSA id z4sm5437450pfn.42.2020.01.10.23.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 23:39:54 -0800 (PST)
From: Amol Grover <frextrite@gmail.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: [PATCH v3] drivers: nvme: target: core: Pass lockdep expression to
 RCU lists
Date: Sat, 11 Jan 2020 13:08:16 +0530
Message-Id: <20200111073815.7659-1-frextrite@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_233955_821794_5062B328 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: kbuild test robot <lkp@intel.com>, "Paul E . McKenney" <paulmck@kernel.org>,
 Amol Grover <frextrite@gmail.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ctrl->subsys->namespaces and subsys->namespaces are traversed with
list_for_each_entry_rcu outside an RCU read-side critical section
but under the protection of ctrl->subsys->lock and subsys->lock
respectively.

Hence, add the corresponding lockdep expression to the list traversal
primitive to silence false-positive lockdep warnings, and
harden RCU lists.

Reported-by: kbuild test robot <lkp@intel.com>
Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Signed-off-by: Amol Grover <frextrite@gmail.com>
---
v3:
- Fix error reported by kbuild test robot

v2:
- Fix sparse error
  CHECK: Alignment should match open parenthesis
- Remove global macro and use local lockdep expressions

 drivers/nvme/target/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..35810a0a8d21 100644
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
+				lockdep_is_held(&ctrl->subsys->lock))
 		nvmet_p2pmem_ns_add_p2p(ctrl, ns);
 }
 
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
