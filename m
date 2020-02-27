Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07F217227D
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 16:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMbZ0MRZ+MmrMs9CCzaWx/KWfMXmRRaRKqwpEu2rJtU=; b=OvuXKGKRxQh1Vj
	0s9z6Bi9J/ZhItrnCxykGwyq7reLoWWznVGXhUYrqoJ3XsDaG/4uVBbXx1AIv7ZxKRMlQJFWWCPD8
	RRuwXLUSvGJ2KTegmjDD8gttXSNTB5fV2WHUUb/981gYFPHbX9pAOYl8wR+Po4IR76LaUJ648a5nH
	AF0U5bgJupHnNLl3mQbA7Nq4xe00woWEuoUjA7R/AKTMUBVTurOPjHqlGf0DmLcmwIDj++McvOIN+
	tFFZjTEH3EqZR9FKidCENCQVeu3BQ9eYZvBcOz1NCrx4i3GxwTExCo2cW15fBcAE4hIA1u/piQmtN
	AC/8xzP1EG8fOuRrt5UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LN8-0005jC-Ac; Thu, 27 Feb 2020 15:46:46 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LN3-0005ff-SP
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 15:46:43 +0000
Received: from localhost (pvp1.blr.asicdesigners.com [10.193.80.26])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id 01RFkMbE028085;
 Thu, 27 Feb 2020 07:46:22 -0800
Date: Thu, 27 Feb 2020 21:16:21 +0530
From: Krishnamraju Eraparaju <krishna2@chelsio.com>
To: Sagi Grimberg <sagi@grimberg.me>, jgg@ziepe.ca
Subject: Re: [PATCH for-rc] nvme-rdma/nvmet-rdma: Allocate sufficient RW ctxs
 to match hosts pgs len
Message-ID: <20200227154220.GA3153@chelsio.com>
References: <20200226141318.28519-1-krishna2@chelsio.com>
 <b7a7abdc-574a-4ce9-ccf0-a51532f1ac58@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7a7abdc-574a-4ce9-ccf0-a51532f1ac58@grimberg.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_074641_932070_355D99C4 
X-CRM114-Status: GOOD (  11.74  )
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
Cc: linux-rdma@vger.kernel.org, bharat@chelsio.com, nirranjan@chelsio.com,
 hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi & Jason,
	
Thanks for the comments, please see inline.

On Wednesday, February 02/26/20, 2020 at 15:05:59 -0800, Sagi Grimberg wrote:
> 
> >Current nvmet-rdma code allocates MR pool budget based on host's SQ
> >size, assuming both host and target use the same "max_pages_per_mr"
> >count. But if host's max_pages_per_mr is greater than target's, then
> >target can run out of MRs while processing larger IO WRITEs.
> >
> >That is, say host's SQ size is 100, then the MR pool budget allocated
> >currently at target will also be 100 MRs. But 100 IO WRITE Requests
> >with 256 sg_count(IO size above 1MB) require 200 MRs when target's
> >"max_pages_per_mr" is 128.
> 
> The patch doesn't say if this is an actual bug you are seeing or
> theoretical.
	
I've noticed this issue while running the below fio command:
fio --rw=randwrite --name=random --norandommap --ioengine=libaio
--size=16m --group_reporting --exitall --fsync_on_close=1 --invalidate=1
--direct=1 --filename=/dev/nvme2n1 --iodepth=32 --numjobs=16
--unit_base=1 --bs=4m --kb_base=1000

Note: here NVMe Host is on SIW & Target is on iw_cxgb4 and the
max_pages_per_mr supported by SIW and iw_cxgb4 are 255 and 128
respectively.
	
Traces on Target:

#cat /sys/kernel/debug/tracing/trace_pipe|grep -v "status=0x0"
kworker/8:1H-2461  [008] .... 25476.995437: nvmet_req_complete: nvmet1:
disk=/dev/ram0, qid=1, cmdid=3, res=0xffff8b7f2ae534d0, status=0x6
kworker/8:1H-2461  [008] .... 25476.995467: nvmet_req_complete: nvmet1:
disk=/dev/ram0, qid=1, cmdid=4, res=0xffff8b7f2ae53700, status=0x6
kworker/8:1H-2461  [008] .... 25476.995511: nvmet_req_complete: nvmet1:
disk=/dev/ram0, qid=1, cmdid=1, res=0xffff8b7f2ae53980, status=0x6

> 
> >The proposed patch enables host to advertise the max_fr_pages(via
> >nvme_rdma_cm_req) such that target can allocate that many number of
> >RW ctxs(if host's max_fr_pages is higher than target's).
> 
> As mentioned by Jason, this s a non-compatible change, if you want to
> introduce this you need to go through the standard and update the
> cm private_data layout (would mean that the fmt needs to increment as
> well to be backward compatible).

Sure, will initiate a discussion at NVMe TWG about CM private_data format.
Will update the response soon.
> 
> 
> As a stop-gap, nvmet needs to limit the controller mdts to how much
> it can allocate based on the HCA capabilities
> (max_fast_reg_page_list_len).

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
