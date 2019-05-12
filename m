Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A621AB0B
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 09:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JmKwsy6UPymkJQ9rqFwYT4IoVz6yC6TLnbiHekQwCA8=; b=Ocp
	4lYPfMI0TG3fOfEA0Sodo0c34uxA3IIpklq/+A8fsRHQQatI08oI0XOv2v30ScwcJHpIaYfIxQlX+
	JcIcP4f9p9YU0sS4mhgPxlJZ6HfR8DR+PgmfMSXew79p7qLk/JBnTbAiT6hD/xxYE2KLVYMNMy6gI
	kx7aX71l+Anl+vkHq/Q7DWRHYVfMTvLUfUqYYijAiPqQR84ZRvT/prAuZjrj88trZrr551EKWkt8I
	c89CtvOz0nmNQG0TLHOo6EvrTkVvDuKEy30qxMc32Fh7DgyI25WHwh/rbkE+LHrj3d+bQQlBm7rf6
	1ncamgVP9tEnNcpp3JUjE8aWneqvnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPj0K-0001G1-KW; Sun, 12 May 2019 07:34:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPj0F-0001Eq-03
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 07:34:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so5487192pfk.0
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Tu8Fp/uz7bbeEJee+ohTniXikyB8jQpgmo0/F9wxQwc=;
 b=YNLYvFTYhaxsJmvLOTdE3rBOjlFAOxqVXOVNH5vzzODcv1aKfd4SkTQxaX/ooQge54
 x9GfsHqLMEQEXKQi3yIJnDCZGP3oBXw3kYUieHowaTudqliTKtFcAebmlsl7RllDJQVM
 2GX2KRWnjDFGAt0sHDvkwCbXSNgnucVQG9Oz5sfK8SIdSxpqVJ9SD0LnFLDPFYpELjrm
 72hQVLTGYZFgQyhAou1eyPKS2nbv7KEJKj3kY6Ga0keh8aryI9izaKCoQk2r9jmCJq8Y
 OadxxA+PYkiiDeJ0JmckfhUZJ+liXiVM9/sgPtcLfXIpnGjlXCaetgLxVKWpc1ze+QAs
 SV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tu8Fp/uz7bbeEJee+ohTniXikyB8jQpgmo0/F9wxQwc=;
 b=h4/8oaDr+NUu8OAAxwIa5is/xO7OwQy/l/LdB8g60dqidnrbCARjQ6VoluC6q41saD
 u9CgpdM1e00KycfOyyMaxlSLQp0Z6lOtWysHxzd1uzR/Ti1FHjP5u2QdCnz07l9NJrFT
 RRdscw500cUnWL7uL5+/1sZvqcKcextdqmSl8JeRq3fvcphousQ4sKOyQz7Gmg+7VKoK
 NuQRpvypu8SSXE2SybN5XYY7yolzgJCdcmUrnStfsz32UCecjcWcRyIRVhtN3mSFrIUt
 QrUfEroMJ86YDIWaSeB/VWu3Imj//9swIbOClU7cd2XqPDUExow/ay/kepTmqV/fmjPa
 id5w==
X-Gm-Message-State: APjAAAWpS54BMwKWwENjYq3A+K0IBJV94mwaO7y9fQ9VUvCKWnV+suBj
 8TSJEbg7Y3GRob5qcasKJtg=
X-Google-Smtp-Source: APXvYqxv7TotCZPxzbi9TfWTIu4D0s3TjKk9zD0KzFT5XZp5TC85KF/D7Rjc4nKxwkLReEaD8QRBhw==
X-Received: by 2002:a65:628b:: with SMTP id f11mr23776008pgv.95.1557646474151; 
 Sun, 12 May 2019 00:34:34 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e123sm5492242pgc.29.2019.05.12.00.34.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 00:34:33 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [PATCH V3 0/5] nvme-trace: Add support for fabrics command
Date: Sun, 12 May 2019 16:34:08 +0900
Message-Id: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_003435_035456_27328E9A 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

Here's a third patchset to support fabrics command tracing.  The first
patch updated host/trace module to a outside of it to provide common
interfaces for host and target both.  The second one adds support for
tracing fabrics command from host-side.  The third is a trivial clean-up
for providing a helper function to figure out given command structure is
for fabrics or not.

The fourth and fifth are the major change points of this patchset.  4th
patch adds request tracing from the target-side.  5th updated, of course,
completion of given request.

Please review.
Thanks,

Changes to V2:
  - Provide a common code for both host and target. (Chaitanya)
  - Add support for tracing requests in target-side (Chaitanya)
  - Make it simple in trace.h without branch out from nvme core module
    (Christoph)

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitanya)

Minwoo Im (5):
  nvme: Make trace common for host and target both
  nvme-trace: Support tracing fabrics commands from host-side
  nvme: Introduce nvme_is_fabrics to check fabrics cmd
  nvme-trace: Add tracing for req_init in trarget
  nvme-trace: Add tracing for req_comp in target

 MAINTAINERS                       |   2 +
 drivers/nvme/Makefile             |   3 +
 drivers/nvme/host/Makefile        |   1 -
 drivers/nvme/host/core.c          |   7 +-
 drivers/nvme/host/fabrics.c       |   2 +-
 drivers/nvme/host/pci.c           |   2 +-
 drivers/nvme/target/core.c        |   8 +-
 drivers/nvme/target/fabrics-cmd.c |   2 +-
 drivers/nvme/target/fc.c          |   2 +-
 drivers/nvme/target/nvmet.h       |   9 ++
 drivers/nvme/{host => }/trace.c   |  75 ++++++++++++++++
 drivers/nvme/{host => }/trace.h   | 144 ++++++++++++++++++++++++------
 include/linux/nvme.h              |   7 +-
 13 files changed, 227 insertions(+), 37 deletions(-)
 rename drivers/nvme/{host => }/trace.c (65%)
 rename drivers/nvme/{host => }/trace.h (59%)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
