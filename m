Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4B36C53
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XB0XW0Cs7o9FCnovtTBlIiz4av5w1naXktNyHQ4ciG0=; b=huZKJc/EKpkcl8
	rHaWUwvCNZgtA4V5ngX8iaL+pC7zHkQNap2m2/0cI6/B4m3Dj8wFtvVR2yTjeK9fdVgSO+LnqpW/i
	h175Lzu3CoWk4c2hhS18MZxhrJ5OnGcRz3ZCc67GcorY8LmRryCwhxbW/JfR453ytUj+I74r+qO+y
	16+CvOQX8W+hKyG/EnRz1+kJov1qdYAlWXiJ3x8PuN/yIp5CXknwvNppw2rGFGG6O54hqQmQDQVZJ
	An2bu19wJY8iBt43jmSWu8MeqPAMkTjAYpaXZmPyzeSR6juAfnV5oVTiocy+/ZgQDv0SZqBWXbusO
	kAqW6YrHfyHwvpYYm0RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlxT-0002Xr-12; Thu, 06 Jun 2019 06:33:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlxE-0002FN-O9
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:32:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so862388pfe.6
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 23:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DlXbdQGpRsKt8lPjwHA+reokj7XV+5ti0vBCTXj2FV4=;
 b=p4+DPzy7iu0M+gycK9FO+oeMY8zofskHSd70EQLf4EIOX3vjz3+iSeiasB8tZD9+HW
 b5AlUXyhFk/i4dvClDS0m8JQE+qVC9iQFNYyk6I/JGuNWmelVxEFLoj8hvdZN7C7Udem
 iPHQ2x/YFiTW9C2quaPKvM4P1P/qASvr2FQD9kHVSa+t8yXmP5UYHefiNOJEw1VZ057Y
 I96opJMcbNT+ABIiUZuh2MIdWoOzhNVLzUW7szaVLT+e4Lhq1/B6rgdqRkR9TYwcS5bG
 G5+VLDw+6vzKgTRkR9ycIXXzxGyK/wY4T3rcDv6gef3OD6KEnRqtmfJ9qwom4/bH9UUc
 l2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DlXbdQGpRsKt8lPjwHA+reokj7XV+5ti0vBCTXj2FV4=;
 b=aM+MGiHuKG4YywbqqOx5oylpMl6uwv8KLxE/uvYaM2PNSMKiJq1LTlGmNtCxjKauj5
 cgrsw5n3gpkXHD7ofNcWd6dVkI+KvSw1lYMPiHGtxSzh1ElmPPuqmqDP6UDfx4gnt4Mm
 lwbwq/nFNCVEOyGdMmSqOlrXcJFA+ne84I5AtxTmHldq+vZcZjDwjZ3zkvqvRgeG+8YF
 07qz8MPqES59LaRgUd++/nqcu1nTosSeyQ2QwjLFTYmyTj88oLYbC8yqECtghdhS6CTH
 7wT/0nyN5q5tgskdivt6z7/BXqo8OuVF+mcIO2Ma79JrkpZigZ4Nks6JPojKRo0wKGeb
 k+0g==
X-Gm-Message-State: APjAAAWcuFNAa69D/yuPFLjmnBMFXri4fl/yyGNGK4CYSS69FukZnkax
 kxX7nBJwmtR5dM9z8hnJxbDB+ALHq6E=
X-Google-Smtp-Source: APXvYqwHnOBYykHjEgwab6HwcosK33JMXIWXkE+u8cr6PQhAXipWuY2oAT8GcvwoMHOKJypBk0DCvg==
X-Received: by 2002:a17:90a:65c2:: with SMTP id
 i2mr48052352pjs.54.1559802771428; 
 Wed, 05 Jun 2019 23:32:51 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r64sm1202562pfr.58.2019.06.05.23.32.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 23:32:50 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V6 2/3] nvme: trace: do not EXPORT_SYMBOL for a trace
 function
Date: Thu,  6 Jun 2019 15:32:28 +0900
Message-Id: <20190606063229.17258-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_233253_160053_57860F24 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_trace_disk_name() is now already being invoked with the function
prototype in trace.h.  We don't need to export this symbol at all.

The following patches are going to provide target-side trace feature
with the exactly same function with this so that this patch removes the
EXPORT_SYMBOL() for this function.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/trace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7a28eb..14b0d2993cbe 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -145,6 +145,5 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(nvme_trace_disk_name);
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
