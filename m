Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36E1E1BF9
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 09:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tay4ZqUrLLu5tw192gKuLNhuJH65V1pg/5JVLuntRmA=; b=j0VJhFtxZY50C7
	SGusUhxPcE/eiStuN1vf0SYvMQN9lIZZKoOoRNffHRSjU4VaBOJdF4qVB8tSHvyOB/BZkk16L5J7O
	Jyd5N7YTpIzdhxPogN6HZjpH/XINELlRpDULwHEK1irf1aKVyKnoe45A80+NM4k4hgJfUVlGT+UmO
	MzpzPObdYm06hw+6zjVZtkximAnRRcZTBSyqKeEHV64YYQT8SWKABQajr+eUGdvWhKy0vncaADQ1/
	P8IZc1e3bYxrJcFAZRpmh874MApsGzJ9ovvHu265nENE+l+50sKVGuKPQTwrAp2hcc4cCSNUBtQXb
	stHfm1ibn86st8/HRSPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTm6-0006Ve-7d; Tue, 26 May 2020 07:13:22 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTlw-0006Ub-NG
 for linux-nvme@lists.infradead.org; Tue, 26 May 2020 07:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590477185;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WN2N/BApCYukmkn4MbWXrd3uuV84H0MyGafZbyYspsU=;
 b=JO3vhnYwOgg9JZ5JQL8N9oAuk+mTOco6vY143m5wTCLf8+rmNcuPg6imi1t/4jxUtCUiv0
 t4FfcY9Ecn3DZxvagwUQof+v3YTxo58zUtN1UKOCWu3AOMHeV9J5GkS84K2P7KCI0Eg5HH
 ht+xxgBLm+N+4Ecr5e3bbXZUGvk3Bco=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-0MO6C4EJPqafACJvQy18mg-1; Tue, 26 May 2020 03:13:04 -0400
X-MC-Unique: 0MO6C4EJPqafACJvQy18mg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B36EA18FE860;
 Tue, 26 May 2020 07:13:01 +0000 (UTC)
Received: from T590 (ovpn-12-134.pek2.redhat.com [10.72.12.134])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9839719D7C;
 Tue, 26 May 2020 07:12:53 +0000 (UTC)
Date: Tue, 26 May 2020 15:12:49 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [PATCH 3/3] nvme-pci: make nvme reset more reliable
Message-ID: <20200526071249.GA874504@T590>
References: <20200520115655.729705-1-ming.lei@redhat.com>
 <20200520115655.729705-4-ming.lei@redhat.com>
 <9c5ac1e0-b5ca-0f54-5ee3-fd630dbdb8d4@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c5ac1e0-b5ca-0f54-5ee3-fd630dbdb8d4@oracle.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_001312_835518_ACCE4FE5 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Alan Adamson <alan.adamson@oracle.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 10:01:18PM -0700, Dongli Zhang wrote:
> 
> 
> On 5/20/20 4:56 AM, Ming Lei wrote:
> > During waiting for in-flight IO completion in reset handler, timeout
> 
> Does this indicate the window since nvme_start_queues() in nvme_reset_work(),
> that is, just after the queues are unquiesced again?

Right, nvme_start_queues() starts to dispatch requests again, and
nvme_wait_freeze() waits completion of all these in-flight IOs.

> 
> If v2 is required in the future, how about to mention the specific function to
> that it would be much more easier to track the issue.

Not sure it is needed, cause it is quite straightforward.

> 
> > or controller failure still may happen, then the controller is deleted
> > and all inflight IOs are failed. This way is too violent.
> > 
> > Improve the reset handling by replacing nvme_wait_freeze with query
> > & check controller. If all ns queues are frozen, the controller is reset
> > successfully, otherwise check and see if the controller has been disabled.
> > If yes, break from the current recovery and schedule a fresh new reset.
> > 
> > This way avoids to failing IO & removing controller unnecessarily.
> > 
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Sagi Grimberg <sagi@grimberg.me>
> > Cc: Keith Busch <kbusch@kernel.org>
> > Cc: Max Gurtovoy <maxg@mellanox.com>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  drivers/nvme/host/pci.c | 37 ++++++++++++++++++++++++++++++-------
> >  1 file changed, 30 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index ce0d1e79467a..b5aeed33a634 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -24,6 +24,7 @@
> >  #include <linux/io-64-nonatomic-lo-hi.h>
> >  #include <linux/sed-opal.h>
> >  #include <linux/pci-p2pdma.h>
> > +#include <linux/delay.h>
> >  
> >  #include "trace.h"
> >  #include "nvme.h"
> > @@ -1235,9 +1236,6 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
> >  	 * shutdown, so we return BLK_EH_DONE.
> >  	 */
> >  	switch (dev->ctrl.state) {
> > -	case NVME_CTRL_CONNECTING:
> > -		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
> > -		/* fall through */
> >  	case NVME_CTRL_DELETING:
> >  		dev_warn_ratelimited(dev->ctrl.device,
> >  			 "I/O %d QID %d timeout, disable controller\n",
> > @@ -2393,7 +2391,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
> >  		u32 csts = readl(dev->bar + NVME_REG_CSTS);
> >  
> >  		if (dev->ctrl.state == NVME_CTRL_LIVE ||
> > -		    dev->ctrl.state == NVME_CTRL_RESETTING) {
> > +		    dev->ctrl.state == NVME_CTRL_RESETTING ||
> > +		    dev->ctrl.state == NVME_CTRL_CONNECTING) {
> >  			freeze = true;
> >  			nvme_start_freeze(&dev->ctrl);
> >  		}
> > @@ -2504,12 +2503,29 @@ static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
> >  		nvme_put_ctrl(&dev->ctrl);
> >  }
> >  
> > +static bool nvme_wait_freeze_and_check(struct nvme_dev *dev)
> > +{
> > +	bool frozen;
> > +
> > +	while (true) {
> > +		frozen = nvme_frozen(&dev->ctrl);
> > +		if (frozen)
> > +			break;
> 
> ... and how about to comment that the below is because of nvme timeout handler
> as explained in another email (if v2 would be sent) so that it is not required
> to query for "online_queues" with cscope :)
> 
> > +		if (!dev->online_queues)
> > +			break;
> > +		msleep(5);

Fine.


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
