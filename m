Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490D92819A
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhIWFcvumLgJcijGGwkm5ZcAB/zHwe5y3ptG/T1e9QQ=; b=BAYohYmaiTHbcz
	F+vX0GtBb/CpuC64cN+b44/QEMWeIY8/zCTSeEPDje6+RGWyAc9I5MjNivv/WVD3HtHEZCuM0VSYH
	MqzwXiR72pdgLE1esT51ls18jbe1iMl4AbH8kxUcS7HNqNk5eMl+re5sbaIu5fgNPRqe2KKn9AcpC
	P/I2NkmlN/1lFZ22xeOzZgZtuyHkL9pHXdR3/t9z7HlZ+bg/ZP3pl6fq324S7jJsFiAD3gDHfiME/
	9d+Bzl7x3KRis0HyKouy9MLANa3DAxbGc2NCrUDCnKXaCBFGe5PPceBSrlZFdDhFy+FTPzZ/6nzyp
	m0G2PdPvv4mfkdsWSVvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpwY-0006EV-JH; Thu, 23 May 2019 15:47:46 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpwT-0006E2-87
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:47:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 08:47:40 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by FMSMGA003.fm.intel.com with ESMTP; 23 May 2019 08:47:40 -0700
Date: Thu, 23 May 2019 09:42:39 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv3 1/2] nvme: Export get and set features
Message-ID: <20190523154239.GC14943@localhost.localdomain>
References: <20190523152735.15052-1-keith.busch@intel.com>
 <20190523153626.GA21238@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523153626.GA21238@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_084741_308956_BF8AAD0A 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-nvme@lists.infradead.org, Rafael Wysocki <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:36:26PM +0200, Christoph Hellwig wrote:
> > Change since v2: Use 'unsigned int' instead of just 'unsiged'
> 
> Those are equivalent in C, why bother changing it?

Just to shut up checkpatch.pl:

  WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
 
> > +int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,
> 
> Especially as this now creates lines > 80 characters in various places.

*facepalm*

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
