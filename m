Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4FC1FF93
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JklVjhltdxTotn4GfEkcLI0wTHPugaDrzQEvC4qN9I=; b=WGGHEK56e62yoP
	ETmBmT5j9eRubPYmEvp2kPPSPNecjb12kJhVFwqtk6BCa4/thNMYtl7ajUCEgOuPzCNNidMyz0i+g
	M9S36O6H3qjQq6ywa7QcQ8yPEu62RCVU1Z1CMoSe4YsFM9sE9AW3mVK23LIhdqhSBnVPG5AZHfHAU
	sk4AWJ0ogYqGYKByV87Vpz39cxVgCQupy13FEkKNv7qy7Qox1aOxZ7YAGWSci0+UPHZUZbb4QfEOz
	c9A+yiy85REdxSPK/Uk/oEH6MxEtOyvpM6i02kSwjVDy6sSaYlscygzZ4hvb9ztRZTXMuvEyTMngZ
	xFuy0xUx+nr1LzY880WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9uK-0000pC-MB; Thu, 16 May 2019 06:30:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9uF-0000of-Ql
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:30:21 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 70C5567358; Thu, 16 May 2019 08:29:59 +0200 (CEST)
Date: Thu, 16 May 2019 08:29:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 4/6] nvme-pci: Sync queues on reset
Message-ID: <20190516062959.GF29930@lst.de>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-4-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-4-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_233020_017916_DAD07894 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:36:23AM -0600, Keith Busch wrote:
> A controller with multiple namespaces may have multiple request_queues
> with their own timeout work. If a live controller fails with IO
> outstanding to diffent namespaces, each request queue may attempt to
> disable and reset the controller in different threads. Synchronize each
> queue prior to starting the controller to ensure there no previously
> scheduled timeout work is running.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

I wonder if we should move the timeouts to a per-tagset single threaded
workqueue in the block layer, so that we don't process them in parallel?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
