Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D0727A57
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 12:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmUhr6MtMth8+nrFs9RfEQoUa70enfUyb1Gd9WUywjE=; b=UR7SVOWu0P/J8J
	wHtc1VRRyW4Ru76+ki9UvAAcWFFL24tuQ1mrnLMKhELUurPqOntivC2+wq8uTk0p6XtKIt17INpIh
	xsaT+94cilKSbvt1Y++dvy99LiJGk8NQggn38gQVJ3mTIDRP4EGQNYJGsY2AmGRc6ewGZ+zh/PVt+
	u3Sa2N9WonFXOs9whn256eXzRQspmLMZCFf6yper85/rboKW67B+lidZjaDSZ8EeyVOuK7QOh3MjT
	UjtDYEWBONE/l6cV4fMH7Uc9rXR8C1cVHLvgNkgQX/z14Ds0Oci9OGrlECxDJsvnpMuWapd6LYF+u
	tjFEIgBHbrwWzRoFK6/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTksh-0002WC-Ob; Thu, 23 May 2019 10:23:27 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTksF-0001ye-KV
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 10:23:22 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 16EF368AFE; Thu, 23 May 2019 12:22:37 +0200 (CEST)
Date: Thu, 23 May 2019 12:22:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and
 transport dev
Message-ID: <20190523102236.GC15492@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032300_554163_72529179 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: shlomin@mellanox.com, israelr@mellanox.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
> +				   struct nvme_rdma_device *dev)
> +{
> +	ctrl->device = 	NULL;

double whitespace here.

> +	kref_put(&dev->ref, nvme_rdma_free_dev);
> +}
> +
> +static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
> +				   struct nvme_rdma_device *dev)
> +{
> +	kref_get(&dev->ref);
> +	ctrl->device = dev;

Why aren't these using nvme_rdma_dev_put / nvme_rdma_dev_get?

>  static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>  		bool remove)
>  {
> +	struct nvme_rdma_device *ndev = ctrl->device;
> +
>  	if (remove) {
>  		blk_cleanup_queue(ctrl->ctrl.admin_q);
>  		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
> +		/* ctrl releases refcount on device */
> +		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
>  	}
>  	if (ctrl->async_event_sqe.data) {
> -		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> +		nvme_rdma_free_qe(ndev->dev, &ctrl->async_event_sqe,

What guarantees ndev is not freed here?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
