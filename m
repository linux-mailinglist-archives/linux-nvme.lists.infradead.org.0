Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB83416D33
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 23:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h2ru8fuf+OSsWPhWSuRc1lVuhzsjOQa9/aClM3ZKeE=; b=USk+7R1bXjR3nq
	xGXfBR+5PEUgzgmPE0fyKzzmpulNYAc7ANwjCCXWNany9VHbjcImoEDSMnOxSOt8lJMTUmdmoh9wj
	KxrqR61LJe4PIXCHt7FneLCFyitrQdRuq2GFMImKZnMtfPWDq7+9K/lu5+BGNFtN8SvaxrJH2magq
	e65ewjZcSRJPY+2DqLjQpe+enjfgt5zU/Vg4L/a94h6KEjBR5ywM9FrTbYmMoOLvMCh3xchDnUaHi
	RIz7qWWEG71BHckaMTNgguISysE8T7d2NdWEkl8fVHMuV1rRp58fMiN6F8aa9BpM8U/j3R6gsgPvO
	U1WFo//GrjACf3UYofyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7dM-0007kb-KZ; Tue, 07 May 2019 21:28:20 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO7dI-0007kC-MY
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 21:28:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 14:28:15 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga008.fm.intel.com with ESMTP; 07 May 2019 14:28:14 -0700
Date: Tue, 7 May 2019 15:22:41 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
Message-ID: <20190507212241.GA7113@localhost.localdomain>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
 <a4ec2c1a-1ff7-52fe-07bd-179613411536@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4ec2c1a-1ff7-52fe-07bd-179613411536@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_142816_748120_9082334E 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 02:31:41PM -0600, Heitke, Kenneth wrote:
> On 5/7/2019 10:58 AM, Akinobu Mita wrote:
> > +
> > +static int nvme_get_telemetry_log_blocks(struct nvme_ctrl *ctrl, void *buf,
> > +					 size_t bytes, loff_t offset)
> > +{
> > +	const size_t chunk_size = ctrl->max_hw_sectors * ctrl->page_size;
> 
> Just curious if chunk_size is correct since page size and block size can
> be different.

They're always different. ctrl->page_size is hard-coded to 4k, while
sectors are always 512b.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
