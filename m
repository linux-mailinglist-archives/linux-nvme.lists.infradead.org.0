Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6152180D84
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 02:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zF5VsSeL6czFGkWnwvPoXqp6CeG8p23S0f4WVMWAaI=; b=QM3zc4BCxw97cv
	a/qr4ovSyL5DjTV5boAqSkv9VfyJqFVxKA0oRXgMOc5qTuoptdR0JeURXboPDT+oyO1Nyc2Ht2wQe
	ekqqQmfxsfvmdy1/MNKs1EPl+0AUHxH7riph32WfkrhW3ukvm4Nfr2qsdnPC3CkbOQ5C6i3zpO9l7
	FUQ8IkpLUjtXXqzOkNZ4u9uoPJb+/A3cjMnCgtcrIRC9/VKdPZAnynTOGIGZaaxE5hh2onSUCLi6h
	fWK8JfHHoGTSg/GiQXw6rBFNXMov9AQDc5fe8Km1z2mEK7FdRcPi7GKo4vfcDSt+4LbxCyBEt9cj9
	cqPe1srokIG6CSQukmHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBqBz-0008Hy-NQ; Wed, 11 Mar 2020 01:29:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBqBu-0008Hc-CW
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 01:29:47 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8BC2205ED;
 Wed, 11 Mar 2020 01:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583890186;
 bh=yfmshSjreKPUXRdit82xLS1XRCNjik2fguRiQIdONzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZJUXzjQbF2gr64CWMrIXCr5Qu7JL2xpwIYv/pvq0qeFGhg7V4Nn60PLe+VwN4lyo2
 tAHWcMMS56qTBHPmYhrFzs31HLyxWrdfU8kv0bUADw5cebttEvPfoa3kFbW0gqgtCg
 JSBbqESPWSllynE088z8it49Elbqmd1U7zeJlQiE=
Date: Tue, 10 Mar 2020 18:29:43 -0700
From: Keith Busch <kbusch@kernel.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: I/O performance with block sizes > 128k
Message-ID: <20200311012943.GA836703@dhcp-10-100-145-180.wdl.wdc.com>
References: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
 <20200310170818.GA28008@infradead.org>
 <20200310194421.GB17237@redsun51.ssa.fujisawa.hgst.com>
 <3971720d-d05d-9a08-cb5e-6396df70a8b2@oracle.com>
 <20200311012701.GF604509@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311012701.GF604509@dhcp-10-100-145-180.wdl.wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_182946_448119_5FDF42EF 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Christoph Hellwig <hch@infradead.org>, Jens Axboe <axboe@kernel.dk>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 06:27:01PM -0700, Keith Busch wrote:
> On Tue, Mar 10, 2020 at 05:52:02PM -0700, Bijan Mottahedeh wrote:
> > I had to kill the fio jobs and got a bunch of this output:
> > 
> > Jobs: 103 (f=103): [r(4),_(1),r(12),_(1),r(2),_(1),r(10),_(1),r(2),_(1),r(1),_(1),r(7),_(1),r(1),_(2),r(16),_(1),r(5),_(1),r(6),_(2),r(2),_(1),r(2),_(1),r(2),_(1),r(3),_(1),r(9),_(1),r(4),_(2),r(5),_(1),r(3),_(1),r(1),_(1),r(4),_(2),r(2)][0fio:
> > job 'fiotest' (state=5) hasn't exited in 300 seconds, it appears to be
> > stuck. Doing forceful exit of this job.
> > 
> > Hopefully Jens can comment what this means.
> 
> What kernel are you using? A bug observed with multiple threads polling
> the same queue was just fixed in the 5.6-rc5 release


Oops, I suppose you already know that ... you fixed it! :)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
