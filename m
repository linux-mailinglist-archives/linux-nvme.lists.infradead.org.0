Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41EA11C837
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 09:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXPWPHzDNYmNs3V1950iQUf/v9DbcnGWpMmRAoozMRk=; b=JwJXCuXMkm1QcN
	xC7G6v8ne26ijYqu4kbYD0YL3oGXQvdVmef8q8el+nXYRaylxcZ3LoKXf2yQF4Juom/KqJJw76U8Y
	X/x7mR/JFFrzJT6VvjRCRVaPt4gLbk9iBILFQnJwhFtmqLOk5/udXTj3HrLzurj0bXI/S3opat6ML
	is3Gr1PQlmgDQgTu8LYcTVuxu8+8ZFJLV2fgDj6pjaXP8taZid1vm4QUbm8Vx2M2CqOhH68YQ7fM0
	JW9m2KyRL6VJtwnjWoRIw+rPyCeLviNHRp4S268bULUNDk4raeSYJ8k341bEIGR8K3D6LCd5QHWU8
	zloxVIn4ODK3DXtWB+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJrT-0006Oi-Bz; Thu, 12 Dec 2019 08:30:15 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ifJrN-00069O-Kq; Thu, 12 Dec 2019 08:30:09 +0000
Date: Thu, 12 Dec 2019 00:30:09 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [RFC PATCH 0/5] to add more nvme reset functions
Message-ID: <20191212083009.GA18522@infradead.org>
References: <346d379a5f9940dcba60242d2d9e119a@tgxml778.toshiba.local>
 <20191211161823.GA493@redsun51.ssa.fujisawa.hgst.com>
 <d4583505-d3f2-238b-c323-94216c910e29@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4583505-d3f2-238b-c323-94216c910e29@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Keith Busch <kbusch@kernel.org>, tsutomu.owa@kioxia.com,
 linux-nvme@lists.infradead.org, hch@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:50:23PM -0800, Sagi Grimberg wrote:
> 
> > > Any comments would be highly appreciated.
> > 
> > The majority of this series is at the pci protocol level, and the pci
> > driver already provides the requested capabilities (but with a more
> > safe implementation). Let's not reinvent it just because one nvme
> > transport happens to use the pci bus.
> 
> This is messy. Everything here needs to live in nvme-pci.

I really don't see any good reason to have any of this code to be
honest.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
