Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B741407C
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 17:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xnTg0e85MUWsCryGf88RsA3f7am8XRZwNW+GqK0+lUk=; b=f0nG/yDfXfzXOsQf1oXErxAlxA
	LK0lCdqOv+pxCHuCiTsYYItVFOyI1SSoQ2HC0FA6byejbpJ0I3EqKf4svelY47ytH5Uw4BZbIwD6G
	ZRkLc0oTBTM0VgkjaGmc4DMiASLiDQXoOmc+sNL7Gsp+UZR9IDRc0bF9JhxuGVYwyDpasAqJRME/F
	Tv9l0gxQmtBxnrqupY2RS7hgpnN9K8ZAIZXV/tPZrAEy/Wd691vF+vifNb2BDyxdwtDGR2LAM0GrP
	63GJEpaMUygQHxbQ+kGQrKcg5Hhb67DYFQXrDPMlZYXjCUT4WYh3yc8ht6tCHUun6MGl08MpbeUO2
	eRv5BoDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIjA-0005T0-TY; Sun, 05 May 2019 15:06:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIix-0005L3-HJ
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 15:06:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id j26so5162046pgl.5
 for <linux-nvme@lists.infradead.org>; Sun, 05 May 2019 08:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=39jUkrNuNbxi6cazD8jS8k1hzLeABn+VYqc7t21S97k=;
 b=IIIVzcXJdpRK0xCzUSqATw6FnCwMYVud/tDi/d9V7TBujUZDWMMX3KZU4Ql0d8wlLJ
 vYc6546K8Rw6YD55GPU/lrX7iH/vfzwmAB7mzHiwf5opj2UbpC3nkEDIA2R+wc7/NVir
 DxQ72EnH5wMqGwWGJXYYNV24bnHMdagJEATCLBgF5D4uDJBdaqnj1isHoC6eserWTdGf
 AQkzPAcVqZAlCfyASb2x87ldjXokyqQMsUiCj5ZIjBjES8DQxqz/QUzk97x5LpPF6UPj
 3+qS3/rFO3hE7RXtHo+6rjA9vVg8SvAJnEAooygWpebcobkiIP/UxxXE7xo/CLunVviU
 eRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=39jUkrNuNbxi6cazD8jS8k1hzLeABn+VYqc7t21S97k=;
 b=t5OpCFSGMq8mbZj/m5TyvTHZLElWQusb/Y8eCGwv5BMb32QbaVKEVh6vmrhX/PjXSu
 CDG0gHvRDKWdldWV86w/u70VteD3FN6Ou66pJB31i7osWf+ml7C9NFXYcjur0Ax5L07T
 CcfwfsVDjCGvPoy2og4mKDlddlyIvnjO2L5K1qb+f9fzX48NoJ2theHtm2Z/MILxp2x7
 z3lExCwfKx/VVZYsccso2faEFU8fU1Rxyk8MKsdWE6RmLejDfTN42RzXpPJ/y1S/HgsP
 1LilDa+zjJ5fZ1TiO1C3LxzgXxNnHLlL2ZBzrd1L6RJaqX/m7WIozrDBjM2lRm+1Ajjc
 U1/g==
X-Gm-Message-State: APjAAAVNgIhSgrT6qopgezhc/LHqkgcDvgwssVTrUJuEQx/apNV5JFBH
 LrE/5bP0pedxeuCeGtBXew0=
X-Google-Smtp-Source: APXvYqwT2zSzkRKBKbEDj4NNDi8pLecAW6KVBf0H1O4F0pYgUL0OG0537Dsr1vL6ZUl7t2Kj0dx+3w==
X-Received: by 2002:a63:1d4f:: with SMTP id d15mr24659747pgm.347.1557068802789; 
 Sun, 05 May 2019 08:06:42 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e1sm10152381pfn.187.2019.05.05.08.06.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 08:06:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Omar Sandoval <osandov@osandov.com>
Subject: [PATCH 3/3] nvme: 017: fix nvmet pass data with loop
Date: Mon,  6 May 2019 00:06:11 +0900
Message-Id: <20190505150611.15776-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_080643_717027_303299CF 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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

The following commit has affected the result of genctr and treq field
printed:

genctr would increment two times per a subsystem due to
  Commit b662a078 ("nvmet: enable Discovery Controller AENs")

treq field would be printed out to support TP 8005:
  nvmet driver:
    Commit 9b95d2fb ("nvmet: expose support for fabrics SQ flow control
                      disable in treq")
  nvme-cli:
    Commit 2cf370c3 ("fabrics: support fabrics sq flow control disable")

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 tests/nvme/017.out | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/nvme/017.out b/tests/nvme/017.out
index 4b0877a..d7685f6 100644
--- a/tests/nvme/017.out
+++ b/tests/nvme/017.out
@@ -1,11 +1,11 @@
 Running nvme/017
 
-Discovery Log Number of Records 1, Generation counter 1
+Discovery Log Number of Records 1, Generation counter 2
 =====Discovery Log Entry 0======
 trtype:  loop
 adrfam:  pci
 subtype: nvme subsystem
-treq:    not specified
+treq:    not specified, sq flow control disable supported
 portid:  X
 trsvcid: 
 subnqn:  blktests-subsystem-1
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
