Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9222696D
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 19:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o+zwtC9xaR/7Ms5SVpWlBTGi0IJFCmK4vRsnsvf6EhE=; b=Bau
	1urCGzugcQHiOvgvXVLp1YPCI6wTa4iaZwYrCs487KyTcsqIF+EJ7bCPNXzYq5/Qq3La+Fx8zPPyC
	SYeKnFLZDUPX71TlyhsSr0XbNmluv4k0i34p85OAoe2JiVmBGCSPeIjs7dXpU+gbxy5h5VX63psib
	oal91OA4AKoaSEN5hlsrUuA8JOUw9eyr6VOBE4MeKiq4OZ0ZB/9VfVUF5Ou6krcuToR62msFV0WkK
	NWMQHFjpK0qkDouKGS5g0bDHEEM7L3xFgA8fGblNGm7p6F1Aga64/GBtdMpgIVMSuZ2s/ea/zlWw0
	GZj4A0u1EYt5kS23jdl9wFmQELQPPZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVQY-0002UN-G0; Wed, 22 May 2019 17:53:22 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVQS-0002T5-N9
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 17:53:17 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 10:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,500,1549958400"; d="scan'208";a="174471726"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2019 10:53:15 -0700
From: Keith Busch <keith.busch@intel.com>
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org
Subject: [PATCH 0/2] Reset timeout for paused hardware
Date: Wed, 22 May 2019 11:48:10 -0600
Message-Id: <20190522174812.5597-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_105316_785859_F94FAC85 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hardware may temporarily stop processing commands that have
been dispatched to it while activating new firmware. Some target
implementation's paused state time exceeds the default request expiry,
so any request dispatched before the driver could quiesce for the
hardware's paused state will time out, and handling this may interrupt
the firmware activation.

This two-part series provides a way for drivers to reset dispatched
requests' timeout deadline, then uses this new mechanism from the nvme
driver's fw activation work.

Keith Busch (2):
  blk-mq: provide way to reset rq timeouts
  nvme: reset request timeouts during fw activation

 block/blk-mq.c           | 30 ++++++++++++++++++++++++++++++
 drivers/nvme/host/core.c | 20 ++++++++++++++++++++
 include/linux/blk-mq.h   |  1 +
 3 files changed, 51 insertions(+)

-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
