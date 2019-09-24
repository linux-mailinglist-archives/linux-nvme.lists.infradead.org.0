Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432BBD42B
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Sep 2019 23:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ou/9N9Clg/JkRVhI7TgG7U9EEtz8MLfjbdClXUD7thg=; b=L05
	db2WluLD88SuZo/A2Z/j27NwmquOCSkEMTJwWp11pXU5ybhrCFaXMK+t1PZbMwvmkHWVxenl9OvQR
	FpSa5PeMpXaDKVKkjfrBjZIVjLklejPw0QUlWEv+HHKKw4peQTVUe9XJKIWZu0/GwG6754YmybRpW
	V6hXFSQKcFmlabACsHtqT2np3Uoba0+e1G2S9oRD35Jo1Wj1MqpWAx3FzjUTk+grUZw/OoCyhhhl1
	STuWIxJmbBsOr8REhoDDx6OWJG657gP8SXauGkk0cdDCUilBx8FqmshGDBcw/TSF18dYCnBORkIfy
	Dbioxe5NU3Er5/AXnFVc+2asmx337zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsGW-0006Do-BJ; Tue, 24 Sep 2019 21:22:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsGO-0006DR-1E
 for linux-nvme@lists.infradead.org; Tue, 24 Sep 2019 21:22:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id v27so1961457pgk.10
 for <linux-nvme@lists.infradead.org>; Tue, 24 Sep 2019 14:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RDPqv0eO6Ok3JL1C/tuZabmcbA6F/X63KSxmkQba5XE=;
 b=IzON9CEpWxEiL8CBqT0kRAQ7A/soZmI/jjFA40OXS6JgqWEuTdrLDFMvn78DjHaI7M
 jBmjxtvqzQzUjEewB/ykYK5Ma1R/2Ikbs9KHoreeeGxsaAcLn0ZylL4APzWO/nl2Pa+T
 ctGGWk7x+vHxMluok/mNQTztt5J/NrFDLLT6wCxveYqAQvdUI2IQzAKfgEbr8becN59G
 i9kEBfmhY7+VUncYAlYp0F0tpXh15rJOZjKznOGKNj3Ot3NHEjTeRuMFR5wGDF2wlaYJ
 SjOssDFJe/S/s/Uh6mCo1f4v4DqjXTXDaqVq2goDDMEoZ5gmyW8u6PpweiRNWw3Y85ZD
 7JCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RDPqv0eO6Ok3JL1C/tuZabmcbA6F/X63KSxmkQba5XE=;
 b=JNe0MFtim7fITh9bd9yrxBpyh54WJyz9T6UyoWYkL6Kc3bOeZHatAo0ezK7uoScctz
 MRzkfy33wb2fHZPctZa9RUfQUREvHKsuue0sXqkF1uEIUg0LzD8WZ42sKtgSwNb9G6Q6
 4z30TMCIYu6CTfirgItYCGZAXix3GA+VZK+KyIsTAQIZMmTrvzIqZxerZsdTRgJxptxR
 YexveOqk9JRIehFt5Q42YZ1HCQcMDO7WC8NyBsmTelGfZogyDsQP8JCARIQNwZ7VcbXE
 KltrQR00t2SU826uf2Q5H3J9PhBQyMjg3a9TnyOtyFr64L9Cp5MpqodsC2Az7dikCt6t
 s2fQ==
X-Gm-Message-State: APjAAAUqjC1xLD5aZ/mYZrTiIfkC64U/yyICu6OveAkkNphJZDBzmoo3
 h1wbi94U9ednDOiQVMMQbSIQJu31
X-Google-Smtp-Source: APXvYqyd11rByldbH7RJLf4xE493tAjbHvU+kVBC+ZoHSxyfrU4GNL9OMPrVpu5ZlZMkIEaZPT/SHA==
X-Received: by 2002:a65:66c8:: with SMTP id c8mr5107166pgw.318.1569360142872; 
 Tue, 24 Sep 2019 14:22:22 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 30sm828554pjk.25.2019.09.24.14.22.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 24 Sep 2019 14:22:22 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Add ctrl attributes for queue_count and sqsize
Date: Tue, 24 Sep 2019 14:22:08 -0700
Message-Id: <20190924212208.3637-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_142224_103210_FF84BEFA 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
