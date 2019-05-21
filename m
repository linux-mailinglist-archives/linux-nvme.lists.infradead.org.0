Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD98255BA
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=inP8vSdStgKAr4FOVSwO/uTuspezH8ydA7frotLD0/Q=; b=TUtwxsbB0sfKwW
	+NDRY7s1dS7ILTF4r68r3wCQ2HCwVvMeecuI4U178M4KBlOIjNdek49bOsSa3KeAIb9o6Nc/r0DYF
	E8CJafStpP3SZIRbn/6KjylEmbCD9KxpLoMO9LNJsM4GzQwGy0q2dsaC4RsoF0/sd0w4B6W6bOYde
	akIoKjZ6yve26Y4xrDVd62CVOxUPxMpv8EJ7LOgfNenNbP/tNMVU/ZQUnaDpPSk/WYmt6qUuDZCAt
	ywadrI1kuo9G1N4tsE+bhhMqjv2X2kmKS6eYAZtQeyvQLVi/q8hp5Vz7LetA+FlgNKBH1f+59jvnk
	3EcC4zv71nypcZ7tjgfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7lM-0001Vz-Pr; Tue, 21 May 2019 16:37:16 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7lG-0001VP-QB
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:37:12 +0000
Received: by mail-pf1-x431.google.com with SMTP id s11so9331269pfm.12
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmW1OLxFCYv8lt/Kpd03gVt5CS1eavqW6lxikwcohME=;
 b=b7ed1afhOY9qA77bG4Kb+wxt8kNWZBwoxzOZ9It5178sJUBzXJVpzoOqvGIdCmOsMk
 17TbLHh8RdAcO8fJl2/9KhpPPEARzQDVo40ITlSbWoTYf7YMpYqfvyHhgPY9cRdghHI+
 v/3bO6E0k7A0sRiE9EH/O2yN8iEkf3Ef5I5aMdE5t1634hsUV0/q3Kt5j/MaOfI8sjld
 tgR6B0HTMDRBXKCeq5M3rHgxPQkYVocJo+PpYvkhMwTOSjYOaghFcZaXrD2TW1qLwBP/
 04LbjdcrQDi7aa9rNC3+7eHCUErrnpU1Lla7nsA689dOaA4TasNwtwz8e0hjU741fVYu
 2rsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmW1OLxFCYv8lt/Kpd03gVt5CS1eavqW6lxikwcohME=;
 b=t/PvzvzWm8aw+9Xi9l+sNV3NGLUqsIcTnL2LDWmStuQip7dgiRjSCYAHEGUYy7dfIq
 pyJVpuBaOW5Mkant7fRxWJhvvU1iGxlYXJJi2Yo4Px5fUDlafLJnaVRPJNJpV6u6QiJl
 /xaRUzoGHQev2F1GLPXLmllA3Ddakum01mgTvo+enPk5VLfsd2zEF0t1Y75s87wcOcBb
 hVs2/ofCU0YJl2nhuJYiW9gkBNirx4PNy7FMQmSBiW9Q9axgxuz61hOUjplFiu9vdJAI
 3Vbn8DNBVOMMy8rFh5DZjK7Sh9b/tlaj4LFi2hk6vDInlL0fyjmqs97hBemmvzuWFcWU
 Ywmg==
X-Gm-Message-State: APjAAAVyjSMXy/Fawp/kJdEiqXpiiq+QEAz+5kCznvROhJnU2ULPtVAv
 jLe57EL3PMBkyz4rhNG4zcst0tV0qoM=
X-Google-Smtp-Source: APXvYqxfEufJStdaCRWa4sLFgat8dwgh3jCtDzsfeCJJfnSJnN1zl1tMVDuAM2jVsNgiMYLtQXYdkw==
X-Received: by 2002:aa7:81d1:: with SMTP id c17mr69253397pfn.174.1558456628987; 
 Tue, 21 May 2019 09:37:08 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r11sm24460731pgb.31.2019.05.21.09.37.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:37:08 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V4 0/3] nvme-cli: Introduce nvme-status mapping with errno
Date: Wed, 22 May 2019 01:36:56 +0900
Message-Id: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093710_875460_C3F38657 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This patchset introduces nvme-status module to manage mapping
relationships between nvme error status and errno.  It cannot be
directly mapped in 1:1, but we can figure out what kind of errors
happended by the return value of nvme-cli.

NVMe status fields are 16bits to indicate, but UNIX return value from
main() will be parsed in 8bits so that we need to do something about
return value to indicate nvme error status.

Please review.
Thanks,

Changes to previous V3:
  - Fix to return 0 when given error is 0 which means success. (Chaitanya)

Changes to previous V2:
  - do not overwrite the err local variable, instead returning the
    converted errno mapped directly.
  - return ECOMM in case of linux internal err which indicates the
    negative values from in the middle of the subcommand.

Changes to previous V1:
  - make switch-case inline in nvme-status (Chaitanya)

Minwoo Im (3):
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  18 ++++--
 linux/nvme.h  |   6 ++
 nvme-status.c | 155 ++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 +++++
 nvme.c        | 108 ++++++++++++++---------------------
 6 files changed, 233 insertions(+), 71 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
