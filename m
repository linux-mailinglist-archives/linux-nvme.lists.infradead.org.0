Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459C76B0E8
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OjKb4wbjr/FY+3YdrMLsK5UZY2uAvPokW+r6vxr1Jh0=; b=RDPT/VliY1gHRmFZScLjD6QYmI
	Jk19oNag4TvbHbJfyvSFMefkBDV/K9xHsQWoXqqhMr0u2DiL+I5KXCQRYmpwly6wAP9BShicUkon+
	xunqebhBpicbfLNjsHpHA1l2reG3yueF+Fh9tKlL6siCl77UWsQyxO2n15CB73E+UOqA4E5cewDEm
	ZAUFm5R40HmtWIu2MXhGthMXy4bAzTcFJf9rtO4E5Dz9YT/AhtUcJkjZeAyV5FHzefNXCq0QQ+225
	vM6LwWIQCqwlrKRa9FTM67ZclAr4DMHvjHDloXcsy3887zvPDj0fKZ8MsGfw3vqFJgSWVFpcDzAEz
	U8jq324g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUne-0008UH-64; Tue, 16 Jul 2019 21:15:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUl0-0005TP-JM
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:13:09 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so10756641plr.4
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=nn60SHr6rmnwbIIwsB4y1iNvx60hlswHxs/F+Q0vR+/OEAt2wtcTuJ6z24wgZKpQFS
 K1XdWUAU8BQxg3TG2asGACPYjZyae2cI+pgo+OHNsPgeWsh+/CmbS4fDvLa7FcQyMJy4
 7lpuQLXkwQZZk4I+RUW8DFHJ0JPdaBQF6XIUu2s7xO2ze/udQm7k3nOBIQrlBEvyK7ls
 bdGXOavm7LY8SorhE5MDVNsc73q4lxfM0KXfL4XTbZnpfC5kq7o58tFCTpdGDRCSsYdR
 sHdJOEbbV9xQa4Dw1tbwdDgpydgJeDRrk+fbHEzN+NPJLSJNxp3FfaVhVt2fbfb0Sv7w
 69Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=T9+7emzSRP8apS54qfYneCoOKF/LeWC5/jW/JkHQqApTV48pd+yGYvo+jsqofi9TAP
 WV+ZQUw9Ak8Hndf6UBsHY8zyT9L9SBAcbsQnLtoEzLhADe4Df/bqu23el3+ajfCGo7Rf
 0J73j5mvSKOBlgQeJ42Eisgh87dgq/O6VpvoKgNs0b+rkPLp9FeK4NLNW69pS00LxkfZ
 /1QyY0KC3bK8viBe/pukFP8YVNwuc+xYTC6+MmdzVTWtiOa2uW7WJjaZeycAy3JhBDqf
 qTjtNabf4/hCdSNMC24oU9yAb5PpznElHnAT0pjul5wy3knTR64mUqh03r9uyQHe4/9v
 6lNw==
X-Gm-Message-State: APjAAAWluqc2+Z2xVg8sJC8VOabmLANvDQQXRhbfhK0zw4yaHIElS9hB
 rL1IO+cDiF4xerfdPm2Ja0zjs4lz
X-Google-Smtp-Source: APXvYqzbAWa01WZbSxL68Doj4BuzHoQxTXu7tQbNa6wn69v3jtg7iIp2WwxrT0pVhAtgKAKENljNJA==
X-Received: by 2002:a17:902:b688:: with SMTP id
 c8mr37828772pls.243.1563311585225; 
 Tue, 16 Jul 2019 14:13:05 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:13:04 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 09/10] nvme-cli: add --quiet option
Date: Tue, 16 Jul 2019 14:12:40 -0700
Message-Id: <20190716211241.7650-10-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141306_892799_E3F6379B 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

Now we are going to have discovery log change events, so
instead of trying to figure out which NVM subsystem ports
are already connected, we let the driver do that and
only suppress the failure messages.

Example:
  nvme connect-all ... --quiet

This option will be used by the discovery log change corresponding
udev rule.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 9a7f832..fd5a742 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -67,6 +67,7 @@ static struct config {
 	int  hdr_digest;
 	int  data_digest;
 	bool persistent;
+	bool quiet;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -218,9 +219,11 @@ static int add_ctrl(const char *argstr)
 		goto out;
 	}
 
-	if (write(fd, argstr, len) != len) {
-		fprintf(stderr, "Failed to write to %s: %s\n",
-			 PATH_NVME_FABRICS, strerror(errno));
+	ret = write(fd, argstr, len);
+	if (ret != len) {
+		if (errno != EALREADY || !cfg.quiet)
+			fprintf(stderr, "Failed to write to %s: %s\n",
+				 PATH_NVME_FABRICS, strerror(errno));
 		ret = -errno;
 		goto out_close;
 	}
@@ -854,10 +857,13 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 		/* already connected print message	*/
 		if (instance == -EALREADY) {
 			const char *traddr = log->entries[i].traddr;
-			fprintf(stderr,
-				"traddr=%.*s is already connected\n",
-				space_strip_len(NVMF_TRADDR_SIZE, traddr),
-				traddr);
+
+			if (!cfg.quiet)
+				fprintf(stderr,
+					"traddr=%.*s is already connected\n",
+					space_strip_len(NVMF_TRADDR_SIZE,
+							traddr),
+					traddr);
 			continue;
 		}
 
@@ -1062,6 +1068,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
 		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
+		{"quiet",       'Q', "LIST", CFG_NONE, &cfg.quiet,  no_argument, "suppress already connected errors" },
 		{NULL},
 	};
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
