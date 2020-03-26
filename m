Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C84194C6F
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 00:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDpKxchhOwn4xHlm1KSZg+aEjlz28IxsAvk3qlu88S0=; b=eqwgRysF3UYpFh
	ctqt8maC6wkkylQTpgX19nQORi5ViNj1GpJnEvgg0g09VBs7tApUTCRWKal5FXT7O+DtiiHskuITm
	ZxPMSy5OPj9UZtJ3AuuYuL98+fLt+ja1pfN82buIgObPyLlRvFUJ3oB3l75SvPvJaKcdDGpaoW4LV
	UFrdvXmuaiPNfWuQNVQCjxsy3Tl3RBMGJLARy1xuuYRWGTYYzZXyWlp4HVXS76m96ujEzp5JDSfOB
	XQOagj3Gn+y9CZQ6nTGaHmVUIpfRamNrMg96XdOohBgZx0n6xmJxlobr8XT2DYHGffMvK5H7jzpUQ
	eSNoNHol2m1y4fgdeiyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbru-0001YQ-2m; Thu, 26 Mar 2020 23:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbrL-0001AI-7H
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 23:24:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DE8C206F8;
 Thu, 26 Mar 2020 23:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265062;
 bh=5sfnqVV9ku5qP84kmI7b3D7XMM7EK2iyfhs3Bg7FGtY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qHKrJN0ZMtEHXWMDJlkjmXLqeRZsl4vvBRpIGdwWOr5Bnp6ev3qIqNZ+usW48vBLA
 3ixE1A9X1dhpw92egubZmG2h0VKiqK0tR8+LrgezSdJkQuH/esf4PCCX9FF9vOxA9b
 E7V6TkZCGRhAoqurrOXkeTbCJfa2SVopCkQpFzJA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 21/28] nvmet-tcp: set MSG_MORE only if we actually
 have more to send
Date: Thu, 26 Mar 2020 19:23:50 -0400
Message-Id: <20200326232357.7516-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232357.7516-1-sashal@kernel.org>
References: <20200326232357.7516-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162423_324847_EFB7D9C9 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Sasha Levin <sashal@kernel.org>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 98fd5c723730f560e5bea919a64ac5b83d45eb72 ]

When we send PDU data, we want to optimize the tcp stack
operation if we have more data to send. So when we set MSG_MORE
when:
- We have more fragments coming in the batch, or
- We have a more data to send in this PDU
- We don't have a data digest trailer
- We optimize with the SUCCESS flag and omit the NVMe completion
  (used if sq_head pointer update is disabled)

This addresses a regression in QD=1 with SUCCESS flag optimization
as we unconditionally set MSG_MORE when we didn't actually have
more data to send.

Fixes: 70583295388a ("nvmet-tcp: implement C2HData SUCCESS optimization")
Reported-by: Mark Wunderlich <mark.wunderlich@intel.com>
Tested-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/tcp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index af674fc0bb1e4..5bb5342b8d0c7 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -515,7 +515,7 @@ static int nvmet_try_send_data_pdu(struct nvmet_tcp_cmd *cmd)
 	return 1;
 }
 
-static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
+static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 {
 	struct nvmet_tcp_queue *queue = cmd->queue;
 	int ret;
@@ -523,9 +523,15 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
 	while (cmd->cur_sg) {
 		struct page *page = sg_page(cmd->cur_sg);
 		u32 left = cmd->cur_sg->length - cmd->offset;
+		int flags = MSG_DONTWAIT;
+
+		if ((!last_in_batch && cmd->queue->send_list_len) ||
+		    cmd->wbytes_done + left < cmd->req.transfer_len ||
+		    queue->data_digest || !queue->nvme_sq.sqhd_disabled)
+			flags |= MSG_MORE;
 
 		ret = kernel_sendpage(cmd->queue->sock, page, cmd->offset,
-					left, MSG_DONTWAIT | MSG_MORE);
+					left, flags);
 		if (ret <= 0)
 			return ret;
 
@@ -660,7 +666,7 @@ static int nvmet_tcp_try_send_one(struct nvmet_tcp_queue *queue,
 	}
 
 	if (cmd->state == NVMET_TCP_SEND_DATA) {
-		ret = nvmet_try_send_data(cmd);
+		ret = nvmet_try_send_data(cmd, last_in_batch);
 		if (ret <= 0)
 			goto done_send;
 	}
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
