Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5E1DBD7E
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 21:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8rh/ZGnrLeGJexmfjgLpEUdO+xMdx+kts2771u+5kI=; b=qh6yzII7f6acP9
	kfDP9/SRZETz1FhBQ+t+RA8OA5nD8oPi6HWWBwn+H7kdcCpOaHMZAYfYCkyfo3076p6mL2PdOBGpV
	0EJdFhV2G9QD6zK1JnuLXbWDMuwj+SeXceyEp/Atva0r7RiiLnYboTF/WSPESHH5tvqeVDUrELQ/0
	xL6r/Mrgy+Zarh1UMMZBL/o0vpRNYfH+GnxcOCZDSrMS1PDxGBH4wyecivwghcJS/YsOs7RpildcJ
	irMOmWaSppxpijThBLaun6TGBXtWXFtgHd+pm5fiCd9OIBVzWDtLuWbBsFmRv5d8VVnQ4X166UlQd
	QThSsm5SN1vpYjtwLU1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbTxI-0004pN-8S; Wed, 20 May 2020 19:00:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbTwX-0001tl-DX
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 18:59:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id h4so3476429wmb.4
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 11:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fnshiy6ihG9QhaGP6naqQpz00mp02JHtZheI8F1kYaM=;
 b=LMx+SdcVWNgrCI/SwL9uv/KpzlE4nNYpyDC/Qs7GCtcpfMqszET3vUOSHYZm+a7TsB
 kCrRw4lPadNsy8pHZ5KYrPz8pgw6MKPiE9HYHPivG4fHIEQty7nYzEwEvQqTZGd23ZHU
 mKHJf+EIof99d3ATX3LwiH5lc8Q65OyANQT6gDDp9HrefEI+p/uAIjmDUaZSUCifdB4H
 HLcK573YuYicChl3CkLBGuESoFktARC7HkR1uLhe5Irc/DlglckvI/CB+Ci5v0O8PKW2
 DWzaZtyWHa2VFVx5MOPi7U/rPyejQYbORcyQ1r8ktBdvcaOMuWN1z0873Vn8OnfbrTTy
 XTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fnshiy6ihG9QhaGP6naqQpz00mp02JHtZheI8F1kYaM=;
 b=d9qzDsrpjyocuZ2S9NJRz03Bw/cMpgyOpfzuqmkyv2ve7xm6QBwfWimbLIKodDcidx
 deHQOMuMST/ZmHadUlKIBX3tKkvh/hs+k7maEol8J8djhMz2CQZ19PF+IVboj1b+6LDa
 yXo25if6jMR7Retx3VJ0T6t+URHCjLq09qbVTpdGedPplaBQZ5Wjfk6fCUNAc08QXx6a
 3wFF8GXLN3T9TuwF1uyO4YVh9NA7ZEvljwowcvvTkHBt58ECKlnSSugJOkUHaJipY1+5
 lQrQQJclnGDKPcsNPzn3RB7EqfKLH73yBFAFEkueZRImWty0yMMh8Qlyep8Y1UxTtU98
 0jFw==
X-Gm-Message-State: AOAM532cxsp02fXv5FBhfLuRDcEzViVMLpMdZZksGzuJVj/AmQR+M9I4
 o9ECVhGfyp23GuHAU0Dq2aYGAx/i
X-Google-Smtp-Source: ABdhPJxTXt+BUKcH00voKpAxp/kIhKxbelcXyVkcM2PQ+e7817YIs0PeHaSR8i7UnQp3Yhugozz8pw==
X-Received: by 2002:a7b:c8d2:: with SMTP id f18mr5658325wml.174.1590001192003; 
 Wed, 20 May 2020 11:59:52 -0700 (PDT)
Received: from localhost.localdomain.localdomain (ip68-5-85-189.oc.oc.cox.net.
 [68.5.85.189])
 by smtp.gmail.com with ESMTPSA id c19sm3896483wrb.89.2020.05.20.11.59.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 11:59:51 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] lpfc: Fix return value in __lpfc_nvme_ls_abort
Date: Wed, 20 May 2020 11:59:29 -0700
Message-Id: <20200520185929.48779-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200520185929.48779-1-jsmart2021@gmail.com>
References: <20200520185929.48779-1-jsmart2021@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_115953_454127_CF4D5341 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, James Smart <jsmart2021@gmail.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, jejb@linux.ibm.com,
 kernel-janitors@vger.kernel.org, hch@infradead.org, paul.ely@broadcom.com,
 hare@suse.de, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A static checker reported the following issue:
  drivers/scsi/lpfc/lpfc_nvmet.c:1366 lpfc_nvmet_ls_abort()
  warn: 'ret' can be either negative or positive

The comment indicates a non-zero value indicates error in the
form of -Exxx, but the code is returning "1".

Fix the code to return -EINVAL to be compliant to comment.

Fixes: e96a22b0b7c2 ("lpfc: Refactor Send LS Abort support")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/scsi/lpfc/lpfc_nvme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/lpfc/lpfc_nvme.c b/drivers/scsi/lpfc/lpfc_nvme.c
index 21bbccf0dc31..b46ba70f78da 100644
--- a/drivers/scsi/lpfc/lpfc_nvme.c
+++ b/drivers/scsi/lpfc/lpfc_nvme.c
@@ -895,7 +895,7 @@ __lpfc_nvme_ls_abort(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
 	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC | LOG_NVME_ABTS,
 			 "6213 NVMEx LS REQ Abort: Unable to locate req x%p\n",
 			 pnvme_lsreq);
-	return 1;
+	return -EINVAL;
 }
 
 static int
-- 
2.26.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
