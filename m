Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8421048D7
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 04:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0H28RZORGwm9BYHbpGDVf2Y/2UHXT2mdYhS8dPCHkx0=; b=UThSmj/5YMxQHY
	fW2KJWuptWNX996Mdu+/B0d6FcjQqRE3injWwopKkbu9F2kyQV2OPgB0ky3EczlpZqKXKAwejlYHx
	08dy/SfGec48H1jh+cvslhAO3ABNFqtvzhItep+PPzKvoeszdz9cvzg0ov/IxNQDcJat2BQgJKD6p
	5kJfoGwDeb6FYsC8MRcn85NHD7iC86dtFgdwx2kaaaEXFxwzjmAR1dJ+8eKCGQYwD/cXnXoRvW3Wu
	ut2EI45Ky+jKbD7ZjUEcQf2dEVGcSgfM0aDUYZ1vi97NWS4th/+RI0aHpjBOke6uh7qJ+SxfqYxAy
	JlRGJeHhNLXy8HhXQzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXctI-0000g9-1N; Thu, 21 Nov 2019 03:12:20 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXctD-0000fd-3i
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 03:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574305933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=41lah+ACXvcakjL3LjU52DamzGku7M/KkABLyewmk4w=;
 b=V2QWUAjsPbyJ8EJ8SLdf5rmKYrXGxpE/c7eda20o5i5AjVQfnFCvp+390diYqDDnfYyLuL
 22eMQW/90kDw2IhNw4J31kN0XeDWtpTCPTj3vvjAT2nu826dHqLd04LX+aGFXsZVsPLaKV
 ophRQjw4E4a/9AoW+htOmOmV3e/K31o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-tYV-m5tLO2GO026XdeltuQ-1; Wed, 20 Nov 2019 22:12:09 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9B39593A0;
 Thu, 21 Nov 2019 03:12:07 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4404C53C30;
 Thu, 21 Nov 2019 03:11:58 +0000 (UTC)
Date: Thu, 21 Nov 2019 11:11:54 +0800
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: Re: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191121031154.GJ24548@ming.t460p>
References: <20191114025917.24634-1-ming.lei@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191114025917.24634-1-ming.lei@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: tYV-m5tLO2GO026XdeltuQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_191215_226232_1876BE01 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 Jens Axboe <axboe@fb.com>, Nadolski Edmund <edmund.nadolski@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 10:59:15AM +0800, Ming Lei wrote:
> Hi,
> 
> The two patches fix one performance regression on Microsoft Corporation device. The
> root cause is that Microsoft device applies aggressive interrupt coalescing, so
> single job fio performance drops much after we removes checking cq in
> f9dde187fa92("nvme-pci: remove cq check after submission").
> 
> Turns out this issue is very specific on Microsoft device, so add
> a quirk for checking CQ on this device.
> 
> V3:
> 	- replace spin_trylock_irqsave with spin_trylock_irq
> 	- fix comment on cq_lock & cq_poll_lock
> 
> V2:
> 	- only check CQ for Microsoft device.
> 
> 
> 
> Ming Lei (2):
>   nvme-pci: move sq/cq_poll lock initialization into nvme_init_queue
>   nvme-pci: check CQ after batch submission for Microsoft device
> 
>  drivers/nvme/host/nvme.h |  6 +++
>  drivers/nvme/host/pci.c  | 98 ++++++++++++++++++++++++++++++++++------
>  2 files changed, 90 insertions(+), 14 deletions(-)
> 
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Long Li <longli@microsoft.com>
> -- 
> 2.20.1
> 

Hi Guys,

Ping...

Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
