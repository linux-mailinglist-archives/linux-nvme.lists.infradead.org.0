Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18761D7F8D
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 19:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3T1tQdBHMG1f9r9KAVdyYlO/6Edw/6llIg8kCblqHb8=; b=r+ANG7d0bKCU9Kpmawq3TIPnU5
	u0gcgtPGxb0qzdsWRUYxIqt0XTlNoutNlN8qb2uqL7knkFQq4BcJKCeFd2fmyYZzsz8JeKI+wNiYM
	MngsXvsqcFM42Tri+uvbUYAq/mZRn5I4p75Afy6FQ/hr08FbQ1Oo9dz4zAj+27SvvNiJhnG+m6o9C
	WD1KiQOrjcQuc/vlL1HKU0QtriGsYmQWny6i85NksOKErISc8rJN7sK2qPRWHHVukCrC5IDPxLE2h
	LW89usPZxrigbdoRAYMZwgoVALJk7jOQw0EWc2xYaj1k8PgrJmHzqhWldhkm6InUVgw//my/wN749
	xp6IDf8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajAm-00013M-K0; Mon, 18 May 2020 17:03:28 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajAX-0000z3-8p
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 17:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589821391;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=O+W8Zvidw6+WbRfl9IWiM7U2yX6MoUu/VufFME7Xp3o=;
 b=hYmg+KTCPUTVLPlHN5/FOzyojaWNuKyAqj9yKI3Mcj5iTSSMHLcFVIF2HBT/hpaeJqgquX
 PlewaNSvfyS3Xn4FHhs/zpPGrtPfoJRycFtFMhfmKyde9R/kPyx36DOOYSXYZCNYisFKuO
 zdCEV5EGsun2WlRsjYNrX5a+GveVrRA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-12xKiUgLOPKiMmXjTv8cyQ-1; Mon, 18 May 2020 13:03:09 -0400
X-MC-Unique: 12xKiUgLOPKiMmXjTv8cyQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6BA33835B40;
 Mon, 18 May 2020 17:03:08 +0000 (UTC)
Received: from hpz440.redhat.com (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E7A6D60BE1;
 Mon, 18 May 2020 17:03:07 +0000 (UTC)
From: David Milburn <dmilburn@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvmet: avoid memleak by freeing any remaining aens in
 nvmet_async_events_free
Date: Mon, 18 May 2020 12:03:06 -0500
Message-Id: <1589821386-43424-3-git-send-email-dmilburn@redhat.com>
In-Reply-To: <1589821386-43424-1-git-send-email-dmilburn@redhat.com>
References: <1589821386-43424-1-git-send-email-dmilburn@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100313_382614_19724C86 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
Cc: hch@infradead.org, chaitanya.kulkarni@wdc.com, dwagner@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Make sure we free all resources including any remaining aens
which may result in a memory leak.

$ cat /sys/kernel/debug/kmemleak
unreferenced object 0xffff888c1af2c000 (size 32):
  comm "nvmetcli", pid 5164, jiffies 4295220864 (age 6829.924s)
  hex dump (first 32 bytes):
    28 01 82 3b 8b 88 ff ff 28 01 82 3b 8b 88 ff ff  (..;....(..;....
    02 00 04 65 76 65 6e 74 5f 66 69 6c 65 00 00 00  ...event_file...
  backtrace:
    [<00000000217ae580>] nvmet_add_async_event+0x57/0x290 [nvmet]
    [<0000000012aa2ea9>] nvmet_ns_changed+0x206/0x300 [nvmet]
    [<00000000bb3fd52e>] nvmet_ns_disable+0x367/0x4f0 [nvmet]
    [<00000000e91ca9ec>] nvmet_ns_free+0x15/0x180 [nvmet]
    [<00000000a15deb52>] config_item_release+0xf1/0x1c0
    [<000000007e148432>] configfs_rmdir+0x555/0x7c0
    [<00000000f4506ea6>] vfs_rmdir+0x142/0x3c0
    [<0000000000acaaf0>] do_rmdir+0x2b2/0x340
    [<0000000034d1aa52>] do_syscall_64+0xa5/0x4d0
    [<00000000211f13bc>] entry_SYSCALL_64_after_hwframe+0x6a/0xdf

Steps to Reproduce:

target:
1. nvmetcli restore rdma.json

client:
2. nvme connect -t rdma -a $IP -s 4420 -n testnqn

target:
3. nvmetcli clear
4. sleep 5 && nvmetcli restore rdma.json
5. cat /sys/kernel/debug/kmemleak after 5 minutes

Reported-by: Yi Zhang <yi.zhang@redhat.com>
Signed-off-by: David Milburn <dmilburn@redhatcom>
---
 drivers/nvme/target/core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index c9d74ebeaa7d..091d3c9ee490 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -169,6 +169,13 @@ static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
 		nvmet_req_complete(req, NVME_SC_INTERNAL | NVME_SC_DNR);
 		mutex_lock(&ctrl->lock);
 	}
+
+	while (!list_empty(&ctrl->async_events)) {
+		aen = list_first_entry(&ctrl->async_events,
+				       struct nvmet_async_event, entry);
+		list_del(&aen->entry);
+		kfree(aen);
+	}
 	mutex_unlock(&ctrl->lock);
 }
 
-- 
2.18.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
