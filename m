Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DE610F90C
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 08:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PU0CRy/mS7D97IgDsnJz0GalKnwN9HgKLFwG40RclxA=; b=aF1zkNy790fsPh
	JqlKAvthaRZ09lfynWGGjXaFU0jS00gZw62ZdCxpj9Ly2xMvkKhDtAdy3DDgCIqycTavPgvLamoHW
	GkrGkhvPzVtp7AZDZgEwJEnF7rs9n02y3CKVIv3z5H2Jg6XO9Z9Fw9Jhqawt9RCmZR5GJHbsaGSky
	whmaV/VfTGuHsjlHLvqOmiU7OPNGlHuBHXA835U2R4TulKBxK4GtvpwfMPjvhsHNgHJB0qB9qoYgI
	4T1oIEQ3PhWH651V7bT04R6W8QAcM1fsKeA6i8/h9N1KxpokEudFJ6ako4NTxbSrHJid+bla438n0
	7aGftW83Y4cRiMZ9aKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2p0-0005R8-BO; Tue, 03 Dec 2019 07:42:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2ou-0005QV-Ld
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 07:42:05 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C3B7F68BFE; Tue,  3 Dec 2019 08:42:02 +0100 (CET)
Date: Tue, 3 Dec 2019 08:42:02 +0100
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191203074202.GD23881@lst.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191129094640.6fq6wcxmfi4fwnlw@linutronix.de>
 <20191129162719.GA47681@C02WT3WMHTD6.lpcnextlight.net>
 <20191129170545.axnykbrabigzcghs@linutronix.de>
 <20191130170222.GA5273@redsun51.ssa.fujisawa.hgst.com>
 <20191202170538.juq745vddzsouufb@linutronix.de>
 <20191202171239.GA8547@lst.de>
 <20191202195730.bzzldihtv37odsie@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202195730.bzzldihtv37odsie@linutronix.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234204_851071_078F98EB 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, ming.lei@redhat.com,
 helgaas@kernel.org, Keith Busch <kbusch@kernel.org>, tglx@linutronix.de,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 08:57:30PM +0100, Sebastian Andrzej Siewior wrote:
> > The problem is that by doing the agressive polling we can keep one
> > CPU busy just running the irq handler and starve processes on that
> > CPU if an NVMe queue servers multiple CPUs.
> 
> and this is bad? The scheduler will move everything to other CPUs unless
> it is for pinned to this CPU. You can offload even RCU these days :)
> Performance wise it might be better to dedicate one CPU doing this work
> instead spreading it over four CPUs each doing a fraction of it and
> using same cache lines which bounce from one CPU to the next.

Ok, maybe things are getting better these days.  I remember we did need
the QUEUE_FLAG_SAME_FORCE flag back in the day to ensure I/O submitters
are properly throttled by the completions they receive.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
