Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804F91FE03
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nVbSk/QKc6WUow28Kc0EOPW2lxDaeKUOE8rs0zgv1C0=; b=DuSB/zhuIfIYLT6B/w4S/LTW3/
	czJDtRoCUjY5Z11sU2MazrHsN9AdQ8ukXc4eEq4CBSW22IAjKfQB26YoqRGvFgjAY4jSt6P/zkeYv
	4DxnBHU6kJ5mHLYmaFforXRDX913/PYSyhfmfdvdMBk8Lpzcstc82KORUABz6xttJW2YFGTXa2eSY
	Vjn1W+ylJ1fVBPnBOUtf1iXdxC29QXlNyH7YdyJ4dw49NzhFMOSdPKC5C0Z7pYcFP1uShDh5NQ4vw
	5XiT9R7nOOXgcnw3DmCSAzU8C9xnWvcytNO8iM44J6JL1XhIsqIoE8mYyasEzfSk2m079FMox8i7F
	gDGAV/EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6xu-0005Yz-5I; Thu, 16 May 2019 03:21:54 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xm-0005Ve-4F
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976906; x=1589512906;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=ugQKqCyF/nScIlsLpXxRR1MagafBnRkII8bGMvYDC5M=;
 b=jVIGSX19fYnABYG5lvtipAHPQ/oF5UEHeJXLE8epWjdaHkPvcDFen6w4
 Fd9VBGqAQTzlMCZ7ueF5V8dSY1wxrwKL2ldh2oMJWxy7ECIjoFObs0w+H
 gnyaaFpAKeQXEZJKaNEhx3BK/arCPFgkzj4U+l++if/Fty30VcIDOYOXu
 rxsXqQzYZzgZxirPjiA9fV5cztPzzdyvPr/jOMg5WE8cXEvOEjWHW/jPH
 w8bcf9WZxtvNryurxrS1PGwCuOXq+I9gdfCrUzP88CQkHcyVGJwotqLja
 VG3yPIvIJSQtdIjJaN+YJlKAULH5NX6pTbNvloWMWWg4ung+9HR41zwWR w==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="109618141"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:43 +0800
IronPort-SDR: naEpajVhzb4ZJGQ+MGwLb+GK9GvYFf3Z7OyVyGIjbcT2RKfvvTUVZoInbXt30a0H3TvuZUG3Q9
 lrejJE5qwW0vrgUilNH1+CVAUF7zMOeXv3Te1Pfy8L4V4S1ZrpY2Cb6OTZ7Gi9ppwoL9a0saMT
 D1ouF3W6U24H7xkWC0ldwDPPn7kCe/2fL0VVay+wIHKnrDKS5+mzkHKva7zUjqRij/ixgLMEP5
 hqq3VBu9o0uvlVEuvjZkAJpWM/zMoQD5ORi09tKdi+HDdhB93k874ZFb4/HaI20bOsbCqf9/rX
 JlE=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 15 May 2019 19:57:17 -0700
IronPort-SDR: oUMWIsNJ/tFo32eEuEBC7CuKPPzLaoGU0CP/N5okrZvWoKmfk0D3YsIaZ6HT7CY96k1MTNjYKi
 w3kDYKPGxPqXkWPu8cOH2CIs63VcQ+oUzYfPA0vYruJ/GzXY+ptLd8NXgpXzbDlny552zrJ7zE
 UcRoxfU1O4H+JVPhnagmUQ81v7E2FqDIDXJ0DLrhVtstxGb6RkNibz/cJP5u7EH7tpE9r9kgO1
 Kl6Sd+7UEOpCKR9bzvX+zL5t6I5N/L3h0QjYfIEao0C5/VBQsUSSb5xxSNADlI1p9VED0yX/gc
 Hmg=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:41 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 4/4] nvmet: set iopriority for each kiocb for file
Date: Wed, 15 May 2019 20:21:09 -0700
Message-Id: <20190516032109.13048-6-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202146_406948_6F4634F5 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jthumshirn@suse.de, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch sets up the iopriority value before we call the respective
iter function.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/io-cmd-file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index 05453f5d1448..e05fdc9ae025 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -110,6 +110,7 @@ static ssize_t nvmet_file_submit_bvec(struct nvmet_req *req, loff_t pos,
 	iocb->ki_pos = pos;
 	iocb->ki_filp = req->ns->file;
 	iocb->ki_flags = ki_flags | iocb_flags(req->ns->file);
+	iocb->ki_ioprio = req->port->ioprio;
 
 	return call_iter(iocb, &iter);
 }
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
