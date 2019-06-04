Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1B23547C
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLPqZSUhBe59CJCAvDiPDJyhnv+ccQJIbgr1EJFXM3o=; b=b7b1dksb1GAURr
	MJ/pQ4lfIm/tjwdZHK5m213SXGnP1A08TQdvnYkQ5fmVhrv8pt51YIrnxnAqL/Vx0JKKApXKhc4Wx
	p+eQWQcTaa+3W/e9UBtNA0GyTMlBTzYWV+SSQcxOSfKvv5i+w9Je96iljznuPE6v7xTcj4XKWOrxA
	79h3yLYl3nVlSwVbxMwqViWrvnxsjLCX2JWDJZOvrg64GoFAIko+gA7mutj8Vaan336XyW/iIomXP
	gjkngl3SHx88DQkjApi1eK/vrJr/2wLzL91euQq0kX6qqyEOlO5wkMNIlng40Ft7VMVFIhhFi0K6P
	dB2loH2yJ65sBeYvAqVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJ4l-0001Sa-Mm; Tue, 04 Jun 2019 23:42:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJ4h-0000ZB-W5
 for linux-nvme@bombadil.infradead.org; Tue, 04 Jun 2019 23:42:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KrEy5IrszLxUBl7wRi2SXCHUcxuWshIOZAbp4m7DOg=; b=aISfBf1c5zj4FF0I7R8qe7Ziiy
 L1qBkmI3zl9xnEW0ZSUSE3cvjXQicqQYqA10Cb2knk2eNcEg2B2LwNXbf0Wl2LthLGtc9dpidq1eD
 OrXHcsDB3w+kbGPSBIIeyaQXv1Oti+xpmCfbK0yOQCr8UChVtStYTFx4LXTpkK5aKEj5WG5nv+p/h
 0Wu2gouFQA0nm5aIJFBIGy4xLewnEXp0yf9WEGbMSx6OWx9rGe/0ciuiyxYIiVCjkjbH2kYjoGYFN
 TRRU9BEd3FnmB9qGoSHL36fo5FHFgr44GOK+amDEXmZZNyokc37gSSoWXoVYg8GtDUrLzWcyg0MqW
 pk+VPK4w==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYInP-0001ho-DB
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:24:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E979206C1;
 Tue,  4 Jun 2019 23:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690686;
 bh=EaaW/+t8hbUzXkNE1JMimrs54aQG7lysK7CNNgNh9EY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wYCfnD6ELXAf1viN847zxy9T6CFalqGkIhTXmmCLvSffudvelDZGL0dgzjyPyORw/
 9U72OmaeuO3jnEali6+WHqeao/65ZN6umIpTozVDLSwbBbdIUoIeYh1zh/qoG2hujg
 VfGm3bQgk4nuYocpy3BnmrTWE/mF2a8zpo1beYFw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 15/24] nvme: remove the ifdef around
 nvme_nvm_ioctl
Date: Tue,  4 Jun 2019 19:24:06 -0400
Message-Id: <20190604232416.7479-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232416.7479-1-sashal@kernel.org>
References: <20190604232416.7479-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_002447_741191_C3247540 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 3f98bcc58cd5f1e4668db289dcab771874cc0920 ]

We already have a proper stub if lightnvm is not enabled, so don't bother
with the ifdef.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 65f3f1a34b6b..d98ffb1ce629 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1042,10 +1042,8 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	case NVME_IOCTL_SUBMIT_IO:
 		return nvme_submit_io(ns, (void __user *)arg);
 	default:
-#ifdef CONFIG_NVM
 		if (ns->ndev)
 			return nvme_nvm_ioctl(ns, cmd, arg);
-#endif
 		if (is_sed_ioctl(cmd))
 			return sed_ioctl(ns->ctrl->opal_dev, cmd,
 					 (void __user *) arg);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
