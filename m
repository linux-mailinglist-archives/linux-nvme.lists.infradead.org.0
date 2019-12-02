Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B949810EDD1
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 18:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhDD0ZuPjcVJmZTAHcCEJrWzQvCZiqA+d5qBdkbWgrQ=; b=TxcbqTc822vZbY
	DbgfWQm5jvsu0u6z0k6vVEhMXXT1jFjxm40nDJic9dDigDKUztOkAjuXqhglFIqoADVsKbJmhNXyb
	EylL8aL80xLt2CiK74A/C8P3GUqissKrL/v4IwjJKGvtNM/wCsq1woSbnvRC96ZDo2QTAmpQtQgwY
	Boy51dG4RmI54dB11JrFvcdCSa+ZKMdaRoMOWsHskGM6uwejyaOHEmUTGTSOFxL6aQp2MEBovEEro
	CV3ThpH8RMu46tCyXYCmo+uAdnwe2o5uHlryXerlv6NSgqKTy+HqrzZwgq5/IFuuaYp+kzF5OThxQ
	qnOQys0CRUWkOaGJtisw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibp8s-0003Gl-O0; Mon, 02 Dec 2019 17:05:46 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibp8l-0003Fo-VD
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 17:05:41 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1ibp8k-0003N2-98; Mon, 02 Dec 2019 18:05:38 +0100
Date: Mon, 2 Dec 2019 18:05:38 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191202170538.juq745vddzsouufb@linutronix.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191129094640.6fq6wcxmfi4fwnlw@linutronix.de>
 <20191129162719.GA47681@C02WT3WMHTD6.lpcnextlight.net>
 <20191129170545.axnykbrabigzcghs@linutronix.de>
 <20191130170222.GA5273@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191130170222.GA5273@redsun51.ssa.fujisawa.hgst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_090540_161741_7742E7DD 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-12-01 02:02:22 [+0900], Keith Busch wrote:
> On Fri, Nov 29, 2019 at 06:05:45PM +0100, Sebastian Andrzej Siewior wrote:
> > Ach okay. But I wouldn't consider it as a "bug" if your threaded handler
> > returns IRQ_HANDLED and requires a longer period of time. Thsi seems
> > fine to me.
> > The SDHCI driver has a case where the interrupt thread waits for another
> > interrupt (from its primary handler) in order to make progress.
> 
> Yes, that uses a driver specific way to handle that. This patch series
> provides nvme specific handling for long running irq threads.

That might be a misunderstanding. I think if your threaded-IRQ handler
is running legitimately for longer period of time (and making progress)
and IRQ core's "nobody-care" detector shuts it down then the detector
might need a tweak.
The worst thing that could happen, is that the RT tasks run for too long
and the scheduler punishes them to protect against run-away-tasks (the
default limit is at 950ms RT task time within 1 second,
sched_rt_runtime_us).

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
