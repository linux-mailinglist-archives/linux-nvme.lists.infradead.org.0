Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4EDBFA44
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 21:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ov98JjUCwdaYP6fIpt9m9A35TMlJN1SvmJU3gZq2l3A=; b=j35
	VtjJq0f3jOmBfSY59NHz/Mv6d8WFKEMM9Q/SNz2GUWPenT9nAEVaX0Hbw3u0nMHAOY3Fp+A1xhIsW
	KO8aKm25bbyc0XknCnIjUd9Apu4SsIq7bMWClhDkeDjBxfo0GX+43Zsrtv+yE7YqgTQvMXbaLOJrT
	TiR5AMDayM5SmBDGJM3TPziiUnbwgt1+NI2VINqHNl1RY8YjpE5qof3NK9Xxe0HGxDUbMnmbRfmx1
	SEKib/2tf0dPVpOl7jfO7X5oFrw63Mx/5Efu+KbuIwbWdSUEhU+FEMnmOFEQNSA/bd4uyMqz2pQl2
	uDIKEgNqIjceI4isnFm+aIerEH8j5Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZhg-0000uc-8Q; Thu, 26 Sep 2019 19:45:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZgs-00082E-VB
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 19:44:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id t10so67324plr.8
 for <linux-nvme@lists.infradead.org>; Thu, 26 Sep 2019 12:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fnYgPtcZ3LgzVMKDcHBIpt/irHc6GTEDcHNSfGlkq9U=;
 b=LeaQnjiFGodD34BJ1FlJPoowrJTZgGlC5rK1sXxErOKWb20Vo3nUSq9v2UBcpHaiGI
 tUrwzCC6y1OE/bcfrGOIJNW/walkNgO0dhDBLSyIvFlW+ykqhVnz+bcnMcDJrrP0PGWi
 JzbLRKC1UwDvkU6wPjGaXzPssRRr3mbqFbRn2UviAOJsYwP2cn1pP+v4jpSDunjAN7UN
 z0ManKfEyIylaJJlurzXEep/dE2AzTzLVrUn0qnvxQoXtFpVAKNTUJsupgHwRqLHH893
 ag5rNzf7nXKTDQiQCU9ExLkigBFBppeVoaXr9Sx5TIxe6pLMf0F6gw0OYYNr+A1ycOxz
 K4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fnYgPtcZ3LgzVMKDcHBIpt/irHc6GTEDcHNSfGlkq9U=;
 b=H9KgRhdrWlpadPLgnumYuyEreCGIU4djVs+cj5KAXD1wAbK2cfHToFovidF9eaTCPO
 thH2a+JAweYWrqTT1Wm6mxvvvntr/U6vyGMK62usmn95qnuKzFpcikTO03dXvoowxHnm
 iUzhEzMTFiawAlaoGmLtQ1Z49xrQaGMQ7y9mUfK4QnuaB6H9sKxqkNDhzPmu8kWu7Pb+
 5YvMEhuNrJBhr4/1HeEOWKuTmmoBDgeCBHZBredeYPG4v5ch5Omzg1dCseXutR0zGWUv
 +bfdd7dhjJiHCxlu2vg137il+WOO5RSY5W5q7k/nnM4KId+dJ7OiTkgP5923G00adD3J
 WQWQ==
X-Gm-Message-State: APjAAAXFFcoS8nkQxQ1RQlMdXSUpS38U6wqeNMdmTCDgdwa8jiOdd0Zt
 Z2c8Miw0lzjyW8Jf0dGa7RIGAKuJ
X-Google-Smtp-Source: APXvYqzbuS3haITLmDn36yqnQWba/5j060McP3n3hYN4NG2hCz6gcgVdUIPJsn8LcuOcyeaZERXUmA==
X-Received: by 2002:a17:902:24c:: with SMTP id 70mr278107plc.41.1569527073347; 
 Thu, 26 Sep 2019 12:44:33 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s5sm2670058pjn.24.2019.09.26.12.44.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 26 Sep 2019 12:44:32 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH][REPOST] nvme: Add ctrl attributes for queue_count and sqsize
Date: Thu, 26 Sep 2019 12:44:22 -0700
Message-Id: <20190926194422.19077-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_124440_056338_73C285E7 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Current controller interrogation requires a lot of guesswork
on how many io queues were created and what the io sq size is.
The numbers are dependent upon core/fabric defaults, connect
arguments, and target responses.

Add sysfs attributes for queue_count and sqsize.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

---
it's back to V1
---
 drivers/nvme/host/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e0e2dcbfd05e..b1c24af284ca 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3040,6 +3040,8 @@ static DEVICE_ATTR(field, S_IRUGO, field##_show, NULL);
 
 nvme_show_int_function(cntlid);
 nvme_show_int_function(numa_node);
+nvme_show_int_function(queue_count);
+nvme_show_int_function(sqsize);
 
 static ssize_t nvme_sysfs_delete(struct device *dev,
 				struct device_attribute *attr, const char *buf,
@@ -3120,6 +3122,8 @@ static struct attribute *nvme_dev_attrs[] = {
 	&dev_attr_address.attr,
 	&dev_attr_state.attr,
 	&dev_attr_numa_node.attr,
+	&dev_attr_queue_count.attr,
+	&dev_attr_sqsize.attr,
 	NULL
 };
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
