Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CC670E72
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 03:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTh2H5hkgTmYcXTlyRlb1qbRT2R6RCrdNBJkf5lvJLw=; b=A1z/l/6cBeOkvQ
	j8Ot03H0tUE++DGMfyMRGWuAhaq7AxYGWy/Kx2sPBaiUSOormPICaCY/40dKlvYNA7Hcb3eihekCG
	VdJ16UvU16b3gqOxsfNzB9iNSzMGhAbN9NzF86i4wkR9qBHptEOsq6eGSqBMp+4KqnLWen2dkSsl+
	F3TIzlnlnEaCM8ZJyhGWHTzQot3RGwHBvHQuNTAhGwli1neFUQSV/mcV6bxK7CwNl25/q9QXrabtx
	wlZ1ddPeqyMazp+FGNJ5J2yxS4s0ZeOjOloMzNA5Zp80rKxib5JEtCdi/mJocbHhiuFZN2RZUwC/S
	DNujsvy5FRtQXoA22KoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjGZ-0008M6-2U; Tue, 23 Jul 2019 01:06:55 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjGC-0008LY-MF
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 01:06:33 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D5130308421A;
 Tue, 23 Jul 2019 01:06:31 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E56760603;
 Tue, 23 Jul 2019 01:06:22 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:06:18 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
Message-ID: <20190723010616.GC30776@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-3-ming.lei@redhat.com>
 <c2722892-9cbf-0747-58a8-91a99b72bc53@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2722892-9cbf-0747-58a8-91a99b72bc53@acm.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 23 Jul 2019 01:06:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_180632_744203_0C52F9E9 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:25:07AM -0700, Bart Van Assche wrote:
> On 7/21/19 10:39 PM, Ming Lei wrote:
> > blk-mq may schedule to call queue's complete function on remote CPU via
> > IPI, but doesn't provide any way to synchronize the request's complete
> > fn.
> > 
> > In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> > re-allocated. If the completed request's complete fn is run finally after the
> > hardware queue's resource is released, kernel crash will be triggered.
> > 
> > Prepare for fixing this kind of issue by introducing
> > blk_mq_tagset_wait_completed_request().
> 
> An explanation is missing of why the block layer is modified to fix this
> instead of the NVMe driver.

The above commit log has explained that there isn't sync mechanism in
blk-mq wrt. request completion, and there might be similar issue in other
future drivers.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
