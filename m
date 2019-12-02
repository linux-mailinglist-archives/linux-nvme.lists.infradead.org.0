Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C46810E421
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 02:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPhBBYO4uMCYPSqsD4oj6Io20czSgrCUPyGmG7kn3Hk=; b=SDvcFHsHhOuIdi
	2ABnOJ6qMzxRnI4L6POB8KDAYKHmKsft+dc6bDMtkMD1sf6SJsXq2gc+tQ4QKsEkQYtllH+zOLgqS
	n4xoQs3UpY87bzgWP2r4La5zh2hvY4P/1KKzkh/Oz8AG6VGH/ZOfTQd1ysMzSycExB5MnGb3vVmEe
	USnl0pCUI5WSD0wOwjcsNzo8uWg7H/MFIai50cy9RcWKODqU/w5A2x5ym/62CgD8HTvnEGjDmEPc9
	LD1L7ltNCK1bRXyDT2fd8cYt028CSvFtVrIjaxjF10rjDiCrVMpem65jXIZx6+EMouMmS2rBG+cac
	gdB1dfhgB0G04M0dXIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaEr-0003YE-88; Mon, 02 Dec 2019 01:10:57 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaEl-0003Xm-Ej
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 01:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575249048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B/3jdNKtgIJGaHYrF9YyqNgdrQ0yqo5F7IH0xMOLal0=;
 b=i/HbnkBFPX7OstCY2sWhUS+H6NV9MD/dpTy77PKU4bejUtnZg4XiVniIR3bR2zKiyKaUkf
 eRK8+hSCffNVP1ZRVpaZe3uxrhNwJcLc3CHtHDSm3Dyo2LTX91dCNiKy2XfBQJj0IxkAgQ
 MMZGmzXXVABWmg+GwZW7Rl2Xz0r/og8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-1HOGvMubM-2wUOqyeDMTrw-1; Sun, 01 Dec 2019 20:10:44 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68457911E8;
 Mon,  2 Dec 2019 01:10:42 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 634AE60BF7;
 Mon,  2 Dec 2019 01:10:35 +0000 (UTC)
Date: Mon, 2 Dec 2019 09:10:31 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191202011031.GA24512@ming.t460p>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <20191129091302.bngxlcsbexiktqbk@linutronix.de>
 <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: 1HOGvMubM-2wUOqyeDMTrw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_171051_764633_2782F2CE 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, helgaas@kernel.org,
 hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Dec 01, 2019 at 03:10:20AM +0900, Keith Busch wrote:
> On Fri, Nov 29, 2019 at 10:13:02AM +0100, Sebastian Andrzej Siewior wrote:
> > On 2019-11-28 02:58:24 [+0900], Keith Busch wrote:
> > > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > > index 571b33b69c5f..9ec0933eb120 100644
> > > --- a/drivers/nvme/host/pci.c
> > > +++ b/drivers/nvme/host/pci.c
> > > @@ -1042,9 +1042,15 @@ static irqreturn_t nvme_irq(int irq, void *data)
> > >  	return ret;
> > >  }
> > >  
> > > +static void nvme_irq_spin(int irq, void *data)
> > > +{
> > > +	while (nvme_irq(irq, data) != IRQ_NONE)
> > > +		cond_resched();
> > > +}
> > 
> > That interrupt thread runs at SCHED_FIFO prio 50 by default. You will
> > not get anything with a lower priority running (including SCHED_OTHER).
> > You won't get preempted by another FIFO thread at prio 50 so I *think*
> > that cond_rechsched() won't let you schedule another task/IRQ thread
> > running at prio 50 either.
> 
> Hm, if we're really spinning here, the current alternative is that
> we'd run a cpu 100% in irq context, which has its own problems. If the
> interrupt thread has other scheduler issues, I think that indicates
> yet another task needs to handle completions. Perhaps escalate to the
> irq_poll solution Sagi advocated for if the threaded handler observes
> need_resched() is true.

Even without this issue, threaded irq has other issue, such as, IO
latency is increased obviously.

Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
