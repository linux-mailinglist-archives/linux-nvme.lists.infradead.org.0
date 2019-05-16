Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCD720FF1
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 23:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFoHleqCgZbNA6OdmrF+r224umAk2Aj/Q3iZfNPRweU=; b=nX7xQiJPF2bYGO
	U1ve354lSCOC4HwqQVDwf46HMP5B6hJ4B2yeiuydBtDuABipNJjioOQUgkrj11DsRZhF7vfYaEwXk
	W7LHGxSuDy0apEzQjEaGx9XKeeUyPEzi3ejPs1Chx9vs18Oh/Y+4eOdb5oMCQ9AzLrYRSGtmmnZkI
	tcfOqLDZaTNnZ2k2pRT1s9eJozYchp2DCWXDe65wdYLa+YnsPdX1QNERIUmlspTVcMZ3hejR39Scy
	paQ2SF96sQ3nsoTVz7J+6HvO88Imq+yiTR4Qmh7kpz+c/ZGo+MV4xqAedE0KrRhy4hLFlDpmCwgVx
	6R746M+h+AICiGPsW5fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRNmK-0001s3-IG; Thu, 16 May 2019 21:19:04 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRNmF-0001rI-3L
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 21:19:01 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 14:18:42 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 16 May 2019 14:18:42 -0700
Date: Thu, 16 May 2019 15:13:26 -0600
From: Keith Busch <keith.busch@intel.com>
To: Yufen Yu <yuyufen@huawei.com>
Subject: Re: [PATCH] nvme: fix memory leak for power latency tolerance req
Message-ID: <20190516211326.GB23955@localhost.localdomain>
References: <20190516030521.40374-1-yuyufen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516030521.40374-1-yuyufen@huawei.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_141859_194206_7FE0A63A 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "luto@kernel.org" <luto@kernel.org>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It's perfectly safe to call dev_pm_qos_hide_latency_tolerance even if we
never exposed it, so I think you're making this more complicated than
necessary. Would the following one-liner work for you instead?

---
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f2411d50e764..0899dc5645a9 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3697,6 +3697,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
 void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 {
+	dev_pm_qos_hide_latency_tolerance(ctrl->device);
 	cdev_device_del(&ctrl->cdev, ctrl->device);
 }
 EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
