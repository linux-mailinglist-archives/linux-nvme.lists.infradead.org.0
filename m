Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A1C1D91AC
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 10:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugOuDkoU1Xi+D82vbOjt+sEZem7NIDmfsWEgWABJ5n0=; b=LGSQgfqomDr7Mh
	QAN3N4MsYvJ5ZPrChNFGh/zSpEzEWMn4fmmThUZbLRRlXZAA2mVRxVTfEkZTWPotQ5WE5lxuhdWH9
	aG6o8OpaC6TVep5O7vJwQDj9H3KIq7lN00Ogh2G0F30vykzHg/Vr4HgAUPMhrRIqxB2ohCKnwLLlk
	s45z3vBw74ovp5AsDOODaUSKgiUHl2cn2llffcl3bpIIdQKLwraUFbAI0H10H6bdDK5uXzJ2Q6fj+
	5Mfu1K+o86XKRATh8ySVfTeMWDF+LDxPSFCjZHPrUtZUlphA3hUlAcfA3C9PZfFjwoiee1S2gq+7c
	p5WWUozpIR6AWH7lAwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxHC-0006Q7-2I; Tue, 19 May 2020 08:07:02 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxGp-0006AD-8T
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 08:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589875600; x=1621411600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mthIjV6YbvVJ1vSz8yz/TDuJLLNALIlzqImgwBkJZbs=;
 b=bTTMPt9YPIUl8Lej+ouNFSPaqta8qUB0bNWz3wwkQewY1+dp8utEvX0l
 w97j7IVK4OyGNJJCpa+hRH7GcHkdlVLLVypsyvbfU5tBUPsZ8XodCcPuz
 PSD4c95ich18guFhHW+BzqFvLttPNWOVbgMWpyvW507tn7GkzSuIPb+uP
 UEnoenGWnn0y2PmUE6WHIcpTWjj1+t6/EjDjIYTaAhByZxjL5/nntjUOH
 2eScKQBDbD2rMZIacbcjVa/hjzeB01wbUZ6kssqHxlQjQftcdpb3UCYtv
 Sp5On4Az21p007wEMcYLLQZarwfGNaM4it5rW36Gj2gDEOTokKcOsYzXf w==;
IronPort-SDR: r2NS8e3chZtlkWuzU0GCDaq+MFuLo6ZAW+YDM0fK7oeHW39bajFKIK08iN/HNSsr/qkd9Bu8lo
 O5zZ8leAYZ0Y2lOm8jzTJYLMgewAKNywVFJCNUXhr8huao2HoLIdbaoyoEfl8q8UFTBB0DXDeE
 +usA4ORYuBt4QQwrpIlSvzq4GOlKXL5vnLFp7HpxxQg1snZGXMlCRsPqRixoC6IpAkSQuvVm9K
 tbqiiN5H84PJgDIeyoff+kHT/RmShUYcR7d4LnZMRVf08EZJ5OSlAfSDPKkDlVeOOvYw/1pu97
 7+g=
X-IronPort-AV: E=Sophos;i="5.73,409,1583164800"; d="scan'208";a="240756802"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 May 2020 16:07:03 +0800
IronPort-SDR: Mm6JvNAhKd31skAonF6vvsbca4me5ZT5qIOMlp37B/akGfGvQ974GhJbsInJ79yX8BLcLOl/QS
 pLTwXlmzuPwb9OwlW3CRSrr4jAjjss6z0=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 00:56:43 -0700
IronPort-SDR: KlGwL2NXm0ZCvpUIJUSffnAJmanQUhHutYw05twuD5qXh44rIQTh/AVWaETwVfd53nv2h3zu0t
 SEy7RV1BhYUA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 19 May 2020 01:06:38 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH V4 2/4] nvmet: generate AEN for ns revalidate size change
Date: Tue, 19 May 2020 01:06:28 -0700
Message-Id: <20200519080630.3500-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200519080630.3500-1-chaitanya.kulkarni@wdc.com>
References: <20200519080630.3500-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_010639_393205_A63B9B80 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The newly added function nvmet_ns_revalidate() does update the ns size
in the identify namespace in-core target data structure when host issues
id-ns command. This can lead to host having inconsistencies between size
of the namespace present in the id-ns command result and size of the
corresponding block device until host scans the namespaces explicitly.

To avoid this scenario generate AEN if old size is not same as the new
one in nvmet_ns_revalidate().

This will allow automatic AEN generation when host calls id-ns command
and also allows target to install userspace rules so that it can trigger
nvmet_ns_revalidate() (using configfs interface with the help of next
patch) resulting in appropriate AEN generation when underlying namespace
size change is detected.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 86a75c7779d5..fa1f79b3fde3 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -516,10 +516,15 @@ static void nvmet_p2pmem_ns_add_p2p(struct nvmet_ctrl *ctrl,
 
 void nvmet_ns_revalidate(struct nvmet_ns *ns)
 {
+	loff_t oldsize = ns->size;
+
 	if (ns->bdev)
 		nvmet_bdev_ns_revalidate(ns);
 	else
 		nvmet_file_ns_revalidate(ns);
+
+	if (oldsize != ns->size)
+		nvmet_ns_changed(ns->subsys, ns->nsid);
 }
 
 int nvmet_ns_enable(struct nvmet_ns *ns)
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
