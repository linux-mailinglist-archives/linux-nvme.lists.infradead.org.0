Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B85E32373
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JYdRoAdhQ2vIJCZDhMUC7JO8jCY6mkiQQC49KS+QsGo=; b=OiV
	ibhKPsw2Mm4/5FzzSAgK4KaO5miXlq/73gmT/OyTeMJOCXvM6Z9iKUXPxJZasEf4Qeo/2fZUEAvPt
	cAbU3ExWrjdd21ElmTuyls70nGiD09c74qaLZDXIcg4QhKGH5Stknj9ZxEqvx4p6QCw0VhdTqrpRu
	gBjBi/9mdsvXISxeGCUpma6b+XHdx7mVsJe8knyRBcrzVPB3X9r0kWphZnjAeAinwQbwjlHTi1R/N
	h3SshBcwdueaGC/2rsZjk3iq6KGQ/4EmuhCqgWx5+DBVVXuQC4WaPWQUH6xSi3IWGmNaC1SJGsIT8
	cPzzSggZ0j1guPy59lHXayHtDLoT2XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQso-0003iz-64; Sun, 02 Jun 2019 13:50:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQsh-0003iP-Ml
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:50:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id c5so5900759pll.11
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vpxtw8IyO9UolVVmg7PsLaKVLSwk77nh6oqt5MC1q1I=;
 b=iPcurMqjzYc4+58tfhUqUCHQ7b7GoQrRmTDRltNt1mPRlLHAufMSapf4tLsv8ffk8u
 nqeOdAb+PeMHXnRZhQTWPohu7WDFFZ7q5c21/+qux07nKuY630Hkou+pPFj265uEcu48
 6DFZR+n2sDEtnDc7vFG777YbkxWISBNTh1FSTOxN+Ghs6eZkm0iXp++r+5Q3CT8aRbWl
 yDmpfxH5mj0cOcrC2ii8rOFZbo1aW+6mMUg3XPuU+2hpHoV+Hl/pf4PqgPAgrrsctYVV
 DQ+YenSIhDB27vOu3jS8WuwCXlpP9VzoH2klrpZS2NuJRzTjMtEv8erU1UVtbdKWsKeQ
 m9Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vpxtw8IyO9UolVVmg7PsLaKVLSwk77nh6oqt5MC1q1I=;
 b=h+dk5gEcAtc2PJiN1VdHy/zQcwfgF2SBNqHPNAWDUZ/al5IjXSVGQVhSvLNXiJZAa+
 TVxG+K6HGaokhaG65vdL7Dfk5x6Ft5KtMPX/luyu/572BOKtdqNj8wbZcMbquQMq8Ph4
 AIIDio8/8YCkXjvsDj0og3OT98aGabc3Gwlyghm4TT/SGtTP73YgDFVcW2wigFsOtPI4
 SI+MYBCSV4cZvWsF3p+UG7id7sWZjxtO8cdCCPtaxW8Ss/XBAS9SJvwNzCZ4qtRq1agv
 9c5JMTLoP28c4QrVyOQhv3kkjzE3kQje2L40BAL52pbm1OgEmY0n67HzV1ia4xwCdXSD
 OhQw==
X-Gm-Message-State: APjAAAXZvBdqnFeOEYtxNT9im3aNUI1GO9FBkKQMJzwGQ+XGJiAD++eC
 ae3YdAI5tWMNWOn7qeK2sYDkshyDBvA=
X-Google-Smtp-Source: APXvYqzM1+BsKWyl1xHQI4agN3HYo2EFMC8+ANnsY6jnbrdnUqeWsEmVIbG3RP2dFcj3EBY020WFrQ==
X-Received: by 2002:a17:902:e48d:: with SMTP id
 cj13mr23592054plb.156.1559483438722; 
 Sun, 02 Jun 2019 06:50:38 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:383f:1f19:d982:1b59])
 by smtp.gmail.com with ESMTPSA id m21sm7023871pfa.104.2019.06.02.06.50.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 02 Jun 2019 06:50:37 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/3] nvme: enable to inject errors into admin commands
Date: Sun,  2 Jun 2019 22:50:18 +0900
Message-Id: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_065039_748199_0D270A84 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currenlty fault injection support for nvme only enables to inject errors
into the commands submitted to I/O queues.

This enables to inject errors into the commands submitted to the admin
queue.
    
It is useful to test error handling in the controller initialization.

	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
	# nvme reset /dev/nvme0
	# dmesg
	...
	nvme nvme0: Could not set queue count (16385)
	nvme nvme0: IO queues not created

* v2
- rename the argument 'name' to 'dev_name'
- add Reviewed-by tags
- add documentation for nvme fault injection

Akinobu Mita (3):
  nvme: prepare for fault injection into admin commands
  nvme: enable to inject errors into admin commands
  Documentation: nvme: add an example for nvme fault injection

 .../fault-injection/nvme-fault-injection.txt       | 56 ++++++++++++++++++++++
 drivers/nvme/host/core.c                           |  7 ++-
 drivers/nvme/host/fault_inject.c                   | 39 +++++++--------
 drivers/nvme/host/nvme.h                           | 36 ++++++++------
 4 files changed, 102 insertions(+), 36 deletions(-)

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
