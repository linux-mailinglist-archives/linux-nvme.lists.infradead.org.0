Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFBE14DD64
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 15:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7kerBovz3aJD/pw3zS+yrur+gOh2oBAXlTGnXH7nRA=; b=L2cyXsz1dFwjO7
	QtGy/l57j+zLv2gAsnHQFsdG29eUiC9iU5lXaf4j6IxNNWG4kLQlAX7lbSENz+9LFGHBvaDq+VjIv
	iMw4nLxgI9funp254s09Zg0aacubXSv94x+8aeN0GSFR9IZ0VvsKY9q+flhcetHN3GPBBOaGFWrcx
	WOVyHSqE7a0Fl29cU134mXHK9Cs6rV89w5GeGQu8JflvY9I/7rpSb5Ok30mm4LjtvgFb1q3fHrIyE
	izcYBxYLzmsuDsFres9n7cWg5HosuLvHS50Xjh7PGLwsK35zAkRYx9Da5V1RViFBnrXK+QH8BNEFR
	omIRq4WXx9JgtiqjPCew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBEg-0004Qg-EF; Thu, 30 Jan 2020 14:56:02 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ixBEd-0004QW-Bw; Thu, 30 Jan 2020 14:55:59 +0000
Date: Thu, 30 Jan 2020 06:55:59 -0800
From: Christoph Hellwig <hch@infradead.org>
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>
Subject: Re: [PATCH] nvme/pci: Add sleep quirk for Samsung and Toshiba drives
Message-ID: <20200130145559.GB8412@infradead.org>
References: <20200121193012.29360-1-jonathan.derrick@intel.com>
 <d74ae02c0a560973fda9b35acc5e5f16e1438fac.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d74ae02c0a560973fda9b35acc5e5f16e1438fac.camel@intel.com>
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "N,
 Shyjumon" <shyjumon.n@intel.com>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, "kbusch@kernel.org" <kbusch@kernel.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 05:25:26PM +0000, Derrick, Jonathan wrote:
> That being said, I wonder if there's something else the driver should
> be doing for the whole range of devices and platform combos that seem
> to require similar pm quirks.

Well, any idea of what we could do?  We're trying to follow the spec
here, but apparently drivers only get tested with one or two windows
drivers.  We could try to reverse engineer what they do, and given that
the only one with autonomous is the Intel one, maybe someone from Intel
could help?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
