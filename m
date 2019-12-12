Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F8111CA57
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 11:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bX055a5s7RHsuGWs76D7myGJtDzwnSkvFtPoFVP4GZs=; b=qwkSrXVGiwBK+Y
	ys9c+bNeoyjLLjBcZO4MTbot7q2C75dJA0QvpYV4tdCuTR6UwHIW7FO/hcdSpCw7+YPVIRbtXptc1
	45XDi8Fd2alq8IXLt0jH08FFkY7pdbnruFYoQzmC+zktc2JRV2/AQCTqvbMw8KHWtqVMEzUG6UHa1
	CcbeLiQ0/B/3TO+UGsksJMDUP/D1mZ8QmUmeqfYzsB1Rd8XR9r5U9qf5XsTsoBHpEffp0P9gi+bXk
	KgT9Yy+IxjsTZTplC/WHzkUQIgXLPMhXn8E/7KIKW96KuYcj2azMq8Apbgk0H2rLHcQYmv/FzcRMi
	p6azma06/FxTibCqtFwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLVe-0000BN-WF; Thu, 12 Dec 2019 10:15:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKYO-0006N1-72
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:14:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1826368B05; Thu, 12 Dec 2019 10:14:34 +0100 (CET)
Date: Thu, 12 Dec 2019 10:14:33 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 3/4] nvme/pci: Remove use_threaded_interrupts
Message-ID: <20191212091433.GD2399@lst.de>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-4-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209175622.1964-4-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_011436_434798_A6F30FAC 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 ming.lei@redhat.com, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 02:56:21AM +0900, Keith Busch wrote:
> The nvme threaded interrupt handling provides quick completions for
> latency sensitive workloads, and threaded handlers for more IOPS intensive
> ones. Remove the use_threaded_interrupts nvme module parameter since
> leaving it disabled should not be providing a benefit.

I think we need some careful benchmarking and numbers to justify the
switch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
