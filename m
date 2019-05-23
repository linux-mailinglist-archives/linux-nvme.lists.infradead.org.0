Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCBC2815F
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZpH3BUFbkcC/KSlK6bEm74+zrCAl1AVet9pEukjtds=; b=LNmO2OEq8Wk4RJ
	AESQYXLseOL0H6vUv9gman+mCtPZr91Y70AXQKczlGfxVKRIHe/QadkRzwLLkelwFc97J185xw9jM
	Q5ITqTywiRmh2cLQg8h7WP7tx7IlvpSqh92d2EdLZkAfi5Jj/101ATQUa6hil5BMoWXsYXGnHqbJB
	1F76Lme5vEe+EVDDntwEG08PCVxGC6encamglqGLN1HxHQcuCtz8f3kjZC/e5b1AYwGz+p3DnWI7w
	xn16LyH5g2u9fSd+zWM6LsjqhSYFF1BuEr6sBBX3UYNjKDy0HaVpJ231AtsWJXWxHwdHY1280NRER
	WB3xuKCKiOhCKP8Atj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpm2-0001mF-V5; Thu, 23 May 2019 15:36:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTplx-0001lt-Fq
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:36:50 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4F63F68AFE; Thu, 23 May 2019 17:36:26 +0200 (CEST)
Date: Thu, 23 May 2019 17:36:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCHv3 1/2] nvme: Export get and set features
Message-ID: <20190523153626.GA21238@lst.de>
References: <20190523152735.15052-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523152735.15052-1-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083649_682009_B6147603 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

> Change since v2: Use 'unsigned int' instead of just 'unsiged'

Those are equivalent in C, why bother changing it?

> +int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,

Especially as this now creates lines > 80 characters in various places.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
