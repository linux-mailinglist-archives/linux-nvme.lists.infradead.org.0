Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB68D1FE04
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Uz2aOSJGcQVDHoAYj4qx7qb2wXbZzStBiDcKgN8+L+Q=; b=dU1yMjfsURar9VDCclQa+1yYTV
	KzBSBImiN3oJF6LahuhT0A17qrUR7NYPHLUcI2MJFFC+PoCi56hDJCHEfnzhL5I8+eX97ll+6CtNB
	vm88nlYfFUVMzu7qLI6odccYzL+1TcjeKOqbAwlDTai3vvn4d36LFUSt5HgUYNFSdx/xH+ZrJ5BGJ
	P4Hod+RfkwmRlquDmrqChJOnHvii1OfmSy32MMtnff9YqZWst6EF550067BEpYzOJ3ANupFlqAvr1
	JjsOZMNoiduUejuHtmdTOAinYxzg8ld9H/+QUFwhm1zh2A0fWq0Awyj9eeSX8HRNCmsJahSg4FknN
	tjSdm7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6y1-0005dX-Nu; Thu, 16 May 2019 03:22:01 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xm-0005Wz-Qr
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976906; x=1589512906;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=pZlZ5SOHrLItXEK0mZ1UX+dB+cCVanYSXqo7zToXUe4=;
 b=Cm06J4i9izOH4Md7xVY0JkSfjHJeNauo8Fp/p000PmRsWOLR58R+kZEP
 p3g3G0fKYzOQdQaz8hqesPV3mS/qFDoLJtEoEC4zQItfNk+a/L9vq5lwY
 I1r17i5LWt/EeMGCs4pctTkfvnlIBu0wPOjUbxpenkpGPw8B3Uff2Gcef
 bVCiHxrEnyA8+GXal9U5irpbpH2D3W54BCPZVWiV/DY0tPUC++cE3h4CP
 53adl6rSyMhUFLCxZx9LFnQ9miT9otB0pJGmGVQBGQ/U4LCav+PwjNdod
 79D8+UGhGISeYVTbmFr46c6jqURgoWzyWJL+IMKMRssOJPyNak6OvEJjD A==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="214490454"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:27 +0800
IronPort-SDR: ZoUer1ucT1PKsVKgY4kJLKMrJskmtVc0glKGSz3lQw5LQq0lPLcx/fg7erPb/HSwkNozYSoFA9
 nL6EmQ/xyFEvzLg3fn7K6IE4ijGIOlwM0cUKKQVQ+CuyBcmmCC4vBWPGo1mIogUTiuR6uArYP1
 /2/DKtJGgaF65g4uT1Dxrp27BqRksAZvO14MSKKrsEcGKEoTWoC1TRJkWDZE9KvSl6p4W2DhbV
 sP/wt9SzDvwzGB8fMkHo+sWil11+EbXXnNXDkzzBz1vZU4DHDLE8gCepLcPFaFMwaQHIcQJg2j
 PMUEfUyTYbLBOY99BumgP4uc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 19:59:22 -0700
IronPort-SDR: 2tRYBwOK+hNbMKJssr9h23eG9aSiNFqRYWI6IvKiVMPB+p6CNG6DfRxQxWCu02sMPHc1a4ne2D
 uNDEICyGLAxAJ2T1fM3gGevz6ZnUJRL8EsAYfaH4R2ttsyDCwYimUKD14ghoCbi5UWAKtXGzL3
 5rKHOJBrVo+uwL62KkQGifWBn2XEOT9DRIviP06Es9vyFwaoU0lSqeyZ3Twjxjb9vmySIR2XAk
 igRfPN3e9Y0hFAPd/Cnw+SN68is6XCv1Y0Wi6k/dU9ZS5Uv8LVbe0+Sa5z2/SFLoNCB6kHsSDT
 CAI=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:28 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: get rid of extra line in the tcp code
Date: Wed, 15 May 2019 20:21:06 -0700
Message-Id: <20190516032109.13048-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202146_983534_B9787759 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

This is a code cleanup patch, it doesn't change any functionality,
It removes the extra line at the end of the function.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/tcp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 69b83fa0c76c..f019af264081 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -557,7 +557,6 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
 	}
 
 	return 1;
-
 }
 
 static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
