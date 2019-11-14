Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA626FCA16
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 16:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yTN5G6ZvQwDp3hiCyqxXXQZKj2tD+X/owL6saf6RjEM=; b=HqPFwe9YUl+Fo1
	vpiSYBCV0bfxn3kCzZdrUdIeylsH4vlkxogAjOV/+ScPbqwCFWlLxBRYCGdY+5vS7Y+nInC8cgMhe
	MZc1BugQUx6HhufeJD8k15YdDOnu2CpJsWYoYm+GhC2gQv6cOJ5Mt5FuNzcWT2oMlbvBSMuYNS45J
	loOXa2vrceQvhk3VME2GGlKGJW2NXpNT4En+mb+Q6ro7W5/ahkVnqc7FWDj8XLy0NkSJmnvLyqcFo
	TcNGKaVaawbTxjiSi8gNYrR+NeczJN6j/f1RAp7/rqvPn/aDwu9yMat5LunyttpzjsQmqcZMHPHR+
	mWTVF3N51kOd0OOrEcyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHEU-0006Tm-RF; Thu, 14 Nov 2019 15:40:30 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHEP-0006TB-KA
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 15:40:27 +0000
Received: by mail-pf1-x433.google.com with SMTP id z4so4471586pfn.12
 for <linux-nvme@lists.infradead.org>; Thu, 14 Nov 2019 07:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBW+T3fGCC3ZauWE1bP/FEflNLqJJ9otTssyUktVKTU=;
 b=NNH1sBRUCRVOORerPHFQHOlR9e9J+0xIID778YUDlEsiVBTpO0G52T3V/z+niqCe0k
 kpBY3haS+YcDCH4UyxVTHnp2RnJxgZi43SNP1iGChuXsHszki7bV6OByo4QReb138167
 A8Ry0kk8K1zWH4ep0OYVOciJ5MhwqkJ9EQiBCGHqrfSqF16dLRRuSJ03iK8oKqq4JEKQ
 Ycl49nSXnzWvekivKbdO/zWQsMdkTYrkvriixOT6t+wtBVpP0iR+X5IWfpIsRGvUa+WE
 +KbcNqPCmaOFNWti0Y1GIoy7aYVlO4wQ3esO3uNNHawfyzygvvVFixpv8GP8+Zr5A8pR
 PYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBW+T3fGCC3ZauWE1bP/FEflNLqJJ9otTssyUktVKTU=;
 b=mD98HeVz3yBxnT1G6XSr59t4M9Ty7VoHBR6j+qToVQdf2KgOIS8hEmGl7JGFrsErbr
 vAaxkI7aMgI2NKk1gZUB6TezVD8SXinDdHi6xTpDV9g3sP5RWk/D+weQ/JS9tc0Md4dS
 +WnFM8p5oEWzo/mJkJZJHlNoGKEcKLb+LSonxTDNFF/7bvuXuG/LJaahhA63LkST0yfQ
 SgRiK6fZDpaBdByrJoD9ntnXZebQmaCFZB9AfB2QQvtWvN0Smc1vTOBWJi4Je2rgIHlg
 kkWZkW4aiC8GdeUwpgSW4IWlwpLCXUj+zPM/RlzcbotHOJOHuHAQV+0g1aLhP7nVPAUm
 uMkQ==
X-Gm-Message-State: APjAAAUBCypWc5SOusg+gUcaaaBEy3aibwAn+rDR/fMt6MLeMZ0uEnA2
 XFksD6liRIejOIXdwHdS2dCqxIT9
X-Google-Smtp-Source: APXvYqxvfLOY2clWvMfw944A1oYXSLmN9VRf6ZzB5NV9JeI2XR/e2es+VG3yj5p9pgUhOzZ/sTK6zg==
X-Received: by 2002:a62:2902:: with SMTP id p2mr11215436pfp.160.1573746022668; 
 Thu, 14 Nov 2019 07:40:22 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id 206sm11490858pfu.45.2019.11.14.07.40.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:40:20 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-hwmon@vger.kernel.org
Subject: [PATCH v2 0/2] nvme: hwmon: provide temperature threshold features
Date: Fri, 15 Nov 2019 00:39:59 +0900
Message-Id: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074025_665063_76B3F881 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

According to the NVMe specification, the over temperature threshold and
under temperature threshold features shall be implemented for Composite
Temperature if a non-zero WCTEMP field value is reported in the Identify
Controller data structure.  The features are also implemented for all
implemented temperature sensors (i.e., all Temperature Sensor fields that
report a non-zero value).

This provides the over temperature threshold and under temperature
threshold for each sensor as temperature min and max values of hwmon
sysfs attributes.

This patch depends on the patch "nvme: Add hardware monitoring support".
(http://lists.infradead.org/pipermail/linux-nvme/2019-November/027883.html)

* v2
- Add helper macros for kelvin from/to milli Celsius conversion
- Remove alarm attributes for each implemented temperature sensor
- Use u32 variable for the last parameter of nvme_get_features()
- Use NULL for the unused last parameter of nvme_set_features()
- Avoid ternary operator
- Adjust temperature value ranges with clamp_val()
- Don't use WCTEMP after initialization
- Avoid accessing negative index when WCTEMP == 0
- Add a new quirk to avoid changing temperature threshold

Akinobu Mita (2):
  nvme: hwmon: provide temperature min and max values for each sensor
  nvme: hwmon: add quirk to avoid changing temperature threshold

 drivers/nvme/host/nvme-hwmon.c | 110 +++++++++++++++++++++++++++++++++++------
 drivers/nvme/host/nvme.h       |   5 ++
 drivers/nvme/host/pci.c        |   3 +-
 include/linux/nvme.h           |   6 +++
 4 files changed, 107 insertions(+), 17 deletions(-)

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
