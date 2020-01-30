Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3FB14DD98
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 16:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG02MFAn/lNtO3fF5vA4YT8Se1yCk13OJRtbFSHckxQ=; b=B7qVTQf9wyBNy3
	mhpMhx96uJ6dBNY05LADhjOxD7sImLgv+GJXrXZ4OV0An76cu7JTrbmIAhNZJDaLdAIluuhkWyiWl
	ALwrtXLJHQgNX1OpJdoKH4Fu7MnI1Ld3HDgKqvKydZrbU4tz2ORUsHqSaUJGwVQb/5Qcps5EBYXwm
	V4iwrNfeXKe11x+1jq1N908mFotPiG0CkniWr1SrheKzZ7XTUhd97S+qKWQ6zOAGxmSqFlNE4231+
	A4uzbo1kXfMi12mdgsUvfPfvWzM74Em6746jeyNf6wS4xhKTtDDwXqvlc6Oe9uBMWC/LqOFluW+cq
	GUXB1oapXbtfZdVwzEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBRC-0000wB-Ki; Thu, 30 Jan 2020 15:08:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ixBR6-0000vW-Th; Thu, 30 Jan 2020 15:08:52 +0000
Date: Thu, 30 Jan 2020 07:08:52 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Victor Gladkov <Victor.Gladkov@kioxia.com>
Subject: Re: [PATCH v2] nvme-fabrics: reject I/O to offline device
Message-ID: <20200130150852.GB25427@infradead.org>
References: <49c2e737f21b4c2795de71c8d8d578ee@kioxia.com>
 <98e76717-1e98-92e1-0d07-d2dac4bd1d76@broadcom.com>
 <8b8454b9b2d44efab22df15af9df0a21@kioxia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b8454b9b2d44efab22df15af9df0a21@kioxia.com>
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
Cc: James Smart <james.smart@broadcom.com>, Hannes Reinecke <hare@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 10:06:20AM +0000, Victor Gladkov wrote:
> On 1/15/2020 5:43 PM, Victor Gladkov wrote:
> > 1. Added multipath support for this patch.
> > 2. Small refactoring (according to the review)
> 
> Anyone have any comments on the latest proposed patch?

Where is the latest patch?  I didn't see a repost.  To kick off a
discussion please just resent it, in proper patch format and with the
proper style to make reviewing it easier.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
