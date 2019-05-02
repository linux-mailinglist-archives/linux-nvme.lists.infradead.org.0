Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39BF115E3
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 10:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fNlWaQZHXLDCI4DQnisOKIzem3IUNvFjK2bcnCiyHOI=; b=lsMDicbOeFDze0NRwTdmzBVtlL
	d63PtzERmCdCdp6f/NX2l1oDXJ2xK2JmjIxn3H5eSRY/ZL+MMxJbAS4UhqWX/76Iys5OqjslstDjx
	011ULeg3UKGr0RObk5b3/cE/AkRVnLMDLztPWF5puAeZaeLUEkvI8+T5uqKtkISmEyCcU/etNWy6h
	rbciyKcdUx/gUzRMGjewlSm5o+GWwcAL4sII8V+Sijf46kAd20co490DTjExjFKL/5ASPPBF7IXfj
	FZUYxT2FcljVgPiUJ2Yq/8qLNhSvnWiDI9tUkZr5p0pu12mr/2KX/WIq0ZGYb2K/eBh/Iv8X84BLw
	0ZzIyYmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7ZD-0004SJ-HX; Thu, 02 May 2019 08:59:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Z5-0004Mt-Rd
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 08:59:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so715674pls.8
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 01:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wImb9CVB4GpKwFy3KJ9W0eoEvKw0F8sKUcEl8Dq86qE=;
 b=Pe194CRa2me3Ghu8Yu/zv3y+hAl4SMpjEVeenRNYgMHMHQcT+CIAECk8cTTi/MXGMb
 cLc0WWUnGRJ2Xdz7LMrvy0jYgM298w6ByzFtPn1DN0ZHYDJ3EjMLPzaLXobNAXlAbwWH
 5wVdgyyR2LoGOzs9//qw7ExIrb/gijuwSpk1iRk7Kl4+w5MUrSAzjSoigSQIk7H1Z6HC
 Qy3FMAPmCa5DZ5Q/FqKSeYm5AySYILmJ+IQyabQe7Al5oOHfj+uAV+NCrDbWBfBTZQeD
 prmOOfpQM+fDlRdotLooWaaPLvvai8kirQmdq3YV16fIi6et4pE7QSDKz3n5z2eogtNc
 Strw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wImb9CVB4GpKwFy3KJ9W0eoEvKw0F8sKUcEl8Dq86qE=;
 b=pJWB7TLAFWrF8x+ZuYyEdx7EeAIJyd6FDKuC8cpt5OUZK4hW32rm8MGeY8nMRWLgGM
 pNaWnAZs6iTbkS+xiEdrCXgxwcwvn3PnfycJcw2+co5sw+DcEkVM0oQGMIpMMmU+dcYu
 TUKJsAzqb0RD3ln4a1lpdpmGTULJy7mur9+ohYBoZL6m3/mevk439GiOdHzufxw3jpbW
 p2UNVAe9L6fHu2YCb+LQyarqTujsQ9HnhXCRBYNccJFc3fdX39w+iDPpcyjn3O5EgIEQ
 L3hf4eW2QxjuosGgNuVdpDtKf4PpBXwPWb1HMwdybbOkBSz+iPfUvEPWEeNW6on7++kj
 BDLg==
X-Gm-Message-State: APjAAAU/TqFWaFtEu/wNN7as3dFqDLa0OfmpOuOqtb85taba0yPmqQL1
 hO9Q+m84MnrT615MR3V07lqtXZkL
X-Google-Smtp-Source: APXvYqxIQ29qxZR0+mT0u+86fJergDHo0If85mcV2/WYaiVy1J7IWdKdwrwEccSrFaEqyG9gJWsnnw==
X-Received: by 2002:a17:902:b20f:: with SMTP id
 t15mr2501576plr.341.1556787579352; 
 Thu, 02 May 2019 01:59:39 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id z7sm74960831pgh.81.2019.05.02.01.59.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 01:59:38 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] devcoredump: use memory_read_from_buffer
Date: Thu,  2 May 2019 17:59:18 +0900
Message-Id: <1556787561-5113-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015939_889994_4E4A8739 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Use memory_read_from_buffer() to simplify devcd_readv().

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/base/devcoredump.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index f1a3353..3c960a6 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -164,16 +164,7 @@ static struct class devcd_class = {
 static ssize_t devcd_readv(char *buffer, loff_t offset, size_t count,
 			   void *data, size_t datalen)
 {
-	if (offset > datalen)
-		return -EINVAL;
-
-	if (offset + count > datalen)
-		count = datalen - offset;
-
-	if (count)
-		memcpy(buffer, ((u8 *)data) + offset, count);
-
-	return count;
+	return memory_read_from_buffer(buffer, count, &offset, data, datalen);
 }
 
 static void devcd_freev(void *data)
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
