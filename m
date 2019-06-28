Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A61059498
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=WXNLsMdSLj9vgZ
	+Hq9v7z0EVQWi5DT8TQ/3iivAO293oLh+8Ey2EpgrwtKc7MnL6999wRX/q2wld7CBOZgK4a/Q+pkQ
	L29vfyKHLnHYVz5JekeoMyVZjlrT7yEHn/AFEqFA5eMHTZAFK3PpH2gfBbQ640Sj1Ll0EcV8hMMSr
	J0+CZAQWPm72rWiVr3z5XLIoLZvf43CnECRK9jmxniYrX+PVe0paj8tj/4KUPFHHbQhlYg89hvX5R
	eiIxnhbLaEF08DNO0k+pXwWAvGNVerB+yeGgZW7iTD8cS0acfW2GspKjBz3T0lDeK8omUlkfobHvl
	Rqbd6Ci9EttDSqkhzkUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl19-0002bg-Si; Fri, 28 Jun 2019 07:09:56 +0000
Received: from [213.95.11.210] (helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgl0U-0002Uz-B1
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 07:09:18 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4424468CFE; Fri, 28 Jun 2019 09:09:09 +0200 (CEST)
Date: Fri, 28 Jun 2019 09:09:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] nvme-pci: Make nvme_dev_pm_ops static
Message-ID: <20190628070909.GD28268@lst.de>
References: <20190626020902.38240-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626020902.38240-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_000915_065570_508346D6 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: keith.busch@intel.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
