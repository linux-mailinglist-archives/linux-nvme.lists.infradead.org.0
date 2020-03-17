Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EA2188478
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 13:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4l9g7BmjPu5baaeI6yihiSKnHsfCpKuMW1LnRSwdMDM=; b=RX9vCgMnuMpwEm
	q/kzwhBDxIk4V4J0Vz0hW+2UAOX/v0caCe4VbXZP5uK7qaMiV9i0jGasdWmwaUBCRl7eSgDf88RAV
	xXVy00rB2bRFKQM8+RHnSyi7zHnTZlmLqeOqzonPmdekOkfMl9KC6R+RA1soLQ3ID+knRu6TAEm/4
	Dwm5CQb+MzcUyO5Wma9P0x5yS2hHGgxtul8ylhK/QAv0HFy6GblAB5E4PTz0EIpBwg/xduvrptQFU
	3acv4GlHwvbpLnb4ForAx6GwjbOho7eVsb9pMUddRTyosYUgyqA8clxyRma5f0ay/xSxfDzOSAxKm
	bW25NXFHuqqJfbCCnGWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBbM-0006RK-Gs; Tue, 17 Mar 2020 12:45:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBbH-0006Q6-RQ
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 12:45:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DC43468BFE; Tue, 17 Mar 2020 13:45:33 +0100 (CET)
Date: Tue, 17 Mar 2020 13:45:33 +0100
From: Christoph Hellwig <hch@lst.de>
To: Krishnamraju Eraparaju <krishna2@chelsio.com>
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
Message-ID: <20200317124533.GB12316@lst.de>
References: <20200316162008.GA7001@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316162008.GA7001@chelsio.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_054540_034405_C2BD7739 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, linux-rdma@vger.kernel.org,
 Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Bernard Metzler <BMT@zurich.ibm.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 09:50:10PM +0530, Krishnamraju Eraparaju wrote:
> 
> I'm seeing broken CRCs at NVMeF target while running the below program
> at host. Here RDMA transport is SoftiWARP, but I'm also seeing the
> same issue with NVMe/TCP aswell.
> 
> It appears to me that the same buffer is being rewritten by the
> application/ULP before getting the completion for the previous requests.
> getting the completion for the previous requests. HW based
> HW based trasports(like iw_cxgb4) are not showing this issue because
> they copy/DMA and then compute the CRC on copied buffer.

For TCP we can set BDI_CAP_STABLE_WRITES.  For RDMA I don't think that
is a good idea as pretty much all RDMA block drivers rely on the
DMA behavior above.  The answer is to bounce buffer the data in
SoftiWARP / SoftRoCE.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
