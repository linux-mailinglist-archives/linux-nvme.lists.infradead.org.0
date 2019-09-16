Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF94B3621
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 10:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzeD7iqdqN1v0V6g364AFpdmKsLU2zyo83bDS+3EyWo=; b=UcG6mhxwvEkd70
	RaaY5LsP0skZtwdZgeL6uzJc9Vm5uI1draJmHW9L1oEXi+qlGZkpPYTduaNs5tc2BbmPhWQB2B/Sz
	cpK+tK1zD8YqyNl/yJFROKRJGU6aM6a+19Zp0y1o2LpIT+QC22EvmvSfJMeCPsviGoEVmqk/Ws+0N
	hqK3zOTJ9ZAFSB5Sp/VmNLJFJIVd8xUl4hNM9ZbRYqZBmjDQSpEL6Xx5Voos1hCgIx5z+ealoZlM1
	5/OzWozgmFNQXyodagRraUBPe54ybKBPd2ZpquESJNRAWy+7LW0K4Pbu1juEKSb5xP6D0b4+e/mtp
	id04/FIRc1QhKLn2fYHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lz4-0005O6-Rl; Mon, 16 Sep 2019 08:03:42 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lyu-0005NZ-Cg
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 08:03:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 169BA68B05; Mon, 16 Sep 2019 10:03:29 +0200 (CEST)
Date: Mon, 16 Sep 2019 10:03:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v4 1/3] block: centralize PI remapping logic to the
 block layer
Message-ID: <20190916080328.GB25898@lst.de>
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
 <yq1mufei4zk.fsf@oracle.com>
 <d6cfe6e5-508a-f01c-267d-c8009fafc571@mellanox.com>
 <yq1d0g8hoj5.fsf@oracle.com>
 <61ab22ba-6f2d-3dbd-3991-693426db1133@mellanox.com>
 <yq1k1affx8v.fsf@oracle.com>
 <e59b2d78-4cf6-971a-1926-7969140d2a01@mellanox.com>
 <yq1lfurdejc.fsf@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1lfurdejc.fsf@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_010332_580718_4FFC098A 
X-CRM114-Status: GOOD (  11.41  )
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, sagi@grimberg.me,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, keith.busch@intel.com,
 shlomin@mellanox.com, Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 06:20:23PM -0400, Martin K. Petersen wrote:
> 
> Max,
> 
> > what about broken type 3 in the NVMe spec ?
> >
> > I don't really know what is broken there but maybe we can avoid
> > supporting it for NVMe until it's fixed.
> 
> The intent in NVMe was for Type 3 to work exactly like it does in
> SCSI. But the way the spec is worded it does not. So it is unclear
> whether implementors (if any) went with the SCSI compatible route or
> with what the NVMe spec actually says.

Do we actually have Linux users of Type 3 at all?  I think for NVMe
we could just trivially disable Linux support, and I suspect for SCSI
as well, but I'll have to defer to you on that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
