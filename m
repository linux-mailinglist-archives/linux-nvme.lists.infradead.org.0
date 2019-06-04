Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CD234C67
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dT3w5fzfNKv14tkd9tUDFcWmGZevLWICMMgnoro2afg=; b=qWgjbJbiOzCg6r
	C1T7sfD8yJ1bmD1/KOPawa4RzkEKk9jVd8KH2GYB8cMOcndom8pWRMwabda+mLtT2hph4Uw++nCyg
	7Q9xdbsVcaEGXesLR0dU/d9tsZJK/zOglQx/k7y5ZAKd8f13j0kVr9lUUDIBafXlt26ryoJ6h8pUg
	rHsF8lHNIXhDDcsOflowzAOwcPnLYE3/iIGT0Vjf7eZyUW0+nGsuLgaJooakoB2VAWSZX3BB8Wlpi
	jJgqqkBp/2Tjz/OQvQ4do96ojhVEkgvHJty9sXygHdCJ2F20iZFLEM5kTXYpykW9Iyxx44vwX7GLn
	Ke6saa4chbyz4t2lF0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBYc-00036W-Sw; Tue, 04 Jun 2019 15:41:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBYQ-0002yp-3o
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:40:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so12939760pff.4
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR5UHLZ1oTCfu4fA8mBrXPvPDaLwqXRJCyck9bkxzX0=;
 b=DDwVDkbxqRz2D6yMo3kU9KqLsWF5VHQSsSWFK+C7ZFiVB1/ognEfdokJdsXIVd4KtS
 96/srlGEj7VQZnGWQGWMijnYT7VEwLZniyFwsEyqtuaeY9GJBUkQpSjvKjYnsZ+1p2X7
 Jy71Lo8LjCEwEjgR0M/3i+A1+pj9sDIb847jtfCJZSUZLcIZYegnRTEq5xzSarUblcCg
 dZHdEFiPJVCVHw2GLgJI+vwBon2oO342ty5uvxmBG/1FHOqutuNCqB+vFJLISgl8OIoJ
 /KL/Hcx+JHBOmTBMdjSAoQ9CPA2z7vrT2pz7NZKP7ZtA+ufeCx2axzgrI8IggHpMXR04
 Nsjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR5UHLZ1oTCfu4fA8mBrXPvPDaLwqXRJCyck9bkxzX0=;
 b=rhVyLQ4EdUcgGqL2pUwzGQIFKUK2nRiNzXa9PXYzRefy9j8HZRNz5je1Q38dM822bg
 XY6KMTHtsRiJSrFRT3yhiVJZtmUSipwFM0j8vfcIp1VwUlSibSy+kRTboRIvrsMqeBB6
 d0R45oIwRRl6rCGPEADFZLwrWdDxziDnIYiq52VkKTYB7cZsUbWrzrjsHvu5kwZz+JW4
 ENf4txoSW1iaOXaCLPZkQtx53Cfq+TbmEStZzVgBcjglYF2Jv5srNzgTDrTzsSghcxoR
 yLD9AI4Es7O+tnUZBETxY4jlGaEAViNQAVTX3R1W9kVpRkeVFQu6ESdCzwU0CcVIJoBs
 6CLA==
X-Gm-Message-State: APjAAAVF54Zw9CkFg8RzB3eYq/hefQneqkGUHZCgq4ycTqOU2S3L2nmG
 /OSB5UwO3tjsQcKAq3Icq0teiMT7CfE=
X-Google-Smtp-Source: APXvYqzNjADeXK8r9P5btUf+kf2AM7zfoygfvAJCA3eWcr6U9Uhfgr3D8SBSTTRJFuxLXgf4+JmYjA==
X-Received: by 2002:a63:fc5b:: with SMTP id r27mr36821492pgk.219.1559662848483; 
 Tue, 04 Jun 2019 08:40:48 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r9sm14549233pgv.24.2019.06.04.08.40.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 08:40:47 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V6 0/6] nvme-cli: Introduce nvme-status mapping with errno
Date: Wed,  5 Jun 2019 00:40:28 +0900
Message-Id: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_084050_156927_E628F8E4 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

The first three patches have been added in this series to make sure
the previous ununiformed return type and positions in the subcommands.
Some commands used to return the negative error values in case of
internal errors, but some didn't.  Also returning in the middle of the
subcommands are not proper for the errno-mapping which is introduced
here.  The first three patches are going to fix them first.

This patchset introduces nvme-status module to manage mapping
relationships between nvme error status and errno.  It cannot be
directly mapped in 1:1, but we can figure out what kind of errors
happended by the return value of nvme-cli.

NVMe status fields are 16bits to indicate, but UNIX return value from
main() will be parsed in 8bits so that we need to do something about
return value to indicate nvme error status.

This patch series has been tested with:
  - nvme pcie device controller/namespaces
  - nvme loop target with nvme-fabrics

The branch on github can be found at:
  https://github.com/minwooim/nvme-cli.git for-1.9/return-negative-errno-v6

Please review.
Thanks,

Changes to previous V5:
  - The first patch has been updated being without an whitespace in
    front of new label("ret") in a function.  The other lables added
    followed the existing style in where it belongs to.
    The default style would be great to follow the kernel style which
    is non-space label, as suggested by Chaitanya.
  - The second patch has been updated to have "out" named label just
    like the others in that file(fabrics).
  - No functional changed in this version 6.  Only style change has been
    applied.

Changes to previous V4:
  - Add the first three patches before introducing errno mapping module.

Changes to previous V3:
  - Fix to return 0 when given error is 0 which means success.
    (Chaitanya)

Changes to previous V2:
  - do not overwrite the err local variable, instead returning the
    converted errno mapped directly.
  - return ECOMM in case of linux internal err which indicates the
    negative values from in the middle of the subcommand.

Changes to previous V1:
  - make switch-case inline in nvme-status (Chaitanya)


Minwoo Im (6):
  nvme: Do not return in the middle of the subcommand
  fabrics: Do not return in the middle of the subcommand
  nvme: Return negative error value for internal errors
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  46 ++--
 linux/nvme.h  |   6 +
 nvme-status.c | 155 +++++++++++
 nvme-status.h |  14 +
 nvme.c        | 701 ++++++++++++++++++++++++++++++--------------------
 6 files changed, 622 insertions(+), 303 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
