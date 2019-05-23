Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A600227E4C
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 15:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+1bLvG+P+o5j27ee5aMNZait3/i6788aeGD/ZzuFeQ=; b=Kt9zoZedhyRhTN
	KrQl404Me0xR+0YamkF3c9N+K+qXrodbFk8oG20RjHjienJts2LAejLPHLdv5AMQmXjiA390r1BIF
	ZOhXScV8gGp2YuM9+17QETOpO40UCvL03ZEarGcu6gZ/ohrioMrfq8U+x9lLWGZj3cLy8LU4eyCN6
	/zzCJatakllPr3Bsu27vruCU2cGlX1W8kCIWtVctx5v69+7ZXYGPjr9G9fA8GXUWveBm9cpjj4fuY
	f46ppjZpVBgbh+MQ5tX51yvuFFO9MbFk3vg8QUd/LXXjS66I4HEjLAnL6yOnbLtSpAnmpaKSLUWlc
	FekcX+De7qVjRumkqaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnwX-0004dT-Ib; Thu, 23 May 2019 13:39:37 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnwT-0004cs-0G
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 13:39:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:39:31 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 06:39:30 -0700
Date: Thu, 23 May 2019 07:34:29 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 2/2] nvme: reset request timeouts during fw activation
Message-ID: <20190523133428.GC14049@localhost.localdomain>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190522174812.5597-3-keith.busch@intel.com>
 <20190523101953.GA18805@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523101953.GA18805@ming.t460p>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_063933_053616_EADB0A7E 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:19:54AM -0700, Ming Lei wrote:
> On Wed, May 22, 2019 at 11:48:12AM -0600, Keith Busch wrote:
> > @@ -3605,6 +3606,11 @@ static void nvme_fw_act_work(struct work_struct *work)
> >  				msecs_to_jiffies(admin_timeout * 1000);
> >  
> >  	nvme_stop_queues(ctrl);
> > +	nvme_sync_queues(ctrl);
> > +
> > +	blk_mq_quiesce_queue(ctrl->admin_q);
> > +	blk_sync_queue(ctrl->admin_q);
> 
> blk_sync_queue() may not halt timeout detection completely since the
> timeout work may reset timer again.

Doh! Didn't hit that in testing, but point taken.
 
> Also reset still may come during activating FW, is that a problem?

IO timeout and user initiated resets should be avoided. A state machine
addition may be useful here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
