Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5071814096
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 17:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4cvH3kFxftViw1yoZjBSh1m+C1IYDcWroHYUD/01i5Y=; b=GyH
	gir6AZclTLyHPnext9J+JjOykRgW31r1laksdHlvFOAHualNd7fOgFg2TB/3mWFhsPgy0s8Q9FuEY
	1ZbRtdDl5pxXXIfls6zdobWP2vqb7JY3/NZd5J1O+xpLMXuaGiN+Sawz3akPhKFsovBltD2A9Qr4L
	s5sxStPUCUTVEP1dsUDkseFhCYgmk087/4dD5jFX12GkOJSIw1VKpowCobuctV5OgZhCx8D+NO0Ho
	Fbk3XUUTxBAu8gEt/dZdXg+F99fmJeWFWmDfccSN14b75QyO47er9biqrSPkKlIj3PdJIPwUznzIU
	Ym31QfBgzs8pPjhGQ962taxdpl7mABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIy7-0002Ua-85; Sun, 05 May 2019 15:22:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIy3-0002UH-Bb
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 15:22:20 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so5070732pls.8
 for <linux-nvme@lists.infradead.org>; Sun, 05 May 2019 08:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mbx/AgQHTEaE2b0EJgqmVtBTjVhz9is9Zx3MVBHSdhU=;
 b=U4M/64abS1tFsX1iBqL5I+VTREH6mD5cMwQC28jpRY2NBpYd01FzIfS4tkZ7Yjfde7
 ZCBmx48wlGyrFG2f02oHUBj2dunWMG5ZPmCDtO21qFF2GACj4dL9He8rGIaAnBOo7Het
 ay3PZIrgK4gv694ZKvyNB0keZDfnJ9WzlAZsnyvbd6RoRSN633mSg9CD8KY5/3JVIzk1
 6ZtWgNbDps+O/NCooCZg6Akq2Ad+z1El4oBHBkqiJgd62gUbdjozqSksisCdyUhChSSJ
 3QSFy+FtwR8xFYlrQteX4XQM+wnjRji24w3DcGmY6taLpfqDHo2T6I2WPGJTf2qoPLyN
 LXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mbx/AgQHTEaE2b0EJgqmVtBTjVhz9is9Zx3MVBHSdhU=;
 b=rPR3xQVsCbvd/E0t9MEope41EZWotFcVNOLOE9U0tHIM5pYxZoGMmgBhUBk+GDhczH
 P5wy/dRNRj4CGfxIr+RWqgSJPwqv5L8UCA/cDtc94WODzFRFrJVlyjIYQeTJA8VNDFWm
 hTEz5VbOLG4Pd5SC8ZehduuiTKmPcH8fVis7P/D/2n7oEmI5lGqVsqgf/+rXtXtdccEh
 JhCyNvsJa3xJEMGEHHKvjz/z2+hkjwHAibQdgFmMdxuMUJo9ZwX435gkKU7PM4XFxlX8
 86D6g/wuMygCAgOksNLMrfelDugWPLmo+jRInHWqCkXCtxoOL1Zkpseo9LmfOdqTXBZ5
 j9xQ==
X-Gm-Message-State: APjAAAXT93WPb/2/vnJBaoCTXsQMNc2tRZO48t1gnw2mVt5gmYT7+xsZ
 +JlRDho7WhpzNdltCAvKmOQ5Bdf3j6s=
X-Google-Smtp-Source: APXvYqwtNUAZQUxhQA/v28qJlPdwsjeRnmmiLnneF8GtK1cPNNbrtmFnvW0LvXS4VsM5+ULDA9jYUg==
X-Received: by 2002:a17:902:7d90:: with SMTP id
 a16mr24922847plm.122.1557069737988; 
 Sun, 05 May 2019 08:22:17 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c8sm10678990pfr.16.2019.05.05.08.22.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 08:22:17 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-trace: Add fabrics command opcode name
Date: Mon,  6 May 2019 00:22:01 +0900
Message-Id: <20190505152201.23830-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_082219_417426_C55A0076 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Opcode 0x7F is for fabrics commands.  We can also print it out
"nvme_fabrics_command" instead of 0x7f in raw.

Before this patch:
  cmd=(0x7f cdw10=00 00 00 00 1f 00 00 00 98 3a 00 00 ......

After this patch:
  cmd=(nvme_fabrics_command cdw10=00 00 00 00 1f 00 00 00 98 3a 00 00 ....

It would be nicer if trace can show which command in fabrics commands
are now being excuted, but not for this time.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/trace.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 97d3c77365b8..f91580bf2e2f 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -37,6 +37,7 @@
 		nvme_admin_opcode_name(nvme_admin_directive_send),	\
 		nvme_admin_opcode_name(nvme_admin_directive_recv),	\
 		nvme_admin_opcode_name(nvme_admin_dbbuf),		\
+		nvme_admin_opcode_name(nvme_fabrics_command),		\
 		nvme_admin_opcode_name(nvme_admin_format_nvm),		\
 		nvme_admin_opcode_name(nvme_admin_security_send),	\
 		nvme_admin_opcode_name(nvme_admin_security_recv),	\
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
