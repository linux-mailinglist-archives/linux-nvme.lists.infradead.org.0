Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C261E29
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 14:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HqmTOWc0K7c3wHszbGgvdx49qB01UaAvnlL69LGAVt0=; b=XoRBOM8RbTV2tLhqARkP4YYMwu
	4bgLiW/BRSE4INabFe1kKCctnLggHc0hmb0mjQunTB1aXzeWuN1hIFw9ppqBxWLEfnKVx6zFuzMR8
	FrRgXPT11br0MC3tZzLVO4kdBvsmfVkQdkZenvEKRzmTeRVreeKWXqflMzAni7c35cZnzNktIj4CI
	l8kUueQ9+ONUILZkQVhacKSFKItwupqBHgMBZsCzzD4v8IqEIe/J3oHvXy3X3aIWSf4+V2J2GNMI1
	KDzelT1XbNOCBF5A5lTfxxLXoe8J7c67eyMeI/6/yUkPK6p2FkUGyqh7qdZkFIqI5SqOk+/C0FIH1
	4ot3sLuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSPc-000277-M4; Mon, 08 Jul 2019 12:06:28 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSOu-0001kz-SR
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 12:05:47 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id BAEBE18007B;
 Mon,  8 Jul 2019 12:05:43 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 8 Jul 2019
 13:05:29 +0100
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>,
 <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v2 2/2] nvme-tcp: don't use sendpage for SLAB pages
In-Reply-To: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
Date: Mon, 8 Jul 2019 12:31:29 +0200
Message-ID: <3206ec8102d4dae933f4638652e84349dcc50ee4.1562586804.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24746.003
X-TM-AS-Result: No-5.473100-8.000000-10
X-TMASE-MatchedRID: 7f0W3vGS/J6qLzGGxbeS5oboZ15KqReTOxjb9QQbt+SgDWpkqTKvoWxb
 gRPguoUXUYxfl/uCXqMNpKIKK7OPwbmvDpsAGJWUqJSK+HSPY++WODD/yzpvdwdkFovAReUoaUX
 s6FguVy02dnVybJBziQpwpdIIi4oJObOMSve0pv+iAZ3zAhQYgn0tCKdnhB589yM15V5aWpj6C0
 ePs7A07YFInLyeDAoZcU3wZy/N6V7J2ZwVNJG5VyTVOsm0STA++PV0ORL9FhMZIK8uLS1ymw==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.473100-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24746.003
X-MDID: 1562587544-YaWuJLYdUXnF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_050545_049847_06E6C7F4 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

According to commit a10674bf2406 ("tcp: detecting the misuse of .sendpage
for Slab objects") and previous discussion, tcp_sendpage should not be
used for pages that is managed by SLAB, as SLAB is not taking page
reference counters into consideration.

This change prevents sendpage calls for payload sending too, although this
is true only for admin commands, so actual data transfer performance
should be untouched.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
---
 drivers/nvme/host/tcp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501b9357..c4acdbdca520 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -860,7 +860,12 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		else
 			flags |= MSG_MORE;
 
-		ret = kernel_sendpage(queue->sock, page, offset, len, flags);
+		/* can't zcopy slab pages */
+		if (unlikely(PageSlab(page))) {
+			ret = sock_no_sendpage(queue->sock, page, offset, len, flags);
+		} else {
+			ret = kernel_sendpage(queue->sock, page, offset, len, flags);
+		}
 		if (ret <= 0)
 			return ret;
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
