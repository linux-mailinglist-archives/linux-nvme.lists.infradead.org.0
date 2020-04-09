Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EE31A37C8
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mBV5ZI+DsYcRscr9YwuhbjJCfzEifh8VYPhDMouMwE=; b=Y7rL4COIgkyG96
	8x11GxesiKHP/XSznszVkioc0u3abOStDVwudnQTepEQ5Q9M3jbv48OEBHv+Ug9nofIRc4NLT2Yu5
	m//U/ixDFnl3h9oiFlduHoxovFJGekGzl+vdyHo+Ourn4qg0jTAbD7kaOYDf8eCf7ffal0TfmhQvI
	Zu+dcmIDpSKTpTxJy245SFBfzAW89pyLwpKPjq94RkAI3t4q+aMazhHWCmj4Zs+mLp5ko+CnemwzK
	IrQ6BC5Ohc1bEDDjnUkWdcd4RngzUUGe1iqVtRlasF/ry03oVUvY2NfO02QLrtjXMV7vae2uTgyUc
	0jakx9TIHkc1HCqm8tag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZk9-0001YD-Mo; Thu, 09 Apr 2020 16:09:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjr-0001QL-7d
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:12 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EED62084D;
 Thu,  9 Apr 2020 16:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448550;
 bh=9MBYTfvuUWKqnGoF2d3UfCtChMIug1r2ubrqr8lPm9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rx75KJwt9vIXUkKzvQ4eHP2Du4yg6Bjjfa1uWLsJpo73Bxa/2mnHsIIal3anPIAmW
 92wXl1xtQB9stpA4iHTmvTG1PhEj8PseA8GeAliPgPMwrZ9dR8+SAacgqcbDl+kza0
 A9bWxdpWrS6JD5/PsGLj1tP+axtw6NLqFRTCd3BI=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 02/10] nvme: release namespace head reference on error
Date: Thu,  9 Apr 2020 09:09:00 -0700
Message-Id: <20200409160908.1889471-3-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090911_291328_83F72236 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a namespace identification does not match the subsystem's head for
that NSID, release the reference that was taken when the matching head
was initially found.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba621f9229e5..253ea57855db 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3503,6 +3503,7 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 				"IDs don't match for shared namespace %d\n",
 					nsid);
 			ret = -EINVAL;
+			nvme_put_ns_head(head);
 			goto out_unlock;
 		}
 	}
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
