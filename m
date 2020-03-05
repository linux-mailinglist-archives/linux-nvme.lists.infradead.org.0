Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEC917A89F
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 16:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di02vBPFzE5nCLOp34srhj8Ib+u0vwkuezyeBMvAOAE=; b=KoDTHr07X6erRx
	Fh0aPr31HGtIOakToYGeXRM/SDRNeivcrondwWcFs+MfNrcWrdzVLFdB27BPfTJhvMWD28uJ2bXuZ
	ubogCCKwvjibKW5EFlNMMKaS+SLVti8lHbUjbRiM7+qPZJ5G75pEC/oiA6795gdWaqL3LbPrqqjBF
	ZiIyFcM66E3EYvePsDqmZ92e5FZ3GTM8MQ2wBw/iHvzg3LZ5phcQqVsQOhGI2RqKYFsyad56vQnGU
	rMEC8efA8xK9mOhmOiJaaIRxAM747fy0HiB25URprVp9EtKf/G8F1yC+at8dhcCyKCJrzQgX4I4Qd
	BPm+bK1xy2kZvL6SnPag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9sDk-0000N8-2N; Thu, 05 Mar 2020 15:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9sDf-0000Mb-Gz
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 15:15:28 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFCD92070E;
 Thu,  5 Mar 2020 15:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583421326;
 bh=ItX38qm1pswyptVVy91LZsyl5zmL/0WJQBmFJVkJaoI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rtV+cSrBl1dF+ETv5i743nj08XLXvdU8UiMDY/nKX4KZrp2ra4/lcyU8axaJ+2Scq
 c4bgKeyKr9o3OEDe/kqVHJVhRo5vSKZBPyoU32cXSGJ6UY0jJ9KGCtfpuuu6gDxJdB
 uTAlI1KQ4bmHDQmtBfUAzQlLwWAmH0FJjlQM37CU=
Date: Fri, 6 Mar 2020 00:15:23 +0900
From: Keith Busch <kbusch@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [PATCHv2 2/3] nvme-pci: Remove two-pass completions
Message-ID: <20200305151523.GA28317@redsun51.ssa.fujisawa.hgst.com>
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-3-kbusch@kernel.org>
 <b25de82c-115f-50d3-6752-f4f91a5623ae@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b25de82c-115f-50d3-6752-f4f91a5623ae@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_071527_587769_3DD27E18 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bijan.mottahedeh@oracle.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 01:50:58AM -0800, Dongli Zhang wrote:
> Hi Keith,
> 
> On 3/4/20 10:12 AM, Keith Busch wrote:
> > Completion handling had been done in two steps: find all new completions
> > under a lock, then handle those completions outside the lock. This was
> > done to make the locked section as short as possible so that other
> > threads using the same lock wait less time.
> > 
> > The driver no longer shares locks during completion, and is in fact
> > lockless for interrupt driven queues, so the optimization no longer
> 
> About "no longer shares locks", would you mind share is it a specific nvme
> driver commit, or the transition from sq to mq?

They're all nvme specific commits. For the record, nvme never
transitioned from 'sq' to 'mq'. We were bio-based before 'mq'
existed.

Commit splitting locks: 1ab0cd6966fc4a7e9dfbd7c6eda917ae9c977f42

Commit removing cq lock: 3a7afd8ee42a68d4f24ab9c947a4ef82d4d52375

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
