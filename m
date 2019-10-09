Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F72D1B6A
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 00:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QnGpBLqGNohHFv03MKWGhyWhIEwj6Z3He0Ix/Kqbxg=; b=oWzUYQlS0JQmVR
	fQTvS5XHdpgaTQ3x2BngCqeexBnc1Bm4zxdaTPQ7JnnhRmJ7lWMjSu4QfXh+ahACvDRsz7wm+E9z2
	DuCE1Ccp6mkHYA/jptNIBgYApip4IIcqhLkR+aMxvUJl0D7NXkSyZFsoEY7mO2loSRx5cqN75+nUq
	TEWZDsaG9PcD3EGlbN+PpiOB7tRDmVouKcv77rE9mi6LHu1Q/ympdYbH7C2m7rczGyjeJWmVJtizu
	suo3im5mMpDlQXhOYKWFQj+ApVc/3LcCAwKgyKsnUn+OlPwhnP5jDizga0wRE/TKQqmFyhlaImiOH
	C2D7eQ0CwFMTeOMGLUYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKAS-0005FL-Fh; Wed, 09 Oct 2019 22:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKAM-0005Ei-Q7
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 22:10:44 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C11220B7C;
 Wed,  9 Oct 2019 22:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570659042;
 bh=FQuEaTociCoUgYX9UFpVgH54MWKMMymSTxWUZxJ3XnU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fibYmpksKxqucYFycti50RMvVKSZpgpVeNGsXVejp7ozcybU6EPbMZJj/TesW1zp/
 rLinlU5KdG5NhfECZx5qasQhFPVkQYKAWUEbSyQfs+497PpuxN2fwXGcP1Gix+UsIA
 bP91b+3hQqm55EMjmOaxmbZNr2wq4nhMRlga8JQY=
Date: Thu, 10 Oct 2019 07:10:38 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH 4.19] nvme: Assign subsys instance from first ctrl
Message-ID: <20191009221038.GA3009@washi1.fujisawa.hgst.com>
References: <20191009162910.1801-1-kbusch@kernel.org>
 <20191009215504.GW1396@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009215504.GW1396@sasha-vm>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_151042_864564_8E13F94A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 stable@vger.kernel.org, linux-nvme@lists.infradead.org,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 05:55:04PM -0400, Sasha Levin wrote:
> On Thu, Oct 10, 2019 at 01:29:10AM +0900, Keith Busch wrote:
> > commit 733e4b69d508d03c20adfdcf4bd27abc60fae9cc upstream
> > 
> > The namespace disk names must be unique for the lifetime of the
> > subsystem. This was accomplished by using their parent subsystems'
> > instances which were allocated independently from the controllers
> > connected to that subsystem. This allowed name prefixes assigned to
> > namespaces to match a controller from an unrelated subsystem, and has
> > created confusion among users examining device nodes.
> > 
> > Ensure a namespace's subsystem instance never clashes with a controller
> > instance of another subsystem by transferring the instance ownership
> > to the parent subsystem from the first controller discovered in that
> > subsystem.
> > 
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> > Reviewed-by: Hannes Reinecke <hare@suse.com>
> > Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> > Signed-off-by: Keith Busch <kbusch@kernel.org>
> > Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> 
> What are your thoughts about taking the following for 4.19 instead?
> 
> 733e4b69d508d nvme: Assign subsys instance from first ctrl
> e654dfd38c1ec nvme: fix memory leak caused by incorrect subsystem free
> 32fd90c407680 nvme: change locking for the per-subsystem controller list
> 092ff0520070f nvme: fix kernel paging oops
> cb5b7262b011c nvme: provide fallback for discard alloc failure

Thank you for the suggestion. I have reviewed the proposed sequence, and
I would prefer to use this for stable instead of this back-ported patch.
 
> --
> Thanks,
> Sasha

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
