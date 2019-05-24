Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB429300
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcSrRMsMN5r9oSB7hDv+qpufR/YJvu9rNpFz0x3JEWk=; b=plpmkbNOKp0uqY
	9lldLmR5Gs5fyuNgDyeLbOXKuBnJb2ywMABQsYh913s1QJkh7RW8O5jBJaWJbgyfCtUCCmUjgOPk8
	PcmGAfm5GFgPfNvpKi33rKHk6CgIh3CRz4iUObJTrmWp4H5RMDLWopgyvA4KOuj7lP398chlTyMBy
	ac9i1eCsFzLWgfnosTrGWITxCpcV6YO7b1VIPAgGJ6cP5fXciklDkrr5Bzf5QKK/I+OzzKKPoOftw
	NOi1mjFAaR2NeuNFKzeSnTKfYEkDpVTOXLUsfJpprMZeHo2vmRk77SLhFiAHa6wxUOQz46JiOOCuf
	y5QD07iy5I2yY1FQ7XKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Ub-0006Nq-Ff; Fri, 24 May 2019 08:23:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5UX-0006NU-3W
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:23:54 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7347D307CDE7;
 Fri, 24 May 2019 08:23:50 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C011E19735;
 Fri, 24 May 2019 08:23:42 +0000 (UTC)
Date: Fri, 24 May 2019 16:23:38 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
Message-ID: <20190524082336.GA1058@ming.t460p>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
 <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
 <20190521094535.GA28632@ming.t460p>
 <7a4863ba-ece9-e3fa-8396-21736d54e1fe@mellanox.com>
 <20190521104121.GA31530@ming.t460p>
 <23729cbc-3a3f-fe16-be14-71053253c53b@mellanox.com>
 <20190521124908.GA655@ming.t460p>
 <09c806a8-7be8-3552-265b-d651aaf848e8@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09c806a8-7be8-3552-265b-d651aaf848e8@grimberg.me>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 24 May 2019 08:23:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_012353_220530_3D477765 
X-CRM114-Status: GOOD (  15.98  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Bart Van Assche <bvanassche@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 01:15:42AM -0700, Sagi Grimberg wrote:
> 
> > > is there an API in the block layer to guaranty that ?
> > 
> > So far there isn't yet.
> > 
> > And it can be built easily against blk_mq_tagset_busy_iter(), then called
> > in delay-spin style for checking if there is any request marked as
> > MQ_RQ_COMPLETE.
> 
> This will probably make blk_mq_complete_request_sync() redundant
> wouldn't it?

Suppose there is new API to drain completed request: blk_mq_wait_completing_rq(),
which has to be called before canceling request.

And it can be used to wait the canceled request too, or keep 
blk_mq_complete_request_sync() for avoiding the wait.

Either way should be fine, IMO.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
