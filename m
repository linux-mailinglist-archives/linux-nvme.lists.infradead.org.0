Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8F61F6245
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jun 2020 09:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fj2X+dHNuhbnhILWumM+CL1NQMlBz/xC2Iy5PwbdJpI=; b=ofLNEs6sfryAzE
	GArFKsFSAB1YuKT0E1RzyeQMYBAXArPOLTMQxJBBlBaQBEb8p0hOq8dEKLboT73NnoRtT2chZ2qu0
	LDc2SbK1xpSltmTYJoj6b0N69O2jYA1oZ/kzHT/tSu3JvqAL8Hia5czJGXsQI0FFWtT//G+30aoVm
	xHo5W0OOGvVLSsFXKavxiI4/Jr6+5hQqgXT3YoFvK8l35gtPj7xSNSmRVcYlKF+Sq7P9HUBNH+IWM
	Pdk8OyqddgfpfH/UKhDtHKeGZCqieNrclJvFvqfxBu/2T5irC1FKF9fuCHqNLOnpVBsMU+h/7Zogf
	AT3CDOR4zVpMmaiUpVdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHcu-0006o8-6P; Thu, 11 Jun 2020 07:27:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHcp-0006n6-I2
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 07:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591860463;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+pWTxVQR2gCgtGr/Q5zCXAYOI/vAMCDiFBOSl9htBRQ=;
 b=DWOelg2szbjiwf9eXcg0s6WxUpqQ7xkqWrWX421GPAGVpCu1DzAVy5Gwo+wsPH0UiFTWKO
 Sc5R+ag1bLeWvGRKOa/mWPU2bml1tw6o1hLOuD//95cUt6p2OkZauUQ3eDx/0t5wSIRZ32
 NYS8s7JoxnRV9ycvmQnvF/usn3QwVzE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-i_Uwc6bAPYmhT_sQMuSEZw-1; Thu, 11 Jun 2020 03:27:39 -0400
X-MC-Unique: i_Uwc6bAPYmhT_sQMuSEZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48FF3C7441;
 Thu, 11 Jun 2020 07:27:37 +0000 (UTC)
Received: from T590 (ovpn-12-163.pek2.redhat.com [10.72.12.163])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AC18E5D9D3;
 Thu, 11 Jun 2020 07:27:29 +0000 (UTC)
Date: Thu, 11 Jun 2020 15:27:24 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V2 0/3] blk-mq/nvme: improve nvme-pci reset handler
Message-ID: <20200611072724.GA473855@T590>
References: <20200530135221.1152749-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530135221.1152749-1-ming.lei@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_002747_669229_811C722A 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Dongli Zhang <dongli.zhang@oracle.com>,
 Max Gurtovoy <maxg@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>,
 Alan Adamson <alan.adamson@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 09:52:18PM +0800, Ming Lei wrote:
> Hi,
> 
> For nvme-pci, after controller is recovered, in-flight IOs are waited
> before updating nr hw queues. If new controller error happens during
> this period, nvme-pci driver deletes the controller and fails in-flight
> IO. This way is too violent, and not friendly from user viewpoint.
> 
> Add APIs for checking if queue is frozen, and replace nvme_wait_freeze
> in nvme-pci reset handler with checking if all ns queues are frozen &
> controller disabled. Then a fresh new reset can be scheduled for
> handling new controller error during waiting for in-flight IO completion.
> 
> So deleting controller & failing IOs can be avoided in this situation.
> 
> Without this patches, when fail io timeout injection is run, the
> controller can be removed very quickly. With this patch, no controller
> removing can be observed, and controller can recover to normal state
> after stopping to inject io timeout failure.
> 
> V2:
> 	- give up after retrying enough times
> 	- add comment on breaking because of shutdown
> 
> Ming Lei (3):
>   blk-mq: add API of blk_mq_queue_frozen
>   nvme: add nvme_frozen
>   nvme-pci: make nvme reset more reliable
> 
>  block/blk-mq.c           |  6 +++++
>  drivers/nvme/host/core.c | 17 +++++++++++++-
>  drivers/nvme/host/nvme.h |  3 +++
>  drivers/nvme/host/pci.c  | 50 +++++++++++++++++++++++++++++++++-------
>  include/linux/blk-mq.h   |  1 +
>  5 files changed, 68 insertions(+), 9 deletions(-)
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Max Gurtovoy <maxg@mellanox.com>

Hello Guys,

Ping...

Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
