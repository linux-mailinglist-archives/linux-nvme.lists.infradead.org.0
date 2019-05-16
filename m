Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3220320DD5
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 19:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7F8qQUpMmdA+4X7dHeYzltzhrwtEWuqnBxQ6HkOKp3E=; b=slWxGsMWN5+AtW
	Rg8D07Dx7ApjYGVAYd/aT1H3PtPwfZmKncEbNJL7Nz1Ag4nFiG8XnXgcQHZkNQsNXWeIFtuOciO37
	dTYY9hmp8bOpYyMYG7Cj9vkXDYAbBjHQrBMYWZfvC4MHsJ9at7OHR0liZc5iwfvdLAZPYD2p5z6jk
	wnvaCXZENYlHwPu3RqzS48pq/zzDtntUoqSyhUWiignqaCozFC1CDTNDjyNp+cnxjBrhxglnnyRk0
	i5FrF0JahNDjCMWUg/TuhcGkr9IZZlMmy6PZnuQB0zVykcvc+GWcrPhDINeJ7NRh8dV36JhWx554O
	Dhzptkf/dWEzZJJiDrqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK6z-0000H6-Q2; Thu, 16 May 2019 17:24:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK6u-0000Gk-PY
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 17:24:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so1944640plt.8
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 10:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kj6LLGGVVXRY7MkY1LRjt1HNaJL23AJvl079KfA+HS4=;
 b=KegFiu3W5YpAz674s6hHvaeNyAxkfnyXibtW1Jyh42ymf1dCa+7kMX/xunnxC2pVtp
 vJWOJKRVEDA8g3RGLAV751kBBcwFn0JIBeAPDhF1fq9jyMi8L4EzKw5xMev5vlfc6Ll+
 YLsuAQzgeiFtF1awVezoIes8XNUe3KJPrmqn3Cy9rfyYUuIvE59zFBNkTKHXif74vI+2
 tD/huxN02svzUXtcd5zJBGIMcfo1seB/RENTZYFF6N+bQv92KZRJVAvIgA9AibrGxA1v
 3Lo1qn5JcdK8IP86grBbJ/UsbUdsgI9mJnG8MsUwoJD2uwSr1MYWj09cc2v9JQlqq7KJ
 r54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kj6LLGGVVXRY7MkY1LRjt1HNaJL23AJvl079KfA+HS4=;
 b=fuZUSM8M3n54NGqBklRTW0nnuTJ2RZLjvXdwl8rFAPq/3XUh84mjZ2E0p5e9iHvNHL
 CCU7JeqTB9folfmF0CZ8krFqDf0nXmZpYsWAxuxT/UnU7l/K8geo5NAWP5XzdTHmNfAT
 VhnGk5kcHVbG5UVnaKU9SAedfuECAGUeAdUqjL+6At/vVG2/oJJswCGqy5hbCXZK3FTj
 jZmRIeZt60U/Ijs7p1zQRfIOkP3EwsKxa71NvRt45PEYZoCOtZO/OvMbRDGTeQ0xTpu4
 sDAzzuwS5N+btR+SfKWUb6qOFOrqpH5juviIjxoOBP1HdcOMvJhbDAg8ZdLH16wid9Nz
 2QDQ==
X-Gm-Message-State: APjAAAUsKyW2WyNaPiNr4ZyKeVSy7XEcOv4JCY7wjPIvOtTZQSHj7Wi+
 DrwpVBdCXxPTdXtRPnrBLJzjLFO/3Ow=
X-Google-Smtp-Source: APXvYqyWGFKGxm0vw2QbTmxxToHgiZvlHlVpu3AroDk3iQU6Nhx6kIij6UfFevG90mEKLoLBLH59lA==
X-Received: by 2002:a17:902:2bca:: with SMTP id
 l68mr49564820plb.301.1558027443511; 
 Thu, 16 May 2019 10:24:03 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h13sm7321721pfo.98.2019.05.16.10.24.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:24:02 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] nvme-cli: fix disconnect-all for pcie tp
Date: Fri, 17 May 2019 02:23:48 +0900
Message-Id: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102404_857495_A1734C52 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

The first patch fixes that it tries to delete_controller even it's a
controller with PCIe transport type.  If so, the rest of the controller
with fabrics type might not be disconnected properly.

The second one is just a trivial clean-up patch.

Minwoo Im (2):
  nvme-cli: don't try to disconnect for ctrl with pcie transport
  nvme-cli: remove unnecessary initialize of local var

 fabrics.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
