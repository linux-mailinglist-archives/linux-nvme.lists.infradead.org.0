Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024E271F63
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lzDX6kCrzFbmQKOjEgeXzxbbnXszboTpQVsrXLT/+JQ=; b=rZj1ZcDnYO4yrf1l49no6sQkyH
	xGVT3nacptwbEYW1y7OfNVkpmKqpbHFYaTfwZnAT0AETby22vfSY4o/+oEN73j2myh/wer6hXX50P
	liH6aldBqtd4IvniL9V3JfGJwvltyh6CgHtCon8lV+nNXo0Zjib/d7vLQM8QKvP01CnsGbu8v0kax
	00TxOUZv+CECseZu0twfot99Hci4bdlVICUNBQaR9IqLHW4gktlczhGkk65K/9Th/xdwttpfpmzL6
	DTKFNrxzLbekKssgC0koI2KuwFNPy+cKYes5VUlodfbOg88ZZVfQeQc8L18Tegx/eHS9h6stg1iWt
	xn5P5aig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzf7-0003Dw-Vp; Tue, 23 Jul 2019 18:37:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzeC-0002eP-Cg
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so19839731pgi.6
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VSXh7vrjMxNgS9oQfVhWR88S3j4iBAkhM5x8nqn/ZXw=;
 b=DuEd6Up1VwFvZXDf+8Vh2GepoVQUriEYFji4XZtmc8dFgaMUmhuW6zooOUsp+NSIXB
 oVwAwbCsxHpXM7yDsaKq6H7Wf53uMirr48BuDuxh/qgzzPtFTOycG4uLSkoTFS2gskIP
 Mt1AlgD0frjHJdFJjMWrmHFueblWsysTuV6RVf1PbBkILuPIkoGfH+nRlokm90hWH/dg
 45GIDH427WMVkU9XAaQpA8O0cXtHY8uZCvTL1AdSq7VM4a3g9O6XZHp9OXhM59rctfLC
 4dC1ysswpOs1B4ebdWvIPAtN6zRYgZaK7L8C70V9QttqjZWpuDp/PUX3ZB5Vn2HcHKQh
 RU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VSXh7vrjMxNgS9oQfVhWR88S3j4iBAkhM5x8nqn/ZXw=;
 b=F7V6WCfUCYt7BEoVPBiSn0INNjcX+7eL3/4nlra2VAaNqgmj0NjFQB3vran11DMsI5
 a6b2oAj/xhkan0qXBYcLlEnPoXib9J2yE5JM7JYHBygmVHmLXGL5Li5McAJwJHw2CWPQ
 QKqc7Fsj+HY9XSZe89kHrVPmdyhcTTlXXR5MOOk5smJd0v8rBIK8bBaLhKv8vcYEQL6j
 6HqZoJninKjFCSFQOzZRzN/ExzVB6DqpdLFCyjSqctjUJCF92q8wm5S2AGutTZCxx+Ws
 f6VSEGKYO53B71r769DAu71Q2itJWs7PV6ccbpr26QJlqCbCHgnrqoBVIchS7WUq0P1W
 1k9Q==
X-Gm-Message-State: APjAAAUaq/N9xUOFx+G8p8UBUsTwR1BVMZvoevStKDdSIUmLSj5Y7dnw
 +Ya/b9Di9PBGoQADtSlBL2jXeAZ4Y+k=
X-Google-Smtp-Source: APXvYqy9w21uqQGX1axbhbCiumgigBVHdEPWx5ODclyMqT+ZvmszBYL9FdqQEEpsGTEtkWkGipqFyw==
X-Received: by 2002:a63:e010:: with SMTP id e16mr71767938pgh.285.1563906983486; 
 Tue, 23 Jul 2019 11:36:23 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:22 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 5/5] lnvm: introduce alias geometry for id-ns for lnvm
Date: Wed, 24 Jul 2019 03:36:01 +0900
Message-Id: <20190723183601.29370-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113624_520509_E50D4547 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now we have 2.0 OCSSD spec which introudces Geometry command instead of
Identity or something else.  This patch just adds an alias for this
command for the given NVMe namespace with backward compatibility.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugins/lnvm/lnvm-nvme.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/lnvm/lnvm-nvme.h b/plugins/lnvm/lnvm-nvme.h
index f091f7b..2879a0b 100644
--- a/plugins/lnvm/lnvm-nvme.h
+++ b/plugins/lnvm/lnvm-nvme.h
@@ -11,7 +11,7 @@ PLUGIN(NAME("lnvm", "LightNVM specific extensions"),
 	COMMAND_LIST(
 		ENTRY("list", "List available LightNVM devices", lnvm_list)
 		ENTRY("info", "List general information and available target engines", lnvm_info)
-		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns)
+		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns, "geometry")
 		ENTRY("chunk-log", "Chunk information by Get Log Page", lnvm_chunk_log)
 		ENTRY("init", "Initialize media manager on LightNVM device", lnvm_init)
 		ENTRY("create", "Create target on top of a LightNVM device", lnvm_create_tgt)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
