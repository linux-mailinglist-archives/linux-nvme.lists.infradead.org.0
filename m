Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB43314E21
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 16:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi1/2VE2FkOsql1RyGSOisk60JPEhTUY2maLg8oLHvQ=; b=NatPn4Q7E2GwVh
	Fdztn5wHZzUWlHf5gg1+2PCfRn59ENUQcshQ6N/63H6vp9C1ln0EBhvpgx3W2u0ljpdL95UNRJMAy
	VLQ/uVFDbciwvzLuqVm89Cu726T4ZGj6fpkuVYZhaVII/vbi312S2E67CLikeWcbq+cocuHH/kTtQ
	0GC/GlPTS9XeKw7Wlvew7+rUCSfRi+cmXnacpGo12j/xgyQNX5+1tMO/fI48QXbQUQzsgVuTLJ4Pu
	3LsKrtekCJ1avl0LdoIcmmOS5p8BNK/1Yyp+QB/7F4B33v2MNUb24xzAyIXMBC39jroDcICJj0QqR
	clhIiUT2J+pQfcNb1tBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNf5B-0003U7-OU; Mon, 06 May 2019 14:59:09 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNf57-0003TT-DL
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 14:59:06 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 07:59:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="141834938"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 06 May 2019 07:59:03 -0700
Date: Mon, 6 May 2019 08:53:27 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
Message-ID: <20190506145327.GA2164@localhost.localdomain>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_075905_501380_0EFB96FB 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 11:52:03PM +0900, Minwoo Im wrote:
>  static void nvme_loop_shutdown_ctrl(struct nvme_loop_ctrl *ctrl)
>  {
>  	if (ctrl->ctrl.queue_count > 1) {
> +		nvme_start_freeze(&ctrl->ctrl);
> +		nvme_wait_freeze(&ctrl->ctrl);
> +
>  		nvme_stop_queues(&ctrl->ctrl);
>  		blk_mq_tagset_busy_iter(&ctrl->tag_set,
>  					nvme_cancel_request, &ctrl->ctrl);
>  		nvme_loop_destroy_io_queues(ctrl);
> +
> +		nvme_unfreeze(&ctrl->ctrl);
>  	}

nvme_stop_queues() and blk_mq_tagset_busy_iter() really don't make sense
to call on frozen queues.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
