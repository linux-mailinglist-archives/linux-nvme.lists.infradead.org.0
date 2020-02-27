Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F5D172379
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 17:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oIt7ebOjnTWxygX4B0sX7T0R8L+AmuJaPBvBR3w88k=; b=fLk/0jJ8LxWqaP
	wGS9nXk+omX1zTzkWy5h1UNjikKVMmaFOVbFnZzZ20bo8FJLVsY2HHhIAzaIGnWSAaP2xD7OXyx4u
	xw2Er+dIkTeNjI2Vur0btx/86sJjb4xoULuTx/yn2eSGpAgezeltgQzNoCZJWN4hQ7Tu2+HColCNC
	uANS3eGQq2MA7oFs/IDGGO6yxJwly3WcTyoHKelyIyt+a8dFcBVNfmI3vw/t/i1hIMlPNJVqTr5t9
	kgnrI3741e12JAkZXMHOy9iz1QdannlRgXkVE1vp4smQZATcn2V6QtOHvkZAdw9caU9ZyqWhBi8dx
	0aGxE557h1wgqaLiFWjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M88-0002aW-Bm; Thu, 27 Feb 2020 16:35:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M84-0002Zm-6d
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 16:35:17 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68904246A1;
 Thu, 27 Feb 2020 16:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582821315;
 bh=ZfCt2cfvtS+RrM9BbHEyoNPE0u7n2PnqWJbklvliCxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QSdvu71p6NpwApQjmegiwRnXwqVsI9+50v9EMLilP37aW7qGlpd/eClCwZpQkL0br
 pMipUTj1NQkxjhq2JHTONiPwNaWqOi9P1eokkj+UW3Uabl3+KJ/EpEhzxBH0fqxjgC
 LLHl33chCZr9gzEWb1l+7+FptBnfjuaDrfkXIL2M=
Date: Fri, 28 Feb 2020 01:35:10 +0900
From: Keith Busch <kbusch@kernel.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: [PATCH v2 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
Message-ID: <20200227163510.GA25532@redsun51.ssa.fujisawa.hgst.com>
References: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_083516_274129_14D6A1D6 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 06:53:43PM -0800, Bijan Mottahedeh wrote:
> Avoid scheduling a polling thread if it has cqe's to complete, otherwise
> another thread may free enough tags out of order, allowing a queue wrap.
> 
> This is an interim solution. Longer term, the two-pass completion should
> be fixed.  It was done that way when submit and complete processing were
> using the same spinlock, so reducing the critical section was helpful,
> but that's not needed anymore.
> 
> Fixes: dabcefab45d3 ("nvme: provide optimized poll function for separate poll queues")
> Signed-off-by: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Jens Axboe <axboe@kernel.dk>

Thanks, applied to a new nvme-5.6-rc4 branch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
