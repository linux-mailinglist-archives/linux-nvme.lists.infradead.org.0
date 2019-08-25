Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5186E9C280
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 10:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ty5qDlbEXzrYhgBGHg+WAkaC/FdOoi0D1kLBcljoh80=; b=NAMe6SLs/gCcIP
	bt/ynnDOj7p2rIjpAwmU5h89JB7cGsFz3sXZ1r5/5P8yrB9xVivudDPKXzOUjy93fAsF5SZqI/9cN
	l4qB63pXMC/z8e4bpfv/JmGokXH/g5vpS5sJK2xECuGSIliLIN/Oo7fxi4x5NC/0AZCyP1bdnjAM1
	QyD3dht16cgl/fm7IZ6j/TXdDjUAYgUi/LN+J+qguamfuBJsN2TBKRvKA9AwVH/O7jjPdSIf0ExRA
	RHDm8SuosDdKJ4PlrPlngIGEf4WH1sufRlp2LpX9xtA4lajUWUr/MAFBrkiO7XzTyA4FooWX5F3pu
	aAguf1bkRcn/fPVKlNng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1nU3-000873-9M; Sun, 25 Aug 2019 08:02:43 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1nTn-00086d-RN
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 08:02:30 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 91FDB3083362;
 Sun, 25 Aug 2019 08:02:26 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81A4910016EB;
 Sun, 25 Aug 2019 08:02:18 +0000 (UTC)
Date: Sun, 25 Aug 2019 16:02:13 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH V6 0/2] genriq/affinity: Make vectors allocation fair
Message-ID: <20190825080212.GA17265@ming.t460p>
References: <20190819124937.9948-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819124937.9948-1-ming.lei@redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Sun, 25 Aug 2019 08:02:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_010227_908252_7A3D7DF9 
X-CRM114-Status: GOOD (  22.69  )
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:49:35PM +0800, Ming Lei wrote:
> Hi Thomas,
> 
> The 1st patch makes __irq_build_affinity_masks() more reliable, such as,
> all nodes can be covered in the spread.
> 
> The 2nd patch spread vectors on node according to the ratio of this node's
> CPU number to number of all remaining CPUs, then vectors assignment can
> become more fair. Meantime, the warning report from Jon Derrick can be
> fixed.
> 
> Please consider it for V5.4.
> 
> V6:
> 	- fix build waring reported by zero day, and extra change is only
> 	done on irq_build_affinity_masks()
> 
> V5:
> 	- remove patch 1 of V4, which is wrong
> 	- handle vector wrapping because the 'start vector' may begin
> 	  anywhere, especially for the 2nd stage spread
> 	- add more comment on the vector allocation algorithm
> 	- cleanup code a bit
> 	- run more tests to verify the change, which always get the
> 	expected result. Covers lots of num_queues, numa topo, CPU
> 	unpresent setting.
> 
> V4:
> 	- provide proof why number of allocated vectors for each node is <= CPU
> 	  count of this node
> 
> V3:
> 	- re-order the patchset
> 	- add helper of irq_spread_vectors_on_node()
> 	- handle vector spread correctly in case that numvecs is > ncpus
> 	- return -ENOMEM to API's caller
> 
> V2:
> 	- add patch3
> 	- start to allocate vectors from node with minimized CPU number,
> 	  then every node is guaranteed to be allocated at least one vector.
> 	- avoid cross node spread
> 
> 
> 
> Ming Lei (2):
>   genirq/affinity: Improve __irq_build_affinity_masks()
>   genirq/affinity: Spread vectors on node according to nr_cpu ratio
> 
>  kernel/irq/affinity.c | 231 ++++++++++++++++++++++++++++++++++++------
>  1 file changed, 201 insertions(+), 30 deletions(-)
> 
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: linux-nvme@lists.infradead.org,
> Cc: Jon Derrick <jonathan.derrick@intel.com>
> -- 
> 2.20.1
> 

Hi Thomas,

Gentle ping on the two patches.


Thanks, 
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
