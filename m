Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0131D6222
	for <lists+linux-nvme@lfdr.de>; Sat, 16 May 2020 17:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xAFJTLgVPGKuZl2tmqWgBPlnQvSg0xuE38z2tW4N5Y=; b=pSl47cq0E/pKy4
	HG+PK8mH2fzVYWKs4uA7V5ZvzocR3yR04Cq5udl62roXkyPy9LAcNHGW6PdHUou3OqlyyVpQp1j9H
	yx12xlPTy8eSTlnLJJT9zTYys5iXRsk6gJGf3p5/Orm3L8cW9jrs8I627rcOgYcST/s5VZfltPZlH
	0mR+9JuIQPLR9jVYZLQpSjtxtaH19Xp/zARsxVCrvX4YK021TOKDqKJFZwRkM5n0CrnO4RMmQEeKf
	6Je+LiFgL1uIdmWCd+Xz1Uq0a/CBuP12pH8qEqrVoOtxr4nNi2rD4AVNnMtjTp0sEf+jyCA5XqHxP
	G2EoPOa7W1a/rZ6LUiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZys1-00084y-J1; Sat, 16 May 2020 15:37:01 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jZyrs-000842-U1; Sat, 16 May 2020 15:36:52 +0000
Date: Sat, 16 May 2020 08:36:52 -0700
From: Matthew Wilcox <willy@infradead.org>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [Ocfs2-devel] [PATCH 27/33] sctp: export sctp_setsockopt_bindx
Message-ID: <20200516153652.GM16070@bombadil.infradead.org>
References: <20200514062820.GC8564@lst.de>
 <20200513062649.2100053-1-hch@lst.de>
 <20200513062649.2100053-28-hch@lst.de>
 <20200513180058.GB2491@localhost.localdomain>
 <129070.1589556002@warthog.procyon.org.uk>
 <05d946ae948946158dbfcbc07939b799@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05d946ae948946158dbfcbc07939b799@AcuMS.aculab.com>
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 'David Howells' <dhowells@redhat.com>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 Neil Horman <nhorman@tuxdriver.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Vlad Yasevich <vyasevich@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Maloy <jmaloy@redhat.com>, Ying Xue <ying.xue@windriver.com>,
 "David S. Miller" <davem@davemloft.net>,
 "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 03:11:40PM +0000, David Laight wrote:
> From: David Howells
> > Sent: 15 May 2020 16:20
> > Christoph Hellwig <hch@lst.de> wrote:
> > 
> > > > The advantage on using kernel_setsockopt here is that sctp module will
> > > > only be loaded if dlm actually creates a SCTP socket.  With this
> > > > change, sctp will be loaded on setups that may not be actually using
> > > > it. It's a quite big module and might expose the system.
> > >
> > > True.  Not that the intent is to kill kernel space callers of setsockopt,
> > > as I plan to remove the set_fs address space override used for it.
> > 
> > For getsockopt, does it make sense to have the core kernel load optval/optlen
> > into a buffer before calling the protocol driver?  Then the driver need not
> > see the userspace pointer at all.
> > 
> > Similar could be done for setsockopt - allocate a buffer of the size requested
> > by the user inside the kernel and pass it into the driver, then copy the data
> > back afterwards.
> 
> Yes, it also simplifies all the compat code.
> And there is a BPF test in setsockopt that also wants to
> pass on a kernel buffer.
> 
> I'm willing to sit and write the patch.
> Quoting from a post I made later on Friday.
> 
> Basically:
> 
> This patch sequence (to be written) does the following:
> 
> Patch 1: Change __sys_setsockopt() to allocate a kernel buffer,
>          copy the data into it then call set_fs(KERNEL_DS).
>          An on-stack buffer (say 64 bytes) will be used for
>          small transfers.
> 
> Patch 2: The same for __sys_getsockopt().
> 
> Patch 3: Compat setsockopt.
> 
> Patch 4: Compat getsockopt.
> 
> Patch 5: Remove the user copies from the global socket options code.
> 
> Patches 6 to n-1; Remove the user copies from the per-protocol code.
> 
> Patch n: Remove the set_fs(KERNEL_DS) from the entry points.
> 
> This should be bisectable.

I appreciate your dedication to not publishing the source code to
your kernel module, but Christoph's patch series is actually better.
It's typesafe rather than passing void pointers around.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
