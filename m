Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4F55848B
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 16:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJdAhQh9GbJ9Q23XFVRiS+Du1xW87evvgHKXMXVcNJQ=; b=Td490sZdC+ei8R
	WJr4QzT2MlxQDReOQ1PpQAsRgdCWL9qLZVwB1m9K8e9JQLBu6Jf57A3q6Zzko78e7ofH1n7Vfv469
	a2Vt4lplrRGXvDIIOFdRfFbq0yKkkSAYBxc3cUpdigfFdVekbM/euwbPo3PWZ8XJ9UqIzSEJM90zo
	X56WFZqZgAYvMelNLviOsjqQXXgFXKpTDL20x9Bz8d/7ioMnXWRYAFJhWhWG4twrnMmZW2ckDhWXu
	gpGgUD4RTG5EzqySGCv5hp5I8UW01hgf2LKTZJuFyWVN04vhbO4MCpetytyC1wL2xn0lafh5um4av
	ER4xdsJvOByP/ACzeE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVSk-0004Wj-Dd; Thu, 27 Jun 2019 14:33:22 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVRq-00049y-35
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 14:32:27 +0000
Received: by mail-pl1-f196.google.com with SMTP id 9so633755ple.5
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 07:32:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I8qy9eAClOXE2aMawus6eGG06I6D5xYlJ/MxWtXEf7I=;
 b=r8PZQ007sdrqyeT5ziXDz4lsg8Pgst2jXLMyopc4cGgbS1aYgDz9COL/3DbljwbkSj
 1LU0hDFOAWJS35FLxEqDG42oxYcyLTpSMTBNpo2fZLmgq5/wIuSJXf37xI5AcuE/CMoU
 CGKiu8vtG0dIVkm1/8Jo76ouinx2IWvSS9AhFveTulLBMlhtWXnyKgnHVR6eJY2ttdkS
 cV6kpZwdlPd6YLgbSm29e3VBQEU/n1UxcHPlJr6l1FPjPZuVMkSYv9RIlEO0CXgxdE4N
 MCsrQaDYADMLFVh8AnTzWvhKX7oV1Ts7JVWio7+rc7K9ElI2Er7ltp/g3G3pQgQUsbDH
 XsOQ==
X-Gm-Message-State: APjAAAUNnRSptk1mJOWr//wqy/McuQ+eb32PBvBeOUk/+8NtRTJelRb4
 AGk1inLzv5kM7wCMZE7QhY8=
X-Google-Smtp-Source: APXvYqxtOn8TO2urBEvRhJARem+gv+zVOCGO5kRONqkBtvB6V6/h9YrEvYfZ6rZLflfRqK2Zuj0cog==
X-Received: by 2002:a17:902:7586:: with SMTP id
 j6mr5173683pll.128.1561645943937; 
 Thu, 27 Jun 2019 07:32:23 -0700 (PDT)
Received: from asus.site ([2601:647:4000:5dd1:f10e:6218:72d9:c2d6])
 by smtp.gmail.com with ESMTPSA id y193sm2812037pgd.41.2019.06.27.07.32.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 07:32:23 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v4 1/3] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Date: Thu, 27 Jun 2019 07:32:13 -0700
Message-Id: <20190627143215.27443-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627143215.27443-1-bvanassche@acm.org>
References: <20190627143215.27443-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_073226_136827_81BB5AB7 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Several new fields have been introduced in version 1.4 of the NVMe spec
at offsets that were defined as reserved in version 1.3d of the NVMe
spec. Update the definition of the nvme_id_ns data structure such that
it is in sync with version 1.4 of the NVMe spec. This change preserves
backwards compatibility.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 include/linux/nvme.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index d98b2d8baf4e..01aa6a6c241d 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -315,7 +315,7 @@ struct nvme_id_ns {
 	__u8			nmic;
 	__u8			rescap;
 	__u8			fpi;
-	__u8			rsvd33;
+	__u8			dlfeat;
 	__le16			nawun;
 	__le16			nawupf;
 	__le16			nacwu;
@@ -324,11 +324,17 @@ struct nvme_id_ns {
 	__le16			nabspf;
 	__le16			noiob;
 	__u8			nvmcap[16];
-	__u8			rsvd64[28];
+	__le16			npwg;
+	__le16			npwa;
+	__le16			npdg;
+	__le16			npda;
+	__le16			nows;
+	__u8			rsvd74[18];
 	__le32			anagrpid;
 	__u8			rsvd96[3];
 	__u8			nsattr;
-	__u8			rsvd100[4];
+	__le16			nvmsetid;
+	__le16			endgid;
 	__u8			nguid[16];
 	__u8			eui64[8];
 	struct nvme_lbaf	lbaf[16];
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
