Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E36F400
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DCSGY2GeJzWL6dR0eeX8Rx887RmiTEeapkKaimPW14w=; b=cGw
	3D0Ir8ITCFQwFqATGlJSOxRT1um2jr5SPlhWH/J91AL/Y+F8+j4najEjHTw4dvL1MIRCKylWvR8s+
	GuSgtkiQqA6iAtc48qmIEelwrfKTynWxc8K9QxaId3ojc9SN/7oA45EJVfolR8f+t7vjtfQEr0ZP0
	pOnITO8dFqZ2NtA8ev0mfxjLupbRYZgfd+6nmiZ35S/wPxTSbEXjUKM5GpJaoZhWCZc3vdjUoB6mB
	Odi9xQq2qsZzAWiFmrX/fDQM9jWEvnmKF9L7Wz+2WN9LFE6viMUIa7Up/11gisBUNdRvWK4fVWg6Z
	9pnLZ6t7pUvDu+/cskJHUeLZscujQ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDpU-0000GB-AV; Sun, 21 Jul 2019 15:32:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDpJ-0000Fq-JC
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:32:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so17951650plb.9
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LNeh9AM5/+XgUdSVvqHRjdXTGXVIwFFWcgYUTLthQfw=;
 b=MyewOMpZd7LICzNob4JiWVqkmz/s0fjRhRkQ0eidjxrYxcUyPQIimSvYU+2Y7J4MK0
 beOl90aAAKTrTPWs5qlF5SbdeDlkff8B282RDPXG9WUYWtRY9jZgFTEklWE6F0qc5lKw
 rHikq/5NP9x4Jcx2Y1iQIpBw5LLabquYFqFGHNnrf0HQQDfah/FiT9F8GIMIW3XTsCud
 Cz1V425x0gbCXDHdHMtCX9qfsdNUME+Pgr98OicC3S7+oonzkxNdua6X7a2QF76a4M5/
 CKGRsYihzouhdt+9cldblMPkNao6PDO5LeVn2J6lsMjgy7vcztWPRHSwwGdcFK05a+3+
 Lacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LNeh9AM5/+XgUdSVvqHRjdXTGXVIwFFWcgYUTLthQfw=;
 b=P2uXJhqrdkjkHcwSWXKkX3LFGwg53QBjQcavWgzgrYc8/O3FaX151NwCEtJ2/P4xC2
 RJKCDKQvh+WlBBzbaj+3G/5ytgtS4PPxE3X/84YzNQKfaMGN+IuIm0zMw9kLB9o6W0vq
 g5cZ2OKGZNjM16ijdp5GAXQv7+elKwV+wlxpXs8WnfzNQ4e5I9S98pTb9t3hBAStU9nK
 mpXCmM4ugwA94h1OFq/163dNz9rVHiBspEvyWdR/REQCuts4GxfXdzS6RVrHWb/8aQ/+
 GboEUOX5/rM4wp9QtJfuKQHSmO98mjM0E4v8TC5Q2qTJQhabsnP3UqB7afFLkXGC7pfv
 4Sbw==
X-Gm-Message-State: APjAAAXgoDjVaHYHGFoC/pL7jiyVm9pJ6M62lQgHqHmN00WEx9YeYvmG
 rXucQX1sHIRZm+dcZgfTU5rDdLC/XJ0=
X-Google-Smtp-Source: APXvYqxmBPbsZy/XZabnDrJ45tZVEcgbf4gTPWLJb6Y2v7jtBXdfP9T/GJsYkDtsZ/JLsE8doAUkRQ==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr72685027pld.16.1563723160755; 
 Sun, 21 Jul 2019 08:32:40 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm28957384pfc.70.2019.07.21.08.32.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:32:40 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/4] lnvm: minor clean-ups
Date: Mon, 22 Jul 2019 00:32:15 +0900
Message-Id: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_083241_656239_0FC05D70 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Hi,

This series is nothing but a clean-up patch series.  I hope it's not a
just code churns, but a good start to do something for lnvm.

The first one removed a redundant whitespace in the command description.
The second one removed unnecessary print for the sizeof(dev) which will
always be zero in case user does not give any argument for the device.
The third patch removed temp variable instead casting the pinter
directly.  The last one just sync-up the kernel UAPI header file to the
latest.

Please review.

Thanks,

Changes to V2:
  - Resend the series with the latest patch commits.

Minwoo Im (4):
  lnvm: remove redundant whitespace in lnvm_init()
  lnvm: do not print 0 when the arg is not given
  lnvm: cast identity structure to (void *) directly
  lnvm: sync-up uapi lightnvm.h header from kernel

 linux/lightnvm.h         | 52 +++++++++++++++++++++++++++++++++++++++-
 nvme-lightnvm.c          |  7 +++---
 plugins/lnvm/lnvm-nvme.c |  8 +++----
 3 files changed, 58 insertions(+), 9 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
