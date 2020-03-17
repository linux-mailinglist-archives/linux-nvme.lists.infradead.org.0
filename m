Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D469188DDF
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 20:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhlIA8mNGW8aqxl0cwwCxGb6+lmUOUSWp84axB9LtVs=; b=AxwMRIOdQwrSSs
	MPh6MtRzorR8v6RQ+RuFgxvnzCUpx0f/dAIEalr1d/qbx9VApKjM4tr/oCdDZ+LsIYsJwcjVOuB8Q
	JtZBwuv1P3Wfa3B26Y3Tk5LTsBddY/kwq50Yw/mBQeb/RQafyOmxLeM4Q160MpzUnlIbgMCzofkLL
	sXNp6DrltGSGarx6cPHu6aaZ3m822w9PU0M8BFNbar3RwHj7orBjmoMR91+1R8h6b1WiJ/8ovWJLb
	rsguJAy6KitGQqN+/1Iq5ejwWmmK692mBYb9KtrrklB598N5lwH26EPYzw6iZnAXbxhuiVTlqDm6Z
	D3r+gZlFabOdZswuUilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHlV-0000fa-NE; Tue, 17 Mar 2020 19:20:37 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHlS-0000fC-49
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 19:20:35 +0000
Received: from localhost (pvp1.blr.asicdesigners.com [10.193.80.26])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id 02HJHjfG008485;
 Tue, 17 Mar 2020 12:17:46 -0700
Date: Wed, 18 Mar 2020 00:47:44 +0530
From: Krishnamraju Eraparaju <krishna2@chelsio.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
Message-ID: <20200317191743.GA22065@chelsio.com>
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
 <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
 <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_122034_179085_BD54B3C1 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rdma@vger.kernel.org, Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Bernard Metzler <BMT@zurich.ibm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tuesday, March 03/17/20, 2020 at 09:39:39 -0700, Sagi Grimberg wrote:
> 
> >>>For TCP we can set BDI_CAP_STABLE_WRITES.  For RDMA I don't think
> >>that
> >>>is a good idea as pretty much all RDMA block drivers rely on the
> >>>DMA behavior above.  The answer is to bounce buffer the data in
> >>>SoftiWARP / SoftRoCE.
> >>
> >>We already do, see nvme_alloc_ns.
> >>
> >>
> >
> >Krishna was getting the issue when testing TCP/NVMeF with -G
> >during connect. That enables data digest and STABLE_WRITES
> >I think. So to me it seems we don't get stable pages, but
> >pages which are touched after handover to the provider.
> 
> Non of the transports modifies the data at any point, both will
> scan it to compute crc. So surely this is coming from the fs,
> Krishna does this happen with xfs as well?
Yes, but rare(took ~15min to recreate), whereas with ext3/4
its almost immediate. Here is the error log for NVMe/TCP with xfs.

dmesg at Host:
[  +0.000323] nvme nvme2: creating 12 I/O queues.
[  +0.008991] nvme nvme2: Successfully reconnected (1 attempt)
[ +25.277733] blk_update_request: I/O error, dev nvme2n1, sector 0 op
0x3:(DISCARD) flags 0x800 phys_seg 1 prio class 0
[  +6.043879] XFS (nvme2n1): Mounting V5 Filesystem
[  +0.017745] XFS (nvme2n1): Ending clean mount
[  +0.000174] xfs filesystem being mounted at /mnt supports timestamps
until 2038 (0x7fffffff)
[Mar18 00:14] nvme nvme2: Reconnecting in 10 seconds...
[  +0.000453] nvme nvme2: creating 12 I/O queues.
[  +0.009216] nvme nvme2: Successfully reconnected (1 attempt)
[Mar18 00:43] nvme nvme2: Reconnecting in 10 seconds...
[  +0.000383] nvme nvme2: creating 12 I/O queues.
[  +0.009239] nvme nvme2: Successfully reconnected (1 attempt)


dmesg at Target:
[Mar18 00:14] nvmet_tcp: queue 9: cmd 17 pdu (4) data digest error: recv
0x8e85d882 expected 0x9a46fac3
[  +0.000011] nvmet: ctrl 1 fatal error occurred!
[ +10.240266] nvmet: creating controller 1 for subsystem nvme-ram0 for
NQN nqn.2014-08.org.nvmexpress.chelsio.
[Mar18 00:42] nvmet_tcp: queue 7: cmd 89 pdu (4) data digest error: recv
0xc0ce3dfd expected 0x7ee136b5
[  +0.000012] nvmet: ctrl 1 fatal error occurred!
[Mar18 00:43] nvmet: creating controller 1 for subsystem nvme-ram0 for
NQN nqn.2014-08.org.nvmexpress.chelsio.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
