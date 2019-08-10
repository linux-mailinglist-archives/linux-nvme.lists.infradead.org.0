Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1185988CA7
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ICfyX8eADXpQEnS8Zxd/PkCgHiU4oxEpsl3bWk9UPlU=; b=ucTX3sqlhkOv9vJnA+UmItF1W/
	9Tz1Q2FRLzt4XWt734rI2nOVX553PQYKD02tj1FahTMsenyx9MYOc4qpUSDJUa8APTl2BJbvIzBcx
	fey5PfNJNiwApgtoD+19m+v1SWfS56/BwMcUgf7POEioPJC/ocVPgxAu+0KNeEv+B5vzvq2xPkdBH
	TKPsWN9K/F5/Hq9jXXwtRe7GTb61R/SlycjfrKKCZ7MAhyVJgOmyw/lGOTCWbQQa/3BeoTyqJCSxa
	wmHM9QxdzBfcYkD2NtTS2hyTd93s7kdAl0KbJyldy97yR99Jl/6yUfizE2fTalOiKgyknIo+Igp1Z
	xMlP9H4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVbb-0008VT-Dp; Sat, 10 Aug 2019 17:56:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVag-0007xP-13
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id w3so10206875pgt.13
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tuWIrZdeip2SwEu1Up/Cgz1RXLdTxno3PAy39P4ux3s=;
 b=aViEr1NQQDYNuTA2BHp2Xh6TL7DCfTOEtIRwXYazb2Mpau/q79W3tvuljGj9+ELOMn
 gHJRBijithncHllSt3KPrXEyzMr/Z2gizvBuCIh0kIf7kYIzwHwdZyhih3MG5Vkg0FIg
 oRN/jasrT/iaOrSbTUXKgNL55A0mmpJoE5Cyg7KC09yoXvCKVNgjbG2DoiGtdJZB7e59
 I98iV9NDXYJw7I4fYE2YcsZ3MSZeUXPn39de6XRRhhgmZbnSiXEbCayfLJGt/2kmGjGT
 RNB1dW8CiTxdjEI3OdoD9nHZnZf5lzKjakqiIDokVcn7CK2pxDc6FOtEX4aHqAonzQ/P
 b7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tuWIrZdeip2SwEu1Up/Cgz1RXLdTxno3PAy39P4ux3s=;
 b=KRr9MtdsUqdbdxbLAGTJnWnaHDpCyIExctNFJgCNI4h8RtpTAWWeFVEJ+MmZmAE6ds
 CQoGauLa/glRi1uy1uYsh90sdyG43oxw7IMreWpnTmP1EGFPR5zsVk4QW+YrS/TlQiaJ
 0c37dFCDV4qqhRkGLE+pm6xEZ0tKC6kQE/MWU0o48l+VPrNPvihLApXRT/oZwTCuf7ek
 dRwZIapwD6d9/tAXbjzp4O96oiepcQyTHheGudKU5iiKebPCuLFEdxfYWMCMnuIi+u2Y
 b8WFdbBLQ2RYtxu1HtIb3i8/NffpJr9xEjWiF4bNd5VGR7viNQvUyJEW1ap9EpZOoKTX
 JNRQ==
X-Gm-Message-State: APjAAAXZKuY7IrCMOFU1YaZY97QwLHfDZALAPSrIlfd+eWeOT9uBUgZD
 ArgvXAtlpNwoClRhaDkyep4=
X-Google-Smtp-Source: APXvYqygEe6YPo5KJGV1pbKiWifgPPBKFu3bqF9nw8QG6BpnKrDT8d3s73tlEa4eSqtah8I4w4oh4Q==
X-Received: by 2002:a65:6552:: with SMTP id a18mr23552119pgw.208.1565459741187; 
 Sat, 10 Aug 2019 10:55:41 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:40 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 3/6] scsi: nsp32: rename LED_* macros to EXT_PORT_LED_*
Date: Sun, 11 Aug 2019 02:55:00 +0900
Message-Id: <1565459703-30513-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105542_325677_ADED412E 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, GOTO Masanori <gotom@debian.or.jp>,
 YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nsp32 driver defines LED_ON and LED_OFF macros for EXT_PORT_DDR or
EXT_PORT register values.  The LED_OFF and LED_ON macros conflict with
the LED subsystem's LED_OFF and LED_ON enums.

This renames these LED_* macros to EXT_PORT_LED_* in nsp32 driver.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: GOTO Masanori <gotom@debian.or.jp>
Cc: YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>
Cc: Hannes Reinecke <hare@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Acked-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/scsi/nsp32.c | 7 ++++---
 drivers/scsi/nsp32.h | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/nsp32.c b/drivers/scsi/nsp32.c
index 70db792..8170358 100644
--- a/drivers/scsi/nsp32.c
+++ b/drivers/scsi/nsp32.c
@@ -763,7 +763,8 @@ static int nsp32_arbitration(struct scsi_cmnd *SCpnt, unsigned int base)
 	if (arbit & ARBIT_WIN) {
 		/* Arbitration succeeded */
 		SCpnt->result = DID_OK << 16;
-		nsp32_index_write1(base, EXT_PORT, LED_ON); /* PCI LED on */
+		/* PCI LED on */
+		nsp32_index_write1(base, EXT_PORT, EXT_PORT_LED_ON);
 	} else if (arbit & ARBIT_FAIL) {
 		/* Arbitration failed */
 		SCpnt->result = DID_BUS_BUSY << 16;
@@ -1137,8 +1138,8 @@ static int nsp32hw_init(nsp32_hw_data *data)
 	nsp32_write2(base, IRQ_CONTROL, 0);
 
 	/* PCI LED off */
-	nsp32_index_write1(base, EXT_PORT_DDR, LED_OFF);
-	nsp32_index_write1(base, EXT_PORT,     LED_OFF);
+	nsp32_index_write1(base, EXT_PORT_DDR, EXT_PORT_LED_OFF);
+	nsp32_index_write1(base, EXT_PORT,     EXT_PORT_LED_OFF);
 
 	return TRUE;
 }
diff --git a/drivers/scsi/nsp32.h b/drivers/scsi/nsp32.h
index ab0726c..a7553ea 100644
--- a/drivers/scsi/nsp32.h
+++ b/drivers/scsi/nsp32.h
@@ -306,8 +306,8 @@ typedef u16 u16_le;
 
 #define EXT_PORT_DDR		0x02	/* BASE+08, IDX+02, B, R/W */
 #define EXT_PORT		0x03	/* BASE+08, IDX+03, B, R/W */
-# define LED_ON	 (0)
-# define LED_OFF BIT(0)
+# define EXT_PORT_LED_ON	(0)
+# define EXT_PORT_LED_OFF	BIT(0)
 
 #define IRQ_SELECT		0x04	/* BASE+08, IDX+04, W, R/W */
 # define IRQSELECT_RESELECT_IRQ      BIT(0)
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
