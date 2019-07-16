Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3DC6B0CC
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiOo0b+G/R23pUhPMP3S6/ypjoRlDCgf7ndz02ignB4=; b=NV8sTj+HAQT9pVW/jJybo8Szib
	2AfiPBcUl5TMoedB6deFaprkBzvOzrFzFXsrJY9hmlqx8yZ0TrO8xkWVxwNzsBKKB1AOs2znf6EDY
	chMekB4EUXBHNC6eQ/Q2MOkq4DNfAb2ctZgbXb6iz0e687lyTM7l/PzWlUqDvNjM13NY12in9rvcv
	xMtM/ewG3Y8phZxpG3ZWgxvYxkgu65njtuADBzmCG8Hq9QkCfIR3UDCOgku8iShC5DVHecnBVbSU1
	WrWvmS8GmHHz26ou+tYJrMrrgiXLJYlMxOqSL53CJz4Hd08MBBb4UOshhOiKTPjgBofj50VoXR/rp
	RlfuhJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUlc-0005nE-J0; Tue, 16 Jul 2019 21:13:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUks-0005Mm-Uq
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:13:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so9719343pfq.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=N1lUVWcFR2Vj5jGYAcLonVb0ziYXEWT7pLYDVPNFyUIXzUt39Wqzj6Wfos88eMF6xf
 YWZylwyreIhOCvgPJvHpdfCYoEtORaB7DziYwyl753ifQeM42l0IjeVxHJztb0xQE8rx
 u9cOuIYhOM1KMmEscb9bpdKNVXA0e/jKXiwWxJXcP2EBM1oNbvvpCfbkFXLzTnyP/H5K
 Wn5m4MRqSShl5zQ7hv6BCfpDBc5tCUg+CyaOiOH1o4h8dVuiYKheN0SPAYQ2rOPeK9yb
 ZMGaMW1WPJBfNXctMP6FChXFvoxALaknrryBi/UQpUmfqYThKyMcTerSLELixQtDDpdO
 OrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=mFq5Y1UiYiSrkvCNh+g2rLwK3NLkyOOLHFSOkXnrHG00kcLT69Z18kf9wXLmaEvHnb
 oOIQZirAwK4Nbvm3QtKSd2eGJA6WbEmtVygGArULM4mL6JAxkhhfCJO4ErDAsJdQyoqB
 m75oLeFwFvhZGuDzXC+yx4qPVtWEgJsn4jMLkGhV8xbGjKeUH4rnkdgF3naQmyXGMNIT
 u6E8tbv29otwX+ybwrL7hzL3Ewa9J/w+OnomnwjUWtQNo6N+I16ZvNeVhic6FSbklWpE
 dmcElPom0vCcIgm3JMqlhM7j6n7h8mMZ6QR1t91EA9ewKuNE/xOzzJUXVgg1h9K2lJVW
 Thww==
X-Gm-Message-State: APjAAAX+JVbpr0gxWlRFHWGsTZBfdf0yZMbFydMfFSRpCeiaSb/rAfsc
 RxJ/SoCr3rR3EGfdHi9OpPxlHqtM
X-Google-Smtp-Source: APXvYqwt7qwkmFK1eb62rqPbGqeVMkiCb2Jj3uPF2AcF7EmDBqa5NxJNpqOPP7RfpeeCEc1FXc8VAQ==
X-Received: by 2002:a63:6c4:: with SMTP id 187mr34352907pgg.401.1563311577856; 
 Tue, 16 Jul 2019 14:12:57 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.12.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:12:57 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 02/10] nvme-cli: support persistent connections to a discovery
 controller
Date: Tue, 16 Jul 2019 14:12:33 -0700
Message-Id: <20190716211241.7650-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141258_987811_2D280E37 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Simply don't destroy the discovery controller after getting the
log pages. Note that persistent connection to a discovery subsystem
require to pass in a non-zero kato value, so if not provided we
simply use a default of 30 seconds kato.

Example:
  nvme connect-all ... --persistent

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 15 ++++++++++++---
 fabrics.h |  2 ++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 5757aaf..75dedf8 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -66,6 +66,7 @@ static struct config {
 	int  disable_sqflow;
 	int  hdr_digest;
 	int  data_digest;
+	bool persistent;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -872,9 +873,11 @@ static int do_discover(char *argstr, bool connect)
 		return -errno;
 	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
 	free(dev_name);
-	err = remove_ctrl(instance);
-	if (err)
-		return err;
+	if (!cfg.persistent) {
+		err = remove_ctrl(instance);
+		if (err)
+			return err;
+	}
 
 	switch (ret) {
 	case DISC_OK:
@@ -957,6 +960,9 @@ static int discover_from_conf_file(const char *desc, char *argstr,
 		if (err)
 			continue;
 
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
+
 		err = build_options(argstr, BUF_SIZE);
 		if (err) {
 			ret = err;
@@ -999,6 +1005,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-write-queues", 'W', "LIST", CFG_INT, &cfg.nr_write_queues,    required_argument, "number of write queues to use (default 0)" },
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
+		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
 		{NULL},
 	};
 
@@ -1013,6 +1020,8 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
 			goto out;
diff --git a/fabrics.h b/fabrics.h
index 988f3ef..7c1664b 100644
--- a/fabrics.h
+++ b/fabrics.h
@@ -1,6 +1,8 @@
 #ifndef _DISCOVER_H
 #define _DISCOVER_H
 
+#define NVMF_DEF_DISC_TMO	30
+
 extern int discover(const char *desc, int argc, char **argv, bool connect);
 extern int connect(const char *desc, int argc, char **argv);
 extern int disconnect(const char *desc, int argc, char **argv);
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
