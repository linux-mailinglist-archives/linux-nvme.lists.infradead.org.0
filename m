Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7169B25B
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 03:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thpFiJ1fUKHOa59OW0LQ9xQFqrFnVzEf9JhyXsU+kE4=; b=Ed+abcjRbO8nry
	ze4A1XsK2Dpa2PndVQbqtNLbZgs+k8xldOsq+jsxvbC7m09bSbXR1eMdi2V/j1vHPqSdZhkjCORXR
	WH/OH5APjW3CREGtQF+OHNMXrE809aKEU/ny0f+tDQqS8JrYUw6G7b+9+OFjO87I2EU4c6ymqVPdu
	bteobcplTJ9Oo1DGl/TOhnSIeaBt+ZDrXq2Y3lwPZAWYYa2o/eC56+e8oEDqJ95NR0lXXclHyvdPC
	DGp+W+ZlTDyENLn29H45Yt0MAyVthfbK9HMVn2cLsMlHobYXry16K/Zk3GA9fffNUZDhLjhJ7Jvyn
	oaJJLG0VV7PeERZIpOUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKCKl-0000KT-A9; Sat, 27 Apr 2019 01:40:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKCKP-0008N7-2I
 for linux-nvme@lists.infradead.org; Sat, 27 Apr 2019 01:40:43 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B9C920873;
 Sat, 27 Apr 2019 01:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556329232;
 bh=pji9eGaxH/X0GZkD+7aHYcmisf1Su2LAxCrVksBlXJM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kiMLqgHQOfneYRb8Ki84daLZlbr19YeS49xak6ECpR9CMzSn7myQZxgEo0O3Uz0ck
 wAmWQDOYHxA1MOlDp3tbrzaDmhpScjfoRT/Gin2hQwiQuno5l+ioLpZRYlXEu+meXf
 XShrgN1fx0U1+fzt35Kc5rCm+zrtO4KO22YczqkY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 70/79] nvmet: fix discover log page when offsets
 are used
Date: Fri, 26 Apr 2019 21:38:29 -0400
Message-Id: <20190427013838.6596-70-sashal@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190427013838.6596-1-sashal@kernel.org>
References: <20190427013838.6596-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_184033_642780_97A88F80 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <keith.busch@intel.com>

[ Upstream commit d808b7f759b50acf0784ce6230ffa63e12ef465d ]

The nvme target hadn't been taking the Get Log Page offset parameter
into consideration, and so has been returning corrupted log pages when
offsets are used. Since many tools, including nvme-cli, split the log
request to 4k, we've been breaking discovery log responses when more
than 3 subsystems exist.

Fix the returned data by internally generating the entire discovery
log page and copying only the requested bytes into the user buffer. The
command log page offset type has been modified to a native __le64 to
make it easier to extract the value from a command.

Signed-off-by: Keith Busch <keith.busch@intel.com>
Tested-by: Minwoo Im <minwoo.im@samsung.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/admin-cmd.c |  5 +++
 drivers/nvme/target/discovery.c | 68 ++++++++++++++++++++++-----------
 drivers/nvme/target/nvmet.h     |  1 +
 include/linux/nvme.h            |  9 ++++-
 4 files changed, 58 insertions(+), 25 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 11baeb14c388..8fdae510c5ac 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -32,6 +32,11 @@ u32 nvmet_get_log_page_len(struct nvme_command *cmd)
 	return len;
 }
 
+u64 nvmet_get_log_page_offset(struct nvme_command *cmd)
+{
+	return le64_to_cpu(cmd->get_log_page.lpo);
+}
+
 static void nvmet_execute_get_log_page_noop(struct nvmet_req *req)
 {
 	nvmet_req_complete(req, nvmet_zero_sgl(req, 0, req->data_len));
diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index d2cb71a0b419..389c1a90197d 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -139,54 +139,76 @@ static void nvmet_set_disc_traddr(struct nvmet_req *req, struct nvmet_port *port
 		memcpy(traddr, port->disc_addr.traddr, NVMF_TRADDR_SIZE);
 }
 
+static size_t discovery_log_entries(struct nvmet_req *req)
+{
+	struct nvmet_ctrl *ctrl = req->sq->ctrl;
+	struct nvmet_subsys_link *p;
+	struct nvmet_port *r;
+	size_t entries = 0;
+
+	list_for_each_entry(p, &req->port->subsystems, entry) {
+		if (!nvmet_host_allowed(p->subsys, ctrl->hostnqn))
+			continue;
+		entries++;
+	}
+	list_for_each_entry(r, &req->port->referrals, entry)
+		entries++;
+	return entries;
+}
+
 static void nvmet_execute_get_disc_log_page(struct nvmet_req *req)
 {
 	const int entry_size = sizeof(struct nvmf_disc_rsp_page_entry);
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 	struct nvmf_disc_rsp_page_hdr *hdr;
+	u64 offset = nvmet_get_log_page_offset(req->cmd);
 	size_t data_len = nvmet_get_log_page_len(req->cmd);
-	size_t alloc_len = max(data_len, sizeof(*hdr));
-	int residual_len = data_len - sizeof(*hdr);
+	size_t alloc_len;
 	struct nvmet_subsys_link *p;
 	struct nvmet_port *r;
 	u32 numrec = 0;
 	u16 status = 0;
+	void *buffer;
+
+	/* Spec requires dword aligned offsets */
+	if (offset & 0x3) {
+		status = NVME_SC_INVALID_FIELD | NVME_SC_DNR;
+		goto out;
+	}
 
 	/*
 	 * Make sure we're passing at least a buffer of response header size.
 	 * If host provided data len is less than the header size, only the
 	 * number of bytes requested by host will be sent to host.
 	 */
-	hdr = kzalloc(alloc_len, GFP_KERNEL);
-	if (!hdr) {
+	down_read(&nvmet_config_sem);
+	alloc_len = sizeof(*hdr) + entry_size * discovery_log_entries(req);
+	buffer = kzalloc(alloc_len, GFP_KERNEL);
+	if (!buffer) {
+		up_read(&nvmet_config_sem);
 		status = NVME_SC_INTERNAL;
 		goto out;
 	}
 
-	down_read(&nvmet_config_sem);
+	hdr = buffer;
 	list_for_each_entry(p, &req->port->subsystems, entry) {
+		char traddr[NVMF_TRADDR_SIZE];
+
 		if (!nvmet_host_allowed(p->subsys, ctrl->hostnqn))
 			continue;
-		if (residual_len >= entry_size) {
-			char traddr[NVMF_TRADDR_SIZE];
-
-			nvmet_set_disc_traddr(req, req->port, traddr);
-			nvmet_format_discovery_entry(hdr, req->port,
-					p->subsys->subsysnqn, traddr,
-					NVME_NQN_NVME, numrec);
-			residual_len -= entry_size;
-		}
+
+		nvmet_set_disc_traddr(req, req->port, traddr);
+		nvmet_format_discovery_entry(hdr, req->port,
+				p->subsys->subsysnqn, traddr,
+				NVME_NQN_NVME, numrec);
 		numrec++;
 	}
 
 	list_for_each_entry(r, &req->port->referrals, entry) {
-		if (residual_len >= entry_size) {
-			nvmet_format_discovery_entry(hdr, r,
-					NVME_DISC_SUBSYS_NAME,
-					r->disc_addr.traddr,
-					NVME_NQN_DISC, numrec);
-			residual_len -= entry_size;
-		}
+		nvmet_format_discovery_entry(hdr, r,
+				NVME_DISC_SUBSYS_NAME,
+				r->disc_addr.traddr,
+				NVME_NQN_DISC, numrec);
 		numrec++;
 	}
 
@@ -198,8 +220,8 @@ static void nvmet_execute_get_disc_log_page(struct nvmet_req *req)
 
 	up_read(&nvmet_config_sem);
 
-	status = nvmet_copy_to_sgl(req, 0, hdr, data_len);
-	kfree(hdr);
+	status = nvmet_copy_to_sgl(req, 0, buffer + offset, data_len);
+	kfree(buffer);
 out:
 	nvmet_req_complete(req, status);
 }
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 3e4719fdba85..d253c45c1aa6 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -436,6 +436,7 @@ u16 nvmet_copy_from_sgl(struct nvmet_req *req, off_t off, void *buf,
 u16 nvmet_zero_sgl(struct nvmet_req *req, off_t off, size_t len);
 
 u32 nvmet_get_log_page_len(struct nvme_command *cmd);
+u64 nvmet_get_log_page_offset(struct nvme_command *cmd);
 
 extern struct list_head *nvmet_ports;
 void nvmet_port_disc_changed(struct nvmet_port *port,
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index bbcc83886899..7ba0368f16e6 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -975,8 +975,13 @@ struct nvme_get_log_page_command {
 	__le16			numdl;
 	__le16			numdu;
 	__u16			rsvd11;
-	__le32			lpol;
-	__le32			lpou;
+	union {
+		struct {
+			__le32 lpol;
+			__le32 lpou;
+		};
+		__le64 lpo;
+	};
 	__u32			rsvd14[2];
 };
 
-- 
2.19.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
