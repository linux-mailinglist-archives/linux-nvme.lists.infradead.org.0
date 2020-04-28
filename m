Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B856F1BB5B6
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 07:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jl75e2svL2pGadf77vrSmQ2LeU+KGCSRgRqcj17Dd8w=; b=AS4A80wmySsU4/
	79W2XESj2R39tXIMlpqSKRoW2PwpdTXe2fVylcnAm/PlSyBGMue7zqIeoNG6AUGbTasuMN1iT869b
	vR+aG7LBD5JU6SjaUEuaIHUvsjmiEqOXdqU6G5vzIWZ/wcO2VLkBh+G5Fs5jNvKd2txQOi5cXwy2C
	DxeUB71sSyR2DJi4WkkWSATitea5RPf43qC67JATycgwMfyMWmPj3eeIQE8LRNfJVY1WSnPvZlu2U
	BLo0Bl9Hxr9PPYHroRWjx6KZzn+Pe+ULErsrlAIbbhAfLrmPbSDstOUufd97vgecFehcCqnBEmNSV
	rqG7JlEnYzUdwhl2tloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTIYb-0001QI-9m; Tue, 28 Apr 2020 05:13:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTIYX-0001Ps-Dx
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 05:13:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B715168C7B; Tue, 28 Apr 2020 07:13:12 +0200 (CEST)
Date: Tue, 28 Apr 2020 07:13:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: "David E. Box" <david.e.box@linux.intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
Message-ID: <20200428051312.GB17146@lst.de>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428003214.3764-1-david.e.box@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_221317_615566_2E7DF9D8 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org,
 bhelgaas@google.com, hch@lst.de, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 05:32:12PM -0700, David E. Box wrote:
> NVMe storage power management during suspend-to-idle, particularly on
> laptops, has been inconsistent with some devices working with D3 while
> others must rely on NVMe APST in order for power savings to be realized.
> Currently the default is to use APST unless quirked to do otherwise.
> However newer platforms, like Intel Comet Lake systems, may require NVMe
> drives to use D3 in order for the PCIe ports to be properly power managed.
> To make it easier for drivers to choose, these platforms may supply a
> special "StorageD3Enable" _DSD property under the root port that the device
> is attached to. If supplied, the driver must use D3 in order for the
> platform to realize the deepest power savings in suspend-to-idle.
>     
> The first patch adds the new _DSD GUID and fowards the property through the
> pci/acpi layer to the pci device.
> 
> The second patch adds support for the property to the nvme driver.

I'm not sure who came up with the idea to put this into ACPI, but it
belongs into NVMe.  Please talk to the NVMe technical working group
instead of trying to overrules them in an unrelated group that doesn't
apply to all of PCIe.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
