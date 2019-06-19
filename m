Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A446D4C017
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIZMqspuqIeXUgyjeZZ1y38oMPzu+wHeUn7MvflSSQQ=; b=ddVzQdgt0YlT1g
	RWzY8UV7d+OJTDTR4GISXJYrm1ySlZe4xkQawMt6PgNdL6Ret7pzlLL44gCl9V70oy0+DebYl4PJ0
	A1KZReMBWuInCNCFUx4iETiplSynyqQF8ZQAJV8PJ9MpS5IGoCcyxd2/TxiBunx8h4lrZ4p/RZMBJ
	GDmzVFZW/lKHjFlR27Pi8UfElqBf8BlyMauyNRlN4xWHR1JZof5CXJvDj6MDJJFFusnZp8EKQvoLA
	1GZFwxuSuxLylLWrT/76fdB6K56gve02IZQ7KspK83mlpuQ5eWLmYw3pgrcnRmqisVfAEHHzx+K4M
	dQiNb9sudXr6ICZSPsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdef3-0002Ro-TB; Wed, 19 Jun 2019 17:46:17 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWH-0006dF-Ns
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:15 +0000
Received: by mail-pg1-f193.google.com with SMTP id y72so51256pgd.8
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jGF6ncOrn1i3AOPVET0vqoZO/P1nVgOv/NhsOeEG3Hs=;
 b=DEHr811vjlUR2GBeG7L43pGTZ5/gx6fCOR1z60SXu7CeXDX2zxlKBxzhtEB4uM8ie5
 Nk88SyHKmb7Ec9PizWIkWMd5gzY5kwyGINDmHMLlseHW46DBdshFSzAZhmqjnjqlcJ2s
 zTNqin8mNykIvx3MFWyd+Z2UBpSUJFk+dNGSD6Mv6vB6mlJlTGWSB3e+JeVsLvmgKlI7
 3YRItVImFa67gASERbtb9LvwFjPULrfyITEb4GKQ/qobGUvD2PL4Q4W/bzJmEBMlt7qk
 4nhTA0mVI7P++MdFQeiV+axBl6WH9GByy+uHIQFQLAbIUv2IUSrLhFcJvgVxK+O3LtvI
 h/gA==
X-Gm-Message-State: APjAAAU+iC5R6sVyGoET/RRzfqZe+rns7gx9PjYptA0vVUYwEZbVNyE9
 DQ7pwP0t1R3q6Wr6qCv5uic=
X-Google-Smtp-Source: APXvYqys8xV7VcLlGyPx06r++L3i1xcPj60UIfTTWZYS+8/g3mOt5PyEHsmbUIg/ee7mgSwHh5EcGQ==
X-Received: by 2002:a17:90a:3590:: with SMTP id
 r16mr12527814pjb.44.1560965832531; 
 Wed, 19 Jun 2019 10:37:12 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:11 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 03/13] huawei: Declare local functions static
Date: Wed, 19 Jun 2019 10:36:51 -0700
Message-Id: <20190619173701.8263-4-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103713_854385_0151B9D9 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Zou Ming <zouming.zouming@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Hannes Reinecke <hare@suse.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch avoids that sparse complains about missing declarations.

Cc: Zou Ming <zouming.zouming@huawei.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 plugins/huawei/huawei-nvme.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/plugins/huawei/huawei-nvme.c b/plugins/huawei/huawei-nvme.c
index b68e05c55aee..3130607a6443 100644
--- a/plugins/huawei/huawei-nvme.c
+++ b/plugins/huawei/huawei-nvme.c
@@ -163,7 +163,8 @@ static void format(char *formatter, size_t fmt_sz, char *tofmt, size_t tofmtsz)
 	}
 }
 
-void huawei_json_print_list_items(struct huawei_list_item *list_items, unsigned len)
+static void huawei_json_print_list_items(struct huawei_list_item *list_items,
+					 unsigned len)
 {
 	struct json_object *root;
 	struct json_array *devices;
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
