Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0966F3F3
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0hoR2L8wsHRFAoBRPAl+mJn+KJX9qEic3tzvBNP6E/0=; b=kWezEW06Vnoaqkb2bQ90rQkLH1
	0jXL3IcIqkALKFie7+swsJxojdvd5Fa0fJaZeHalyKbcxNONuVVPAnAlSx7zvXJId2NhLr2wDoh8X
	EmhvaMkI6jMxNv0maUCXxNV0UvvQRwalgLh9BtQOyTyM761kHzGc/SgBN6iVfeX5nn8eqWgaTn92O
	rzv81s0gd1Hq48nA0SmBBmEIki39GhpE9LWox4chRGcvECJpRhNX4and2PmrhjD7IjhqTV7RwM9I/
	UR6iQ5lAAe3JGm/9a7z/oxef+NY+6dje5NRLc1+B+SGEkmny7b8WKdyVYltmaO2UdbAzwKP3ZsbCS
	1sdNKgMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDkc-0006JW-Ko; Sun, 21 Jul 2019 15:27:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDk7-0006BO-R3
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:27:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so16152490pff.9
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a2Not50VUXG3ThhKIQW/YZ7dUDNvCNWFSqh0y5GfpgA=;
 b=YvMrf44dec5HFIi3HyuybVFjx8NnaLEYHufdclF431wAZJ8ZlzC12JKf0xzudPlBR6
 GW+QYDiW5JOJEwYIQL15MpwejLzmETcnpvdSQjutgNX1Ibv3dMbuGJ5ab9D88xadEeqc
 hKy0txWnOhjolk4KZ69Jlp/CZCDifsD0Eh8nhcjvaixBjzjnV0fwasrIewFV5vb3XqBr
 VPViXB7HzSrc3+o95bstme0q5p6VPredC07R/nNUvpsnfiJDjNKVYuEgIiqlkr5b+BsW
 EaIC9GpzJNHfUL0ly46YdN+KmzWUx2ow1UIFt9/FopTFrjuvhwK1Lq+54NTb3eZnto+F
 7qTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a2Not50VUXG3ThhKIQW/YZ7dUDNvCNWFSqh0y5GfpgA=;
 b=M0XX7t5jBu3P7Hdb6XXiHV0zI4fmPkSuXPRbAc5aqC+df0y8P0tXZpgqHHKaSH/IvH
 VkS5gO71hbEzUq49VNLDUGuCzqBoqI3yi3q8d3fgUe3hkZleSymiA9R8KYh7O49kTQwg
 /tJza4lUCn0+VXPcLGpjmX391suEMF7wP9VFc2YdOsNJGhk+2wVGfipHwZEutoeasiwk
 g0aM2ZA7FMUlmTae0N0gbEFv0iwAJveFgUAlmCbnakSNP8V8fPYsRwuJ42ImegEw7JB3
 1C8lxPvBD77y4dNf7mi6atR/zBD7TtTdFykBidMJYgNzH/qkP9mY19ZwsL6v0ZOjOiHO
 uSNg==
X-Gm-Message-State: APjAAAVQZYXkawQy0gGEmwy+IUx0egn/sMp+k2jHMGHLc76fhDMvi6uX
 p7+q0T9jhwH0bqhk6kUBDqJH3g3WeLE=
X-Google-Smtp-Source: APXvYqyUnUXM+g3TxvBEVNoLBgkDwU/TB+T2HQ+2nlzuqmBuGHJao7jd/vkYW0Riadud7RC2O9oxzw==
X-Received: by 2002:a63:1d4:: with SMTP id 203mr49611588pgb.441.1563722838780; 
 Sun, 21 Jul 2019 08:27:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e189sm7802512pgc.15.2019.07.21.08.27.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:27:18 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] lnvm: remove redundant whitespace in lnvm_init()
Date: Mon, 22 Jul 2019 00:26:46 +0900
Message-Id: <20190721152649.4894-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
References: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082719_891501_6C6A309D 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The description for lnvm-init subcommand has a redundant whitespace.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugins/lnvm/lnvm-nvme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
index 754931a..37b6733 100644
--- a/plugins/lnvm/lnvm-nvme.c
+++ b/plugins/lnvm/lnvm-nvme.c
@@ -17,7 +17,7 @@
 static int lnvm_init(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	const char *desc = "Initialize LightNVM device. A LightNVM/Open-Channel SSD"\
-			   " must have a media manager associated before it can "\
+			   " must have a media manager associated before it can"\
 			   " be exposed to the user. The default is to initialize"
 			   " the general media manager on top of the device.\n\n"
 			   "Example:"
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
