Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C95A16B
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 18:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ShzcZE8NQu8EUMEtwPgQC+GaHU+gUUL4WxJz50BLcM=; b=Fxzqpuv5MguhDM
	BczXqjthYfabIJ110CeXXSFqTaxJNlCxALu1LKERc/EeF4W6+04t+EQyZzA3qYrJVugeUYjgRvH7Y
	AZNWU3q2wTz5vOGPrhdzaCbE4xDOqiFlY0dHHtkL+P7iaTi/G6D8oh/dL/SeJ0SzO0B/RoIuA9w9z
	5T3Fl+lrEacJIoTnMpeiQPn1piGzUP65Y9R+Jigj1oXN/3THXXvI3zLWOT/lTLA6vc1Uc6ZmEBuHs
	QUHTsKXn+44tRsx0tTRLKBuFoDBe92CBt0RYzOlC5waXBw+LzHAxaETxUiASTGp3cy46ING/440oR
	cV2Cbu+T5crIgXpGKqBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgu8G-00023e-1j; Fri, 28 Jun 2019 16:53:52 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgu86-00022N-BL
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 16:53:44 +0000
Received: by mail-pf1-f196.google.com with SMTP id i189so3262973pfg.10
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 09:53:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0kDJ5Yk2Bp5BYSgDsBaCrW32ceH9PyUFHHMDXkdjMoo=;
 b=hp56F41tPsDIlUx5T5MgqdufQQlKRSyQiFo7jU1PTX+TLnG67+lVd8U27dPIxAZLEA
 KOvG3lc/HsLR6G+fEeAZUWItjKFPuYvLQ2mdMi1UrgozM7I3+oznVLMvnpWpS0AyYqgA
 zld6vn8ol7YjnGJuL3mxW+brodhBlAZ+W36Xt/K2HxoBImzNI8z90T0nJQyRb9KK6MlS
 Cm7TUkOSoiAU4p1kf7e7+yNKCXNYZt6SOgfJGOIYHJGjDFoEiqIcFzG416EhPOsVP0vC
 b2Gdwu27hsgp4Jg9NgQBgPxg3c8vYerDLACLLDNgEUGxH5AkLqaKaMdtcbchyLXHjhlV
 I9kQ==
X-Gm-Message-State: APjAAAW2lUkV1wamy4F7uQWLLgXlF+zBesdqK/nkLQ0WFUmexgUUVdXe
 OL8jCY7ttniJKgq/y00sEsQrjfgRYNw=
X-Google-Smtp-Source: APXvYqzhTnpXb2ky/uVfMq4XWlM2c/fDZqBAvWMSWtNTEp21H1uGZEn/k3WHIMoNaguCaj6J22KHXQ==
X-Received: by 2002:a65:5b43:: with SMTP id y3mr10199984pgr.346.1561740818815; 
 Fri, 28 Jun 2019 09:53:38 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y5sm2100700pgv.12.2019.06.28.09.53.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 09:53:37 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v5 0/3] NVMe 1.4 Identify Namespace Support
Date: Fri, 28 Jun 2019 09:53:28 -0700
Message-Id: <20190628165331.163919-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095342_392732_47902459 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

This patch series adds support for several of the new parameters introduced
in the NVMe 1.4 Identify Namespace command. Please consider these patches
for kernel version 5.3.

Thanks,

Bart.

Changes compared to v4:
- Left out the empty file I/O backend function nvmet_file_set_limits().
- Left out the reference to NVMe 1.4 in a nvmet_bdev_set_limits() comment.
- Moved the nvmet_file_set_limits() function into the nvmet.h header file.
- In the initiator code, only use the NAWUPF / AWUPF value if NABO == 0.
- Fixed an endianness issue in the initiator code.

Changes compared to v3:
- In the file backend code, do not set any of the namespace atomic properties.

Changes compared to v2:
- In the initiator, use AWUPF instead NAWUPF if NAWUPF == 0.

Changes compared to v1:
- Added a patch for the NVMe target code that exports these parameters.
- Limited the physical block size to the value of AWUPF/NAWUPF as appropriate.

Bart Van Assche (3):
  nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
    nvme_id_ns
  nvmet: Export NVMe namespace attributes
  nvme: Set physical block size and optimal I/O size according to NVMe
    1.4

Bart Van Assche (3):
  nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
    nvme_id_ns
  nvmet: Export NVMe namespace attributes
  nvme: Set physical block size and optimal I/O size according to NVMe
    1.4

 drivers/nvme/host/core.c          | 34 +++++++++++++++++++++++++--
 drivers/nvme/host/nvme.h          |  1 +
 drivers/nvme/target/admin-cmd.c   |  3 +++
 drivers/nvme/target/io-cmd-bdev.c | 39 +++++++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  8 +++++++
 include/linux/nvme.h              | 12 +++++++---
 6 files changed, 92 insertions(+), 5 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
