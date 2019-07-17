Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7121A6B5A4
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 06:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8e0DDe5oborx/U5sxdgqHt6Ya0ZH0THjLc39eiAtJp8=; b=PX6ksas34K8imF
	cj6Qvh/Lzdq6ChcoI9O63V+gND1daaVuK5BbwAiTYrASMp9VaMKnQgrKYX9jk6Ej+bPO2Yp+bDdf4
	4QQ12jy1l5MYp+I8s5rFkf5ojDMKrAFWekUp1tVjtIKwnB+u3Y7IBqF2wBEOQv56ZQmdlUvdikr7i
	EU1zjlN74WlXOw08DuyW7AnyFcdTe9xQQALUqo3m4eBatqRfpjcelX1UsnGs1IxSKXskeYF8o/Hhe
	zkPIoLMsXcFQbsE7928vSVB2cAjRBcNE90EZNbpX/8zSZDO/zYm5qyftFGt2q4BYnoU29Y6V2dcaa
	UIxaVMaGgIaX+M9jrgpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbtS-0007ip-Su; Wed, 17 Jul 2019 04:50:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbtC-0007DC-Kh
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 04:50:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 646A968B05; Wed, 17 Jul 2019 06:50:00 +0200 (CEST)
Date: Wed, 17 Jul 2019 06:50:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v2 3/3] nvme-pci: Add support for Apple 2018+ models
Message-ID: <20190717045000.GA4965@lst.de>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-3-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717004527.30363-3-benh@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_215002_861977_5C885BEB 
X-CRM114-Status: UNSURE (   6.65  )
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> # Conflicts:
> #	drivers/nvme/host/core.c

I thought you were going to fix this up :)

But I can do that and this version of the series looks fine to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
