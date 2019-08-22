Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B9A9886E
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1LsmkTe9vKhpvsXJSVNRvQWxmXsbieSMHuphDdLVd4=; b=akkgLKivoHjpFj
	IRobooWav5XqW87xtGo+J9RN3+AwrzdTMWX4fXl8I/huAAqDgTCDP/XvIJfqOBiH1zFnW3xsAgT/w
	GVx/Qqx3d8Xb1cw4Ui0wzPgD7N8SEZ2X7xZ+Cd+EiJRCqGMTUJISEqgkpt7EY5VmgfHKpy/PNnohg
	x1K8Ni2xg53+VO5xgZ4Dbmy1+t6HlEh5FqvK8nySeHUp+Ehi8YsaiowulpPm5M+yjwYUGqiBniwq0
	TuKH+xs396JNx/pqc0mG8KU7BXFrE/DkeRbh2HePz7GXoZeGxYT9YP6jhN7kSsWz7d+FRdOx47Tby
	bZJocqA1w/g4Ll6ajXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0apt-0006zB-PE; Thu, 22 Aug 2019 00:20:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0apo-0006yi-DY
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:20:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id ABB8A68BFE; Thu, 22 Aug 2019 02:20:08 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:20:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/3] nvme: enable aen also for discovery controllers
Message-ID: <20190822002008.GO9511@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712180211.26333-3-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_172012_610878_9FBA3488 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	if (ctrl->queue_count > 1 ||
> +	    (ctrl->ops->flags & NVME_F_FABRICS &&
> +	     ctrl->opts->discovery_nqn))
> +		nvme_enable_aen(ctrl);

discovery_nqn should only be set for fabrics, so that checks seems
redundant.  But why are we only enabling aens for queue_count > 1
anyway?  It seems in no way related to having I/O queues.

> +
>  	if (ctrl->queue_count > 1) {
>  		nvme_queue_scan(ctrl);
> -		nvme_enable_aen(ctrl);
> -		queue_work(nvme_wq, &ctrl->async_event_work);

Also we are changing ordering here, which at least needs to be
documented.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
