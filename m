Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A3058485
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 16:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K4XXKfZNAlZbL++bazy2HRzz1CnK2NvwRRUFPNk5/XE=; b=GaP4DL+VH4qXMB
	YkwLnXpLJ4VMD+ZUIwAafiWN2VRy+lU5ow7eNGVwR+HKDAVSgFZBByTUh6+eN1ynOV9afP0gaDpjD
	vMFmmtVOOrs3e+I52yDZWwzc3GBwGPTnmK9q4OswUNbFMHSgBKHRnpFu9HTjSHQl1kIABjaAPy3Yo
	jVnnTVqEchm0btU0RwR4nSZtRPwoZ905TEpH18+DiiVuoOh/hWJEGzTf+Dddy/JI9T+G9eErdXGl/
	Eq4Ll9IWMlN8ET05seEcv5CGQCZYh6GIN3ylAVZM+1A7W6+/mJrHcRVF6eWG5oz99p1ZpqIQk0ug2
	nypF8vnh1xfyjotxLXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVS4-0004Av-IS; Thu, 27 Jun 2019 14:32:40 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVRn-00049W-QZ
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 14:32:25 +0000
Received: by mail-pl1-f195.google.com with SMTP id i2so1415825plt.1
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 07:32:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gsFYoXiqVlQlvMVDZ1xxF+Vpz++SIMbXMtdLqgX+0ZE=;
 b=mVbUWGuVG6CdkngzTvb8Dngw47L91z1mw59IZqoHsL0PCS8IypJeaoJsU7+7mpbhUm
 f+D+ZQqUnBjMX/KKvclyyZN+y+l+ASQycXDYLE8lXXOmngHWXfDH3BTYmgNgqv6HBra6
 ge0FVWI2BEbBHr+MH41D6uv8XPJjErSd5yl3eVq8ivIcCvGiaj9mQZ3ZpelnL7NDZUEh
 Mxfwbn7dO4siwXDLAP/+RKCgvqVAZyYJ2pT+u3J9BXvq+1Zj/jjjo1/ulvJJvgoVtA1j
 LW3vdEIt98YOiLR/NQfjEtwOPAt2lBtFKcM4aVob/e/+AkLtiJv0DMS/SOXoF3bm4ZIS
 iHVQ==
X-Gm-Message-State: APjAAAUqZPr297tLPHtB3l9xj8mcxHpO6RxcNzXxT0RNnsh7pMo5U88s
 bXbAa5q+rXJ3Y8hWEDs7EsvdJpPA
X-Google-Smtp-Source: APXvYqwuOA9F9Ay2Bn8SfFJHfW7oP8K2KxGxrS/w4TSeRXY1gIngBQGW8dVNkc9vATebmCMcbdX9Ew==
X-Received: by 2002:a17:902:ff11:: with SMTP id
 f17mr5154819plj.121.1561645942362; 
 Thu, 27 Jun 2019 07:32:22 -0700 (PDT)
Received: from asus.site ([2601:647:4000:5dd1:f10e:6218:72d9:c2d6])
 by smtp.gmail.com with ESMTPSA id y193sm2812037pgd.41.2019.06.27.07.32.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 07:32:21 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v4 0/3] NVMe 1.4 Identify Namespace Support
Date: Thu, 27 Jun 2019 07:32:12 -0700
Message-Id: <20190627143215.27443-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_073223_864594_90FB2A68 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Bart Van Assche <bvanassche@acm.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
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

 drivers/nvme/host/core.c          | 30 +++++++++++++++++++--
 drivers/nvme/host/nvme.h          |  1 +
 drivers/nvme/target/admin-cmd.c   |  5 ++++
 drivers/nvme/target/io-cmd-bdev.c | 45 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-file.c | 12 +++++++++
 drivers/nvme/target/nvmet.h       |  2 ++
 include/linux/nvme.h              | 12 ++++++---
 7 files changed, 102 insertions(+), 5 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
