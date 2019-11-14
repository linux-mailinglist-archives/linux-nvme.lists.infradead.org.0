Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBA2FBD86
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 02:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJhyeLUyD/0ZZ+qhRWnfoXej3+bg3gKdwjJxnVWTC60=; b=em+tmuAsbqrmBf
	Ao0ORJlSm63AtelBlAYVjzJHdNzIQpnbaq2gq3WGSkJWlT6cd/lRe4EjpPXG7uTeL7VbHIHARTDB1
	elg2gnQiVnNmoPlP3y1QaoDxqf59Y39QfeLl61f0+pWJr4OIy3f1DFatNrms/c5+fqMT7G4TmfVW/
	PoBLyl7RLO+dyj9u5AAYGw2GsiNcIcAxf9rYmDxxLg83Q2hMszNdqouizU+ekZc++3sTLMKPubVKz
	Qb5ZZed/LuQmNShzPC2lcbygYAlswL4XezXo81PsX5tRybyvLEMm5T6302JW7+SjNlBY3D5fDza+G
	uCvsaz6fVaYNpB2hhJuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV420-0005Zi-He; Thu, 14 Nov 2019 01:34:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV41u-0005ZE-Kn
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 01:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573695277;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ixIQcL81Y3VOt/JO7JT7p7Aebbq6ttqQPv1griWWqMs=;
 b=PZg+/clXxj8ggBaPyhmqprdEFWiZlOl4jIKloOn9z//qz3pU1HECPrirKYQdG42r+mTnrL
 piF6VZpON59ubqxPHPmZriymKcliMbjJIR2yGHyMN5XT+jm08DpkOT7e29HE3fbTbuOGmx
 IC/kHtRtFJ05BZw33wYAUIsihlu7+I8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363-e8lGLOy9OZ-CpIdqJcbSWQ-1; Wed, 13 Nov 2019 20:34:35 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACF6C1802CE4;
 Thu, 14 Nov 2019 01:34:33 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A9A05C541;
 Thu, 14 Nov 2019 01:34:26 +0000 (UTC)
Date: Thu, 14 Nov 2019 09:34:22 +0800
From: Ming Lei <ming.lei@redhat.com>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH V2 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191114013422.GC14190@ming.t460p>
References: <20191113134248.26022-1-ming.lei@redhat.com>
 <20191113134248.26022-3-ming.lei@redhat.com>
 <f4335756-786b-1f72-313c-92358685d06f@intel.com>
MIME-Version: 1.0
In-Reply-To: <f4335756-786b-1f72-313c-92358685d06f@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: e8lGLOy9OZ-CpIdqJcbSWQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173438_755029_26F53DF7 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 04:11:42PM -0700, Nadolski, Edmund wrote:
> On 11/13/2019 6:42 AM, Ming Lei wrote:
> >   	spinlock_t sq_lock;
> >   	void *sq_cmds;
> >   	 /* only used for poll queues: */
> > -	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
> > +	union {
> > +		spinlock_t cq_poll_lock;
> > +		spinlock_t cq_lock;
> > +	}____cacheline_aligned_in_smp;
> >   	volatile struct nvme_completion *cqes;
> >   	struct blk_mq_tags **tags;
> >   	dma_addr_t sq_dma_addr;
> 
> Still not sure I follow the case for another lock (seems to me like just a
> semantic distinction, as they both basically bracket nvme_process_cq()
> calls).  What have I overlooked?

.cq_poll_lock is for sync poll queues between nvme_poll_irqdisable() and
nvme_poll(), and this lock won't be acquired in irq context.

.cq_lock is for sync between submission and completion, which can be
acquired in irq context.

Their usage isn't same, and lock context isn't same, and have to be
initialized with different name(lock class) for making lockdep happy.

Thanks,
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
