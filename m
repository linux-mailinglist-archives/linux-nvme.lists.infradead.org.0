Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B50C1058F0
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 18:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BA7D/fG3XQZPs/34jdu/RiVimWkfK1IdKQ4thukypGI=; b=lnn
	urSV8kzfQuYMGdGkzAMR67fIv0gGHafvWP0EPR7YqXNXrXVfTju8Doq8CG7GSEQe1iNZDTiZA56uL
	HOGvJLo2WjdCVcR5LJPFO6gFz0Hs9HUsrOSlkKraVqhQc09ej6lZadyJBJ0F9GaSUW9368gzZfhp+
	6XiXXUV7j3QMR2xTMAsZf5tC82aQ46hmLnDnzxWEA9DQ/0/QG1Jtg2mKgzhfTZ2ohpcfkg0pWF8v0
	Ag+r0V57f68C7rSb6K18xRv0CdIxmAT62MZu5WWeNjOVvPu6qlKbYL0Hjy532yWL0iQ8bpIEkzpe7
	T1y69vuRdP20OqZme/yaBeasiP/OYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqin-0008Qw-RD; Thu, 21 Nov 2019 17:58:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqij-0008QO-4B
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 17:58:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id 4so2231980wro.7
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 09:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=C3rnyKvJ3sxB3k5fso7yk0LDsxs+BBdpRzygcWDyCxQ=;
 b=svsYn2yuIApITWEcT+m6YlOa4jjSUdaDEIhb9peuuDR8pp8YvS4SiEklpofe0kOCLk
 LJSlzHkqoQXJh8b6S4T22HjKs93iY+aN5qxFGZxkzg1tAZZOiysHgoKR0XmH+4Vk4FCb
 KA+Hm0vn3n5b8YB787mtyMLmp9IWyUCjbQudmTeLBxIcQ+0tVVYobwp+NBkxhZ8tD30h
 YbbOcN4S9lLTNNvrjScDR0LFr2oXONshvFO/h/m2KcWLBfHgd89VyAOCm4pJf+ow/DRG
 qcXFaXnYfKA72Oxcd2FEpdqDowbM33ui4Lu3tNtfGccK/89P8Z8uQTWkBURvkKnvhqRf
 w4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=C3rnyKvJ3sxB3k5fso7yk0LDsxs+BBdpRzygcWDyCxQ=;
 b=seWo4bmM812ZChf4Nh5WaGMheEU0XyZ4zbSSY68c8Rv7LKmPFkPvU/xEYmcWpwRjmf
 NLf5jIYJXJPs7Wpr2lr4dFhw172dYuZItazsoeD6o5FDSpTzR4nawbxhKKpa8II20wAX
 zqBExV1ExjHvFsCQrrAssVtqqD7LKP94SmFxzKj9J4A5+xhm1d5HaCFsR7o5bg2V45JD
 iSDgiRSIA5fug9/PyTQhsdzsS3Ry94zvsNL/6UjgZ85VN+vwLaoPwPPU6AwfAvDHFRhB
 3eGOlYRKVP9p5syqpb1TPMT1K/GS5/yLMaEwsw8SVWInCCkgwEyoRMh0lQYBmJ4c2LTA
 DNuw==
X-Gm-Message-State: APjAAAVTpjSQxS1XDtoG/SDrKt4/KcHD6+Tk2pgTB2F4g8vRcwTygRIv
 NoL4wZ4AfWM2iqUmewhwTNe5517o
X-Google-Smtp-Source: APXvYqxrbRCnLCiYVOgXA2qIEN2jSdJpnEJJQLFQXKC3dOVjSJRfj8xGDMaaqVSy6az7bQo8fRiV+A==
X-Received: by 2002:adf:979a:: with SMTP id s26mr12700302wrb.92.1574359098846; 
 Thu, 21 Nov 2019 09:58:18 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q5sm401738wmc.27.2019.11.21.09.58.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 21 Nov 2019 09:58:18 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: add error message on mismatching controller ids
Date: Thu, 21 Nov 2019 09:58:10 -0800
Message-Id: <20191121175810.19501-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_095821_168018_0155B38F 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

We've seen a few devices that return different controller
id's to the Fabric Connect command vs the Identify(controller)
command. It's currently hard to identify this failure by
existing error messages. It comes across as a (re)connect
attempt in the transport that fails with a -22 (-EINVAL)
status. The issue is compounded by older kernels not having
the controller id check or had the identify command overwrite
the fabrics controller id value before it checked. Both resulted
in cases where the devices appeared fine until more recent kernels.

Clarify the reject by adding an error message on controller
id mismatches.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 9696404a6182..c272afb084d1 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2824,6 +2824,10 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		 * admin connect
 		 */
 		if (ctrl->cntlid != le16_to_cpu(id->cntlid)) {
+			dev_err(ctrl->device,
+				"Mismatching cntlid: Connect %u vs Identify "
+				"%u, rejecting\n",
+				ctrl->cntlid, le16_to_cpu(id->cntlid));
 			ret = -EINVAL;
 			goto out_free;
 		}
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
