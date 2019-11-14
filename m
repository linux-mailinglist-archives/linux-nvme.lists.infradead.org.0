Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386C0FBEC6
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 05:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAbDrSAEKUBTXLpeGoolV+KmPkpw2e1k9SH87z8NWJY=; b=s7jUV4wtgpjmsU
	v/mmR/UfcYPpd4QIBzM75THDwFktSzybVNGWMuQEjDx7P9Cm5n9x1LpqSgXfJlhKigtK5tQHXJHRX
	CxiYyZp1nl8ur4NfRF8RuGxj2J2EGVmIqsqQBhdcdP4/X5t5d6gH0IXsWCZdrC6t6ncWQkT68b99W
	0krxvhwh2/iKMyy/knJG5dZQ0zCG4CCCCa4+MPIU4Xw9sTpMn3Gd8eXMhYbcd7eN/IoEI+mdMLeQ3
	MEQL3x+ZOS7alFVYcg+nIF24c07Zt6u4QmJOXFoc5dicgkSHeRz1h/zXLdwUxQu2netx3uIi/th+r
	YfxbdNiSuSlRqf//qlpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7BZ-0000UD-LV; Thu, 14 Nov 2019 04:56:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7BW-0000Tp-GB
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 04:56:47 +0000
Received: from C02WT3WMHTD6 (rap-us.hgst.com [199.255.44.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44305206EF;
 Thu, 14 Nov 2019 04:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573707405;
 bh=ZybG0U1xdPivojU1aM7/ARWNkO4aTSHoq2U65hEhQM8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nlfxm6aG8zxVLFEigistX/daoshfuGSG0pvD2Xs5rmu51b/JqTNCQjJ4RdEyRvjl3
 r7Rb8NbwWOa+zDmzeqbxzwnR0xiTIKKiVG2vWDcAUa5brAtUXW6Y0ImeZm4D1JSwhh
 xxDYRHjUlfY/V8jvkEFSDid2Qep3559LSvDOxiSo=
Date: Wed, 13 Nov 2019 21:56:43 -0700
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191114045643.GA97802@C02WT3WMHTD6>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191114025917.24634-3-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114025917.24634-3-ming.lei@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_205646_564306_BE2EF245 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [199.255.44.250 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 10:59:17AM +0800, Ming Lei wrote:
> @@ -912,6 +917,10 @@ static blk_status_t nvme_queue_rq(struct blk_mq_hw_ctx *hctx,
>  
>  	blk_mq_start_request(req);
>  	nvme_submit_cmd(nvmeq, &cmnd, bd->last);
> +
> +	if (bd->last && test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags))
> +		nvme_check_cq(nvmeq);
> +

You've given this quirk a special completion handler, how about giving
it a special queue_rq as well. Then you can check the completion queue
during submission while holding the same lock as before.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
