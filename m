Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7057209E5
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ww+bZGP5AdTQtDCi1u/dgI4RHji2kaIdSqr5yCKFmnw=; b=Jwaap8egeNZqh8
	6L26C1xuprBIWUTwmDW5Ry7AluOS9iORQNH0N2zyqaNM/8XlQ6Q0dPNlsKeg1oQ4gDza38VMT2sP+
	4c7tvs4zubTmcPeoLyBsvxH2iCoz4zrF+qBbFAea+YH5gJft/Ha2KUXwQsI4oBoReCETQJH4mxsUZ
	72htRAgT5jmaZftP/3trH08jEl6bNp1WN0EhEjOFWNMrcQMC7aE5Xmv3zhspFcR+x1UwULtBYt7Cb
	KzTtoma7HnEB4Ex5DjBqm8TjxoYktWQFxulEn/23GxaIKlydE/3w+JkFib/A1yUK6vXpnmWIf2OTl
	PdU0KlEzZAO67ArJGhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHXM-00069l-QE; Thu, 16 May 2019 14:39:12 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHXI-00069O-8g
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:39:09 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:39:07 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 16 May 2019 07:39:06 -0700
Date: Thu, 16 May 2019 08:33:51 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 2/6] nvme-pci: Don't disable on timeout in reset state
Message-ID: <20190516143351.GE23333@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-2-keith.busch@intel.com>
 <20190516030708.GB16342@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516030708.GB16342@ming.t460p>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073908_314607_E54500E8 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Rafael Wysocki <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:07:09PM -0700, Ming Lei wrote:
> On Wed, May 15, 2019 at 10:36:21AM -0600, Keith Busch wrote:
> > The driver doesn't dispatch commands that it needs to wait for in the reset
> > state anymore. If a timeout occurs in this state, the reset work is
> > already disabling the controller, so just reset the request's timer.
> > 
> > Signed-off-by: Keith Busch <keith.busch@intel.com>
> > ---
> >  drivers/nvme/host/pci.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index d4e442160048..c72755311ffa 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -1298,13 +1298,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
> >  		shutdown = true;
> >  		/* fall through */
> >  	case NVME_CTRL_CONNECTING:
> > -	case NVME_CTRL_RESETTING:
> >  		dev_warn_ratelimited(dev->ctrl.device,
> >  			 "I/O %d QID %d timeout, disable controller\n",
> >  			 req->tag, nvmeq->qid);
> >  		nvme_dev_disable(dev, shutdown);
> >  		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
> >  		return BLK_EH_DONE;
> > +	case NVME_CTRL_RESETTING:
> > +		return BLK_EH_RESET_TIMER;
> >  	default:
> >  		break;
> >  	}
> 
> RESET follows controller shutdown(via nvme_dev_disable()), the only
> possible timeout should be on admin requests staggered between shutdown
> and changing to NVME_CTRL_CONNECTING, given admin queue isn't frozen.
> 
> And the admin queue should be fully workable after it is unquiesced
> by nvme_alloc_admin_tags(), so if timeout happens after nvme_alloc_admin_tags(),
> I guess these requests should be handled as in NVME_CTRL_CONNECTING.

Yep, the only timeouts here should be requests that we've already
reclaimed, or are about to reclaim, via nvme_dev_disable called
from either another timeout work or directly in the reset_work. And
nvme_dev_disable handles its timeout, so we don't need timeout work to
unblock it. Either way, we're never blocked in the RESETTING state.

> Another related problem is about handling timeout in NVME_CTRL_CONNECTING, and
> the following failure still can be observed:
> 
> [ 1078.775969] nvme nvme0: I/O 20 QID 0 timeout, disable controller
> [ 1078.791730] nvme nvme0: Identify Controller failed (-4)
> [ 1078.792538] nvme nvme0: Removing after probe failure status: -5

Right, we will fail the controller if it fails to produce a response to
any initialization commands. It's either that, or try the same thing
atateain, but I haven't seen much support for doing the latter.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
