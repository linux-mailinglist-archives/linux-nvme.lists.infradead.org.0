Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F5613DCB3
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 14:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxkvfdFKXt8FCNhZRSObvQ7xW9KqSWvfJhB5gsPTxEc=; b=mlMJIxrdERDVec
	MBIyvltMQNheqYpmFkv16PEMk7KUwwaY7RWe4fgod4BHu0KHkqKvg7awiVjWk7zfuepQMm2KKOEhH
	xBxPQn/4wEFeLSMwCsPmltMvhG5sDxvfJWWcpP5JqVtJK6j9/1LLg/CAEOrJX4xlP9jEUBjKXxpwi
	96lD950RLvXBrlRCIlYrRHhQ+/dLrJ0aVGPQ3vYZRv/uoUACIz8Ma2OgFPnAwH8tCoXPLbI5jasL2
	z2jwhOEOWLQHibjdqs0/A8inIszSqYfudE3k3EMkB9ClzBEkLenTxjkyJhiYHMpysHbkkw9IAmwth
	6TWuak7JRbNMxAvOc47Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5fm-0003pQ-Kv; Thu, 16 Jan 2020 13:58:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5fg-0003oa-Tl
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 13:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579183130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+XHRS5U2mMfDXghaFYuq8QYw/wqOc4eIBHwRbo62OOE=;
 b=ImwPzl61CzG99PwmQPgPQLcUw2O1bfWa/Yu2uuYoaHT0BSqmxRwVOn+QDJpy4KITI/dxaW
 7cM99w+C4OO0byj8kX8W4jGbsTt+L9pbwTW1DSDfQHHsmui7fR3qtdpIfQgUF0JjNuTAqu
 L6MnnAv2qpdQeJ6slq3wVW+aQ4bLEHo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-LvTUDC83NiidXDPTecVhjQ-1; Thu, 16 Jan 2020 08:58:49 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C18C3801F78;
 Thu, 16 Jan 2020 13:58:47 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.48])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5276E89E64;
 Thu, 16 Jan 2020 13:58:43 +0000 (UTC)
Message-ID: <7ee5d0da51e443c1ee6c456ed244f5461a8da4a5.camel@redhat.com>
Subject: Re: A kernel warning when entering suspend
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ming Lei <ming.lei@redhat.com>
Date: Thu, 16 Jan 2020 15:58:42 +0200
In-Reply-To: <6facb151631957bb1c025f0c99ba9774bb909fa1.camel@redhat.com>
References: <AM6PR06MB50637026B0E7D87341BF47A3A1500@AM6PR06MB5063.eurprd06.prod.outlook.com>
 <20190404085524.GA24927@ming.t460p>
 <alpine.DEB.2.21.1904041312480.1685@nanos.tec.linutronix.de>
 <6facb151631957bb1c025f0c99ba9774bb909fa1.camel@redhat.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: LvTUDC83NiidXDPTecVhjQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_055853_028545_60989F06 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fin4478 fin4478 <fin4478@hotmail.com>,
 "keith.busch@intel.com" <keith.busch@intel.com>, "axboe@fb.com" <axboe@fb.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-12-23 at 16:52 +0200, Maxim Levitsky wrote:
> On Thu, 2019-04-04 at 13:14 +0200, Thomas Gleixner wrote:
> > On Thu, 4 Apr 2019, Ming Lei wrote:
> > 
> > > On Thu, Apr 04, 2019 at 08:23:59AM +0000, fin4478 fin4478 wrote:
> > > > Hi,
> > > > 
> > > > I do not use suspend/resume but noticed this kernel warning when testing it. This warning is present in earlier kernels too. My system works fine after resume.
> > > > If there is a patch to fix this, I can test it.
> > > > 
> > > > [   53.403033] PM: suspend entry (deep)
> > > > [   53.403034] PM: Syncing filesystems ... done.
> > > > [   53.404775] Freezing user space processes ... (elapsed 0.001 seconds) done.
> > > > [   53.405972] OOM killer disabled.
> > > > [   53.405973] Freezing remaining freezable tasks ... (elapsed 0.001 seconds) done.
> > > > [   53.407036] printk: Suspending console(s) (use no_console_suspend to debug)
> > > > [   53.407491] ACPI Debug:  "RRIO"
> > > > [   53.407505] serial 00:03: disabled
> > > > [   53.407560] r8169 0000:07:00.0 enp7s0: Link is Down
> > > > [   53.415042] sd 5:0:0:0: [sda] Synchronizing SCSI cache
> > > > [   53.415065] sd 5:0:0:0: [sda] Stopping disk
> > > > [   53.428943] WARNING: CPU: 10 PID: 3127 at kernel/irq/chip.c:210 irq_startup+0xd6/0xe0
> > > 
> > > Looks the 'WARN_ON_ONCE(force)' in irq_startup() is a bit too strict.
> > 
> > Why?
> > 
> > > irq_build_affinity_masks() doesn't guarantee that each IRQ's affinity
> > > can include at least one online CPU.
> > 
> > Then why is it tried to start up an interrupt which has no online cpu in
> > the mask? I'm missing context obviously.
> 
> Hi!
> 
> The problem here is that recently an optimization was added to avoid taking a spinlock in
> the interrupt handler in expense of enable_irq/disable_irq around the place where the race can happen.
> 
> The patch is https://patchwork.kernel.org/patch/10708055/
> 
> And the problem here is that indeed if nvme driver allocates more interrupts that number
> of currently online cpus (which happens if number of possible cpus is larger that number of cpus
> the system was booted with), then some of the nvme queues exist but effectively disabled (till relevant cpus
> are plugged which can happen any time).
> 
> I think that this is a valid use case, and since other than that warning, enable_irq in this case doesn't
> really enable it, maybe the warning should be removed?
> 
> We have a bug report about this issue, and I was told that the warning breaks up some QE scripts.
> https://bugzilla.redhat.com/show_bug.cgi?id=1779247
> 

Ping.

Best regards,
	Maxim Levitsky


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
