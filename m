Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC6C1E8B62
	for <lists+linux-nvme@lfdr.de>; Sat, 30 May 2020 00:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6C22I0lBXfq7L2q4LXQuaneyPO6VaxsTa44xcTkbmyA=; b=OlVMylb8utgA/O
	liJbYgcBH/yDkGdCce+lntSGu2VPj5htJn9yBqxvDiBs3Gi0Rlhk4OFq4RCLT9U2rlxyIU43SkIgg
	QzwBp+bYah2P2GFJ9y2Seqx4pYPUT4V7w6yidJMUso0CeZRvf1ho3kbOLVUek7M5vBaAql2wRK659
	TeGiX3NDvoKdD6ABJFEoHlJYDViHAk7zIuYTaL1EzQmoJ7jri1SvR3uOsdbaQPglkenT9UpoVvROv
	pM1ZeP9Wbm7R3rdhfuQImn1Lifp+PEQ0OHy0+1UCVdCcWJCUEAcvJ2Mj2XdFk5c01HiJq24wGq1MR
	Khc/4LyiSNDFoza3hBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenYn-0004cO-Hj; Fri, 29 May 2020 22:33:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenYj-0004bn-CP
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 22:33:02 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFE3F207BC;
 Fri, 29 May 2020 22:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590791579;
 bh=2EeVVHbwIL24E6BEnGDlQDLaPxbUkfL4gAeJ7C0NJXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iLDpMCrIutYY5PMUhtAAGv+Zn1v2w5dDE1DJv1KQjxPIRomdjUqxXLwzxI+KXbp1X
 dqujr6+5a5Cjytw/fpo3IO09lrJUV35WQsuYhRHiefSHyY5MmxmglwrxJQIfq9d+NO
 iLFqt6lIJ2sNOSzp873kAxpJEdY513yYkEBv8fcg=
Date: Fri, 29 May 2020 15:32:56 -0700
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <tom.leiming@gmail.com>
Subject: Re: [PATCHv3 2/2] nvme: cancel requests for real
Message-ID: <20200529223256.GA3564047@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200528153441.3501777-1-kbusch@kernel.org>
 <20200528153441.3501777-2-kbusch@kernel.org>
 <68629453-d776-59e5-cdc9-8681eb2bab37@oracle.com>
 <20200528191118.GB3504306@dhcp-10-100-145-180.wdl.wdc.com>
 <20200528191443.GA3504350@dhcp-10-100-145-180.wdl.wdc.com>
 <f9cbedc9-88b2-acc8-5b95-f1c247ab1525@oracle.com>
 <CACVXFVOTQ7HLV5DCP1XezPqha13LfUrj-fZE8++_BAoTvtPWMA@mail.gmail.com>
 <20200529132217.GB3506625@dhcp-10-100-145-180.wdl.wdc.com>
 <CACVXFVMithaukPF45qFzTgzqQ2g2mhLbUD+-AyaNwVwZo7+CyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACVXFVMithaukPF45qFzTgzqQ2g2mhLbUD+-AyaNwVwZo7+CyA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_153301_438237_AB409910 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 linux-block <linux-block@vger.kernel.org>,
 Alan Adamson <alan.adamson@oracle.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 06:23:08AM +0800, Ming Lei wrote:
> On Fri, May 29, 2020 at 9:22 PM Keith Busch <kbusch@kernel.org> wrote:
> > seconds. Your series will reset that broken controller indefinitely.
> > Which of those options is better?
> 
> Removing controller is very horrible, because it becomes a brick
> basically, together
> with data loss. And we should retry enough before killing the controller.
> 
> Mys series doesn't reset indefinitely since every request is just
> retried limited
> times(default is 5), at least chance should be provided to retry
> claimed times for IO
> requests.

Once the 5th retry is abandoned for all IO in the scheduled scan_work,
the reset will succeed and schedule scan_work, which will revalidate
disks, which will send new IO, which will timeout, then reset and
repeat...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
