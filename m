Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786011733FF
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 10:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cgavk/Hxo38Fx0WNRojTK6o2wIi5kAE341RcUD+SVy4=; b=brD40pHd3JKTL8
	Cu6sew62L09AZyBdpRwrIEk0xxRIbI3kak4zW2PpA5CjwJz8TNnT3zmSKWc0/ONyBZSaWmmMp4h3P
	hakBycwZSIp64TuFgQzzQ09zOUaAMfJybDwvBYiQtzrRUK7mSsg8H4cdZ1YjezaJscMc6hUqyIRzB
	KpfLFvOeyyGnswMdPN5rISLY30TpNbqyyQqFsF2wYXz7DBicUE7+xZBD9vazOMjD9zmUM72ysjCQN
	6cNRrLAq/oZAmw66Z74Je79UVUQzkUlc2dskctKMisKMUQFjCh+PPVA0Vb0GqI3rR4ee9FQnHngQB
	0gXfjbmRN5V62h+DyL0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bwn-00058c-C0; Fri, 28 Feb 2020 09:28:41 +0000
Received: from mo-csw1516.securemx.jp ([210.130.202.155]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bwj-00057Z-0Q
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 09:28:38 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1516) id 01S9SHrZ022430;
 Fri, 28 Feb 2020 18:28:17 +0900
X-Iguazu-Qid: 34tKTVUXkYDeRCJdTQ
X-Iguazu-QSIG: v=2; s=0; t=1582882096; q=34tKTVUXkYDeRCJdTQ;
 m=hDNM8iYkbBz9TmtlPdDqOqFMqiqMO7IKzPQHr8IwsrA=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1512) id 01S9SF7T019538;
 Fri, 28 Feb 2020 18:28:15 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 01S9SFko025756;
 Fri, 28 Feb 2020 18:28:15 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 01S9SEvf018570;
 Fri, 28 Feb 2020 18:28:15 +0900
From: <masahiro31.yamada@kioxia.com>
To: <kbusch@kernel.org>, <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>,
 <linux-nvme@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] nvme: fix NVME_IOCTL_SUBMIT_IO for compat_ioctl
Thread-Topic: [PATCH] nvme: fix NVME_IOCTL_SUBMIT_IO for compat_ioctl
Thread-Index: AdXuGMxvHgc8BpX4QzmU2g6f3T18FA==
Date: Fri, 28 Feb 2020 09:28:13 +0000
X-TSB-HOP: ON
Message-ID: <2caa4c913579464bbfdf06b36001ffc9@TGXML281.toshiba.local>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.167.6.136]
msscp.transfermailtomossagent: 103
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012837_267136_007BC101 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.155 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.130.202.155 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Masahiro Yamada <masahiro31.yamada@kioxia.com>

Currently 32 bit application gets ENOTTY when it calls
compat_ioctl with NVME_IOCTL_SUBMIT_IO in 64 bit kernel.

The cause is that the results of sizeof(struct nvme_user_io),
which is used to define NVME_IOCTL_SUBMIT_IO,
are not same between 32 bit compiler and 64 bit compiler.

* 32 bit: the result of sizeof nvme_user_io is 44.
* 64 bit: the result of sizeof nvme_user_io is 48.

64 bit compiler seems to add 32 bit padding for multiple of 8 bytes.

This patch adds 32 bit padding to struct nvme_user_io
for 32 bit compiler to define same NVME_IOCTL_SUBMIT_IO as 64 bit.

nvme-cli also needs to be fixed if this patch is accepted.

Signed-off-by: Masahiro Yamada <masahiro31.yamada@kioxia.com>
---
 include/uapi/linux/nvme_ioctl.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/nvme_ioctl.h b/include/uapi/linux/nvme_ioctl.h
index d99b5a772698..a50ea474c21a 100644
--- a/include/uapi/linux/nvme_ioctl.h
+++ b/include/uapi/linux/nvme_ioctl.h
@@ -14,7 +14,7 @@ struct nvme_user_io {
 	__u8	flags;
 	__u16	control;
 	__u16	nblocks;
-	__u16	rsvd;
+	__u16	rsvd1;
 	__u64	metadata;
 	__u64	addr;
 	__u64	slba;
@@ -22,6 +22,7 @@ struct nvme_user_io {
 	__u32	reftag;
 	__u16	apptag;
 	__u16	appmask;
+	__u32	rsvd2;
 };
 
 struct nvme_passthru_cmd {
-- 
2.20.1




_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
