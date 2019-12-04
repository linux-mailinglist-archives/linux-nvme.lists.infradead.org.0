Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33217112936
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Dec 2019 11:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kniZdGUaBaKft6mvWRpT3Aqk8f+m6sPnOedT6hGNxMk=; b=ejburUITmbi0Lx
	UHEhEv4NUm5Z7MLXd8dLtVjIRIqg6FvYUtjzcNm+/Mjfacn7uKn50y1dnAts8NmcZTffiwPw8ly9V
	HmY9Ce3poD48IJQhc8MIgStYp5wvljb61VSw8AcYRbXMCwkVoUoud2G0k93YZTx7ypL/lKzogSQ0F
	Ls+fCh+HIEnZ5VJ80tWDU8l3An5IRf6Z5z8AbZ0XqukNLgQzsuNWnGjjmQFWzLiwCk5uZefceBvE1
	vHj/Q97IPllbpVNM4VAbqN8GZUti5FJI9ZxDxR2tCMvMrtV9qMQqEJu8NOjPTIlq3uPystzvA20mm
	Sn3kZ99+8kCNGClxKbTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRnb-0002hX-Ug; Wed, 04 Dec 2019 10:22:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRnV-0002fk-Qv
 for linux-nvme@lists.infradead.org; Wed, 04 Dec 2019 10:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575454934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4yxeX5GrrYaamzL4Iw2VaskwdcINELyV8FcI704EwgE=;
 b=iUPrPS3KBgLLiHp892xFSnoLi3shqlIgl+bW8bykfqVv5RYRPWeTm8hRME93+7x9qvgyeG
 i2BsEs2oTPUpu7nyeozGEANF1Nc+Dti6l3g1lu+SlyUzAtWPXG2F0IzYhameDTUGK+/jJ6
 O2mk6nOk/md4Qa1Mx0z8VNuJF9LY07s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-o-Up9yDDNi2PMlUFhLBSCg-1; Wed, 04 Dec 2019 05:22:08 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F036E18A6EC0;
 Wed,  4 Dec 2019 10:22:06 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A11CF5D6AE;
 Wed,  4 Dec 2019 10:22:00 +0000 (UTC)
Date: Wed, 4 Dec 2019 18:21:55 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [RFC PATCH 1/3] nvme/pci: Poll the cq in the primary irq handler
Message-ID: <20191204102155.GC5958@ming.t460p>
References: <20191202222206.2225-1-kbusch@kernel.org>
 <20191202222206.2225-2-kbusch@kernel.org>
 <20191203100930.r76fiu3s5hlbrlxu@linutronix.de>
 <20191203111626.GA86476@C02WT3WMHTD6.lpcnextlight.net>
MIME-Version: 1.0
In-Reply-To: <20191203111626.GA86476@C02WT3WMHTD6.lpcnextlight.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: o-Up9yDDNi2PMlUFhLBSCg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022217_946440_EAEBAD9A 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 04:16:26AM -0700, Keith Busch wrote:
> On Tue, Dec 03, 2019 at 11:09:30AM +0100, Sebastian Andrzej Siewior wrote:
> > On 2019-12-03 07:22:04 [+0900], Keith Busch wrote:
> > > The nvme threaded interrupt handler reduces CPU time spent in hard irq
> > > context, but waking it increases latency for low queue depth workloads.
> > > 
> > > Poll the completion queue once from the primary handler and wake the
> > > thread only if more completions remain after. Since there is a window
> > > of time where the threaded and primary handlers may run simultaneously,
> > > add a new nvmeq flag so that the two can synchronize which owns processing
> > > the queue.
> > 
> > It depends on what you mean by "run simultaneously" but it sounds like
> > this does not happen.
> > 
> > The primary handler disables the interrupt source and returns
> > IRQ_WAKE_THREAD. From now on, the primary handler won't fire (unless it
> > is a shared handler and someone else gets an interrupt).
> 
> The driver won't share these interrupts, despite some wierd pci
> host bridges that force sharing among  other devices (ex: see the
> only user of handle_untracked_irq). That isn't what I was considering
> though.
> 
> It's true the controller won't send new MSIs once masked, but my
> concern is for MSIs on the wire that pass that MMIO mask write.

Could you explain a bit what is the 'MSIs on the wire'? And where is it
from?

Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
