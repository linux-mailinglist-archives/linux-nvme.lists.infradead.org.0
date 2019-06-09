Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429BD3A655
	for <lists+linux-nvme@lfdr.de>; Sun,  9 Jun 2019 16:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mU8vUtNeanXXVvqOePPbnTcs6g3nmo3A3W9kby/aQuU=; b=gEx
	DMyVGa3kbEVVxKRImE9BP6Fd+DEpB/HPvK3z7h12dLS9O0WK55PZzqxr3N8z2J78i3BDPAVrjujkN
	htvXMcLbn/TmKnwQ2IC6tvTkyEB5Zp2PGNiMZtSAdcKHsyGGPi6M3RQe4yz8v+SPc1QmJwhwxTMDs
	djnDAhknqZ7slr+x1obQewrmGDlL+zIMPh58XbdKDCNfEI81iFRwSOoNVVA3zViyNXOcIqSkIinPw
	+0OSkV5K0989IXqS8mm3CXkn4oVIamONLhduC5kaer2tnQairNFJkyvHYOn7zXiyhyKIwu3gKyKHQ
	c9TsC9pimUXSGo1K0XTWYpdMoCkQ5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZydU-0003VX-QP; Sun, 09 Jun 2019 14:17:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZydO-0003Up-DV
 for linux-nvme@lists.infradead.org; Sun, 09 Jun 2019 14:17:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id u22so3790631pfm.3
 for <linux-nvme@lists.infradead.org>; Sun, 09 Jun 2019 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gIbuP6hHZX1dqCf5cIyqO9R3JNZkLkFml2Tb/cKhC60=;
 b=u1Djz2LTcSChLFnfiQCH3bwGb5x31HqHrKBZezJxgXaFwmt+wAT/q4kRICk0u8f1PA
 bExQqumzsXlJT40rZgyw8aMxjrjzjAORa061kzSG6dQONz46Hp/pjBRvCNbTe3n3VYq2
 nufyZDmd1fSlpEbrlhdTxgZtrPIBy9VnAvA0zJ4IW8PqabRUZ669q3dx5G305x+3+o3c
 knJkaX4fI3TWayb9We2hxZ6768CMV1qkPeBGj1zetnmqh4eHws48djRG09KkNuAxLk/M
 BHgIWOcWchBvzmztGdaeHlXHj503x6oHpYQcNCp+eFa4uOjc8nA3wVyt5ITwwdGpBHd4
 h6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gIbuP6hHZX1dqCf5cIyqO9R3JNZkLkFml2Tb/cKhC60=;
 b=qD2K782GHujw2gDG/C8d8P7ZeJOPJl5h9ttNyr7YqM5KWXK+q8L0rK5PDR9x6+hXUm
 dj/5FnxcoRalqNHOEXw2mYyisLvf/e+kak49kpz9Qj51JN+rX9LL6zkA1xtH22B8DotE
 gxZ0BJw67Yz/uX6dRCCMNgsfki7th8PRrgrxSUAwYAj0B4RO2qSeK8rsHxP+t8rQWRJf
 5aUyZBz69z3XQPBPONaIEMMvSnIgVkdxQt1n9lwgXUagWi5lwZmXqN/xwCY/YoRBuk9G
 Bv7POXa6L8fdhehHd4/Of2+Dwn3Ea2HLPPJZ9Eox9x8dbf4slK2wb9EXQCoX+PXSNRGU
 CX9A==
X-Gm-Message-State: APjAAAWOA4xXdUJ/C6Dr7CJJb7vMRf7F5NEnPiI295OalHQ0h1ApVKs8
 VKiH9AnTi4XV2WTAFbn6Eb3cdoDajwg=
X-Google-Smtp-Source: APXvYqwF7Q4ezFK60yyanSO3uokVdmltuf+M5VusIPUkim56Ag2jNA8U8J86i3pG6FxleWBXyzIfgQ==
X-Received: by 2002:a62:a509:: with SMTP id v9mr68058903pfm.82.1560089840791; 
 Sun, 09 Jun 2019 07:17:20 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b49b:e456:7394:88a2])
 by smtp.gmail.com with ESMTPSA id w4sm9556554pfw.97.2019.06.09.07.17.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 07:17:20 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 0/3] nvme: enable to inject errors into admin commands
Date: Sun,  9 Jun 2019 23:16:59 +0900
Message-Id: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_071722_484069_A3ED35B2 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Thomas Tai <thomas.tai@oracle.com>, Akinobu Mita <akinobu.mita@gmail.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
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

* v3
- add Reviewed-by tags
- WARN_ONCE() if no namespace is tied to the request
- remove thermal zone series dependency

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
 drivers/nvme/host/fault_inject.c                   | 41 ++++++++--------
 drivers/nvme/host/nvme.h                           | 36 ++++++++------
 4 files changed, 104 insertions(+), 36 deletions(-)

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
