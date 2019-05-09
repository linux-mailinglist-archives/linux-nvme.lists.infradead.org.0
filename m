Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14D718AC0
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 15:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqg8/NTtE6UmAffprqAoiAM28kKj7IjcZ03W6hOF1qY=; b=BRiynX8J6hEUqs
	WrnRCmop+4rdLC9AKAfA7pOwLf6fjp6tr/BfaEdZCGLVrrdIUctmPcOLZ6iM1AG4VlECtt7luEeAD
	zGbxS5T0R8GQf2vU/r8/l2UiQaTF3wybGBs1UI9UMwBoN3CYWPDqlIqfnhnwHUw8/iVf/G0+8hIDQ
	2wWUyWdpQpIHBzdnK/NxQlERwS2SGCe+33hyeIP4rh4QA2CQVBEEavcgC1I2c/tp4ad0aLjw6y88G
	Rb1ZBJYoLVw4Sz55r0MtJqp3vataafRoooqBWpUTjKWKC9LfGAQL2EeMCKXBbu9OTxx0o1UrqwytJ
	kKIEckOcXqlZJonW8jtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj9H-0003IE-Ax; Thu, 09 May 2019 13:31:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj9A-0003He-Td
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 13:31:42 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 018AFC0753A1;
 Thu,  9 May 2019 13:31:39 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DA7F18162;
 Thu,  9 May 2019 13:31:29 +0000 (UTC)
Date: Thu, 9 May 2019 21:31:23 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: fix single segment detection
Message-ID: <20190509133120.GA22059@ming.t460p>
References: <20190509110409.19647-1-hch@lst.de>
 <20190509112410.GA20711@ming.t460p> <20190509123406.GB21483@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509123406.GB21483@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 09 May 2019 13:31:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_063140_973210_C0F401D3 
X-CRM114-Status: GOOD (  16.14  )
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
Cc: Jens Axboe <axboe@kernel.dk>, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 02:34:06PM +0200, Christoph Hellwig wrote:
> On Thu, May 09, 2019 at 07:24:12PM +0800, Ming Lei wrote:
> > I'd suggest to fix block layer instead of working around the issue here,
> > then any driver may benefit from the fix.
> 
> That is my plan, and I started on it.  But the fix isn't trivial, and
> will probably take a while and be invasive.
> 
> > Especially checking bio->bi_vcnt is just a hack, and drivers should
> > never use .bi_vcnt.
> 
> That is why it is explicitly commented as a hack.  But a good enough
> one to still speed up typical 4K I/Os - one a bio has been cloned
> chances are very high we don't care about the fast path any more.

NVMe hasn't max segment size limit, so fair enough for typical
4K IO workload:

Reviewed-by: Ming Lei <ming.lei@redhat.com>


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
