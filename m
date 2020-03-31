Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBED3199A4C
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkJZJkRAl9RYRJQqghus0cKF5ssDfPjk8HlTGBiiqQ0=; b=ITVG2EyfrihF9g
	v2NuWb3IOqMZcWXPISo9gujFQf7TUyMq50mLi34qeAZS+KtQNUwqsfAmmgZCxCbyWkXK/OqdUfc3j
	xogFRm0i4xP3wjtSfJPeZ5TZKpJLcQiIvlHdpJidCbkhNObTob6IQcVdjDl0JUkh2Z8aAxkXbQkVI
	xkPXwYEX1fGjR5DhNCq+PnMcSgd3a1kOMQsy2hmAckQfTbZwArDuSxjfYbhOkaU6WC4lDL5WPi76A
	VekmAi1UtoiO3B0VGSNKu4Byyucsqg8zCDCupNFkXOifzHi884c3/R/JUdjsH3tH+9RMbsJMZZw68
	xIsDvgzh7mm74+rp+zwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJAz-0002Xf-V7; Tue, 31 Mar 2020 15:51:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJGuW-0002aL-4r; Tue, 31 Mar 2020 13:26:32 +0000
Date: Tue, 31 Mar 2020 06:26:32 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Anton Brekhov <anton.brekhov@rsc-tech.ru>
Subject: Re: NVMe Over Fabrics Disconnect Kernel error
Message-ID: <20200331132632.GA9797@infradead.org>
References: <CABY-YC7eHFjb-TpKf2ioPJNhZ8RccYsrR-oU=wmt26z9AUNebg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABY-YC7eHFjb-TpKf2ioPJNhZ8RccYsrR-oU=wmt26z9AUNebg@mail.gmail.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 09:12:37AM +0300, Anton Brekhov wrote:
> Greetings!
> 
> We're using nvme-cli technology with ZFS and Lustre Filesystem on top of it.
> But we constantly come across a kernel error while disconnecting
> remote disks from switched off nodes:

Which is totally your problem if you use out of tree modules that
violate licensing.  *plonk*

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
