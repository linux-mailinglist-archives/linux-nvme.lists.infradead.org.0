Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2A02281C
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 19:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+tRNCv1qKU/R6K0LSstlBIsNEgzwwe0Dj+HfKZsG4nY=; b=XQ/
	osuJfVoPqM1G0NpiqHnO77vYbLpHhdMoUY354BGrhNRS5pEcdY/iUgfRtT2DbsqHZusmTpNudOLAw
	uxkptqFT6CtcxoJ9g5jRIkKvahDmRmiK/fbR+GKkU4sVP0p6JPs4AbuX+JIzibOlW5i5f0IUprdbo
	lHsrRmaUON4RQLpodpaunS+WAd+edcU7/tTTr5RrXGhm3mbp422rYAs45PmPw82Ia7HTXqq5ELn5U
	9HDUuUSfwAbDRl9xrJ4RvocBVeeGZ1hRN9nSMR80oDkkS+tySx1GRFuIbhnOmOPFZsXYE20vuVILf
	pyPYDXCkj824y5uiMx4O0UaLq1jNWxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQ3U-0005um-O9; Sun, 19 May 2019 17:57:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQ3P-0005uN-Gk
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 17:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558288620; x=1589824620;
 h=from:to:cc:subject:date:message-id;
 bh=/OSR+FTDUbrSXi2fn6kukkpy+VZIzbq+IGi5XoWiJgM=;
 b=Bg7P2BICvYR8+lrueX1+3wuBDZzfVUVoBXyeClnqIWmqD8y/1Lcoa+du
 pJDCsSHtbqKjgBJKb+bG9r1PoAECxnrsrUsFpgLXkbGO1M+OMquPfEgOp
 xBG937CSAGE700eGGEQtjHuuGLLQUxWXyZiUiXXAv7Sch+QAKeNCI+nJV
 /Cu0jfjAw4qldOWR8v2BYck8WuOpqstmRRegdMOIydMfpfBEcHq2nymA2
 t7GNiNv76oHcq795bcOD6nPtn/et0Hpx5htvm6MSbIvRflD8MwvpL3YZp
 Tys35u6qKMlWhT+6syVUFsA3yaKz+b23eNPpuiDOisZdCNMmWhmSxBn2d g==;
X-IronPort-AV: E=Sophos;i="5.60,488,1549900800"; d="scan'208";a="110304027"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 01:56:57 +0800
IronPort-SDR: bFw2Lb4TJcOZ4n04qYyxOQkjDx98SonLkejyYnYlkjXqjlFJm1udNovbE+i7TaJosNsBXctQw7
 bMuDhA7Ah5CDs5i7XACzds0qKevKI/lkrStXH2FR6Q3Zsc7j+1xFPo6MC3mWzPF0g672A0bY5O
 x5hPYCtv3QyGybBMdWVc6/gWaly8mAPu8qvvBqI/zcj+x95wMrQhVIelvkWqxtrNPt/oOPVl+M
 HlwBrLOoknkhufVSvC82z7denLmE2otjzkA2azS8a3hVaXVl0ZPi8ypbHMdg3Y6bOFFiwH7xTn
 Anpx0L735psW1U9oWCjUnaa2
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 19 May 2019 10:34:45 -0700
IronPort-SDR: XjbnqbZ0r67py6bcwbdG70N3QkxZcotZ2UnyUgMXRBpoKsH1S7o37fLHSBq9QaLSayWlrOhu5N
 Xwa7gBDZpIode/T6hyqO3xeRAAhF32dYl3C+rWRNODLuzN8mS+Ei8a01FT64FIyhvUarfNNsnb
 8A0no17ioNNvZCkEvf+bn2oY5lyzmmtULWBXgu0hOydW1xwLjuC7xyo0P/FwLTulybSduOCPdR
 pgVOhFVRNR2+kV8+RA61UbeLRiMsXJvdXos2dLfdZK5Ry3t+Edj2lHvx47+SETrRD/G4VZO3gF
 eao=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 19 May 2019 10:56:57 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: close fd before return
Date: Sun, 19 May 2019 10:56:42 -0700
Message-Id: <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_105659_608397_DEE6F7E8 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of returning on the erro use existing close_fd label before
we return in create_ns() and format().

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/nvme.c b/nvme.c
index e0f7552..d6e5b21 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1216,7 +1216,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
 			}
-			return err;
+			goto close_fd;
 		}
 		for (i = 0; i < 16; ++i) {
 			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0) {
@@ -1245,6 +1245,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 	else
 		perror("create namespace");
 
+ close_fd:
 	close(fd);
 
 	return err;
@@ -3198,7 +3199,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
 			}
-			return err;
+			goto close_fd;
 		}
 		prev_lbaf = ns.flbas & 0xf;
 
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
