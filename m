Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B617D7CEC
	for <lists+linux-nvme@lfdr.de>; Tue, 15 Oct 2019 19:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sDRaGHbSrWayeOEfXCcRgs1Mm40dsySFf4TmR6Ddb6c=; b=OrY
	NXVtDL348mztktuXyCmrGz9lccWPNgssBYl31fxTuITLKRHP0tL3jo73UXG4Yg9RunlRu5ptqV4BY
	Gx34gHwUSp3GqezeOum/VsICc9CqZijOhMgvY5OvoQn+FL5Yc2UKQba1vLioSuiBQ6vuhwAeTtYFa
	vshnXF3eBy5VKZzXfisDEHMo68lFy7gxbAo74bcFI47+cS1I2/JiyHI/dXN/6CDS661u20Xhlti3o
	hiPqaXM7wcWmY4jybBrLtpIdubUlJSd5BUfIypFhhuQTNruk9CuRmMjMIozUiE0u9sOWeoT6RHw3k
	4bNyy5HdTSwgdYxlviRhqh88aRtkCCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQJ6-0008LO-Np; Tue, 15 Oct 2019 17:08:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQJ1-0008Kq-AM
 for linux-nvme@lists.infradead.org; Tue, 15 Oct 2019 17:08:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so24808780wrt.2
 for <linux-nvme@lists.infradead.org>; Tue, 15 Oct 2019 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightbitslabs-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=wBm8ewD8TvcglEyFQvyxAbYzBPZD3Ks4Jd/x9rtgmHM=;
 b=nCeZT8ywUWV8aE/AYpoPAb05znNF9ez+J9ei37PbIhmBcAfiwVZ3w2iI223Nu27lEu
 fYm7bV5gulKFg48uiY2moShhE47OeSbA8cz3S9obP8SrS1hCnmbpJEBeIO6M3zEBCSGb
 KOwoa74C4Go6KwsHsQ5XPCFltDtn5rfGSlLfewY0UBhb+ohpTu45lWM0GLGUhISYi8G5
 BscXFnvJkvFVlPYn+P2xzLFUBRfSIdZQy8BAI1NA4jXJLsZo+LmGhD45xOkt3jIUN2Tb
 fXhzbyULXMFy3wjBxCAugg3Y1C+3lj0vf6mfc+3OySr7FtfsaQ0k/NRWVJdb73w18yE/
 lyRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wBm8ewD8TvcglEyFQvyxAbYzBPZD3Ks4Jd/x9rtgmHM=;
 b=JxHZu4DK5J0vg1l6mrrQhapyu6uawrUUYBWrBaGdOz4nNlycymwrqib2ymuHj6cZ+n
 ZAinxx55QIeJ6j0yMkIXBEot6FKFqODbgjN+6B3Wcw6T/UeIPyq2TqjRQaj4flRvrHcF
 Gw5HZz+T0hzdRDwLNE2ztVIcdOyvkJU4vzxGfcL3C4zCG+oQxRW7Nc71IEdIcnBXLbx6
 3FBm9UqdkWXvcqrpYFd0U9a5Qv6ILdSJwb5ZiBa2CfvXpU87scZpB4uZOMu6YpwSLgA1
 QOzgJpm1psswu3hQCVM1WxA/8818dZ/oi0r11mSPF20EksBZx4rKlnYzDWVpbYyfIBaw
 SAfg==
X-Gm-Message-State: APjAAAUHdDJ1RVbQa/7CtjwmV3p3PjAUOaSnml/ocpCAYU68tq9HDEiF
 ZY5wDCMdTAknT1uRZKjf4V0qYd9Ta7JNMg==
X-Google-Smtp-Source: APXvYqwPKaCqnBun20aY7hTEVXQsgi7Dyyd/LjgjRrHudiOMqoeUnV0tskKJhMw0vYwXd2TBizqSLQ==
X-Received: by 2002:adf:cd8e:: with SMTP id q14mr17057254wrj.86.1571159297097; 
 Tue, 15 Oct 2019 10:08:17 -0700 (PDT)
Received: from anton-latitude..lbits (c-73-241-145-113.hsd1.ca.comcast.net.
 [73.241.145.113])
 by smtp.googlemail.com with ESMTPSA id d78sm30668426wmd.47.2019.10.15.10.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 10:08:16 -0700 (PDT)
From: Anton Eidelman <anton@lightbitslabs.com>
To: linux-nvme@lists.infradead.org, hch@lst.de, keith.busch@intel.com,
 sagi@grimberg.me, hare@suse.de
Subject: [PATCH] nvme-multipath: fix possible io hang after ctrl reconnect
Date: Tue, 15 Oct 2019 10:08:02 -0700
Message-Id: <20191015170802.16830-1-anton@lightbitslabs.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_100819_771730_203A163A 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anton Eidelman <anton@lightbitslabs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following scenario results in an IO hang:
1) ctrl completes a request with NVME_SC_ANA_TRANSITION.
   NVME_NS_ANA_PENDING bit in ns->flags is set and ana_work is triggered.
2) ana_work: nvme_read_ana_log() tries to get the ANA log page from the ctrl.
   This fails because ctrl disconnects.
   Therefore nvme_update_ns_ana_state() is not called
   and NVME_NS_ANA_PENDING bit in ns->flags is not cleared.
3) ctrl reconnects: nvme_mpath_init(ctrl,...) calls
   nvme_read_ana_log(ctrl, groups_only=true).
   However, nvme_update_ana_state() does not update namespaces
   because nr_nsids = 0 (due to groups_only mode).
4) scan_work calls nvme_validate_ns() finds the ns and re-validates OK.

Result:
The ctrl is now live but NVME_NS_ANA_PENDING bit in ns->flags is still set.
Consequently ctrl will never be considered a viable path by __nvme_find_path().
IO will hang if ctrl is the only or the last path to the namespace.

More generally, while ctrl is reconnecting, its ANA state may change.
And because nvme_mpath_init() requests ANA log in groups_only mode,
these changes are not propagated to the existing ctrl namespaces.
This may result in a mal-function or an IO hang.

Solution:
nvme_mpath_init() will nvme_read_ana_log() with groups_only set to false.
This will not harm the new ctrl case (no namespaces present),
and will make sure the ANA state of namespaces gets updated after reconnect.
Leaving the groups_only capability in nvme_read_ana_log() in place,
although it is unused for now (NVME_ANA_LOG_RGO is defined in spec).

Another option would be for nvme_mpath_init() to invoke
nvme_parse_ana_log(..., nvme_set_ns_ana_state) for each existing
namespace.

Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
---
 drivers/nvme/host/multipath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 30de7efef003..d320684d25b2 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -715,7 +715,7 @@ int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		goto out;
 	}
 
-	error = nvme_read_ana_log(ctrl, true);
+	error = nvme_read_ana_log(ctrl, false);
 	if (error)
 		goto out_free_ana_log_buf;
 	return 0;
-- 
2.14.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
