Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2FB19C6A4
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 18:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au5cV4Xy49abVnBcVmO1oBGTnordZjDr74YQqYGt4Gc=; b=l5GpgxeDE6Z70s
	uzldFyZX2zYEgJr6ISAKD6JrzhKMsmlP8l7VhqPJ7L3VNWFPRqr8XAd+460O6w7No4DZKle+T5Bmo
	VEllJvRrdaUYPeljR5RLGG9nXRM4rZ1qzatxcrRQUjX5wkZ9O3nqXuPO61hawwjpG9qayUbrkL9Hd
	4LOQs875GCdssD6Hbb5fqGouBTVMLlsYW7QgEkdo7PjlRNoS5GiDDZqvs3LL4iGSe0wm/KcGyaStJ
	ddmPnVCByyaw3ocTwK6PAuRyjVJpsPmsQwV2W5xcC7K8fCJMpb5qYJEo/vt/4tZsWRgYQrcNpow95
	ijZGVis1pNpS5kjpaQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2GO-0000AN-85; Thu, 02 Apr 2020 16:00:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2GI-0007l5-Rj
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 16:00:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D55420757;
 Thu,  2 Apr 2020 16:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585843210;
 bh=u13NspfbPn6HGrv8/23zR/4+TjO9HEvQIFhO7dlEeRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WKXaO27f8N2YUH06hK1Q8jeduOVUW3mmgTSVA0VeIhDEY5XkQb3wr6ONaW7cWf4vx
 vvn6LyhXj0nFmrq8naJRGXOTcQ719wAwnIe2wJiOpzJTFgwDhh7xTWlmltvtrYt/8f
 uPMDU6YEOimXtzRawTA6eDlF3UlYs6vvfdrxIYRI=
Date: Fri, 3 Apr 2020 01:00:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: nvme deadlock with ANA
Message-ID: <20200402160003.GA3901@redsun51.ssa.fujisawa.hgst.com>
References: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_090010_939886_22559BB4 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:23:50PM -0700, Sagi Grimberg wrote:
> Hey,
> 
> I want to consult with you guys on a deadlock condition I'm able to
> hit with a test that incorporate controller reconnect, ana updates
> and live I/O with timeouts.
> 
> This is true for NVMe/TCP, but can also happen in rdma or pci drivers as
> well.
> 
> The deadlock combines 4 flows in parallel:
> - ns scanning (triggered from reconnect)
> - request timeout
> - ANA update (triggered from reconnect)
> - FS I/O coming into the mpath device
> 
> (1) ns scanning triggers disk revalidation -> update disk info ->
>     freeze queue -> but blocked, why?
> 
> (2) timeout handler reference the g_usage_counter - > but blocks in
>     the timeout handler, why?
> 
> (3) the timeout handler (indirectly) calls nvme_stop_queue() -> which
>     takes the namespaces_rwsem - > but blocks, why?
> 
> (4) ANA update takes the namespaces_rwsem -> calls nvme_mpath_set_live()
>     -> which synchronize the ns_head srcu (see commit 504db087aacc) ->
>     but it blocks, why?


Why is ana updating occuring under a write lock? AFAIK, that should be
necessary only if it's manipulating the ctrl->namespaces list, but this
is just iterating it. What's the harm in using the read lock here?
 
> (5) FS I/O came into nvme_mpath_make_request -> took srcu_read_lock ->
>     direct_make_request > blk_queue_enter -> but blocked, why?
> 
> ==> because of (1), the request queue is under freeze -> deadlock.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
