Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B14B1E19AF
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 04:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrTcNrBFDu+7y8P6Tr27uC24StCR1rA3gMipUdeAiPo=; b=Lpk/4zPHoe3Vfr
	fj/Rm2Q7Udpa50bz03X6r3fwpAx9ZVLHGWobrgMbdx8PYbDTB1Y0FRfRRzdGI2VtWC/+hnifJM+KF
	JHkgIcbY0+PZKX8V17xmaRj9YjQMV356MNbnlORYZMFR9p5X82+u2777BAZ0bpzrGow/JHwuSRAOF
	oWpxncsB/Mn8ktrRq/t1++2rnWhkP4XJd6YhFLZRKCUObfggR3zpGTtVnpDOwte3emD8NUD4UyS5b
	x0J8G0ne4rteJ5qpxDB1E17R/O6lITOT0aZOikNs2UrLv0J3l4VZhknx8PsEt+3zCHick6qUQHnr1
	6SNxVnPKeFDrFzuUyi5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPnT-0000jf-4k; Tue, 26 May 2020 02:58:31 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPnP-0000jX-UV
 for linux-nvme@bombadil.infradead.org; Tue, 26 May 2020 02:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zUEGxyh48BMTSWb1vG9IkePEUKPLcFPe+vap0CM+47I=; b=DIGHSCcFtRkVI6nL6YML+s/FU/
 eOVvktyVMG9GDbPfzrldXmNsXjiOCehNY+IwN8qyK7Ot+Ugy0cUGKe4VjS5L+FNxC3rQwmMpy4kTg
 caQWPeSwvxUPTPoXm24DxmIj+C1TciPPa8l3oqmP9wjxYcxxqWt4WHc6+jO06NtUG7hotJlLhMD+i
 X36yRvADEAXlu45gzFFCxYKIGD4gg8VdCrHyXiMxDtI8MwBEBPCB1avlKBmYp1OllwmjDEFEM5tgy
 HOEfNbMmhtf5CYb9cy+d3par9a0QjyfuUbeMzeHTisw3wCTu488wXZ2PcQQhz5SA0BsZDz2kSTENo
 g0uKS8rw==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPlD-0006jo-1j
 for linux-nvme@lists.infradead.org; Tue, 26 May 2020 02:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590461744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zUEGxyh48BMTSWb1vG9IkePEUKPLcFPe+vap0CM+47I=;
 b=QQKKBQ5R+umtnUjpoqU86u8p7Nmu84tVoq8TkqeL24ebtdOatA5F3Wdt2p0H+R5ztfo1AV
 lIoUlOdpFqqqwDAAgKSAXHB907b1nHTi4O07UwyCQR5eFO+M62lLlk5PZl4+esf1sjWfhJ
 qMFaoXKlPw18Qks+dgtJdTjvkVo/YCE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590461767;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zUEGxyh48BMTSWb1vG9IkePEUKPLcFPe+vap0CM+47I=;
 b=VZAK6HMQGUpLs63DbWersthZNHKSvS/BXyw0nxDoVJuQAQyCJMZXKkl4CD/GHi1IXs6CNO
 iETak67Y44Ejp6zjIV+xtNdsHkEjDal8E/pq85gMdfoGzRAl9hrnvPRDA1Y0U8M2c8YQl0
 yISyvMV42HgV5aqgrz1TUikEVww61bU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-TlDe8w_VOc-6JWDrf6JFvw-1; Mon, 25 May 2020 22:55:39 -0400
X-MC-Unique: TlDe8w_VOc-6JWDrf6JFvw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88089460;
 Tue, 26 May 2020 02:55:38 +0000 (UTC)
Received: from T590 (ovpn-13-217.pek2.redhat.com [10.72.13.217])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 085A910013D2;
 Tue, 26 May 2020 02:55:32 +0000 (UTC)
Date: Tue, 26 May 2020 10:55:27 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/3] blk-mq/nvme: improve nvme-pci reset handler
Message-ID: <20200526025527.GA865019@T590>
References: <20200520115655.729705-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520115655.729705-1-ming.lei@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Alan Adamson <alan.adamson@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 07:56:52PM +0800, Ming Lei wrote:
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
> Ming Lei (3):
>   blk-mq: add API of blk_mq_queue_frozen
>   nvme: add nvme_frozen
>   nvme-pci: make nvme reset more reliable
> 
>  block/blk-mq.c           |  6 ++++++
>  drivers/nvme/host/core.c | 14 ++++++++++++++
>  drivers/nvme/host/nvme.h |  1 +
>  drivers/nvme/host/pci.c  | 37 ++++++++++++++++++++++++++++++-------
>  include/linux/blk-mq.h   |  1 +
>  5 files changed, 52 insertions(+), 7 deletions(-)
> 
> -- 
> 2.25.2
> 

Hello Guys,

Ping...

Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
