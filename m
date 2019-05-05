Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3D614079
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 17:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7/oavzF8mAmX7hHsFQwHruxnL3d6vloGeXx6KO3lpK4=; b=AOm
	3QCvJuey+7LZBd9foYKPojmpxyI8dmXLpXJjZ9gHfH3cLbLWmqtnOX+ozZtHjUwE4GEwGk/gugjLD
	WQLS4ZirLKHTScx8We6k2g1ZCR/A0ZFS5bovb/dMmkr6ZFMfv0ARbSobHxijZOsgg68dPApOHwULT
	ZLcvvkUkfClAoq3Pm4kidZeZdnkGb1hslPty6fvO1jmYPseG/Gkm+1RxoG3xS4nXLyAIqng9irzm1
	Qlelugrw/9tmbUnkGptW4zDOC1Q9lwypJmjT4h2fni9EV96ixUB4bWRfs6m9hg5M8rBB1PnRotKSZ
	ZNCrAIh/yhd8SyYmbx/D7Rnj5TAfgzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIis-0005EZ-Lc; Sun, 05 May 2019 15:06:38 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIin-0005E0-Ni
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 15:06:35 +0000
Received: by mail-pg1-x52c.google.com with SMTP id z3so1450239pgp.8
 for <linux-nvme@lists.infradead.org>; Sun, 05 May 2019 08:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OQHmsLZg85Ox1XaWwtwcBlCGC9l529kXQWnEyWbchlo=;
 b=F43QrZVknc8Ewd2WJLDr6muQ/riLQPAV8BJS538cprdnnRBcU7xhoI9gxpJ5mlEpme
 DsdQOU01CzupHtoM+KgZqYm4qIZzgc3aNa/UQ4tPOINEEeyhzJt6tIA86ecsWjQoTYwY
 mUNkVGmUnlmiS74eNmwbmj99emLKOpmKMkezugVeUIxSB6fwzlVAPKFpAZC/OmjpHDoU
 KJ66folwBUBee0M1G4fVI69lmMtWHJu/bDcLBynmQYJR0GrTpJ0VUr7b1932EOJwQmpn
 fAfsoSzF2HzCWSr+tmZHiQnoh6Ph1Qihxj3fz6EOKSfgrDZLBxlACyg0mQjGLwdez8Xw
 lh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OQHmsLZg85Ox1XaWwtwcBlCGC9l529kXQWnEyWbchlo=;
 b=HSFvtbfEkdoluTJKUVR9+u/SY4rN1fI/QdAA5iRHu+NFDFA3lWKwd+Vb+HGKhgIO5q
 8rFo0Fpkd3BF2AKfj/Mk6/7Nz0Ny3NOOmhYbeb3sNMIRsLvDrhUf5pe2/HpEzrgpPdnR
 7WV3MpO1k251NBIRebvzuleNP/l0+qD08r6HzprMOGD5Rc5zzSmrEXBlzIUZ7KoJm5jg
 S60ErP13njnDG8MDFj4cb8gKjUbAT4iban0axc4r6D3I5uCpoWCoVzt7qI4bs/ZUApid
 yvjSaAnGi90891AXHxs/CcVrB9SmOxjocmSmeoMTV63xtXmyztp+wEz92Asyq+saS1M9
 S+ng==
X-Gm-Message-State: APjAAAW05hkyPTW6w1ggMSgvFmmiaSHklWNebPS9cKfxR/YjnVDJaGlz
 GFJsVbTgovFOQTLXO7rkxtU=
X-Google-Smtp-Source: APXvYqycwM1fu+pHfN/qrcKzZkVXcdlyEGEcqupfuPmNsEmmIC8XQ2+GtWTlM+nxjAnqyMsleYMJvA==
X-Received: by 2002:a63:171c:: with SMTP id x28mr25250347pgl.12.1557068790594; 
 Sun, 05 May 2019 08:06:30 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e1sm10152381pfn.187.2019.05.05.08.06.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 08:06:29 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Omar Sandoval <osandov@osandov.com>
Subject: [PATCH 0/3] blktests: nvme: Fix pass data of nvmet TCs
Date: Mon,  6 May 2019 00:06:08 +0900
Message-Id: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_080633_774256_5FDA1476 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-block@vger.kernel.org, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Omar,

This patchset fixes mismatch between expected pass data and real data
printed out for nvmet testcases.

It has been long time to have changes for nvmet and nvme-cli.  The
following commits can explain why the pass data has to be updated.

About genctr:
  Commit b662a078 ("nvmet: enable Discovery Controller AENs")

About treq field:
- nvmet:
  Commit 9b95d2fb ("nvmet: expose support for fabrics SQ flow control
                    disable in treq")
- nvme-cli:
  Commit 2cf370c3 ("fabrics: support fabrics sq flow control disable")

Please correct me if I'm wrong here. :)

Thanks,

*** BLURB HERE ***

Minwoo Im (3):
  nvme: 002: fix nvmet pass data with loop
  nvme: 016: fix nvmet pass data with loop
  nvme: 017: fix nvmet pass data with loop

 tests/nvme/002.out | 2002 ++++++++++++++++++++++++++--------------------------
 tests/nvme/016.out |    4 +-
 tests/nvme/017.out |    4 +-
 3 files changed, 1005 insertions(+), 1005 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
