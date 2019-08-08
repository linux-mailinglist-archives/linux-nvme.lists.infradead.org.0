Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA5586BFB
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ibWeBzjjnDPzcABAQjvTUCEYmoP4ZhiyT42z5paAZz4=; b=V+IiRHK+mUYd2OjV0/VhTctK9E
	0oTpPrV+1Vmcql2uWeXR/4TFNYaDQQBrAFVfOl6mMTjqW94TAW0Gz4M8YevL5kHZ43jCY124D4hrp
	o86gwX/53hJTlRNkGYsJEChJyBGXj/ZqnyAGsShLiLHonYdyl68VOSxKwnyjqoqcDJbf+MtRQitzC
	UM+/cJ/Iev1MfPobrLbH1hQz5fa0fikME243lO7s9QssVJrG3TlLODb16PkHZGd+UDrBWsovsePBW
	I1M78jECPRU/pksXDz9susYp5LxlAXcN90O/yKndSwDjNSref3YnRGXZ7tqbIdZI/i4n05zMOgrmd
	fptWJKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpRm-0003tq-0V; Thu, 08 Aug 2019 20:55:42 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpRX-0003nX-A3; Thu, 08 Aug 2019 20:55:27 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvmet-tcp: fix possible memory leak
Date: Thu,  8 Aug 2019 13:55:22 -0700
Message-Id: <20190808205522.24638-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205522.24638-1-sagi@grimberg.me>
References: <20190808205522.24638-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

when we uninit a command in error flow we also need to
free an iovec if it was allocated.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 0d63f3da0117..76e43750b9e5 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -1309,6 +1309,7 @@ static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd)
 {
 	nvmet_req_uninit(&cmd->req);
 	nvmet_tcp_unmap_pdu_iovec(cmd);
+	kfree(cmd->iov);
 	if (cmd->req.sg_cnt)
 		sgl_free(cmd->req.sg);
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
