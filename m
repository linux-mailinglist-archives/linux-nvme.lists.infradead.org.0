Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627701CB95E
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 23:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xb7TfD6iCC6mzU8iBBOrJ1XoXP9gWNaNV1ksizcZz/8=; b=BwGk0eUySx6JCi
	kZgJLoRHorGgXq1dpLBwiIXH7bV7d9+yVy7Q15z2/sp/VvUBqPO0tZmuCgvrDnxRt5Ad841QcQnc2
	TAQPANBWq9sasvBBTijqMpGI+GMu1ecUOdEr8e8oJabziUv5v9QFXjBdN+iobVLLRVwAdEdSAf2Qu
	Rbjvtqog4gqgnkdaW7V8V2Ff3i+R7i+4hnpqgSfCzMOdHzhpCL1PnKw4p7uSesrNDUwGD6N6xY0QF
	E/lBJfGWsfh8YlL/urMaq69zPAyJFiHCL/SeQgRg1qsXx0rxJhtvHSGnfoeC4bDG4mjz8CzcEn85A
	hKab6ywj0fhkXamSZ9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXA6p-0001SW-2B; Fri, 08 May 2020 21:00:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXA6m-0001SB-4L
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 21:00:37 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54A572173E;
 Fri,  8 May 2020 21:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588971635;
 bh=NLlqr5MpbhQBQxQf5EupuOLOIwlCzSJ6TEwz9kdWdu8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x2QE56J0hr8nB0idFoEe5h6/1haEw1otvcID5gjOAXxJvo1XvdbD9yyQPpm8FHmtX
 vvr9APMWfjm1Wiih8TMb8VjRhsE3PMdpxH3ztl4w7hKa6zBzAUsxmsdxRbscl/ofBn
 4Ev4yYEHneUoHp77s+tjGJ1GfWXdqbged7R+6Suk=
Date: Fri, 8 May 2020 14:00:33 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: dma read memory barrier for completions
Message-ID: <20200508210033.GA2814530@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200508200406.2814437-1-kbusch@kernel.org>
 <34740788-df94-d2e0-fa63-5568e379cdd9@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34740788-df94-d2e0-fa63-5568e379cdd9@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_140036_191587_A511BA36 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, Will Deacon <will@kernel.org>,
 hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 01:12:50PM -0700, Sagi Grimberg wrote:
> 
> > Control dependencies do not guarantee load order across the condition,
> > allowing a CPU to predict and speculate memory reads.
> > 
> > Commit 324b494c2862 inlined verifying a new completion with its
> 
> I think we need a "Fixes" tag to get it into stable 5.6.y right?

5.6 doesn't include the commit that reintroduced inline completion
handling, so there's no stable this would apply to.

But really, the driver handled completions inline with the phase for
most of its existence (3.3 - 4.17). It was only recently we had the
split handling, so I'm not sure why its only an issue now unless
more recent compilers and/or CPU made it more likely.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
