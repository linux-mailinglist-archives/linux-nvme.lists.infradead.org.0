Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA8E3AD20
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 04:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGr82BH3VCXo5uNCVmU0UN/Mu4Z6qL8SIaKFuuD6SKA=; b=PAjglq6zJ5cb+m
	ukaH0zhvWAWk+l/x9DPoyc0sWE00S/YKEuuUuTT+7IMvn7KShEkRKYZNjIHqBu8FODfSfZxDAoNtx
	nkFNs/7d2FucITic7+tMJ+2ggYBKb0usjJnWA7HSRaxa83C9j4hN5zL5+cis0AgDk1I5yLaghOZcs
	ckHXhXfr79ikUzZRxFTDVSCcRxMqBNL9PwLisg94YbBWfIRXJh0ykjtn4nbIKLC2hFdnJ8MPyEWio
	HhCaTdMnSiJXN3uPijVNohHHi7uW7cObu9sKFcijS8N0MHY69OD3Opv0Y8c/US8lqJ6FYc2Y2sJlX
	u5zamOZXu+27pikR3jCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haAFt-00083A-Py; Mon, 10 Jun 2019 02:41:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAFg-00082o-Tw
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 02:41:42 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39F2E30821F9;
 Mon, 10 Jun 2019 02:41:40 +0000 (UTC)
Received: from ming.t460p (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DD47A5B681;
 Mon, 10 Jun 2019 02:41:33 +0000 (UTC)
Date: Mon, 10 Jun 2019 10:41:28 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Minwoo Im <minwoo.im@samsung.com>
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
Message-ID: <20190610024127.GE26551@ming.t460p>
References: <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p2>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 10 Jun 2019 02:41:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_194140_988575_8A1DA7E1 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:25:22AM +0900, Minwoo Im wrote:
> > However, the check is valid, which shouldn't be nop, so could you fix
> > the check instead of removing it?
> 
> Hi, Ming.
> 
> I don't get what you really mean here.   What do you mean "the check is
> valid"? I don't see any valid checks in queue_count_set(), not just for
> check for the failure by kstrtoint().  I think current code is just checks
> the nr_cpus and do nothing after.
> 
> Instead fixing this check inside of this function, I have posted the next
> patch in this series to make sure the number of irqs requested not 
> exceed the num_possible_num().

I suggest to cap 'write_queues' or 'poll_writes' to num_possible_num()
from the beginning, instead of starting with invalid number.


thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
