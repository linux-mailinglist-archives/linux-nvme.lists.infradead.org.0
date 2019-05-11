Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C821A802
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 15:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LFa7dcKkZ0Bt/AEy+uG3CDNxsqw3XphiOWeTLTj6e2I=; b=hKrkC53EoiI4DOqFvTRJ4O6dXs
	Rea31M4sj/nLRZ2/jMOHUOAW3ORb6lctiTc1dVfbx3SsLkS4RRyvj6rDrSlcgC7k0sL37aI+E3kRk
	BWFCGaRZYZkxZYN/1HlGy7oIp6O2190wKBA07K1Em3+3QkCZFGtQz9sJdQnL5YIc63XHf7UaLfsJP
	FUIHeRk4i0Q0eHHh3suEy2cZkDgu7GkSqsRts9Dr/cjZTODpe5P7A/4SbSaTD4NtOQyX6/ZAB+9X8
	PR1y5YsEmp0nUTyhMSWtyU51Ld9Y79XMLtqM/NjMUyqHLR9rl+Cpx4VkFmuPKvU2DsoGBWOfg5SB8
	24XJwyhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPSHk-000332-3v; Sat, 11 May 2019 13:43:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPSHX-0002sU-Kz
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 13:43:22 +0000
Received: by mail-pl1-x641.google.com with SMTP id n8so4141484plp.10
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 06:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cUagCBrJBgjUY3jk6a8d4Yc9R8N5U2nU0KTPwP+hh94=;
 b=jU0F3u02CPIyPxX1yfQkm76FfSb70zNYtquXbq4ECENBZUR2LAtTEbxFTEgYjEBhVO
 qZEYXEdNRt+Ec7kSlsPZRSSG3GNW3LWVQEn4BQE6y/wf+cI/0MKHgIibIFhcGuWJS2jf
 w89j4DMDSjVf5b0QApJLhG79Rjd2iHnm7dhj9/jGQMH2yGvoyqPvorv8iAATMXX1zAAH
 R6iqSQHiHV2uSdSN9qF4/YFtKN+4nHzWNpR/ulHQbC1gfeyIjXk3Sbkvxp6YajfSzQpU
 /fyb4jfr4+Z20P8MqH6dxhexbDq0GZI2MU0tMPJhvcSH6yBPc/7UK+sE5gBQFkBxigV4
 qeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cUagCBrJBgjUY3jk6a8d4Yc9R8N5U2nU0KTPwP+hh94=;
 b=nt2xzJGjy33HQ+hEpLRiTPzPeksGQRQqn2eEWkI8BEZmsPWytQFgpZy9JFEHySfJDr
 GH/qjQICFBVh1f6glnNVosrjBjD9x6t/SPS9ClJDbMDgZxbXR6xskvvn/9bq4u65ltLE
 8MQhPpHNDUa6vpYyl0XTGmSkiFSt7Ms7x/al6FfQ0ZvhPyEguMSDnewPHTC63FvoQ78r
 tY9jof8vTwOWSDFJxfygkrk/MeIod5m+vob5QShTS/Hj0v2j8AtRH5TPvti6vG/seQeG
 /3c2iafVA95Yhcl3Y4JvcbShAEODjHZVcroQEO2u+XqdBPJOF/4f83kKJj/dOW83KIUx
 np0Q==
X-Gm-Message-State: APjAAAVueSGhS62jzT5OzzzC/AHDVphQbm2nVJekg3A5lNPn0QnFIOt9
 fvRU1URan/oxB3kj09YHC+4kSBKp6G0=
X-Google-Smtp-Source: APXvYqxUMAOvtJpZh9Qqesmk8KHdiZ0B74NL+cacycn7DswOY0O0hUu4Q2H4+g8gF/OtrN6uQGyfnA==
X-Received: by 2002:a17:902:9f85:: with SMTP id
 g5mr15170880plq.29.1557582198441; 
 Sat, 11 May 2019 06:43:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i17sm11118004pfo.103.2019.05.11.06.43.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 06:43:17 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvme-fabrics: Remove unused argument
Date: Sat, 11 May 2019 22:42:55 +0900
Message-Id: <20190511134255.6790-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_064319_906521_19B1510E 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The variable 'count' is not currently used by nvmf_create_ctrl(), so
remove it.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/fabrics.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 592d1e61ef7e..5838f7cd53ac 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -978,7 +978,7 @@ EXPORT_SYMBOL_GPL(nvmf_free_options);
 				 NVMF_OPT_DISABLE_SQFLOW)
 
 static struct nvme_ctrl *
-nvmf_create_ctrl(struct device *dev, const char *buf, size_t count)
+nvmf_create_ctrl(struct device *dev, const char *buf)
 {
 	struct nvmf_ctrl_options *opts;
 	struct nvmf_transport_ops *ops;
@@ -1073,7 +1073,7 @@ static ssize_t nvmf_dev_write(struct file *file, const char __user *ubuf,
 		goto out_unlock;
 	}
 
-	ctrl = nvmf_create_ctrl(nvmf_device, buf, count);
+	ctrl = nvmf_create_ctrl(nvmf_device, buf);
 	if (IS_ERR(ctrl)) {
 		ret = PTR_ERR(ctrl);
 		goto out_unlock;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
