Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7877A7E651
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OjKb4wbjr/FY+3YdrMLsK5UZY2uAvPokW+r6vxr1Jh0=; b=OwdYaSnS4RGIqrE2YbNGzJF02b
	bck8mjOIgULYXZG902VXilPLFtgTYyQptYiBiU7YgWpLPc4QvJGhaZ+JMQkcS35q0ujjNg7h17L4/
	jkzm0CslCO+w1GiOVF3susStVffZ2lnHZabepo7zEsJOX96HVj1VxOC5cER9t/CYyvmJ2LxZcaPWo
	WWHTfU4bBeXpIzjM8w35mDLwmTtApbdzkaZZXnGFmi2L9VaTJQQkoogjExFwV7VtJN4mbbxMurcxY
	2d+pj3yF+33Wi10TmmUNdvsfvLWTQDo1yDnHJYpYgRpJ8thJe86bX5HKARhYXxZDIQqjTS2MTieJB
	b8PNZn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKIJ-0007gh-8m; Thu, 01 Aug 2019 23:15:35 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGq-0005AW-0C
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so32772732plo.0
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=kg6skrI7ME3S2tHlZX43XGBYD9ISIKhFmoR2tdHGtkqe5/6gX/Ac3b0DCFZTbz6fjz
 ft4DqvnD+dVk8TV3+/O3A73HBEsnRNW5Il3TnN7OLWSFATTOBiALYvjO/wCbghwOOxpV
 HjXH1WZ1+J383qLRbmns78Y42ngGYG//JeOLvfiobwEpRYmp3+auMXg8hQFKYHWBRITx
 HeNH9yGH4N2jwfel2/RALZNfGuKh0ecbZLs7cVF9be0KfbmQpjNIBiwtyjvu4l1xIGMW
 Ma0VogwNrpgye/jSJNymizf6FAcVQci3uVCZj+qMUHpIeskP33goAoPA1vCas36lVpqe
 aZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0LQ4vgEmlLWCE6TPgAiBTnjcKR0oFIjbT/bX5nYfTwg=;
 b=bWuCbZGUasg3gSQXNln4aW4G2vhXhOy3M3ZL/POEGB1hpd5JZMxiq2sbzKVJgIOngm
 0RR4Nje08jB3KZ0k7giOQv82LBDxBGlUQBLdGLDo2X6pZUEDh7yCcLaZDJU82+kaJAaW
 3dJpbQfiQqAR0cTwdPRJPx03SgRhsm0eI7s8dAT5lRDJPEcnRoLFzLt6fYCQMBd2vfnM
 zfBuQFnmDc1/FABp/i3/k8yhQJQ06ft//vtwz9+D9hQFTGHk0zh1NGWaxz+SSwj7zscl
 MyoAeGwuNMJURB3UHc39bQzwQ0y7UNJQNgLFEgrE/X2Ry3/Aior7Mp1NHLOcYgjg8GQV
 LsHA==
X-Gm-Message-State: APjAAAVwccjoB7q/es8+kmXOyXUa5LxUC0dGrWc5zCCVrhWVbfKETGFZ
 Ci8uNPQn827BPn1O9TGvVM5aleDN
X-Google-Smtp-Source: APXvYqxM88JaK0UPxOEiM4lxm7WTzuz8rYbqJI8b/i+1QHHLTmJZldEmuzcV9xqOcy0Pozdx60gqqw==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr122379434plb.316.1564701243452; 
 Thu, 01 Aug 2019 16:14:03 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.14.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:03 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 09/10] nvme-cli: add --quiet option
Date: Thu,  1 Aug 2019 16:13:47 -0700
Message-Id: <20190801231348.21397-10-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161404_179517_975CEE84 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
