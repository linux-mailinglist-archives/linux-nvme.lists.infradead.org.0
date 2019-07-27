Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C51777B7D
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lv894Z8eHNdsSseJrKqCbkYnjyizhZI/u12SngnNz6k=; b=LNvxFPlVc2apVg
	eUGjaaAvaHKHwVe8PK/kDq3OhSXMdO+L0YvHtAiGuh9XZT+grdpOeW3VPyFAF3LijiQas3e+qzEMj
	tm/hRUELFFsuM67HMS4XuYsgq1VBGfU2TsGC2A64uNfhqgd5yX4YmWFkYqEGJ8uOM5/nfxAvtllJB
	RatCTb+mmuL9aAjO5T5X/GpI+y7p+YKEwk5V6fSitGKSGMbsm/89+tXTazuURAv+X+N/Eh+eVILX6
	wvrMidfEcDzeF74sSe85lRLxrcX8vFLrIsFpVJnFArHo6QBSi7glR8UxKclojlrWZLuH/5pUkAX6i
	nxPSDZLMUkY12QAw/39g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSRX-0003ip-JR; Sat, 27 Jul 2019 19:33:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSRE-0003X8-Vc
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:33:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so26279358pgv.10
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TTtxl08pjFberdTCYHNnejeBwvVKz50ngcc3Ey6A8sY=;
 b=dLbOjgec8wMtI2x4Tu2fnHuPQT2AfyGGv6G3OmB6qf5SDq8Gl+usZNhd+D0tRQbvzt
 13UwftxlCxy3ekSFOQV6MLK2d/IYkA3GUP8DrFBfu7OOIVfYbvMl/1pf50Sp7y5Wsoyc
 mzKhvzV2kbG+9eVVwlvJ5DZVjo+Oi/gbmi9xx3stV6xuy/PmeIL95m9f9lDZi3Us5AY8
 +T06mmYLcNmLskoKpld0GqzlNtwQaMzczhvQeVyi+DKrBwm6zUL21djTP3p3Xlh0T/8z
 ejcDwlvUxM2EbFINjCcOA01c5clXSsJe0L1Ogc9Gttj+zuA8w0zl97FeICXi29QquKpa
 FF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TTtxl08pjFberdTCYHNnejeBwvVKz50ngcc3Ey6A8sY=;
 b=Vh63Vm4FwTS8XGF04RxUmiDQLBKq5xWRdzm8ESDe3gpL+o1JKv7M7FwH0nELNa1lp9
 /dit7grmLoPlNJB3QOM70GyI8m0bQey/SsG3rNTpaMW5gN/wpiYkun2k5808aSPa5q/9
 pB2rD4WEt8bmnbofe71/LOMbl747yGamXjp3yHxN/0t5zoAQJSezP2ANfOR8M011kVb6
 fpw5c8Dviu1kPAGiDGEDV3txEnoOJuo0TlIhINlJVp5ILkfKJycJr/b2KteKFoH/iCKc
 ArB7qroiZUpPcUB4LKYUWfXH89RPFjaDj0hARt1hjH4v0CRxZnXN6WhBBgmIZjyLQPGe
 U2jw==
X-Gm-Message-State: APjAAAVjWaq7Y47/Hr2erK/7caFitktHg15GE+QAmO6WK2fuXVzjE5cr
 p3elD8J5EdSnHSuLDYq1rBv5szZLl5M=
X-Google-Smtp-Source: APXvYqyKFFIZiWWtAj0eeJHJ+wPT9G7RB7ZKGKPyzxi3n8HZTbLyGNZ9WIsVZW0WcgnpbLJkkr+Xig==
X-Received: by 2002:a65:4808:: with SMTP id h8mr96145525pgs.22.1564255979823; 
 Sat, 27 Jul 2019 12:32:59 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k36sm58027716pgl.42.2019.07.27.12.32.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:32:59 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/3] nvme-cli: lnvm: introduce chunk-log command
Date: Sun, 28 Jul 2019 04:32:46 +0900
Message-Id: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_123305_014864_382C59C0 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <klaus@birkelund.eu>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

This series introduces a "chunk-log" subcommand for lnvm extension
plugin.  This command will send a get-log page NVMe admin command to the
given namespace which is for OCSSD.  We just can use nvme get-log
command with log id, but this subcommand is much more easier to use
because it gives parameters.

liblightnvm also provides nvm_cmd rprt_all command to retrieve this
information, but nvme-cli can do it also.  If you have something else
for this, please let me know.

This series also holds few clean-ups for the existing codes.

The last patch is introducing alias command name "geometry" for the
id-ns subcommand.

Please reivew.

Thanks!

Changes to V1:
  - Add Signed-off-by and Reviewed-by from Matias and Javier
  - Squashed 2/3/4 patches into a single one
  - Remove nested-if suggested by Javier
  - Early return instead of goto suggested by Javier
  - Update print format for chunk-log suggested by Matias

Minwoo Im (3):
  lnvm: make data_len to sizeof() instead of magic number
  lnvm: introduce chunk-log command for chunk info
  lnvm: introduce alias geometry for id-ns for lnvm

 nvme-lightnvm.c          | 73 +++++++++++++++++++++++++++++++++++-
 nvme-lightnvm.h          | 17 +++++++++
 plugins/lnvm/lnvm-nvme.c | 81 ++++++++++++++++++++++++++++++++++++++++
 plugins/lnvm/lnvm-nvme.h |  3 +-
 4 files changed, 171 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
