Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F087F1B3A70
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 10:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IzBGQiLZa2NWptW5Ix+WsYaNrYxfIPuLCctyRJABso=; b=QCpu1Dll2yXEj6
	Z77joENdjhT0bk/MEOuxCpqkgzQXMQI0VALcv5ZRZoA4uuI55eKYzvkP5UEJvXC8MI7htdwDCyxk7
	7SwhHyGx37KzUEDkQNHo6CDygfe+zxpL7b/vYmZ61vyYaUJiawy540p8eUtMwhZfM7vB8pAueGs7R
	pAP2wQxmHea3CFf4auvdoDFWkiT2ZUq9qeGCReO9oa6Hr9UfHuCT6Vbgk/PQwh2shjwSX7rG7bB1r
	cygZoqwg9n54dYAZDvdAt2UMx3Gafx7b5LBB4LHcVwNNCL3mXOnGYvJZ7VSqYkVuz6KjH1t2AfGx0
	V+ar8uoD+1iPYZ+dNlvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAwq-0005bX-5w; Wed, 22 Apr 2020 08:41:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jRAwl-0005aw-Bt; Wed, 22 Apr 2020 08:41:31 +0000
Date: Wed, 22 Apr 2020 01:41:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian Kastner <ckk@kvr.at>
Subject: Re: NVME drive warns on power-off; smartd reports error log entry
 increase
Message-ID: <20200422084131.GA9192@infradead.org>
References: <671cdd44-dfa1-730f-634f-0946f5b6beeb@kvr.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <671cdd44-dfa1-730f-634f-0946f5b6beeb@kvr.at>
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

On Fri, Apr 17, 2020 at 02:49:52PM +0200, Christian Kastner wrote:
> I installed a Samsung 970 EVO Plus NVME drive last year.
> 
> After having installed smartd, I now receive a notification after each
> reboot, containing the following information:
> 
> > The following warning/error was logged by the smartd daemon:
> > 
> > Device: /dev/nvme0, number of Error Log entries increased from 195 to 196
> > 
> > Device info:
> > Samsung SSD 970 EVO Plus 500GB, S/N:S4EVNF0M860395T, FW:2B2QEXM7, 500 GB
> 
> Furthermore, just a moment before actual power-off, a kernel warning is
> printed. (This is something recent, resulting from updates to either the
> kernel or systemd on my end).

Can you check with the latest Linux 5.6 upstream kernel if that still
shows up?  I have a hard time figuring out what weird mix of patches
any given distro kernel has.  Alternatively report it to the debian
bug tracking system (bugs.debian.org).

For the error log:

Please run

nvme error-log /dev/nvme0

after the reboot (make sure nvme-cli is installed) which will tell us
what entry showed up in the error log.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
