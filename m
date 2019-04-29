Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E9CDABC
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 05:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kdlhPYinhfRsA5slgnQa/rfhlOz+T6u1zW0KjFOoNrk=; b=Qn7Nmc8P1T7j9OLMrzOLQL8fst
	Gd3oZ1T8JLUHPOC6LmfqZ4ejadFaI8wN14kq3Pax+XkISo/5Py/NfNFTAgXPZauEfeVryezfBV9Sl
	BPdJ/HGFA/y6Jp5YkzbIm6JHLxLB24I45JMcrdmyHRaFWSwwl0EVCoXpzXUIyFqydu2BQ6diMdbrI
	9YIziZ/rsf16AeOX39JKLnr7zNPL3ZaNWc4QbjsmnurcFcmAYAlceoCZQpEsGMAMnsWKZtbNAHrHW
	jUPjUXzR7vxGvF4HAHSU9vHyGIKf2iLd1oqCRlaMAxQduT5d5ghZHPsOYlwVYeJyhz2hkLBblnUd2
	EisO3zbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwv3-0003Kw-4U; Mon, 29 Apr 2019 03:25:29 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwuS-0002kP-05
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 03:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556508292; x=1588044292;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=1jORdp2YJLBoTBfCHXA8NSVnnt8fQfTS+tNVLd2sSLE=;
 b=kuaLI2iaJRwBCOHD9XUZVb6Nugsvrapbn/CepKicXZ3XLicYaUrB+VG/
 X5MBazCZ8yBBvPvPAjD2OkDl0d0s/d6UH5QGP2D1LtWwLtT5OA/LBABZz
 YOZ9FS+CckFEttYTkMO9RDANaMImFjOI6qHbQQkEKtjTeC8onpT0mv2X0
 AvdDBIcYhEuJTIyegM2+8kCq/vybVooNuWDxnA2s0NoeS88shU02o3paH
 70TyoTrdIXJP3dliTdy+7Ox+S/04gLCJwAyE3hp2dnnXURaqjL3ShwuFk
 lJSYGnOJvp7u6lncRPsSykH8aYwkNahN00NT4HEDvbXwHpdLhkfuohE2n A==;
X-IronPort-AV: E=Sophos;i="5.60,408,1549900800"; d="scan'208";a="108245366"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 11:24:52 +0800
IronPort-SDR: nwaJxnNtdjrjKCOTG4pnijB6zSpqFxQ0r4SvkgAR8ewU2IOPthZyktjLAtMhJXp9Ece77FfwIx
 7HjPfcfQHHH7GFI1JwbCwhYRYwzeEJzVbEwlq92MYkGqE2jkX9yHrIk47wv4Zh3slrJO5U60+9
 ZDU97gfAEjG3p5LOOVlpcc9I39Kbum7hQVPyB30Gd2snhxUJ1gb7FIIOFE9vBFpKWzUP40gxxn
 fALU86oexCvYS80hUrbdrwa3zeovAS54h0wUeYXcszMVJGQFf3g3PNPALZcGXaf/XzYwHJXN6K
 lhW/G0o6FwQxzSOU5pfBhrxf
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 28 Apr 2019 20:01:15 -0700
IronPort-SDR: VUOKaG1c0uWvnsp4NHwCceRKW6MYH02fj2htpKNYpW/iwgm6g2FaxvopXy34uYcykRrVr9a2N+
 hI+B3Z8821PD4rxKH/FJfS7ETFBwZpGPnFuys57n2ZOgR52+HwGUWdNo3deYn2kX1BPUBH3w7P
 sja/JPuk6/HaUeJ4W3A6qB1x/N6H8En/SEhS3PfcAfDa4iggKHFj7P1NmbZosp8FOOl980XN+v
 4s4VMD5D2EnH+4JVPy8PJR/rNGth5fV4k94m5IxGT5tLjTBZ/dgq86InEB2ZdsHfMiRq6WxSlO
 fng=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 28 Apr 2019 20:24:51 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 3/3] nvme-multipath: improve logging
Date: Sun, 28 Apr 2019 20:24:42 -0700
Message-Id: <20190429032442.5923-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202452_159331_2F38CD0F 
X-CRM114-Status: GOOD (  10.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hare@suse.com, hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Hannes Reinecke <hare@suse.com>

This patch improves the logging for nvme-multipath code.

Signed-off-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/multipath.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index f0716f6ce41f..e4929b7b42f9 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -81,6 +81,9 @@ void nvme_failover_req(struct request *req)
 		 * Reset the controller for any non-ANA error as we don't know
 		 * what caused the error.
 		 */
+		dev_info(ns->ctrl->device,
+				"nvme-mp: status 0x%04x, resetting controller\n",
+				status);
 		nvme_reset_ctrl(ns->ctrl);
 		break;
 	}
@@ -421,7 +424,7 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 	unsigned *nr_change_groups = data;
 	struct nvme_ns *ns;
 
-	dev_info(ctrl->device, "ANA group %d: %s.\n",
+	dev_dbg(ctrl->device, "ANA group %d: %s.\n",
 			le32_to_cpu(desc->grpid),
 			nvme_ana_state_names[desc->state]);
 
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
