Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C179E1F3EAD
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 16:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=neY7fsESCkBy5AtsAqT2MF3GVU/mq0yuOVMnyQopwIs=; b=lz96ebdPOitDXa
	awVZZBVOfXM29weTVhNbTtMEyVFu16XMjvqzAzOMicGtbAlInNPRAdrnr1LpHWKIctN1NBT8HrlPY
	mFu+aiM6bak7KYqdsZMVNFdPsWxf7s5ExOqoyV+OmDAR8qk3+loRJImRz6QMYoq9qnT7S0vVM9TS/
	3MGcwPFlS6PQ0I9YAVkXDPxbzR+XGM3wjakZ+SXGDizx9Yls4K27Sz/OKstxlHxJWQA9rtKV9Alop
	s1QZw/PjFQCtYnssaiIsAAuIGQ6NblwLwIhCKIoGsj4BFYJ+qvQO4RwGgupFJtR71xeBnNYjxAa4N
	mJggR/LIk1l6CIOoTA1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifgU-00078X-3L; Tue, 09 Jun 2020 14:57:02 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifgQ-00077W-Dp
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 14:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591714615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=APilPkumcIM3Z2EaOh/ZqKOPEWDqlKfnx/JSvUmHprI=;
 b=egu6UP28rz9imDUzYum+TBiD3kO038uSfzVis4eACYeqKJScFEnWebK1tx8LKDI6cCv1R+
 6nM9uIjAhE3Obj9Ge6RH0mL1xGyLHe3Ism2zx9VLNdnzja6VDCVo6TEVejk4bQMLUdWRI4
 6JjglsYyVNVTZ/IFZdAIkW83u4fh1oY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-fqSR_aOlOaKfKYtHJR2yQA-1; Tue, 09 Jun 2020 10:54:35 -0400
X-MC-Unique: fqSR_aOlOaKfKYtHJR2yQA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E313464;
 Tue,  9 Jun 2020 14:54:34 +0000 (UTC)
Received: from dhcp-12-105.nay.redhat.com (dhcp-12-105.nay.redhat.com
 [10.66.12.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31457768DC;
 Tue,  9 Jun 2020 14:54:32 +0000 (UTC)
From: Yi Zhang <yi.zhang@redhat.com>
To: kbusch@kernel.org
Subject: [PATCH nvme-cli] nvme-print: fix smart log temperature output in json
 mode
Date: Tue,  9 Jun 2020 22:54:22 +0800
Message-Id: <20200609145422.22386-1-yi.zhang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_075658_541658_C1B4F01E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
---
 nvme-print.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index 7414280..d63b402 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -593,7 +593,7 @@ static void json_smart_log(struct nvme_smart_log *smart, unsigned int nsid,
 	char key[21];
 
 	unsigned int temperature = ((smart->temperature[1] << 8) |
-		smart->temperature[0]);
+		smart->temperature[0]) - 273;
 
 	long double data_units_read = int128_to_double(smart->data_units_read);
 	long double data_units_written = int128_to_double(smart->data_units_written);
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
