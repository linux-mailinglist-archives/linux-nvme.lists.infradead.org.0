Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA46AC0DA7
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6lVvPpr07d0YwGuZC2EelM3/D7VcQRbbq7X19RQzwng=; b=ikM
	rf8s8hOrURpTv/Gc+1tauhKFHolbjAPbiQIopsTpG18dUU6LBKynLYKudPWO1JUygjfdq5wxYiYhe
	03+zAWGrwLXwnUj4OwxEo9SB/cCnXOOeEtz4FqKKpDcH/yCwUUmCjQCiF6AAU3H/NbrUtFOaogFYw
	joOU0yp8n/DDcVrR77LZbY3qTO+vTchlPhk4D60VyLkS+CmxTczriLn3ljF/MS9+pcNCkcGHAi5fE
	l89niwXLUcrYRv0WHnfiveKpy0aWUBw3BX1Efjek/UriYsHcWGmAq1hBDOAMwkKFgiYd6aIAT+Yal
	u8+mCFupIIJ7pQ/EyXP9Wh3Q5AVoABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDy9e-0000Ua-Dx; Fri, 27 Sep 2019 21:51:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDy9Z-0000Sq-1H
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:51:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so2267548pfn.11
 for <linux-nvme@lists.infradead.org>; Fri, 27 Sep 2019 14:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HXk3JyEATo0XKlmFbEv8C4C5nbg4hoR26SRzlSmWuaM=;
 b=SLs5ssQ/p8CazKy9JrsQFXkGt8dkcDpwHWdVFlDOk5vJq1kXSMdxE8RpemqyxDYCgu
 KkPQBbRsaEIEuHlgMww5SPF3p5PzIxUTJupfBUh8gS7ayhSgSX+RLmRhcWLzDyU9Y0kx
 iUogXKdONsO9IYdBJ58QdwCKmWogcNFLzbYFGF0AuDIgk5RJ3kMaFFgNz8rcGEZXy88t
 IWRwkxpc8WerpSq74iLTxw8eYlsR3032Vg1t5Wra26UrkFfMgmWGRiXom9fmIeksvbjZ
 2AeGvEZd6c9dtMtCk3JqFAqSTMH6wenGAIU6LJ9IgvVKuPkfm4ACxnvA4fDuN76VWsCV
 uAmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HXk3JyEATo0XKlmFbEv8C4C5nbg4hoR26SRzlSmWuaM=;
 b=CJpwkKBao5RDoboOVcei3j37CzqF9vn0skVwc2YynUNmLVBwZx1zNoRmF74AL7bpld
 QhOdj7xX3uBtwYKGzfP5T4krPYz4xpqtH/bxZbVqTBJ7NNW0ZebEqZlb/ZRcbfxr929A
 mxUioI4EAYvzTUnvL1wUKxIhEat1c8k90vA1VJ2X0SCtBfrY0jI8ofPBkc9mRMOmVQN+
 uIcmckQyHwOYLVSj7KkNiELc1i83sQbMt1gqLlRTzR/sgQlEVYZ4VrZMHSvbpnuwLc/4
 s6Wt8ChqlDLTtyB3K64y+4Ro2xntuptL2n2fPy9aTqGu7xiXp9svvqGORz/G9lsNrRmJ
 m8/Q==
X-Gm-Message-State: APjAAAU3HwR6JIjIPcn+fIx1wVzUMk1il6zpNKcL+V6Z2eNliBcn0KVt
 NQvLT/s0gNI3OcoECSuLmbt5a7Fy
X-Google-Smtp-Source: APXvYqxvzjHeXhWL/zPA6AhWL2ymtXa8y6Q+0ia7g1Ak30KmmBoaqZkWdObygFku4Q18LcIPmk/kgQ==
X-Received: by 2002:a63:7153:: with SMTP id b19mr11385577pgn.10.1569621112266; 
 Fri, 27 Sep 2019 14:51:52 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g5sm3430507pfh.133.2019.09.27.14.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 14:51:51 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme-fc: sync with FC-NVME-2 standard
Date: Fri, 27 Sep 2019 14:51:33 -0700
Message-Id: <20190927215136.3096-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_145153_080409_9C01DA51 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following 3 patches start the sync up with FC-NVME-2 rev 1.06.

The first patch updates the nvme-fc.h header to match the spec
The second patch updates the existing transport to match the
  header - where field names may have changed.
The last patch updates the CMD IU for a new "category" field that
  identifies the command set type for the io - needed by analyzer
  guys to decode the sqe.

Subsequent patches will be coming to add new behavioral changes.
Older implementations should continue to work fine, with new
behaviors enabling new features.

James Smart (3):
  nvme-fc: Sync nvme-fc header to FC-NVME-2
  nvme-fc and nvmet-fc: sync with FC-NVME-2 header changes
  nvme-fc: Set new cmd set indicator in nvme-fc cmnd iu

 drivers/nvme/host/fc.c   |  29 ++++----
 drivers/nvme/target/fc.c |  27 +++----
 include/linux/nvme-fc.h  | 182 +++++++++++++++++++++++++++++++++++------------
 3 files changed, 168 insertions(+), 70 deletions(-)

-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
