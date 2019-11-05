Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570CFEF6E0
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 09:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3QqhufcVF+ZRxmBjSPjPC5Xrb5HQbSppxsYEllDSi9g=; b=m3BEV1gmQL66y7
	1Bh0EAses9QQK62XP6V6YMcbkAUl74OEqw46rgHqzwQ/d+mdw2GYnHSUVdRcxPw+T7+Zau8hefyqa
	gJ3122v2dvq2r6V4rYqwxuAKKKgFvyaF3SmxTiu+zrNy8KW1i8X+BFQ2zQwOxEWTVBnh90/yOxlzb
	+UFMCvOfOzX4dvehSuSqkljdMt64zNoUpkPXVJFSK+vhL+EWriFOlsF6a/Zafl1H2HQph7ckN2w+F
	sL6pTj8wYf9y5aEToWXMdQJDLTZ+P+cFc1+sdGa5Xiil3w/fsOzH8zr3jV0z6UNKpWm1zB/FNdQ1R
	xOx5Nat/smgCl+HdqJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRttA-0005pF-Ns; Tue, 05 Nov 2019 08:08:32 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtt3-0005oh-HH
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 08:08:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 424BF27E0F36;
 Tue,  5 Nov 2019 09:08:24 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id rr06tk6yPbBh; Tue,  5 Nov 2019 09:08:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CFF9F27E0FF8;
 Tue,  5 Nov 2019 09:08:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu CFF9F27E0FF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1572941303;
 bh=SAg4heqdqeT5xi37A6xHKeChclP8NGCnBOgDTfVIHc8=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=pi1cgBAbAezj2bN9VIsluYWFlBXfgqq7g6m369XcOFgQunHSOzmTMbhzxUXeG1Bcv
 7SRilsSWabNY4vZSUXhu/RUPNCWbhTEezjChpgi+um2WkzYTzZP2htyY4mnS+ldiSE
 yjQXnHGxCcbqQGb/ij34NwwOJvZna1QbxbvhcCPE=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wowJLp9RLESp; Tue,  5 Nov 2019 09:08:23 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B866727E0F36;
 Tue,  5 Nov 2019 09:08:23 +0100 (CET)
Date: Tue, 5 Nov 2019 09:08:23 +0100 (CET)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Keith Busch <keith.busch@intel.com>, 
 linux-nvme <linux-nvme@lists.infradead.org>
Message-ID: <164890633.90381385.1572941303726.JavaMail.zimbra@kalray.eu>
Subject: [PATCH 2/4] nvme-cli: plugins: toshiba-nvme: add include
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Index: 0pxWsX4Lk3DcAdgAKXi6sqEyXUrHwA==
Thread-Topic: nvme-cli: plugins: toshiba-nvme: add include
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_000825_737791_D9C9F53B 
X-CRM114-Status: UNSURE (   4.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add missing sys/ioctl.h include that will be needed after the
kernel header update.

Signed-off-by: Marta Rybczynska <marta.rybczynska@kalray.eu>
---
 plugins/toshiba/toshiba-nvme.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/plugins/toshiba/toshiba-nvme.c b/plugins/toshiba/toshiba-nvme.c
index 1ef7558..f578152 100644
--- a/plugins/toshiba/toshiba-nvme.c
+++ b/plugins/toshiba/toshiba-nvme.c
@@ -1,5 +1,6 @@
 #include <fcntl.h>
 #include <errno.h>
+#include <sys/ioctl.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
-- 
1.8.3.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
