Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D02FA5C6
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 03:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+HSuGQV2RyMwKjUodju3CjrYcQBpIY1HFx8yzcG8y4=; b=sZgi6Kq1wcvVUQ
	ZjVmCemU1vaefnAMZCj2Zt5xk0f5CjyPkWsWS8Ejm1KAcAkb0+I+OzR41eFvEkb7VdQPyIlbZByJd
	Kddg/9mWqyKCFDJnRp88sPYbXJFUbR958FokLsSgZSTCyIfaTfdiCQQx+kw6tpbX1whnNLPhdAKAU
	LNGgP4KWpb6Z9PHXopeEwDRe47v2qm1mPkHafG9wAULKIQ2RGBFgyuU7zs/NZcFVTJg0ZwnlP+iZB
	JLWpCFKA/ldTblMknKN6wJllMXFtM3kKe9oiKUV681saHQghmqpDwyK/K5NPuZYhZqICxOmhWkZnX
	LVn3qd541RfO3kR3B7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiL4-0005F7-6c; Wed, 13 Nov 2019 02:24:58 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiKy-0005Di-FQ
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 02:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573611889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X0vGAfEUKKtumEBYxj2UeMCKFkfMQEVG9Zxba+MpIHA=;
 b=VlodWpPQpInVJ54Qa77ZLchvygHZ5Y+nFQwvP04WlgF+xCcwqj2HdBXGoVcwL5gHBpLRG/
 d11HqNpVa1JA8fKuBD6CDdejXPcd5ByWR//d+uaOpa+qopesTazhzPvrIHG5gJhqAjIzua
 xYBmNC3NHGXSIGvnQnMLJW6/+/YMiYE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-6KcXgl3HPO2hzQ33fD7Uzg-1; Tue, 12 Nov 2019 21:24:45 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6BF7018B5F77;
 Wed, 13 Nov 2019 02:24:44 +0000 (UTC)
Received: from ming.t460p (ovpn-8-28.pek2.redhat.com [10.72.8.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DA24A60933;
 Wed, 13 Nov 2019 02:24:37 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:24:33 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191113022433.GA28701@ming.t460p>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <CY4PR21MB0741BB1F48C64613BF6E45F6CE770@CY4PR21MB0741.namprd21.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CY4PR21MB0741BB1F48C64613BF6E45F6CE770@CY4PR21MB0741.namprd21.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 6KcXgl3HPO2hzQ33fD7Uzg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_182452_634707_CB19B068 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:20:27PM +0000, Long Li wrote:
> >Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for multi-
> >mapping queue
> >
> >On Tue, Nov 12, 2019 at 12:33:50AM +0000, Long Li wrote:
> >> >From: Christoph Hellwig <hch@lst.de>
> >> >Sent: Monday, November 11, 2019 12:45 PM
> >> >To: Ming Lei <ming.lei@redhat.com>
> >> >Cc: linux-nvme@lists.infradead.org; Keith Busch <kbusch@kernel.org>;
> >> >Jens Axboe <axboe@fb.com>; Christoph Hellwig <hch@lst.de>; Sagi
> >> >Grimberg <sagi@grimberg.me>; Long Li <longli@microsoft.com>
> >> >Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
> >> >multi- mapping queue
> >> >
> >> >On Fri, Nov 08, 2019 at 11:55:08AM +0800, Ming Lei wrote:
> >> >> f9dde187fa92("nvme-pci: remove cq check after submission") removes
> >> >> cq check after submission, this change actually causes performance
> >> >> regression on some NVMe drive in which single nvmeq handles
> >> >> requests originated from more than one blk-mq sw queues(call it
> >> >> multi-mapping queue).
> >> >
> >> >> Follows test result done on Azure L80sv2 guest with NVMe drive(
> >> >> Microsoft Corporation Device b111). This guest has 80 CPUs and 10
> >> >> numa nodes, and each NVMe drive supports 8 hw queues.
> >> >
> >> >Have you actually seen this on a real nvme drive as well?
> >> >
> >> >Note that it is kinda silly to limit queues like that in VMs, so I
> >> >really don't think we should optimize the driver for this particular case.
> >>
> >> I tested on an Azure L80s_v2 VM with newer Samsung P983 NVMe SSD
> >(with 32 hardware queues). Tests also showed soft lockup when 32 queues
> >are shared by 80 CPUs.
> >>
> >
> >BTW, do you see if this simple change makes a difference?
> 
> Yes, I can confirm the patch fixed lockup on this VM configuration.  There is also no performance regression.

Long, thanks for your update.

As I explained in last email[1], Azure's single job IO performance issue
& soft lockup is very specific to Hyper-V's NVMe implementation, which
actually applies aggressive interrupt coalescing.

Guys, I'd suggest to fix it via checking cq after submission for Azure first,
which can be implemented as a quirk.

We still need to understand the real reason for other NVMe soft lockup
reports, so far I just saw such report, not get chance to investigate it.


[1] http://lists.infradead.org/pipermail/linux-nvme/2019-November/027948.html


Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
