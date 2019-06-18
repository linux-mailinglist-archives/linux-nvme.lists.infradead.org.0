Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB654A20B
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JC8D7rg2p4dX9eRghZ7iEj0O+uRJ5Nc7xgG2cWhKIWQ=; b=Yy8xyO/NIOBGRe
	CGIsIkEXoIi+QT48Wuqo1mDnxTqUuK/+P9iWZRCctlmqA9NZDERw1yGCYSZTx1kRcX9P0WjAYFPFG
	7L/W/I+Oz4bHGnNjLm7ZEyNL0k2oUFDjyWNGj/5gEFusIzKKbYkiLT9VT9YZahOfdidDJDjXI0lQ9
	UalXK6kQi/qBTpllL8oZXrUkTzmvZkStpl13xaoOWCIpfL+HaEGZGNr/jM4H56kfw7TdMo2ZhDPNa
	uEZ/DDv6+iveoHxTpl2a7xb2/3hvymDyHL8rhxFEGN5kWEWor9sNvCh8dRZeXzqoiQXv0vXguBu7S
	5vXnBaDTD1OipjqLfHwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE6Q-000746-BC; Tue, 18 Jun 2019 13:24:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDus-0006ZW-QV
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:13:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so7691921pgi.3
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+8RCnsO+CU+gZbVyt/tRjmUdZJJz6aaB6nDyPj71spk=;
 b=g6LGvoiG28ZhIo/La6V4345IGkRToH3c2gY++K0mWVJSMHifSemt5vyFzBMbQT2kT2
 teyR4W743lIn8CU6xI+cVgiL8iGw1Y1QHGWDvM+Hmremem9v+iyKg+6qPpVB4UPhVnxy
 ZSMZqGQi0zrihr5ZrDveexrf2mJgfJf0/yjXl6JmW5x+WQVGv1yNhbiwCzE0VYMpnO3V
 60ta3dNpXW/zZFT9YmujuMIoetQ1TsxOiEdHrSnRr/2ohX12Lo4UFDIon5znW68JqeHS
 RcYjWwbacypZtxkJJ/AayTCg6sGQywoSMGDdyoKyT8RvfXu/Ckwk0eqIXc8S97G9BJqr
 GY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+8RCnsO+CU+gZbVyt/tRjmUdZJJz6aaB6nDyPj71spk=;
 b=FVJVgkW9FcrjrENmchLOgBGTGz15fNbiH9wK0qxJEVK5V36hQ+sxGQuKC9YK78F0ph
 NineruIzIE0t7NJGVcf/W/VxZTGegiVyGjS21NMfdB0UUP5GC4PdkrHuBWDRf7wXkltk
 DAXise8z8TITSF8tZY6P6VE296OSX1dRe7NrusR3vhWC22HQEreE3+IAPaR9MfbQ+1DE
 wKTFMGw4K9n4Fba+WQ+2Fagg4bzImGb1v6c1WdTuXzMH07jo7VIsVOuN0+WcTmOFTr0e
 f3eANndteOTbw9WGCkTu1NmeWq5EynK6YlhdqMGmXgJvnE6xJm9b36UiNWSj3ESkdX15
 bwnw==
X-Gm-Message-State: APjAAAWvyQ6t5Yyavy5sS+zClD4IqX8wpmMcSSVxBgyEc+9ASpg5HVNF
 nAW8gfJniNw49juw9mqGWFA=
X-Google-Smtp-Source: APXvYqwq4QKIyRuDeHpXpHt7W1T88JXIg45P0FzTQQxRIZ9Mqq7vv5M/SuCkAQmtF7iYL3efzfmexA==
X-Received: by 2002:a62:e119:: with SMTP id q25mr83631727pfh.148.1560863570070; 
 Tue, 18 Jun 2019 06:12:50 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c142sm21663733pfb.171.2019.06.18.06.12.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:49 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH V7 6/7] fabrics: return error when discovery retry exhausted
Date: Tue, 18 Jun 2019 22:12:15 +0900
Message-Id: <20190618131216.3661-7-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061252_017521_42114F92 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the discovery page is not updated to the latest one over the 10
times, it's currently returning DISC_OK if the numrec has no problem.
If so, the caller might think that the discovery has been successfully
done without any errors even there is.

This patch makes it return an error -EAGAIN if retry(10 times) has been
exhausted.

Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/fabrics.c b/fabrics.c
index adedca0..8470d97 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -291,6 +291,7 @@ enum {
 	DISC_NO_LOG,
 	DISC_GET_NUMRECS,
 	DISC_GET_LOG,
+	DISC_RETRY_EXHAUSTED,
 	DISC_NOT_EQUAL,
 };
 
@@ -385,6 +386,16 @@ static int nvmf_get_log_page_discovery(const char *dev_path,
 	} while (genctr != le64_to_cpu(log->genctr) &&
 		 ++retries < max_retries);
 
+	/*
+	 * If genctr is still different with the one in the log entry, it
+	 * means the retires have been exhausted to max_retries.  Then it
+	 * should be retried by the caller or the user.
+	 */
+	if (genctr != le64_to_cpu(log->genctr)) {
+		error = DISC_RETRY_EXHAUSTED;
+		goto out_free_log;
+	}
+
 	if (*numrec != le32_to_cpu(log->numrec)) {
 		error = DISC_NOT_EQUAL;
 		goto out_free_log;
@@ -882,6 +893,10 @@ static int do_discover(char *argstr, bool connect)
 		fprintf(stdout, "No discovery log entries to fetch.\n");
 		ret = DISC_OK;
 		break;
+	case DISC_RETRY_EXHAUSTED:
+		fprintf(stdout, "Discovery retries exhausted.\n");
+		ret = -EAGAIN;
+		break;
 	case DISC_NOT_EQUAL:
 		fprintf(stderr,
 		"Numrec values of last two get discovery log page not equal\n");
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
