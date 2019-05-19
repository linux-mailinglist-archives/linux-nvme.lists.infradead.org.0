Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACBE2270C
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Chgc/H0NlzIj8dLX4c5UAtHZeqS6ZxrtPYY7sDia+Ng=; b=Tm9cLjpbpqb5i6emIre32XN3pD
	hE7FnBcrc4Jgryqe92hheURwHTT346oOqV9XvQ+v9nkFSmISc+wEsVag5EZcC4sw20Wknb3seSlA0
	BSZgDrssBeanYn0ZHYho0U+dtRFrFusdjDu9j1BwnNNwWvZUhEF3KdwfXmcQsp8mLNFuDAwTaPAmM
	mH58JbhJylxtgpJ8QTRCwz+KFLjejU+SvOm2dYxlp1A8rdDi7k+bfPTx+T0zctV2OatPO+MVmStBK
	XlU3e/MaqOCOB9Jor72WZb89YySX7hmt4OQkcsMQVAdtniPf0JHvHxRCglHe9MOfIbMIqGlqrem0s
	I+fmENUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNPO-0004j4-Dk; Sun, 19 May 2019 15:07:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPC-0004gj-RA
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn7so1357608plb.10
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jB4evmSjIyyzoY4IpPjL+YtUlTvS8iRZCCRZv1vzwBA=;
 b=NHaRhKQKbAyHAoQJTKs5LTP9FCcTMNMRbS9r7lMAp79aP3YgJKHu1S/JavCWiBabRN
 drpE5t9qk86jlpnTfBn4v04jFDBbrKY3Wr2KrpEfto0PQc/bPx8CF8ByGZGO6EgIm/6F
 qIdbFiw8BQps8IRo2ybliCf0xchvhoJ9M+n8XzK/4bfhGg2m2I5EcBt6z4aS9gjq8Qoo
 HtGGGX/wfUpKazlvC1B7dMgpXSijW/rpcz50E4I1XcVme81KysRlCGbl9OwEGGxjIpKR
 ramWJa6T0jQlRKuhsGhmGojfHc2Hgbu1ql3GdSVxEs7HZkp3MJ7TubBJfQIkzfz1C+wV
 a45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jB4evmSjIyyzoY4IpPjL+YtUlTvS8iRZCCRZv1vzwBA=;
 b=mS0o+3UiSPSB+dRDMOCNBeelEIFrALWWwNhvxvpsFD35dzA9w4nVlblRpIYT2EdS82
 vGF6xjLCw/OvPngk3WQksizVuZVQFOufuonl3vh02BujSR0wvWai2sg9rsmhCprTeIw3
 YjkndqPHGK64Fqv+G70GcVvoxgiymbkHXWxE7v9auGlRqM4tUu9j3vI2xYbdj+R3Nv0B
 lRHNmfyxtuGJmZhTV2zc4LshHS+NQ2f0kzH+mSlRzBZ7/JYszGmhR/TH7hSNhn1k//Z6
 +zDhFlrvSb4BVnC0lhpoMtzPzXJO4L0dc7f/9DWNNauYmytRluwc3GT4XsomVnvlvT9F
 Typg==
X-Gm-Message-State: APjAAAXc/UTP1BHBKQUZoxCsJEf/Wzj4qIGPAuvmkCCAuqWkH//nDXVJ
 Dw/CwsisUmdC36mPiQy14OVGjAGA
X-Google-Smtp-Source: APXvYqyUDgN/KpPP9tG8iY+ZZCSCSYwDzbyPs4GZorShASILLZSZbMIxUE38gbPfuf6hcVv39j2S5g==
X-Received: by 2002:a17:902:bc8a:: with SMTP id
 bb10mr13365675plb.310.1558278437888; 
 Sun, 19 May 2019 08:07:17 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:17 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/7] devcoredump: use memory_read_from_buffer
Date: Mon, 20 May 2019 00:06:52 +0900
Message-Id: <1558278418-5702-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080718_886231_773DADE5 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- Add Reviewed-by tag

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
