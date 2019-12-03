Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DF8110167
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 16:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pezSrFSVudvnJN5rW88xZZN7v+wgu9sj4cyFrNxMd+E=; b=Bn8Kgo310JpoBX
	cbhhabS0vZnib55qUMPCfesu9rJRy2ymDL6BXmo7jQv7w2nrvhpijPyS9TdXq+mhpm+iExzc4kKlS
	Iwtz4tTHnMNd67vKbbhFqnGcdnNwrGK5TVapmaUUdP3RPtA0S1q8qyizk1O6lbyabhGSY4VifFQLS
	+t/EmqGRZcXkt8XSFOTESebH2avE6uNHsZBwAc5WEd5OOWYdvt+p0QTeA6HVKXxpfqOa1UC/iga9k
	0IHKoza043SK13dhp9fQNtPTh97s2B8LHoQ0bdsj7XqQu9wQ6Uox4kHkQE9PqvOmfwGennXRssYT6
	IAEXcuFN4zm0bBNxaB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAIp-0005j8-8P; Tue, 03 Dec 2019 15:41:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAIl-0005aH-TZ
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 15:41:25 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E233120803;
 Tue,  3 Dec 2019 15:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575387682;
 bh=C1e9qGONs2IJvE11GxXjOyur3iSgPRt4NG/aC8+8Sxk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g7k+6Vf1UqgCsTeaAQ7jsVBd/HGNkNlbYxXRrgPVG9AKcRbmijguR8e5M7RYJTkag
 Q6ukjlSBi7/6+2mf75OBTunbCx8f+SINdZvuZ3/aBsrXmZsMf0N0N/Ru+WaKVg3wPH
 cpZdMGIqMVhKuyC2t+NYxilMNyj3Kymf16sN4aq0=
Date: Wed, 4 Dec 2019 00:41:16 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme/pci: Remove last_cq_head
Message-ID: <20191203154116.GB1996@redsun51.ssa.fujisawa.hgst.com>
References: <20191202221829.1940-1-kbusch@kernel.org>
 <20191203073655.GA23881@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203073655.GA23881@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_074123_976650_8B56C004 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 08:36:55AM +0100, Christoph Hellwig wrote:
> On Tue, Dec 03, 2019 at 07:18:29AM +0900, Keith Busch wrote:
> > We had been saving the last_cq_head seen from an interrupt so that a
> > polled queue wouldn't mistakenly trigger spruious interrupt detection. We
> > don't poll interrupt driven queues any more, so saving this value is
> > pointless.
> 
> Looks good:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, applied for-5.5.
 
> Btw, didn't you also have some other patches to shrink the size of
> struct nvme_queue from a few months ago?

Yes, I need to rebase those and do more testing. As long as no kernel
debugging is enabled, I believe we can fit all the nvmeq hot data in
one 64B cache line.

This was just the first patch. I doubt I'll be able to get the rest
completed for the current merge window, though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
