Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93192120F
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 04:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvoZqVH7qij6mrI6rycTazCVd7WnZ9LTWNzsnS+OEYQ=; b=FcCE+1eew/JC57
	/KATFOOXoRN6KSvTY3yYCxTpfDJX6m7B/hWPtGilMBvanyZWj7vANnh5HmvWFxf/vtsfP5Wrs5CTi
	d3GAJPqae2pziGLHobp2SjreNncRH5bIDhmz/uG+PWyweNMFK/jh0V90iPkNObneyb93j/98kiMPQ
	MGTRlEkQWMDOL8CT1O73WXlI96LhpH6gpRuAPQYLAz0Cem6C5pnPAUwkjyGzYht9W3SVvCzVCDojz
	960SEczBRlaSFe9igCTn4Lgfs49gNzwNkf3TJEjJ/0pcIA3DRXpcYu2iWIRp7ofyCRN4N9/CuQOuk
	TmPGCwYb6gvNYogw3ygQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSfi-0008FK-DT; Fri, 17 May 2019 02:32:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSfa-0008Eo-85
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 02:32:29 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6209C30821C1;
 Fri, 17 May 2019 02:32:16 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C094C5E1A2;
 Fri, 17 May 2019 02:32:06 +0000 (UTC)
Date: Fri, 17 May 2019 10:31:58 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 3/6] nvme-pci: Unblock reset_work on IO failure
Message-ID: <20190517023156.GB6201@ming.t460p>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-3-keith.busch@intel.com>
 <20190516031333.GC16342@ming.t460p>
 <20190516141435.GB23333@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516141435.GB23333@localhost.localdomain>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 17 May 2019 02:32:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_193228_418323_83BCF559 
X-CRM114-Status: GOOD (  17.23  )
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Rafael Wysocki <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 08:14:36AM -0600, Keith Busch wrote:
> On Wed, May 15, 2019 at 08:13:35PM -0700, Ming Lei wrote:
> > On Wed, May 15, 2019 at 10:36:22AM -0600, Keith Busch wrote:
> > > +		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
> > > +		/* fall through */
> > > +	case NVME_CTRL_DELETING:
> > >  		dev_warn_ratelimited(dev->ctrl.device,
> > >  			 "I/O %d QID %d timeout, disable controller\n",
> > >  			 req->tag, nvmeq->qid);
> > > -		nvme_dev_disable(dev, shutdown);
> > > +		nvme_dev_disable(dev, true);
> > >  		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
> > >  		return BLK_EH_DONE;
> > >  	case NVME_CTRL_RESETTING:
> > 
> > Then the controller is dead, and can't work any more together with data
> > loss. I guess this way is too violent from user view.
> 
> Indeed, it is a bit harsh; however, it is definitely better than having a
> stuck controller unable to make forward progress.

The controller may be stuck at the exact time, and in theory any sane
hardware should be capable of being resetted to its normal state by
software.

The current issue is that NVMe driver is stuck when timeout happens
during reset.

> We may be able to do
> better, but I think this patch is a step in the right direction.

Fare enough, this patch at least makes NVMe driver not stuck together
with cost of data loss and device removal, so

	Reviewed-by: Ming Lei <ming.lei@redhat.com>

And we might have to support timeout during reset in future for making
NVMe system more reliable, cause timeout handling is the final guard.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
