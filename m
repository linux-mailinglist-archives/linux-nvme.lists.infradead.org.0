Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA0FBE971
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 02:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b6m86Xi+AqWXGJhszQcuB+yyZ2G2F9SwwUFJktTwMe0=; b=anl
	ovJuvFuhJCchvjmYn3EszUk7R8YpiRqrIzUKF+FX6mpsWFV3Aly8IsDR5ylCUVkUErjEwruqpRvqZ
	n9LZPBLLh3lmqRzeOijI/PKGksBr+QbpvhNq1QXbiiM2Y1a+7lGbJv3JaP5eFxGCoQBuFU9JITjEL
	HP67KVey251ZkdSH5nUpGWMuZPQyAqjgHir3w0TG4Rde7HkoEmouCWc3qgedwK6u9UCPbMloktTh8
	AX5dbRzvHzWzP1B0O4JK35il6N12H45eRMRSGajb4tfA5gIARurAy8tEPDqkhfxxjRIO9Ja08z6qA
	XAzfNa1qcm1VT+dASgxG+Z4TQo5OPKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDHWY-0005Et-Rq; Thu, 26 Sep 2019 00:20:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDHWQ-0005EU-7g
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 00:20:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so557500pfg.13
 for <linux-nvme@lists.infradead.org>; Wed, 25 Sep 2019 17:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Di8Y3XGb6m/bilxvYyIwXE6JG/tp6MijdClXTqEx83Y=;
 b=KdYSut39j1zaZZV89ZUd55WE1lNp1PAPs+x9ERtxDbZDyfEMOedNtL4P4upqXfFNbz
 OgEOgoxjJPrvBqPdh3a99toy/ESCYt6UG83jtXdrFHl5CNK5qZwVs93yJpxNOArH3o8a
 mBYOLd03P/Y7FVaSthnimu0jX2YFvZqa1sWnZS6au4zyZ8Z6w5gpSJc57EYoMJt+6LLY
 r/jIlk5JDI6UTgBMunSirOqyQ0PYDp/sKGQz0DJSOurJLfYfW26p6D3IN8CzSPHeWXTd
 ZsOq46qLi7jZJH1JIa6S5TcMSvp1+7IQssHwjP7FKPLaLcF3LoNYs4YXxBd08N+BY5Ae
 8opQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Di8Y3XGb6m/bilxvYyIwXE6JG/tp6MijdClXTqEx83Y=;
 b=j3ruT4EWZF4wL95l5Rv1GL0InMRfmpYkMfqXXXpDmFT2HFGbVmvGPLqW4uMCv5pySa
 n5w0/CUYmyFymEs6gb8CQKsJcLS9uor2k2eBVrqyUOnHz9xt7zjnxNdrc7hgI4ejau9+
 fZvM6Bfv25PNPee9qvzNHL+DeWF1XaMlmUJsv4Orub8ZadAvV3bLDFA8ZPZgms4Y7Zlb
 RtycxuYOazbzxWtr9qqkHKYCgY1L+vqZNvFYRv5PtqYbY8My2VNyVDmamyNF+aZ02gm6
 7HYrHWV6pSFn06Ngv0GaI3UYhOwvXsD+2uL7+fHG2IQ8e8t6/WxZxm84Oz+0cfqHi2WY
 8qHw==
X-Gm-Message-State: APjAAAVK1vuEmOG7ta44/9wERfYO+uWkvTdwqOdsgj0E3Zv5oedGyN+Z
 yzot7IxzyF2W5TzQIvztQVaGxNvE
X-Google-Smtp-Source: APXvYqxpCCDzMfjb8SyZIr3trtHVis8VnucsxdWW/bQj0Fkp0/lB+CYz2mjc1vJyzs7ulOQTu542Qg==
X-Received: by 2002:a65:5bc3:: with SMTP id o3mr635682pgr.30.1569457237169;
 Wed, 25 Sep 2019 17:20:37 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h1sm168075pfk.124.2019.09.25.17.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Sep 2019 17:20:36 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2] nvme: Add ctrl attributes for queue_count and sqsize
Date: Wed, 25 Sep 2019 17:20:23 -0700
Message-Id: <20190926002023.14033-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_172038_282069_87C8ECB1 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Current controller interrogation requires a lot of guesswork
on how many io queues were created and what the io sq size is.
The numbers are dependent upon core/fabric defaults, connect
arguments, and target responses.

Add sysfs attributes for queue_count and sqsize.

Signed-off-by: James Smart <jsmart2021@gmail.com>

---
v2:
  Updated is_visible to not show sqsize attribute on pcie controllers
---
 drivers/nvme/host/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e0e2dcbfd05e..d3c85c6d9230 100644
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
 
@@ -3133,6 +3137,8 @@ static umode_t nvme_dev_attrs_are_visible(struct kobject *kobj,
 		return 0;
 	if (a == &dev_attr_address.attr && !ctrl->ops->get_address)
 		return 0;
+	if (!strncmp(ctrl->ops->name, "pcie", 4) && a == &dev_attr_sqsize.attr)
+		return 0;
 
 	return a->mode;
 }
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
