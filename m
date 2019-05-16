Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B48B2095C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b07VDBsB6LOEj0VLQ/o5Etk+MeTICQK4gC7M6njK9TM=; b=RdJq0OVPbbs5nn
	5pMpyEBc7LC8I30vk5TgwGYa383wMjTyvxt+UrFwo24stchD5NfIOXS8jDvNmvpHhTbqGOKsOgYBR
	6uLUr+piv3W3h4YEeahHwphKgz0L6T2YDuQpxeqCfe16XaljWsHaDE9dQ/KonwJS3Ky/Zd6H7ARQl
	728M5NjlZ1Izc0xUroTWl8yy6To3ln8nf8DnBBzIKiDmpUHF1vf5ZriVjK+EKBTgBKpZ8q3dS5yi8
	iP1S+e7Tne3p5UFmXod3vohYF5U0rdwkwYvfxjPEpOqIO4+e8hBl2MMJGiZnWAaHhFGn0U9HV3Dwe
	N5wvhOQy7dVOU8MuACOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHEk-0005SP-IA; Thu, 16 May 2019 14:19:58 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHEf-0005S5-OB
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:19:55 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:19:51 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 16 May 2019 07:19:51 -0700
Date: Thu, 16 May 2019 08:14:36 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 3/6] nvme-pci: Unblock reset_work on IO failure
Message-ID: <20190516141435.GB23333@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-3-keith.busch@intel.com>
 <20190516031333.GC16342@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516031333.GC16342@ming.t460p>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_071954_002471_6AF76AFB 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Rafael Wysocki <rafael@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:13:35PM -0700, Ming Lei wrote:
> On Wed, May 15, 2019 at 10:36:22AM -0600, Keith Busch wrote:
> > +		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
> > +		/* fall through */
> > +	case NVME_CTRL_DELETING:
> >  		dev_warn_ratelimited(dev->ctrl.device,
> >  			 "I/O %d QID %d timeout, disable controller\n",
> >  			 req->tag, nvmeq->qid);
> > -		nvme_dev_disable(dev, shutdown);
> > +		nvme_dev_disable(dev, true);
> >  		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
> >  		return BLK_EH_DONE;
> >  	case NVME_CTRL_RESETTING:
> 
> Then the controller is dead, and can't work any more together with data
> loss. I guess this way is too violent from user view.

Indeed, it is a bit harsh; however, it is definitely better than having a
stuck controller unable to make forward progress. We may be able to do
better, but I think this patch is a step in the right direction.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
