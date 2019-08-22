Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6903A9890B
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98C2+g69zLie5QT2IJjD4OJ54ckB1JG4unAlHbgBFVw=; b=LDpU+KPd5DlNn4
	tenkykXXil3PllrIEzwWkmpl48U8031ybkvaOeISNZZJXD50jSal6tZMDmWrZmGN+nQpYS8Rdw3S0
	qPdRjvEwx3aaV/6ciFrSeNn+JHEvK6tYzANLgFR+XE8x8WukvnIT6EZtrGZnuZK4uw1z9YPrxzFSP
	p2cx3dP+NGf4sPerAFcC7EpVZZuL+9MMJve+EijvDp2HChag7MjSr6bAvzJ04AQNOxQayaBWu9WDw
	xu85+hWi9oiKGouZCRlha4QBsVPtxYr1O3Ty9xVojD7swOJrkNj6mSavmPQnLUUYbxiAhzPrHqCpB
	CD2ttqVnPw7UPp0og6Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0c52-00069w-LV; Thu, 22 Aug 2019 01:40:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0c4x-00069Y-4k
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:39:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 59CE968BFE; Thu, 22 Aug 2019 03:39:51 +0200 (CEST)
Date: Thu, 22 Aug 2019 03:39:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190822013951.GB11242@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
 <a975f0ee-ee78-4551-5419-0be3c24b3451@grimberg.me>
 <20190822010632.GA11242@lst.de>
 <cacd3fd3-55c4-6181-fd6f-dba62c49cf28@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cacd3fd3-55c4-6181-fd6f-dba62c49cf28@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_183955_335899_F9087035 
X-CRM114-Status: GOOD (  11.04  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:10:12PM -0700, Sagi Grimberg wrote:
> If we make nvme_submit_sync_cmd return a positive error status,
> then we need to make nvme_identify_ns return status and get the
> id by reference like nvme_identify_ctrl, otherwise IS_ERR() won't
> work.. Hannes objected to this practice, but I have no problem
> changing it back...

Yes, I'd rather stick to the -errno/postive nvme status convention
we use elsewhere in the nvme code rathern than using ERR_PTR.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
