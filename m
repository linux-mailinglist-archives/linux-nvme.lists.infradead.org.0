Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3758FF60
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 11:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oZagxxN0yGRu/mrbetoSpM5oXAjh/M1emXyFZZ+CV9Q=; b=DDmVFICkgCrMT4
	40WI5pcAzvEKRHbqU3lBf5+8shCE4qxV7KCTtnPPnKAfDtX/Qq582Sm0dRukRlrd0byEj+wxhCWn4
	ttezdB8JwKKcMXcm+0zCLguH0YtM43zfF6jokYPzwwFUfXz6r+EhOgRx1ho/eoDL2lGffBi5Uveuz
	xYc2XcvuXlRIOoXgq5f7/VCjQFGpQ42+yvsWgSNdbP6nZ1pPwrBC1D5te58zKD/zKencKC6hlKtaQ
	hU1hwh6k6AcXkTCWoO98VZ1ZbEAwxn8od/fQ3qP+648xoSYC4THIbPYkD26QGuI++EiBCP9zq344N
	T/VLtFEwgsD60W6O36pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYpd-0007TM-MJ; Fri, 16 Aug 2019 09:47:37 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYpS-0007Ry-91
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 09:47:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 88D6F27E064D;
 Fri, 16 Aug 2019 11:47:22 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WWHgd5A_NCdn; Fri, 16 Aug 2019 11:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 085E027E108B;
 Fri, 16 Aug 2019 11:47:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 085E027E108B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1565948842;
 bh=/PQ/WuPPVjun+b/ytYdgfkZDPgHe70uNonRtOzRFuao=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=QVlHU6c7M6wNioDgx7w89U+3KZusDURNgeQXwfcoJiwaxUBheIMGfRVMKKEDThABW
 jJqymJaft5yxLAhq0CfNDCT1NW2SJ0OG5N3upvIBjK4eRxFusKFUI3GXjeKvEuD8MH
 E6BPMqyZ4khePruCYVct9UMqJRKzU8hUenWkpies=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Jq7OLwnTeNR1; Fri, 16 Aug 2019 11:47:21 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E2FDD27E064D;
 Fri, 16 Aug 2019 11:47:21 +0200 (CEST)
Date: Fri, 16 Aug 2019 11:47:21 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me, 
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Message-ID: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
Subject: [PATCH v2] nvme: allow 64-bit results in passthru commands
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Index: GHHISZD4S4d+bglpoCHyPpFKflThTw==
Thread-Topic: nvme: allow 64-bit results in passthru commands
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_024726_699003_FC659D21 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It is not possible to get 64-bit results from the passthru commands,
what prevents from getting for the Capabilities (CAP) property value.

As a result, it is not possible to implement IOL's NVMe Conformance
test 4.3 Case 1 for Fabrics targets [1] (page 123).

This issue has been already discussed [2], but without a solution.

This patch solves the problem by adding new ioctls with a new
passthru structure, including 64-bit results. The older ioctls stay
unchanged.

[1] https://www.iol.unh.edu/sites/default/files/testsuites/nvme/UNH-IOL_NVMe_Conformance_Test_Suite_v11.0.pdf
[2] http://lists.infradead.org/pipermail/linux-nvme/2018-June/018791.html

Signed-off-by: Marta Rybczynska <marta.rybczynska@kalray.eu>
---
 drivers/nvme/host/core.c        | 66 ++++++++++++++++++++++++++++++++++++++---
 include/uapi/linux/nvme_ioctl.h | 23 ++++++++++++++
 2 files changed, 85 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5..2ddb095 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -849,7 +849,7 @@ static void *nvme_add_user_metadata(struct bio *bio, void __user *ubuf,
 static int nvme_submit_user_cmd(struct request_queue *q,
 		struct nvme_command *cmd, void __user *ubuffer,
 		unsigned bufflen, void __user *meta_buffer, unsigned meta_len,
-		u32 meta_seed, u32 *result, unsigned timeout)
+		u32 meta_seed, u64 *result, unsigned timeout)
 {
 	bool write = nvme_is_write(cmd);
 	struct nvme_ns *ns = q->queuedata;
@@ -890,7 +890,7 @@ static int nvme_submit_user_cmd(struct request_queue *q,
 	else
 		ret = nvme_req(req)->status;
 	if (result)
-		*result = le32_to_cpu(nvme_req(req)->result.u32);
+		*result = le64_to_cpu(nvme_req(req)->result.u64);
 	if (meta && !ret && !write) {
 		if (copy_to_user(meta_buffer, meta, meta_len))
 			ret = -EFAULT;
@@ -1331,6 +1331,54 @@ static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 	struct nvme_command c;
 	unsigned timeout = 0;
 	u32 effects;
+	u64 result;
+	int status;
+
+	if (!capable(CAP_SYS_ADMIN))
+		return -EACCES;
+	if (copy_from_user(&cmd, ucmd, sizeof(cmd)))
+		return -EFAULT;
+	if (cmd.flags)
+		return -EINVAL;
+
+	memset(&c, 0, sizeof(c));
+	c.common.opcode = cmd.opcode;
+	c.common.flags = cmd.flags;
+	c.common.nsid = cpu_to_le32(cmd.nsid);
+	c.common.cdw2[0] = cpu_to_le32(cmd.cdw2);
+	c.common.cdw2[1] = cpu_to_le32(cmd.cdw3);
+	c.common.cdw10 = cpu_to_le32(cmd.cdw10);
+	c.common.cdw11 = cpu_to_le32(cmd.cdw11);
+	c.common.cdw12 = cpu_to_le32(cmd.cdw12);
+	c.common.cdw13 = cpu_to_le32(cmd.cdw13);
+	c.common.cdw14 = cpu_to_le32(cmd.cdw14);
+	c.common.cdw15 = cpu_to_le32(cmd.cdw15);
+
+	if (cmd.timeout_ms)
+		timeout = msecs_to_jiffies(cmd.timeout_ms);
+
+	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
+	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
+			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
+			(void __user *)(uintptr_t)cmd.metadata, cmd.metadata_len,
+			0, &result, timeout);
+	nvme_passthru_end(ctrl, effects);
+
+	if (status >= 0) {
+		if (put_user(result, &ucmd->result))
+			return -EFAULT;
+	}
+
+	return status;
+}
+
+static int nvme_user_cmd64(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+			struct nvme_passthru_cmd64 __user *ucmd)
+{
+	struct nvme_passthru_cmd64 cmd;
+	struct nvme_command c;
+	unsigned timeout = 0;
+	u32 effects;
 	int status;
 
 	if (!capable(CAP_SYS_ADMIN))
@@ -1401,6 +1449,13 @@ static void nvme_put_ns_from_disk(struct nvme_ns_head *head, int idx)
 		srcu_read_unlock(&head->srcu, idx);
 }
 
+static bool is_admin_cmd(unsigned int cmd)
+{
+	if ((cmd == NVME_IOCTL_ADMIN_CMD) || (cmd == NVME_IOCTL_ADMIN64_CMD))
+		return true;
+	return false;
+}
+
 static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 		unsigned int cmd, unsigned long arg)
 {
@@ -1418,13 +1473,13 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	 * seperately and drop the ns SRCU reference early.  This avoids a
 	 * deadlock when deleting namespaces using the passthrough interface.
 	 */
-	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
+	if (is_admin_cmd(cmd) || is_sed_ioctl(cmd)) {
 		struct nvme_ctrl *ctrl = ns->ctrl;
 
 		nvme_get_ctrl(ns->ctrl);
 		nvme_put_ns_from_disk(head, srcu_idx);
 
-		if (cmd == NVME_IOCTL_ADMIN_CMD)
+		if (is_admin_cmd(cmd))
 			ret = nvme_user_cmd(ctrl, NULL, argp);
 		else
 			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
@@ -1444,6 +1499,9 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	case NVME_IOCTL_SUBMIT_IO:
 		ret = nvme_submit_io(ns, argp);
 		break;
+	case NVME_IOCTL_IO64_CMD:
+		ret = nvme_user_cmd64(ns->ctrl, ns, argp);
+		break;
 	default:
 		if (ns->ndev)
 			ret = nvme_nvm_ioctl(ns, cmd, arg);
diff --git a/include/uapi/linux/nvme_ioctl.h b/include/uapi/linux/nvme_ioctl.h
index 1c215ea..e168dc5 100644
--- a/include/uapi/linux/nvme_ioctl.h
+++ b/include/uapi/linux/nvme_ioctl.h
@@ -45,6 +45,27 @@ struct nvme_passthru_cmd {
 	__u32	result;
 };
 
+struct nvme_passthru_cmd64 {
+	__u8	opcode;
+	__u8	flags;
+	__u16	rsvd1;
+	__u32	nsid;
+	__u32	cdw2;
+	__u32	cdw3;
+	__u64	metadata;
+	__u64	addr;
+	__u32	metadata_len;
+	__u32	data_len;
+	__u32	cdw10;
+	__u32	cdw11;
+	__u32	cdw12;
+	__u32	cdw13;
+	__u32	cdw14;
+	__u32	cdw15;
+	__u32	timeout_ms;
+	__u64	result;
+};
+
 #define nvme_admin_cmd nvme_passthru_cmd
 
 #define NVME_IOCTL_ID		_IO('N', 0x40)
@@ -54,5 +75,7 @@ struct nvme_passthru_cmd {
 #define NVME_IOCTL_RESET	_IO('N', 0x44)
 #define NVME_IOCTL_SUBSYS_RESET	_IO('N', 0x45)
 #define NVME_IOCTL_RESCAN	_IO('N', 0x46)
+#define NVME_IOCTL_ADMIN64_CMD	_IOWR('N', 0x47, struct nvme_passthru_cmd64)
+#define NVME_IOCTL_IO64_CMD	_IOWR('N', 0x48, struct nvme_passthru_cmd64)
 
 #endif /* _UAPI_LINUX_NVME_IOCTL_H */
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
