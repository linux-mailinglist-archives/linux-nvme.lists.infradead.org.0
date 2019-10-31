Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8C3EB13D
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 14:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLafRa2C1Atvc8W29ngB/yydmfleuHvcTqsblKy5vcE=; b=JdPBf4ZAiHDV9p
	zqcQkflt5u/+WDI2IZHScsdY6Tp3rlQMSr2Mp19p9dQCU6u3NznxWnBhDCwgrbBfNFzP2ndkBKbSR
	LIj8p63tsSpZhqH/st9UudZHkqSn5zrNfMeQBMhWki9poqfEc2w6KqDYyDexJz6ZN7HTlgbx4lNXA
	ExisxClZRlKpjEIKaEalOBMjzXkVxO5bDhvJ8eAz/yizbz/zQSWgrmDsdnI7a8Ut15abpvnNpe35v
	xRI1lZVjs8VVaddb2azLBuRisEpa+cMeTTJoPaxVWEikWbPZL7ixHNsXknyzAhzHQBIzERxnDgs8y
	KsygN3Egl/DzJw2pZdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAXB-0002JN-II; Thu, 31 Oct 2019 13:30:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAX2-0002Fw-EF
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 13:30:34 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 88B4668C4E; Thu, 31 Oct 2019 14:30:28 +0100 (CET)
Date: Thu, 31 Oct 2019 14:30:28 +0100
From: Christoph Hellwig <hch@lst.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] Revert "nvme: Add quirk for Kingston NVME SSD
 running FW E8FK11.T"
Message-ID: <20191031133028.GA4617@lst.de>
References: <20191031093408.9322-1-jian-hong@endlessm.com>
 <20191031132853.GA46011@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031132853.GA46011@google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_063032_640582_0417DB64 
X-CRM114-Status: GOOD (  11.47  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, stable@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Jian-Hong Pan <jian-hong@endlessm.com>,
 linux@endlessm.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 08:28:53AM -0500, Bjorn Helgaas wrote:
> On Thu, Oct 31, 2019 at 05:34:09PM +0800, Jian-Hong Pan wrote:
> > Since commit 253eaf4faaaa ("PCI/MSI: Fix incorrect MSI-X masking on
> > resume") is merged, we can revert the previous quirk now.
> 
> 253eaf4faaaa is pending on my pci/msi branch, planned to be merged
> during the v5.5 merge window.
> 
> This revert patch must not be merged before 253eaf4faaaa.  The easiest
> way to do that would be for me to merge this one as well; otherwise
> we have to try to make things happen in the right order during the
> merge window.
> 
> If the NVMe folks ack this idea and the patch, I'd be happy to merge
> it.

Fine with me.

Acked-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
