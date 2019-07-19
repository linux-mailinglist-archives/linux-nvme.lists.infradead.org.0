Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B286DBA8
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p78NF1iRDsS6mQZ+nEAShxLwXVI2WkuNSbAHIZtZJ+A=; b=Mhl6Z8yA5TtBmK
	0lfP5xurnHw5+fsRpVRrwk3dZuuxk+JlhN20OFvgjowTJMrQQVzYFq8cQyn9FZJRt4qeHaTJgPFt0
	iFhcbndyWy/hXv3bbDKSA4rbTfufLpr8er3vOUzU8t01pvx2jnL5lPX3Gw90uxhqd2dCPQrPgJXC+
	aDwtkhmlv6PtpK+cwxAnk/dTcZqmTXHSHxjrsSuhu/n7KqCu7vYJ8j8A/360elURipMjKZPwoPtwK
	s1RlHPbuGU3zsSB/wOAMzScSczrRdn7nG04OQ8SrpSn5sLcXZzRD8D0HPXmxlKIAntP/bLGvNlbk0
	koWobZFt/envEVyNleMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKEB-0006HM-2n; Fri, 19 Jul 2019 04:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKA1-0002y5-Fp
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:06:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28C1E218BA;
 Fri, 19 Jul 2019 04:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509180;
 bh=CH3O2LPFoEMwAWzghnExfL2XH60fUknYpeXbotU+tPI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BR3yCQYMhFHd1fBjZiSyiiIKfOp9uab1arTjeXsuTux/F9Il3bn/hItr4NUE3GeJf
 TdzY3tSxbegvHW/kTiET/uoHun1jzFSfk1dmPx1mdGvLHhLY6+WKV+2PjA24mSbYgF
 /2n31MApgMEkFFK2icHUkf0VC0RuJuxByHLL+7Kw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 110/141] nvme-tcp: don't use sendpage for SLAB
 pages
Date: Fri, 19 Jul 2019 00:02:15 -0400
Message-Id: <20190719040246.15945-110-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210621_703438_94B5C5D4 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>

[ Upstream commit 37c15219599f7a4baa73f6e3432afc69ba7cc530 ]

According to commit a10674bf2406 ("tcp: detecting the misuse of
.sendpage for Slab objects") and previous discussion, tcp_sendpage
should not be used for pages that is managed by SLAB, as SLAB is not
taking page reference counters into consideration.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/tcp.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501b9357..606b13d35d16 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -860,7 +860,14 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		else
 			flags |= MSG_MORE;
 
-		ret = kernel_sendpage(queue->sock, page, offset, len, flags);
+		/* can't zcopy slab pages */
+		if (unlikely(PageSlab(page))) {
+			ret = sock_no_sendpage(queue->sock, page, offset, len,
+					flags);
+		} else {
+			ret = kernel_sendpage(queue->sock, page, offset, len,
+					flags);
+		}
 		if (ret <= 0)
 			return ret;
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
