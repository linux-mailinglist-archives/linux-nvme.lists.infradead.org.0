Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A8B1FDEF
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yX3IKDDFwClhZ3KPYj7+udZajAehwvvduYKz3w13aKE=; b=nfwFr0xXgqW4F4
	6DdMTQcOinLt4w/Mg6prUfTMSzo50CjpCoSt1ydHC7Sr5Bf1pKUoC7t2W9JFiy/QwgBVWqcSB20kb
	LiZh1pRljBfJcZrgNpP0lAnpqAiHi+eiHs7Pv1fJRKze7ILt0ebXUj6wvalLfkMAFfK5LADI1OyCk
	eynD7gykPORcfEHPKv7BKjDuSO6x2Xx8znxdgmiP9Bux2JseLTFSMVFEkKhQqSieQAoNaERJKkGTH
	gRSNwIIwP/NYm+Qfx0QzV6Y6MkCOKEuWea3/R+KdK5Jr5/c6x/xfMJWiZtH92TNyEaDrPMI7oQYUg
	YbqHxUMnOUK2k4S037bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6jw-0008Os-0X; Thu, 16 May 2019 03:07:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6js-0008OT-24
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:07:25 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 60A1F3082A8F;
 Thu, 16 May 2019 03:07:23 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F7756A245;
 Thu, 16 May 2019 03:07:15 +0000 (UTC)
Date: Thu, 16 May 2019 11:07:09 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 2/6] nvme-pci: Don't disable on timeout in reset state
Message-ID: <20190516030708.GB16342@ming.t460p>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-2-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-2-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 16 May 2019 03:07:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_200724_122214_B2191C00 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:36:21AM -0600, Keith Busch wrote:
> The driver doesn't dispatch commands that it needs to wait for in the reset
> state anymore. If a timeout occurs in this state, the reset work is
> already disabling the controller, so just reset the request's timer.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/pci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index d4e442160048..c72755311ffa 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1298,13 +1298,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  		shutdown = true;
>  		/* fall through */
>  	case NVME_CTRL_CONNECTING:
> -	case NVME_CTRL_RESETTING:
>  		dev_warn_ratelimited(dev->ctrl.device,
>  			 "I/O %d QID %d timeout, disable controller\n",
>  			 req->tag, nvmeq->qid);
>  		nvme_dev_disable(dev, shutdown);
>  		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>  		return BLK_EH_DONE;
> +	case NVME_CTRL_RESETTING:
> +		return BLK_EH_RESET_TIMER;
>  	default:
>  		break;
>  	}

RESET follows controller shutdown(via nvme_dev_disable()), the only
possible timeout should be on admin requests staggered between shutdown
and changing to NVME_CTRL_CONNECTING, given admin queue isn't frozen.

And the admin queue should be fully workable after it is unquiesced
by nvme_alloc_admin_tags(), so if timeout happens after nvme_alloc_admin_tags(),
I guess these requests should be handled as in NVME_CTRL_CONNECTING.

Another related problem is about handling timeout in NVME_CTRL_CONNECTING, and
the following failure still can be observed:

[ 1078.775969] nvme nvme0: I/O 20 QID 0 timeout, disable controller
[ 1078.791730] nvme nvme0: Identify Controller failed (-4)
[ 1078.792538] nvme nvme0: Removing after probe failure status: -5


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
