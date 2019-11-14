Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB0FFBD7B
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 02:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FzbPaNFGbvTdYBo17lH2YJUlns25QAgz3iaLri6CO4=; b=Td9hTzHSSHs5a+
	5yKX8Vh5G66sAQDEAiRKUmebWqtRCFWvq865WL/pkobb69SXswGIoIfyHGb6wk4SddJ47WmTksGBp
	fXtdo1fw44OtZJUY1Bypn6D2iLBRnnrkmnOwv5vpFqOJYfaKvHmmYnUFvEiNBI4XJuqrapP5q8GOE
	aznJ7Be4JSmWWLjMmLv0fU9IvDMLwE+2ugI1rF55dh3AjDQKwGU/RERNDoEXsO3CKdgYbanArAMvq
	Tk/0A6a+DpBWvg1qYY7uYhdFxkqdFSNg/yIlqGDXy54UG3YOvQ4Ia+ms0bzAGQidw38McjQrCx9o8
	AkX+4lD6w/dZwHnfLx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3xu-0003q8-St; Thu, 14 Nov 2019 01:30:30 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3xq-0003pX-Nb
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 01:30:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573695024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u0YhjhKs5EmwdbzBQaPybUfvVyqHi+iwUdIe3QF3h/c=;
 b=J27Y+S9emQuvt3gFzed4xkXJiw/7dRm07i/5amVKZ8Jm7d28eFCDpiGLUNcobjHe+Zu5DE
 kjvMihLtoydc+zNgr9X6KYuehymA23W4/HUQ1i+fjzyoDEL9hYxWw2CSEuH6S11cQ3WEnH
 CJYGOP9lJI3C/X3SD2cGJCPYN6wsX9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-9fX_EZFhNsW-UikrW2BnIQ-1; Wed, 13 Nov 2019 20:30:20 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECBFB1005509;
 Thu, 14 Nov 2019 01:30:18 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A957360BD4;
 Thu, 14 Nov 2019 01:30:12 +0000 (UTC)
Date: Thu, 14 Nov 2019 09:30:07 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH V2 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191114013007.GB14190@ming.t460p>
References: <20191113134248.26022-1-ming.lei@redhat.com>
 <20191113134248.26022-3-ming.lei@redhat.com>
 <20191113155306.GA26795@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191113155306.GA26795@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 9fX_EZFhNsW-UikrW2BnIQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173026_847867_CA11B191 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Long Li <longli@microsoft.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 12:53:06AM +0900, Keith Busch wrote:
> On Wed, Nov 13, 2019 at 09:42:48PM +0800, Ming Lei wrote:
> > +static void nvme_check_cq(struct nvme_queue *nvmeq)
> > +{
> > +	if (test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags) &&
> > +			nvme_cqe_pending(nvmeq)) {
> > +		unsigned long flags;
> > +
> > +		if (spin_trylock_irqsave(&nvmeq->cq_lock, flags)) {
> 
> What's with the irqsave? This isn't called from an irq disabled context.

Because .cq_lock is required in nvme irq handler.

> 
> Not saying I'm on board with this approach, though. Checking the cq

I am open for other approach if the issue can be solved.

> during submission was cheap when submission and completion sides shared
> the same lock, but this quite different than what we previously had.

Previously we have single .q_lock to cover both completion and submission.

Now we have splited the lock into two, that is why this patch added
.cq_lock for this purpose.


Thanks, 
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
