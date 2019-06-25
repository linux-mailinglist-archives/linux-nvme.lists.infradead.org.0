Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DC85578A
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 21:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqH8hMSRvgRVfJutwuZsWlVv8/csLuiK49/H6JY7fA0=; b=SbmZKv4qAYdAFl
	RXZ1NAZZ4NJpRg0dw6k3672jS8HIfQq4HYR4Cm0AtCgFZSf/2QYyhslofbD2oySCe5GaQvywO7oNi
	1d3AvowGuE+dc7zFvZ0PRdIPXapDzECLjeFGTTPQO4PbwXhVHHMSwFbH8Z84GXlDuFyXC9PvmfHR0
	zi4VGdhIDwsioFZC/Bg0U/8T0uiVIi0h2Zq2KdF344DfXbmo6LeUR+ixUeH6THyppACCAHvNPHG5D
	axkwXjGYR9LWpWFo2caWSPaSjOiDm30zk2/wmSDMSN+UZEQ0Ylp7WwtFjIYBalLKlCAUXPaXmNsAo
	UbhexmmRBMv7u+WcQPoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfql8-0006AE-5M; Tue, 25 Jun 2019 19:05:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfql1-00069l-Gu
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 19:05:32 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7BB52300C035;
 Tue, 25 Jun 2019 19:05:21 +0000 (UTC)
Received: from emilne (unknown [10.18.25.205])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED56C19C58;
 Tue, 25 Jun 2019 19:05:17 +0000 (UTC)
Message-ID: <c1d4377628740d182e16313b444b28ea6a2b8c1d.camel@redhat.com>
Subject: Re: [PATCH v2] nvme-fc: clean up error messages
From: "Ewan D. Milne" <emilne@redhat.com>
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org
Date: Tue, 25 Jun 2019 15:05:17 -0400
In-Reply-To: <14240398-683c-1d1c-f6e8-8fa8692270c2@broadcom.com>
References: <20190624221240.25268-1-emilne@redhat.com>
 <14240398-683c-1d1c-f6e8-8fa8692270c2@broadcom.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 25 Jun 2019 19:05:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_120531_584154_EA662162 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: minwoo.im.dev@gmail.com, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-06-25 at 09:37 -0700, James Smart wrote:
> 
> > @@ -1259,7 +1259,7 @@ nvme_fc_connect_admin_queue(struct nvme_fc_ctrl *ctrl,
> >   	if (fcret) {
> >   		ret = -EBADF;
> >   		dev_err(ctrl->dev,
> > -			"q %d connect failed: %s\n",
> > +			"queue %d connect admin queue failed: %s\n",
> >   			queue->qnum, validation_errors[fcret]);
> >   	} else {
> >   		ctrl->association_id =
> 
> Since we're changing them...
> 
> how about "queue %d Create Association LS failed: %s"
> 
> > @@ -1358,7 +1358,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
> >   	if (fcret) {
> >   		ret = -EBADF;
> >   		dev_err(ctrl->dev,
> > -			"q %d connect failed: %s\n",
> > +			"queue %d connect queue failed: %s\n",
> 
> how about "queue %d Create Connection LS failed: %s"

Sure.

> 
> > @@ -2678,16 +2678,18 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
> >   		/* warn if maxcmd is lower than queue_size */
> >   		dev_warn(ctrl->ctrl.device,
> >   			"queue_size %zu > ctrl maxcmd %u, reducing "
> > -			"to queue_size\n",
> > -			opts->queue_size, ctrl->ctrl.maxcmd);
> > +			"queue_size to %u\n",
> > +			opts->queue_size, ctrl->ctrl.maxcmd, ctrl->ctrl.maxcmd);
> >   		opts->queue_size = ctrl->ctrl.maxcmd;
> >   	}
> >   
> >   	if (opts->queue_size > ctrl->ctrl.sqsize + 1) {
> >   		/* warn if sqsize is lower than queue_size */
> >   		dev_warn(ctrl->ctrl.device,
> > -			"queue_size %zu > ctrl sqsize %u, clamping down\n",
> > -			opts->queue_size, ctrl->ctrl.sqsize + 1);
> > +			"queue_size %zu > ctrl sqsize %u, reducing "
> > +			"queue_size to %u\n",
> > +			opts->queue_size, ctrl->ctrl.sqsize + 1,
> > +			ctrl->ctrl.sqsize + 1);
> >   		opts->queue_size = ctrl->ctrl.sqsize + 1;
> >   	}
> >   
> 
> Given these last two came from a template in the rdma transport - you 
> may want to consider using the same wording in all the transports.

Hmm.  The RDMA and TCP transports do not appear to actually change
opts->queue_size if > maxcmd, here, despite the warning message, but
they use sqsize when allocating the tagset.

And they both reduce the sqsize if > maxcmd, not if queue_size > sqsize
as in FC, (which does not change sqsize).

commit 5e77d61cbc7e766778037127dab69e6410a8fc48
Author: Sagi Grimberg <sagi@grimberg.me>
Date:   Tue Jun 19 15:34:13 2018 +0300

    nvme-rdma: don't override opts->queue_size

So should FC be using the same logic?

-Ewan

> 
> -- james
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
