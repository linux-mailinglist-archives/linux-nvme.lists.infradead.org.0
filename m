Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8EE4DAED
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 22:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=K4Ox6jixHYVVA1RMnrurLovC8R/JTh0YsqjYqbpJSCo=; b=UfC
	kKG+b6OfaHsI64n0cuRjJpsPEiNgvDT3ROLzYbImDjdf5FXlB12qeZzKC8p85yyW/83iHQSDzFOXh
	ueRpWoYU35oe5cTKPhWEjA1It5Jj9QQSZLbhl87k1Wb4jgFJpby60YU7J3Bnxu34S6ukWigfe30+V
	usDKHQVFMrkeDIpJ8GmRYtQHMA+DsxG5hwDF/uMoTQ3bNtE76JyyOZjn0mdjtoAYBTO7mN2MMrpVI
	6RLj5R+5afGhbps8UrF4splwPNkrDR8dcENiSLyE0HT4A7mUWL3IvLpNRE0yjvwtGK0rv32bDjz/K
	60nR0HOMVIsmvg4opAiCYbDqWArYRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3LL-0003VB-QH; Thu, 20 Jun 2019 20:07:35 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3LA-0003Sz-Fa
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 20:07:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so2273930pfa.4
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 13:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0o9q+UbhIMSqsmf/UHgy+wwJTSxfGbmdtKtXkWzQVA0=;
 b=LGNuzRs3BvjkeKcx2ejkFwkGjKisdA/VN2QzB8nBGPzrhTI0CAFVsylhwmR/vePXPK
 1QkAaXl/+HvDG7GMgCp+udjpGAJgfl29b9mnBLxlSY9KRiEaZKacUbtXKhaDf2FBkRqj
 Yc8a+O9mxFzkCVaVj5aozeAlNuzdqrtOOyaN5dw/EYKpIukV/NJAuSxy5LJ41VTB/Mnm
 NJx34IUjHdc5WZy+D3f1VFkw86lyCkjqcDGCXn0Y536+1Y8xrH/NdHZxGKgz+yY4PIhx
 MFtPHFHR2hPuDyEQtWZxCACZBP4CNW/gTpyphY29+wNYnCgdIIMmZLf7OnImQJxjbHwj
 bGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0o9q+UbhIMSqsmf/UHgy+wwJTSxfGbmdtKtXkWzQVA0=;
 b=PGN/71rUc45cEtTpqq2HLeRI1vDVbd0P1iUWEHUDy2aUW6XGMtS+GiIJckJAQXneSr
 06htdVXM+TcIGDRbh813p0/PhkMc7p6BwwsMbvaXHTAIMa5iKe5BjXqEsHVpoz6jI+8O
 /e8atX6prGAYSrLKT4mO1lxcgHNrkNd1niyCY0025nfNMWzH262on0zzm/kIhx8UlQAB
 FUD0f8wzNpuwSllDLulmDtgdlQaF3MmHsrJoToXiInzeiKGybqzpBXu1XJcbhuopMFhU
 NPM/ILIlpqoIm5EcxWitJnAbvQiYNPNEGgpxqUhJkAD1Hn9PC2uQjczWiErWWSh/+p4Q
 62xA==
X-Gm-Message-State: APjAAAWaH7x7lsO8g7IdE4tPj13uerOFZOiNtAfL6hdcIIilwrwzH9EJ
 tNJEYOPTM5Lt5W/9tf9QQmQxS7+n
X-Google-Smtp-Source: APXvYqxoRhFq4fhiyIQDr7mJ8wP6ZhPSiLxQBf39UgJmaB+zpH2YLqc+fRrnJC2YaTByrra7ffrpyA==
X-Received: by 2002:a63:a1a:: with SMTP id 26mr14153295pgk.265.1561061243690; 
 Thu, 20 Jun 2019 13:07:23 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k13sm415704pgq.45.2019.06.20.13.07.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 13:07:23 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fcloop: Resole warnings on RCU usage and
Date: Thu, 20 Jun 2019 13:07:14 -0700
Message-Id: <20190620200714.15709-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_130724_524854_6A4A52DC 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

With additional debugging enabled, seeing warnings for suspicious
RCU usage or Sleeping function called from invalid context.

These both map to allocation of a work structure which is currently
GFP_KERNEL, meaning it can sleep. For the RCU warning, the sequence
was sleeping while holding the RCU lock.

Convert the allocation to GFP_ATOMIC.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fcloop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index e64969d2a7c5..b50b53db3746 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -535,7 +535,7 @@ fcloop_fcp_req(struct nvme_fc_local_port *localport,
 	if (!rport->targetport)
 		return -ECONNREFUSED;
 
-	tfcp_req = kzalloc(sizeof(*tfcp_req), GFP_KERNEL);
+	tfcp_req = kzalloc(sizeof(*tfcp_req), GFP_ATOMIC);
 	if (!tfcp_req)
 		return -ENOMEM;
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
