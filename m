Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CA7B0105
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 18:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SucdXe8gX8r429kUSIiez4zWsowg4gihZzo5Z+CG/O0=; b=nfXMAQtAYRQ/Gk
	+ds+w2zuxTwwnippNo+bOyMomN4G/kEL+thfinAcQnC7FyY2KWHMm1I2y1r0/Mj6mM4buVgPdc96q
	Fv9mOitPgHff3GjjgCHN46PpoL0rDEUtC/umC/Hhc7nRugi2psYVfOim9szNcMK5znRCN1kP5paMA
	06l2vB04mJGi9UALBes/GbeQYUqgnfoA01SjmGSCWXPOaj2gD55D7tljQYJn7YXkoKU45yjt0lxjt
	0wHwAjM5yIAc4vVdU6diSfpPlghNF1dNPYVx9oGo4h4xHHwfGIQQArxETrpLEv5r9cvlIkk8xYtXK
	o/oUCakoN6UMlk7x3Uqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85Dq-0004yB-0h; Wed, 11 Sep 2019 16:11:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85Di-0004xS-Uy
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 16:11:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so20540109lje.9
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 09:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=FS9BUbBclyp2IA2GPd0WAymWJkDYs3hcacEPYz2WRDM=;
 b=WTx76i9yRZ3Jlg22eMMItVdab7Xk/VYaGX0nNTw/Y1PYQPPBGb8bwm0759ZejQA4Od
 E/HTovj53jrC2Q28PalEh7OrWRPQLdz76n8KuOU9SAj3sCpJyDo+d8+MYSvRFEnapoGt
 6g/OHNmjcw/83SiEpAo6ZJew15jZnOMQ3F3Mj1dyG/sjKeZPr6K0RPpLDoI1WA676JI5
 gICZEYfUSMKlsVV11ljoWyajG96TxeqqfVuZtT2ubFTmIvqxki+c3QQipSHDFfyliaGD
 vTmga6lvgfx0VCxK9ySTZuqZaECVjuunZtsCv3oTdPjHK3b9HGNJ0dbeuQ8HUs/rHlj1
 Zxpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=FS9BUbBclyp2IA2GPd0WAymWJkDYs3hcacEPYz2WRDM=;
 b=dbT62FtGjQERlaANAzDju0Pfjgl94Jlut4B9+T6owmSYJrDMDqNj551UR9r9tZN9IQ
 cJfSABSINcpqD+zaoSN3wYi0cuRnYgnQyAV9p7PG0Iz/+ZcGfZ7njjfS3bX+zFPbW5sC
 UGojT3B3bsPwn2x9p/N7Cpqo5MLJ8XMF42SZkj6+Gh7MQdKeaWLZseXbSDYZcHygv8OP
 cZVlBecI6TTLcxyrba9nyJKNDBBJaREGEeuu0vpBaMnw2/VPwfG2Wa+4UOjVJUOCKc6i
 AuqK2/rah/XMMDWgI8NIoSP3E9L02ur5iKwb5qBCD8a2Ybor0F7rUAZwIP1WhCQ5umF5
 +Zew==
X-Gm-Message-State: APjAAAVniZefwjOqa4eJ4moqV7jps05qIUTlp08V/8ur/JFE53CUJpZ+
 +qgKMhwtdxjTJjvNgRJvTHVm30AsjdDJEGPwoQ==
X-Google-Smtp-Source: APXvYqxtxCaFEV9s/OhrYuSNAxZosmyisdaBnW66w+2sQPPw0T0xY6CsdS6quqxRi8SK76R4dh6G39ebd+aggdBL0YY=
X-Received: by 2002:a2e:9cd7:: with SMTP id g23mr23741007ljj.25.1568218308264; 
 Wed, 11 Sep 2019 09:11:48 -0700 (PDT)
MIME-Version: 1.0
From: Gabriel C <nix.or.die@gmail.com>
Date: Wed, 11 Sep 2019 18:11:22 +0200
Message-ID: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
Subject: [PATCH] Added QUIRKs for ADATA XPG SX8200 Pro 512GB
To: LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_091151_001106_23BEC6C7 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nix.or.die[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

 Booting with default_ps_max_latency_us >6000 makes the device fail.
 Also SUBNQN is NULL and gives a warning on each boot/resume.
  $ nvme id-ctrl /dev/nvme0 | grep ^subnqn
    subnqn    : (null)

 I use this device with an Acer Nitro 5 (AN515-43-R8BF) Laptop.
 To be sure is not a Laptop issue only, I tested the device on my
server board too
 with the same results. ( with 2x,4x link on the motherboard and 4x on
a PCI-E card ).

 Signed-off-by: Gabriel Craciunescu <nix.or.die@gmail.com>
---
 drivers/nvme/host/pci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 732d5b63ec05..627625758b40 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3038,6 +3038,9 @@ static const struct pci_device_id nvme_id_table[] = {
                .driver_data = NVME_QUIRK_LIGHTNVM, },
        { PCI_DEVICE(0x10ec, 0x5762),   /* ADATA SX6000LNP */
                .driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
+        { PCI_DEVICE(0x1cc1, 0x8201),   /* ADATA SX8200PNP 512GB */
+                .driver_data = NVME_QUIRK_NO_DEEPEST_PS |
+                                NVME_QUIRK_IGNORE_DEV_SUBNQN, },
        { PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
        { PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001) },
        { PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
-- 
2.21.0

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
