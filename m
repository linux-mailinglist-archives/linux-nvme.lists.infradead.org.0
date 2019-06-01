Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA86319F1
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lusuc9h83P2OOxU8dMmYswog2sh5MDJVbnzqhGXmQoE=; b=UDUAJD2KcYCx+q
	73slsh6Vh5U/J6+lNMOtR+uTFM8Se8pD/rfnhitQZlHMjdVaWbdGoifn0cqaTYa7ZzHp1cBSDOh4Q
	SRYfiW4+dfNMwBWipVgGy5EuVvnHSvxdn4kJChrw0e1a54a8ZTrIUWFpiCR/Or9Vibng0cINcJvst
	4aroNrjnJOtxlGWG6WzxBe4ouKd8pjF6+2YOv3kCqWAAwJOPBDfmptLeJvFuuf11ixhmKdF+Xe3qB
	5Zg2uvpw0nMtRhz7E5IvJ4S9OEpBw8n2WPOEeg0sR87uqf2GPM5KXrvcDEBiyuFWJqQDqNyl5nsH+
	4MgI0YNE9OFQ/SCo965w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWy03-0000Da-UR; Sat, 01 Jun 2019 07:00:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWxzz-0000DE-Jx
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:00:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id t1so1750320pgc.2
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qGahBJU7cWvYu8uKBXFKimZSVkrkqx2zOKgyAWO7GLs=;
 b=I3Hx7y7FSkVADrhbFSMY0C8iFp4km1njUKHYeTfVssMJpfkBZwPjl5PTVH4IZtOb3y
 WlJ3t2hDWefvLviiLlO+qd6Md5o8KSCQA5IINbs5n7lfV0zjbmeqxSUi1ZwdgVq3mKaP
 FO6CcW/lWGSYjZw8SuEqNYsw0Kn25NCBETS4WhKDSLE1QHtUZ9cRWxUodMs9Q3h4xryl
 iQPmMEA7ddaz2ZDM5eiGJ6OLgbJb8r+FNytZrb9QgbumtmICv7XJX18qfomryZOGZVlO
 fRm2uwvevYXDJ5dNUMaNPpC4dgb7oJqOK470gRio08IBcOhAiEAe3uGG1aNsut8XDx5r
 CcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qGahBJU7cWvYu8uKBXFKimZSVkrkqx2zOKgyAWO7GLs=;
 b=fZFZ7PP+TQC6H48wFponaURZKYkDuNssiiBAxFfzyFKIo4AKu8uIM2AI728L0/T3qu
 aXZuDxWI7J361QO3BALqGWOthEFylsxvuSMGkD+bsqmDWyCpgVt6iF/T556MOLWuGiyq
 6gTJ1VVwKpOdCCfi+zBcKYd88Y+SaFfok9bNmjnOMJbqehTruRzvV28V9GWvVmiMvxJn
 kLLgSYgM/iN5bfPY0R8B4uG7W35llA0yx7QysCcdCeuevj1DEQwEDyxdY+BsB9QGtUmN
 OvxMBcfmu8wU3+E6HlZC/haVKOIPzXwdAf7LfOom52S5r65nYj45C5kTsCTwFeOFO5R+
 vGSw==
X-Gm-Message-State: APjAAAU9FkHtKDL6mV/vqVF308KLPvXqu7ZcsT0W9phzA3vkQFFGlZZQ
 QkrXitsUruGVN5XBT37dxO/VJOwjzi0=
X-Google-Smtp-Source: APXvYqxO4OofiA0A1u6hh82h6dQ3ggC95fG64cwP6khjK+9vpBAwfh2R8bPBpYfqfuD+DWo3SD6f0A==
X-Received: by 2002:a63:c203:: with SMTP id b3mr13161462pgd.398.1559372414038; 
 Sat, 01 Jun 2019 00:00:14 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g17sm14229155pfb.56.2019.06.01.00.00.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:00:13 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: add default value for nsid of write-zeroes
Date: Sat,  1 Jun 2019 16:00:03 +0900
Message-Id: <20190601070003.20142-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_000015_689742_85FF6FE1 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

-L 3772,3778 is doing the default value check and update the nsid if
it's not given by the input:

	if (!cfg.namespace_id) {
		cfg.namespace_id = get_nsid(fd);
		if (cfg.namespace_id == 0) {
			err = EINVAL;
			goto close_fd;
		}
	}

This patch adds nsid default value to zero for the case user does not
give the nsid input.

Cc: Keith Busch <kbusch@kernel.org>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/nvme.c b/nvme.c
index 9819fcb..a7a96a1 100644
--- a/nvme.c
+++ b/nvme.c
@@ -3731,6 +3731,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 
 	struct config cfg = {
 		.start_block     = 0,
+		.namespace_id    = 0,
 		.block_count     = 0,
 		.prinfo          = 0,
 		.ref_tag         = 0,
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
