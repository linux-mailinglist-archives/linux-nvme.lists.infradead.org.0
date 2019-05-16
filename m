Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD7620DD7
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 19:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNasq8bFh8l2ichS1vH7KoA2cMyNDmNwK7WZT0t3C98=; b=qum8iCd+ZURq9p
	2LOJUKB1GBmuXaxTCqNdcD499MByd1K5s+oGJht8cVugdy+rdMEWUWqsHOEDrrnv1hWOdOtVo+mZV
	xHze5dOVXuWmvPvfY4fPxrzksNIEItKdBuOZTknRBv18n1pRTapBjUos59YtahqZx0GTa6CYyePvN
	nVTe1Y6u7hhmCmxBlP5dF4QJhA5ri6cKbsc79/TVSAZOyy5zCxpMaTjDh6om3d8E4Ry/G/HRAmNFa
	RoQOu2SSKrZ+xZ4ixctDBc9j/LYQG+SjLfdI4CmuDbSSBhvkxLBPMtIJDHcusVKCatBPxP8yjwSj8
	9eOCWf7XuVK5u5irY8bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK78-0000P8-H5; Thu, 16 May 2019 17:24:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK6y-0000Hf-QE
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 17:24:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id t187so1867644pgb.13
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 10:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1ztPVblDdorOlQgBdFeh1f2SNvPNPEjRAiK/pH5Snsg=;
 b=AIHHpIXNlvLcgioDeQzgPgz4lO3UeIczJxS32WcHFLsvwER9GG1uNRJxO4+bf9AW6X
 G2CYR5GN1/t9aMzPIE50ywWVTJziqmu3YFyPihTMudam+SNW5bOk16jP+3i0ZI3Af9w5
 qH0bJs7FCF3uORypwpRDg+dZGVgMIg1SYllLFiFas2JDgnm4ROiGfek7V5d2BZJdVKuS
 Fa3q0gE/snSZZJRBNI7dj/TPfo0vkAt7Jyv+XMJI3Fg+1af+W9/QYkcEt7qJHfO57I/A
 SX/cW1Lvtf57JRkO5LkO8gbq35/0M6hlVJm2+ThLYIe9z3+dIGTi/urjkb1kduQF0SjW
 +YIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1ztPVblDdorOlQgBdFeh1f2SNvPNPEjRAiK/pH5Snsg=;
 b=MQiTDXvc8goNZWA4O3HnATl3uVMhixbYcQZqOneigV1mBs4J8EwBasus225An0N14H
 fBYt5GDob8E3mNcOJWtId7clJWPOfEyo2bXKa/yvu9ZREdK17KrBCMnsKlgHu5kyd7jV
 2KpC1JOB7irun80Kam7yjCk8q6RXdlTzA5fX1ypEjhCDu4fdbGHa5uN6zZY1mfu/ocxK
 zjcXii/GPZ2TFY0yR2cP2j9hGYb53ynuRfW+xvn3NZvLuPdSRgqJhRMP9Z4+unhbvHOZ
 LfDGJrsrz6zRr/BKkatHeyh/pZ7kw5luyD11bkAckLQt0xYKmhlSwjWDaXJfr/kUTEb9
 1A4g==
X-Gm-Message-State: APjAAAXzTjIeSvANez3QqGezieNtS6HN9mnPj8/nSdR5qlCq5j4piyhZ
 +79SaGmRieh2X9Rp9T4UEK79+jRSi5s=
X-Google-Smtp-Source: APXvYqxamS4iOQg3rBRuT8jJMz7k6VlqSx3G6qXJXiYlMzApofW/7nqzm3zZRxq464ChjhHKGJaQqw==
X-Received: by 2002:a65:62d2:: with SMTP id m18mr51409686pgv.122.1558027447706; 
 Thu, 16 May 2019 10:24:07 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h13sm7321721pfo.98.2019.05.16.10.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:24:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme-cli: don't try to disconnect for ctrl with pcie
 transport
Date: Fri, 17 May 2019 02:23:49 +0900
Message-Id: <20190516172350.11864-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102409_048615_F8B123E4 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

If a host system has both pcie and fabrics controllers, the following
nvme-cli disconnect-all command will might not be working because
contrlller with pcie transport does not have delete_controller in sysfs.

root@target:~# nvme list
Node             SN                   Model                                    Namespace Usage                      Format           FW Rev
---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
/dev/nvme0n1     foo                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0
/dev/nvme1n1     b92326b9b2323bf0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc
/dev/nvme2n1     65fa04eddd9bbac0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc

root@target:~/nvme-cli.git# nvme disconnect-all
Failed to open /sys/class/nvme/nvme0/delete_controller: No such file or directory

This patch checks the transport type of the controller in iteration.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fabrics.c b/fabrics.c
index 511de06..733a24b 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1196,6 +1196,8 @@ int disconnect_all(const char *desc, int argc, char **argv)
 
 		for (j = 0; j < subsys->nctrls; j++) {
 			struct ctrl_list_item *ctrl = &subsys->ctrls[j];
+			if (!strcmp(ctrl->transport, "pcie"))
+				continue;
 
 			ret = disconnect_by_device(ctrl->name);
 			if (ret)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
