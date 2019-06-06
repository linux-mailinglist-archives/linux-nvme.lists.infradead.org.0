Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FBA36C89
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yltZXCTH42p3pVFGeNPnmE6bWL1AOfZR6pZ9qkQ71l4=; b=gd45EMM9dAXSXC
	AhK9JuTcMZ91rKmEacpqD+Y8AJiMJDuCVcQ61YL1zgxbOAAJ8AHhgb+GZRiOyOOtAMkOdTxHFG9TY
	zXyOgAnrkHakNtw9tjRQBHJ2wgNqRdmwRzOpVvWEf2SpljKK8cygNFES+SZID5kAcq2kKOidMUoTX
	pnY6ErsFxbjuETn2y7t4UEmbMv0NaSXqE2A1XwyCKsQW6geldO7+vyPJmhNcRzCO44S48dXOdIMQN
	OqCViouexTOV8jQXP7IAoVNnGylFIB9myUQbOKQNIKn5tw6nS9P82tO0NNNbHKdDBimjbuOh8I+TT
	Uy/hP47kqOqfnphjpWAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmDA-0007ia-CI; Thu, 06 Jun 2019 06:49:20 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmD5-0007iI-Lc
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:49:16 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4242E68B05; Thu,  6 Jun 2019 08:48:48 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:48:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V6 1/3] nvmet: introduce nvmet_req_to_ctrl to get
 ctrl instance
Message-ID: <20190606064848.GF27033@lst.de>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
 <20190606063229.17258-2-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606063229.17258-2-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_234915_865040_BA368B97 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 03:32:27PM +0900, Minwoo Im wrote:
> nvme host driver can get the controller instance from
> nvme_req(req)->ctrl.  In case of target driver, it needs to get
> controller instance from the struct nvmet_req with sq where the request
> has been submitted.

Note that normally we can just dereference ->sq just fine, as it only
isn't set in the low-level code before accepting the initial connect.

Maybe keep this as a helper in trace.h?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
