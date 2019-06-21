Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BF4E0B4
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 08:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qIR2MBOfVgoyuDtszF4Da2nMtrWc+QCOLzaR3STkIE=; b=n97H5kkeaGYiN1
	50+f5tuThTHevYI4ohxjiroIvEp6nnfvSbhhx16BABIENl1H8upkIO0IDJ3oRuk1uHMTANWNk90+6
	8jlFJPXDo7WvWd7F8jorxwElMZHYwfgxTmo5mBIOfI084tH/tAWwpLEuvCStNVkwutmHSiNGApjoJ
	8K55Vx9KeHZ1M9T5yUc57N42QCyi6ZeFvLWKf0KTiMuPShWmnt8T8BALpSyO1QDRQLYG/HTaVYXdQ
	+odkH6VZ1VRnMKstoGpVa+lMbyQgW+P4zN8Ib05/yFaKjS2gNciseX5SQqXxRrMYlUTFIBYHncO+V
	qeQxF0SN9KDkAoKR3ArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heDW3-0004tz-Ss; Fri, 21 Jun 2019 06:59:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heDVo-0004tg-V3
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 06:59:06 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 552CF3086262;
 Fri, 21 Jun 2019 06:59:04 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 85F5A60928;
 Fri, 21 Jun 2019 06:58:58 +0000 (UTC)
Date: Fri, 21 Jun 2019 14:58:52 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
Message-ID: <20190621065851.GA22145@ming.t460p>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <20190620013650.GB31179@ming.t460p>
 <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 21 Jun 2019 06:59:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_235905_043983_EA8F4473 
X-CRM114-Status: GOOD (  21.44  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 08:14:45AM +0200, Hannes Reinecke wrote:
> On 6/20/19 3:36 AM, Ming Lei wrote:
> > On Tue, Jun 18, 2019 at 12:10:25PM +0200, Hannes Reinecke wrote:
> >> When resetting the controller there is no point whatsoever to
> >> have a scan run in parallel; we cannot access the controller and
> > 
> > scan won't be run in parallel, because .scan_work is embedded in
> > 'struct nvme_ctrl' which is per-HBA.
> > 
> Wrong. We do.
> Not sure why having it embedded in the controller structure might
> prevent this from happening; both reset and scan are embedded, but
> running on different queues:

I mean the scan_work function itself is run exclusively, but yes, it can be 
run when resetting is in-progress.

> 
> void nvme_queue_scan(struct nvme_ctrl *ctrl)
> {
> 	/*
> 	 * Only new queue scan work when admin and IO queues are both alive
> 	 */
> 	if (ctrl->state == NVME_CTRL_LIVE)
> 		queue_work(nvme_wq, &ctrl->scan_work);
> }
> EXPORT_SYMBOL_GPL(nvme_queue_scan);
> 
> int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
> {
> 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> 		return -EBUSY;
> 	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
> 		return -EBUSY;
> 	return 0;
> }
> EXPORT_SYMBOL_GPL(nvme_reset_ctrl);
> 
> So there's nothing stopping them to run in parallel.
> 
> >> we cannot tell which devices are present and which not.
> >> Additionally we'll run a scan after reset anyway.
> >> So flush existing scans before reconnecting, ensuring to
> >> short-circuit the scan workqueue function if the controller state
> >> isn't live to avoid lockups.
> > 
> > This way may cause dead-lock.
> > 
> > 1) nvme_revalidate_disk() might freeze queue in flush context, however
> > any in-flight requests won't be completed until reset is done, so
> > deadlock may be caused by flushing scans in reset context.
> > 
> Which is why I'm checking the controller state; I've observed the
> deadlock plenty of times before introducing the controller state check.

Your check can't help wrt. the deadlock, for example:

1) in scan work context:

- blk_mq_freeze_queue() is being started after passing the controller
  state check

2) timeout & reset is triggered in another context at the exact same time:

- all in-flight IOs won't be freed until disable controller & reset is done.

- now flush_work() in reset context can't move on, because
  blk_mq_freeze_queue() in scan context can't make progress.

> 
> > 2) sync IO may be involved in revalidate_disk() which is called in
> > scan context, so deadlock is caused for same reason with 1).
> > 
> I/O during revalidate_disk() is protected by the state check, too, so we
> won't be issuing any I/O during resetting.
> 
> To be precise: any I/O in flight when reset is triggered will be
> terminated, and any subsequent I/O is short-circuited by the state check.

No, any I/O in flight before resetting is just terminated from hardware,
but still in blk-mq sw or scheduler queue, so either sync IO or queue
freezing won't make progress.

Please see nvme_complete_rq(), all these IO will be retried usually.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
