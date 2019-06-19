Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635714C03B
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPNz1MdH3Atsq/6SHuRW8yl6rZyiC/1h+tsBfeokC/k=; b=GykS44A0CZJGmZ
	LBYUXWovpv1Hf70pMSViTbS/JP966IVrqRZvDUZ31A5AxLTuHGkQ6bbStUuEx93xV4q1gUzXHI7SN
	v7WAmFtDq6Xul6gxKPXt4xvETCgZESm7A661WJ4Us1vKwlqQP+OoGw2/e6mH8shgbbF5QH688Lkv6
	gBoa0KRORnTJfX0MAN1EA6+tz3RfJQinrokF70Lz3BIPCzkRIPCUmoR9SDS9iAYRBfRmvxROuBZER
	H/OcsRJZedtH0kmZYqH3b/6Er37hstjSmy1fmkib1ehGxVmOl0Bq/tjz47noPqct5ZBeTFCQ9x5OT
	xX4xpEDY4HOlo6Wuzk8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdehV-0004XQ-8i; Wed, 19 Jun 2019 17:48:49 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWT-0006nY-Nn
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:27 +0000
Received: by mail-pl1-f194.google.com with SMTP id bh12so104743plb.4
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dwGUQf4/ZLuVCTE4na5395FTffBAMjJmwDyUc34n0Eg=;
 b=npzU4jcnDuFfCCJX4dBs6CM3itPMFCWd6uj92nnl4T88HrU6jF1iyhD2vorodHU39e
 ABp1704DZ2QOZBYgfWsjWrobO3a4/ZTmqx1hRUeLHwWcML1I0rnV8Avgmr0nFUAZRjtR
 i/v6iAQIXzz2K2fTiO1jLW4gw8PbX1fxNEJLfZ8iV+wgXQ6ZqRuEUTaLIXaOv8pIKJyi
 odnGcvIOzp1Koh1zuoYV+LhU/FNtLXjtjeJ2fTDqqqjL+uKDE+fWq0yWWyJt26YrTRC7
 PynbnjQEl87GZerG+G9lLajrL1SqY/0xjTFHGSToTgbwj3jq/SHmkkGXdr+eKmxEMMPJ
 TKSg==
X-Gm-Message-State: APjAAAVNxDRH0REhwFkAGQJx6EcFYzN5LHxP6krmwiFX8xixehuNICNH
 c8tG3SPZ4bNl5JqluXTmFXQ=
X-Google-Smtp-Source: APXvYqx0owuJDqmdHmQNE1eo082qjKQHxYtwZZHDy1mQoYNyUJ+mzKBYi85rlJb8lFhDnX7fWdMvsg==
X-Received: by 2002:a17:902:7d86:: with SMTP id
 a6mr96195557plm.199.1560965844494; 
 Wed, 19 Jun 2019 10:37:24 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:23 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 12/13] Introduce NVMe 1.4 Identify Namespace fields
 in struct nvme_id_ns
Date: Wed, 19 Jun 2019 10:37:00 -0700
Message-Id: <20190619173701.8263-13-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103725_788961_8ECA3E82 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Several new fields have been introduced in version 1.4 of the NVMe spec
at offsets that were defined as reserved in version 1.3d of the NVMe
spec. Update the definition of the nvme_id_ns data structure such that
it is in sync with version 1.4 of the NVMe spec. This change preserves
backwards compatibility.

Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 linux/nvme.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index 69f287e682f2..af14339bdca6 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -332,7 +332,12 @@ struct nvme_id_ns {
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
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
