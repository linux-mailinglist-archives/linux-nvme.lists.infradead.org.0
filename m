Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D8F62701
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 19:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mo+4dD8q85euutFU9d2TKugnqOG86UOStAh5AKBDTUc=; b=KLj
	FrYE4J2vyflkchwFTQ5/U0opfYh8PGwtClucZs/DkJsYcmosgJfL0X0+DR9MUu0HvAA7oFgbpYe2A
	mWb/6tPmCXqViPQfMTHa1RLmyLnAlTJ/EUIGh0lJaz00Cc72THHqN/QHu0uByzGeCEOkT4DL97aHN
	G0aQMrjCnl1f+oPkDwCPOlN9qwLwuHHTPLnppl8tEaoHbNFfUl5uEmHOPBno6gLorSm+1Bl4dx1Mb
	97NN021ei32XgKRjEowmMWTifRvT4ljpjc/py/5Fe1AcBoW+Gf6I1QpTXaPMVshyeh00bL2Ep3Jyb
	CT3XYbV9Y7MaJSBPECz+NIJMZbnZgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXNW-0000lV-Fw; Mon, 08 Jul 2019 17:24:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXNL-0000kj-Cq
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 17:24:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so5522495plr.11
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 10:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CqXD+N8dzmqJ4IWQJGnOizgxv0vvjYnPypNtlkBzoqM=;
 b=Gf61OpwO48cpWHTX4LkTJEBGeQIQgSi9UcozAjDh4tDWAj+i66n7KDrBKf/qvlQQYN
 ASYH3dl2t8+u/9tCEE+Ncxeu2RfPAxTL5EwZHqB0Bf4pZx++FhY9xCISoGnsC0BH5WDf
 ZBUgrVo8nqOk9ONdNgZ0Sb+aysrK2g9jr57AabDv/DgXF6dUkMxkQMrpx9y5l9LKj+ua
 UiLY8C6He34Ew6QlfFnGxu+bNvYaFpO78HznTdHvuiInQX1ECBDYM5VqvHlONReWOGaE
 VF7VPAqfCQ8oiy/f0kCwawTVE5hGh+fKhpsa5tFhBspqcaYVKTNUNxbVp1nfOS0vBVNE
 UPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CqXD+N8dzmqJ4IWQJGnOizgxv0vvjYnPypNtlkBzoqM=;
 b=ukHLeG2LNkDPrh1uz+LCKh5p0B/GUjlHNw6mweiy2SJBzWq5EJhWwr531MJTey9k0l
 YhPe9etGTroBruOdCBRLIpl0TIgqgXB/mhoCwDo/2JYeXiBSZDvBxdexA0/IHOfKCEDN
 HLnPCBjqYfmsWVMsVizXIRjNJKnDS/glwxd+c/YFLEHyz1JAhQ8j6+BZdw+7rtoQl4I7
 qykIb4TIHAUmP+qmza7gIVS25rNIc1n/vWPrJXoenns+7g7oCmBIKq8LBl7/8O8WwFki
 ++nULwgn4TmT7cW/4SSWXT27eSHj+6QUSRbdsTEEfAUAw3tDMFVSrEkO1/5vpsMo7rm/
 C/Pw==
X-Gm-Message-State: APjAAAU7/DXrur4iFPbppEv0AxiqHAC8RROOcoYx+j24WntRP+E6CkLK
 PdiDfdqEFBqupPoq/jCCucPUDYqrnLM=
X-Google-Smtp-Source: APXvYqxSuGru2wb/skyPl0wfVNutDrDEL5x8OhsThJM12iXm6SCrxHIoZHkxTZFhxjlivKIsUTP/EQ==
X-Received: by 2002:a17:902:7612:: with SMTP id
 k18mr18691349pll.48.1562606666267; 
 Mon, 08 Jul 2019 10:24:26 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id h21sm15951262pgg.75.2019.07.08.10.24.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 08 Jul 2019 10:24:25 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH] nvme-pci: No IRQ map for read if no read queue allocated
Date: Mon,  8 Jul 2019 10:24:12 -0700
Message-Id: <1562606652-7618-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_102427_448949_DCCB1F36 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

nvme_dev_add() assumes a read queue is always allocated.
That may not be the case on single-interrupt systems for
which pci_assign_irq() would report runtime IRQ mapping
not provided by arch.

This patch makes sure nvme_dev_add() only requests an
IRQ mapping for read queues if at least one read queue
is being allocted.

nvme_pci_map_queues() will later on ignore the unnecessary
mapping request should nvme_dev_add() request such an IRQ
mapping even though no read queues are being allocated.
However, nvme_dev_add() can avoid making the request by
checking the number of read queues without assuming. This
would bring it more in line with nvme_setup_irqs() and
nvme_calc_irq_sets().

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 drivers/nvme/host/pci.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 524d6bd6d095..86262ebe6fff 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2263,7 +2263,9 @@ static int nvme_dev_add(struct nvme_dev *dev)
 	if (!dev->ctrl.tagset) {
 		dev->tagset.ops = &nvme_mq_ops;
 		dev->tagset.nr_hw_queues = dev->online_queues - 1;
-		dev->tagset.nr_maps = 2; /* default + read */
+		dev->tagset.nr_maps = 1; /* default */
+		if (dev->io_queues[HCTX_TYPE_READ])
+			dev->tagset.nr_maps++;
 		if (dev->io_queues[HCTX_TYPE_POLL])
 			dev->tagset.nr_maps++;
 		dev->tagset.timeout = NVME_IO_TIMEOUT;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
