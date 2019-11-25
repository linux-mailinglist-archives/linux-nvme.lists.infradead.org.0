Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD8510929F
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 18:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4U5dt5jPjfrG1vTbS+axskcviT1wdFZhyT4A6SlY7t8=; b=SQWkTdruugTdCA
	EzbDe3B7zBGXx6jOcdnZtM7e5cld1vCfRrLUdLrp/zV8XkPmRWuAkY+9L/beU3Rz+XZf4gFoVvUFp
	8DO7KsTRHcuLFUKMMBJjZRxjfoaA3MdUaDYWaeRnS3eUSL/T4iCQ+pSkjXE3/auUYK9dY5sbyNm37
	Gp0DO08/lF/07NAURT8zq0gJPUSa7qjHfDANaQXGypOGeG19HpDg8eVUTjXU3kFDTkWDPaMw8lZJm
	Vz7HutqhOoLdkeHOSw92RysnUWU8/Jrwwl6Ix2XpHesywmedykWJFXBAJCSk8+vCvrHnXBRqMRCNI
	bg1RDArNoEpGQj9ZF61Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHpH-0004WN-7S; Mon, 25 Nov 2019 17:07:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHp6-0004Vn-0D
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 17:06:53 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2A9420674;
 Mon, 25 Nov 2019 17:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574701611;
 bh=dV5N7lrWCRKuQXzgroS/IVAur0GfE8YVJPXWUztdY/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z0IyFDmjqOdkZh65moLEQKsGewhwh6m4bEwNfGd+/NhK3anfKCo/Hk9yzAgURdoe3
 Tj7xt4N0Ha5aALeX9GAMd7jGbuDcQIeiOMw9CpbJ/HR8wOfF927O9ioZPZYKowoEjf
 OUaBlGYPRcXRZyiDqgFQmrv6EmpMKNMgqUQ8Wjzc=
Date: Tue, 26 Nov 2019 02:06:44 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH 1/2] nvme: remove unused return code from nvme_alloc_ns
Message-ID: <20191125170644.GA1639@redsun51.ssa.fujisawa.hgst.com>
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
 <20191125160612.3542-2-edmund.nadolski@intel.com>
 <1ca1b4c3-8c42-c728-d987-18821f83088a@suse.de>
 <221e4352-7fab-abea-9f43-2cd1df60dbaa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <221e4352-7fab-abea-9f43-2cd1df60dbaa@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090652_080668_5A778FFF 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org, Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 09:46:08AM -0700, Nadolski, Edmund wrote:
> On 11/25/2019 9:09 AM, Johannes Thumshirn wrote:
> > On 25/11/2019 17:06, Edmund Nadolski wrote:
> > > The return code of nvme_alloc_ns is never used, so change it
> > > to void.
> > 
> > Oh no, please do it the other way round, check the return value of
> > nvme_alloc_ns() and handle error properly.
> > 
> > nvme_alloc_ns() is doing memory allocations and these can fail (although
> > less likely because of the GFP_KERNEL allocations).
> 
> I considered that, tho it looked to me like the caller (nvme_validate_ns)
> and its callers (nvme_scan_ns_list, nvme_scan_ns_sequential) don't really
> care, and intend simply to continue on regardless of memory alloc
> failure(s).
> 
> I can either add the -ENOMEM handling, or clarify the caller's intent w/some
> comments. Which is the way to go?

It would be informative to just log the error that occurred so we have
something indicating why an expected namespace wasn't created. Otherwise,
I can't think of anything else the caller should do in response to an
error in this path.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
