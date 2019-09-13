Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43568B2261
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 16:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnGHTV3MWt+lWFfqR0Q9+cOzb2dVs0D1IDHw4QfUWy8=; b=EMd8sL80fErYo0
	KnLROA9/6yHjy3hl4NwJj8304UbT0w3mu5gsXH8zEUulYF/ZeWZ2ZQoR3ASGgy3G6AxqBPsrS3ExI
	2Jdsy2T9XWB9sWqVbHcXqOubjytapGZ0k+7C1s2birUKvATfvE0A4AwCyMF2wx+ydpYtao48gnTLS
	vte6Ad4cqdNCzh6Hj445vgqLP79YGA4/28EIcJC30k1JPAmv7yI+8TZsZ3UOlHgv545eRyF83YGxU
	24PenQTWVH40gSkefdLDmL0OVlhKkZGHUbMOpA7vQwcxAqM5vj4UcCGCGBEIb1jy42I+jJH7eC+a1
	M1qFfI1kkIX/n5GG4Fwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mkU-0006Xn-51; Fri, 13 Sep 2019 14:40:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mhJ-00034d-2R
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 14:37:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1A3AB68B05; Fri, 13 Sep 2019 16:37:10 +0200 (CEST)
Date: Fri, 13 Sep 2019 16:37:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robert Baldyga <robert.baldyga@intel.com>
Subject: Re: [PATCH 0/2] nvme: Add kernel API for admin command
Message-ID: <20190913143709.GA8525@lst.de>
References: <20190913111610.9958-1-robert.baldyga@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913111610.9958-1-robert.baldyga@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073717_455393_46EA2BBA 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, michal.rakowski@intel.com, axboe@fb.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 01:16:08PM +0200, Robert Baldyga wrote:
> Hello,
> 
> This patchset adds two functions providing kernel to kernel API
> for submiting NVMe admin commands. This is for use of NVMe-aware
> block device drivers stacking on top of NVMe drives. An example of
> such driver is Open CAS Linux [1] which uses NVMe extended LBA
> formats and thus needs to issue commands like nvme_admin_identify.

We never add functionality for out of tree crap.  And this shit really
is a bunch of crap, so it is unlikely to ever be merged. 

Why can't intel sometimes actually do something useful for a change
instead of piling junk over junk?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
