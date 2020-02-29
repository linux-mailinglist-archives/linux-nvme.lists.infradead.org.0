Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC501748CA
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Feb 2020 19:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/jkKEnfNn2MrKFPbydzyY3ntlNcLDCDccYdtBtMG7o=; b=rlnDgIzd3kMzZG
	HyTWb6ZEYjeWtiaLTjbnALXIh2uderE+Adne1mNx1mKl7dIpv23NRK+wYS0pBVusDnh62sq53uo6V
	R2ylYZsZOIFbz8voDy8KyKo/hJaBgW9Vhmyw07lo4Y0V2rpP4i+2eZ4sH0prktOEV7uD1w7KebgQ9
	zJknoLBWnmBoC00QBoHTOl9k3ROTE646W3tk05/sg/5tWHYoexJuYERRpXF2RD33n689RRuRw8iLO
	iLwErQeXZWSrJu9HeQfySMwMNyaOJDZwAOcRFilOCPmoV9Es47AHzEjLLYF5J3q5jT9Oa5+n0RUsq
	1HeqgwYDQKxHq8BmNPHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j87KY-0001tQ-L2; Sat, 29 Feb 2020 18:59:18 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j87KV-0001tG-W7; Sat, 29 Feb 2020 18:59:15 +0000
Date: Sat, 29 Feb 2020 10:59:15 -0800
From: Christoph Hellwig <hch@infradead.org>
To: masahiro31.yamada@kioxia.com
Subject: Re: [PATCH] nvme: fix NVME_IOCTL_SUBMIT_IO for compat_ioctl
Message-ID: <20200229185915.GB5698@infradead.org>
References: <2caa4c913579464bbfdf06b36001ffc9@TGXML281.toshiba.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2caa4c913579464bbfdf06b36001ffc9@TGXML281.toshiba.local>
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
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can't just change the existing structure, instead we'll need
a compat handler for the 32-bit x86 case.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
