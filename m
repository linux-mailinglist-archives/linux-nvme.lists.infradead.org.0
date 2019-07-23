Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D27C70E84
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 03:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz1weds9LGIhWBX1KwOv3XFn++sMABoew07hwYKek/U=; b=ZDYwSWCiISqqXv
	wSicDTRCH8Smb0x/pv6FVPdvUcKQd1M5p5NR2TsphlJ1jOltt7f2DTVlJt6MQrd79SEEzToSQziRZ
	VPWZJdKsIyrmTApEmYFlpSUlSsTvNg3WTcXO7et6UMgWPTyZCOnFDBKGm8+/my6FODSpuRIIOQh18
	EbumdhEDHkQUoo9aB0ayq3c3xrXP/8EoxcJDKTQLVbZRI0Q0id7hPX8kTBDI2X/VUHb3UhY3c79zn
	PceIAyDZi9SxAsOqa6eNyESL1R78f5/LyY65hAMNCByTVq1Tez0Zpqu1Vh6bT5RNaLb7Crq4ImtOj
	tDHyDnm+N9DcJH8gmpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjKj-0001go-Ca; Tue, 23 Jul 2019 01:11:13 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjKT-0001fw-NC
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 01:10:58 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3568385539;
 Tue, 23 Jul 2019 01:10:57 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 450D71017E3B;
 Tue, 23 Jul 2019 01:10:48 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:10:41 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bob Liu <bob.liu@oracle.com>
Subject: Re: [PATCH 0/5] blk-mq: wait until completed req's complete fn is run
Message-ID: <20190723011040.GE30776@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <a22e7266-98cb-875d-aa89-f37dd6c34ad5@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a22e7266-98cb-875d-aa89-f37dd6c34ad5@oracle.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 23 Jul 2019 01:10:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_181057_768710_A8E81242 
X-CRM114-Status: GOOD (  14.58  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 07:27:00AM +0800, Bob Liu wrote:
> On 7/22/19 1:39 PM, Ming Lei wrote:
> > Hi,
> > 
> > blk-mq may schedule to call queue's complete function on remote CPU via
> > IPI, but never provide any way to synchronize the request's complete
> > fn.
> > 
> > In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> > re-allocated. If the completed request's complete fn is run finally after the
> > hardware queue's resource is released, kernel crash will be triggered.
> > 
> 
> Have you seen the crash? Anyway to emulate/verify this bug..

The crash is reported on nvme-rdma by one RH partner, and the approach
of this patchset has been verified already.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
