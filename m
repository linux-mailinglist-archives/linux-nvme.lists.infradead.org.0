Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803A96ECA1
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OjKb4wbjr/FY+3YdrMLsK5UZY2uAvPokW+r6vxr1Jh0=; b=UHToieyCLX6UcsKxoLJa6OHjs+
	cRFGVrHGiiug3OI7RId54MZykVpHzWxr92P1obtNuCsIh4pZ4rdBh56fi89Ovyl8cL8HHpq1FOuv3
	QETTPh/0VOn1xrBSe3Yi9+hW3LLoMAsJUXD0z7oO1fGRmIboBKFwmcRCm5zTXZQq39mFYPcdB7p/e
	h4Jsn1ha2JG8LRlFMU7xFFwdT3ggzLYhiosZrBem5SK25/BLgU4Sse+Nizs21iZrBN2xOt57UySrm
	gGdzNR+vzAapwSl57aTjmWihc7tu1AGuEHc/PMm4ArzS5hbEz3635PH+e3XDM+gXzbxte2dxI3VRc
	ze6bryJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobnK-0002xQ-KM; Fri, 19 Jul 2019 22:56:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkg-0008UM-IE
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id c2so16253432plz.13
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=PELzMzaWRIXzSEBR0Tl/8WD+XqQ5PUC4aORWs2ORxTmIcOnliyS38LyPeA3+fbMST2
 OvsKiVY88jUtS50U6iI3ewEvcViA6SvxcZnXdivpU9tkcDwFb6oumT2GOcjalV767KuX
 cEzsbYxRfHYxRRUllAV9ZxIae4IrRW5qcPCn8fquPvMSHG6CrvqtKvmZhHDxD9OHDz78
 Vf50Nh4TRH4iSti+anXTy/9Ne6Ro6wYuy77aBKda15sVt0m1Q1Rl5KGLKqbppn8wN6ot
 AFdYN/04HIQCelemLhBFq+ijX6pZ7aKzaOSRCvSZ2AkzUNiaKyX0BO8phvY2nFusR9ka
 c9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=okIMk+5HuIctJqLzwpeCF9f6ABhS/xwf84AntY1NwysoayM7g4oTsSpgI955VURNtM
 Hv7KfVofuQNPSP6HIreJjEfJLbaD0Wql5XmLGBG0CQC7+1sOgNEKKk3dB/Vhd2q7vvp9
 xG5qgdOmEEZ5Nl69EiqsiKe4L/x1aflxjZGqQIDOXxweTx9mkFpozoh8wuDfRBPs8EDo
 34wGjxa7iES6RdZVh4qQIpUtDPycogK+WIoZ0ZhlSqqB5DCtJT6VrST68Od5g9qza+4+
 qcQ06Txr7Xn1rrjpmuwDI8AKnJbVhW8SvQ5oBr/Q4adXgrNCv/RnTrX2jF/OvEd2Gacj
 3zcg==
X-Gm-Message-State: APjAAAV6svEwyA9oLekGNNGcQsFXYHptKTOMH4LTMHzUpzsvu8IGD9Om
 MhKrCxYSDZqiJqL0dVJwAy3R3/hR
X-Google-Smtp-Source: APXvYqyuhtsS9XZ0FQC/b/kymrWv6939Set2lWSBNXr7nYDISYkvq44bbbv5w+SG90W6SZDvczH7gQ==
X-Received: by 2002:a17:902:e6:: with SMTP id
 a93mr59343663pla.175.1563576801847; 
 Fri, 19 Jul 2019 15:53:21 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:21 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 09/10] nvme-cli: add --quiet option
Date: Fri, 19 Jul 2019 15:53:04 -0700
Message-Id: <20190719225305.11397-10-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155322_687675_AA1FFEFC 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
