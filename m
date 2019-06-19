Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2936F4C03C
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coQn5J6Y6hJG+A0T2SfVxijmlbxx+vE66+xqXDJIhrc=; b=e6FDu+ShQVzC5K
	egL5pK5ayNzPMnD4/rxufVYDpZWoi0Z/vqzHapNOfSEOmY0ZvCjnoQxloBFVqFJQbStNIQFyGqFIy
	BQbDDZlfIQ2hFWvVYF9ElLN1Su9vBLPdQYQTfMQMxJHWCIYp6MKJIdWkBP9mOiOe1nYJChVZfWTRH
	AxRf2vx3KUtuogyKHfxELoCDLF51JwbqT+GSu5mWKsXea0k8gtkkKrGWWblahRLZhdvO+P3hpEWuL
	tVyTe7wM3DU6mkvEyjYZHtpkIbdWFAsbS/JNnm/oolCQnbW/sNqnVXsTm5ZOd19wCgatXd2PT+h20
	Zeh68W1CuxdTeObkrYCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdehe-0004i3-Ku; Wed, 19 Jun 2019 17:48:58 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWU-0006oc-Pk
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:28 +0000
Received: by mail-pf1-f194.google.com with SMTP id d126so25680pfd.2
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tneht9YMPLmL82CfCHbo0CLGcyi4odmE8b9nFOXJuHw=;
 b=cqPnOM8uipRgTBQwXm2BnbQP569i3fzHn2kfx2hve00Q0cWLMGrV+fKq7OpMuj6QM9
 zS1gOgiZ//0YrEjoDpzZq0uaD45ySja0DUhQTfrfXDFI3TII2R1JDLxuIYsaZZ8Mrazf
 rrmXcgm2ljSGEhsPGwSxq/zt3Xx5BM8S4qF4UZluc7n/3KOPn4hHk5rYaww3vSyZiqGn
 CeRQEfJIGCQ2Jr2zaFEAf1rHnh68FMB3MFMqKxpu0xWOg2Q/RO1IYh/7EVrlFYqqSfhS
 P7++NSZ+6iAvJDsrIKc+5JRtt/BvokRojDs77knUEdQpActPdv7xwpjUUBI/kaTf30rI
 VX0g==
X-Gm-Message-State: APjAAAUjuSoUH9Hi5GD/qwo7Cs8EMGIhVD2X53Q1uKrWOGuebzYyqq4p
 hebw1GEcbUlqCU7KgBAUy5c=
X-Google-Smtp-Source: APXvYqx9P1+KnX9vp0OY9Ku07VI7Hb6+TumIuosMr1tsyJ/4Ez7LmsDxZovpFnY/Ic1FWWFgLRHG1g==
X-Received: by 2002:a62:e417:: with SMTP id r23mr93238902pfh.160.1560965845808; 
 Wed, 19 Jun 2019 10:37:25 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:24 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 13/13] nvme-cli: Report the NVMe 1.4 NPWG, NPWA, NPDG,
 NPDA and NOWS fields
Date: Wed, 19 Jun 2019 10:37:01 -0700
Message-Id: <20190619173701.8263-14-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103726_893341_6BF0419F 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
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

From the NVMe 1.4 paragraph about NSFEAT:

"Bit 4 if set to 1: indicates that the fields NPWG, NPWA, NPDG, NPDA, and
NOWS are defined for this namespace and should be used by the host for I/O
optimization; and NOWS defined for this namespace shall adhere to Optimal
Write Size field setting defined in NVM Sets Attributes Entry (refer to
Figure 251) for the NVM Set with which this namespace is associated."

Hence only report these fields if bit 4 in NSFEAT has been set.

Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-print.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/nvme-print.c b/nvme-print.c
index 94222a3b1c15..17478f9856e2 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -721,6 +721,13 @@ void show_nvme_id_ns(struct nvme_id_ns *ns, unsigned int mode)
 	printf("nabspf  : %d\n", le16_to_cpu(ns->nabspf));
 	printf("noiob   : %d\n", le16_to_cpu(ns->noiob));
 	printf("nvmcap  : %.0Lf\n", int128_to_double(ns->nvmcap));
+	if (ns->nsfeat & 0x10) {
+		printf("npwg    : %u\n", le16_to_cpu(ns->npwg));
+		printf("npwa    : %u\n", le16_to_cpu(ns->npwa));
+		printf("npdg    : %u\n", le16_to_cpu(ns->npdg));
+		printf("npda    : %u\n", le16_to_cpu(ns->npda));
+		printf("nows    : %u\n", le16_to_cpu(ns->nows));
+	}
 	printf("nsattr	: %u\n", ns->nsattr);
 	printf("nvmsetid: %d\n", le16_to_cpu(ns->nvmsetid));
 	printf("anagrpid: %u\n", le32_to_cpu(ns->anagrpid));
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
