Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3DC67295
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 17:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rEtKSWOhfZj1F30aTzHbtwW8qSBfJCQgCnsbjKeS0ys=; b=ilOTJjpDMKKcM3
	wibhOT5glN8DfaQWeWvf/lt7Rlad0/++BC+xVEKOeJ0+UJi0j273B3wKmJdNXg2vyKsBHZx8IMFW/
	H4H3EIB1C30pXf1I1Eca3qYw5XUp3i9yJ9farC/fftX9Y4GE4+kBuTqwfFzHClHmEiM3v8MnbUDSh
	8p4yLl9cObgx50z3dFyMSzbk829kkTCjuuS4g17ouSaaChRu7FpIXv5i4RIXASaqYv0A8mvV7oQLc
	l8n0KbtXd+6pUQTWXYf/HYi7UhooM0iKpErQDHNeYN7QL8pIt5HYdbEFlBROIe9djAIo8KI8WSn15
	h5rD0q9PkP91h6HEMVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxcn-0008TV-H5; Fri, 12 Jul 2019 15:38:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxcQ-0008Hy-Lu
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 15:37:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2A7F7ACB4;
 Fri, 12 Jul 2019 15:37:51 +0000 (UTC)
From: Simon Schricker <sschricker@suse.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-vendor: fix c99 declarations in vendor plugins
Date: Fri, 12 Jul 2019 17:34:57 +0200
Message-Id: <20190712153457.13877-1-sschricker@suse.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_083754_871540_3E9672C6 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: keith.busch@intel.com, sschricker@suse.de, sagi@grimberg.me, hare@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can't use c99 declarations with older compilers.

Signed-off-by: Simon Schricker <sschricker@suse.de>
---
 plugins/micron/micron-nvme.c   | 3 ++-
 plugins/toshiba/toshiba-nvme.c | 9 ++++++---
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/plugins/micron/micron-nvme.c b/plugins/micron/micron-nvme.c
index c827bae..b0762f0 100644
--- a/plugins/micron/micron-nvme.c
+++ b/plugins/micron/micron-nvme.c
@@ -40,6 +40,7 @@ static int micron_selective_download(int argc, char **argv, struct command *cmd,
 	void *fw_buf;
     int fd, selectNo,fw_fd,fw_size,err,offset = 0;
     struct stat sb;
+	int i;
 
 	struct config {
 		char  *fw;
@@ -68,7 +69,7 @@ static int micron_selective_download(int argc, char **argv, struct command *cmd,
         goto out;
     }
 
-    for(int i=0;i<3;i++) 
+    for(i=0;i<3;i++)
     {
         cfg.select[i] = toupper(cfg.select[i]);
     }
diff --git a/plugins/toshiba/toshiba-nvme.c b/plugins/toshiba/toshiba-nvme.c
index a22a4d6..e27653f 100644
--- a/plugins/toshiba/toshiba-nvme.c
+++ b/plugins/toshiba/toshiba-nvme.c
@@ -192,10 +192,11 @@ static int d_raw_to_fd(const unsigned char *buf, unsigned len, int fd)
 static void progress_runner(float progress)
 {
     const size_t barWidth = 70;
+    size_t i;
 
     fprintf(stdout, "[");
     size_t pos = barWidth * progress;
-    for (size_t i = 0; i < barWidth; ++i) {
+    for (i = 0; i < barWidth; ++i) {
         if (i <= pos) {
         	fprintf(stdout, "=");
         } else {
@@ -216,6 +217,8 @@ static int nvme_get_internal_log(int fd, const char* const filename, bool curren
 	// By trial and error it seems that the largest transfer chunk size
 	// is 128 * 32 =  4k sectors = 2MB
 	const __u32 max_pages = 128;
+	size_t i;
+	unsigned j;
 	err = nvme_sct_command_transfer_log(fd, current);
 	if (err) {
 		fprintf(stderr, "%s: SCT command transfer failed\n", __func__);
@@ -267,7 +270,7 @@ static int nvme_get_internal_log(int fd, const char* const filename, bool curren
 		}
 	}
 	// Now read the rest
-	for (size_t i = 1; i < pages;) {
+	for (i = 1; i < pages;) {
 		__u32 pages_chunk = max_pages;
 		if (pages_chunk + i >= pages) {
 			pages_chunk = pages - i;
@@ -280,7 +283,7 @@ static int nvme_get_internal_log(int fd, const char* const filename, bool curren
 		progress = (float) (i) / (float) (pages);
 		progress_runner(progress);
 		if (filename == NULL) {
-			for (unsigned j = 0; j < pages_chunk; ++j) {
+			for (j = 0; j < pages_chunk; ++j) {
 				fprintf(stdout, "Page: %zu of %zu\n", i + j, pages);
 				d(page_data + (j * page_data_len), page_data_len, 16, 1);
 			}
-- 
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
