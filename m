Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1641B2EB6
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 20:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht8Q7NbMnjnEy6JqN7qao+vI/cOlTcxfKyMdUe2a7Ts=; b=EKpVdAMpewyWt8
	lmXtybUdaLCqC9sFElXlCjk4T25gMzVLDBDNlOfOZn5kl2ahcsJMNL7IModUwr0BS4bWGlR40sgjr
	V4uCHrNH3MwppG8L9bQWLqlAWmUDNstp9f/r+/7WmJhCgjYPy1rpFXkynSQICQoYGEAbzWE9UiwZ4
	xmW2p2aqk8ReWtJzwLYvvBN6FD/VshM7ndpFzuheiuoyKIx/JlbPIft1G0WkeBR0U05aP2tWVEIGC
	oUmW9wHrI3Pvx9g8gYbhAxbEMJDMcJOt8DJeAA+E+2jl6m7bDacNOdf/Uu+gNvPGlLZMRdpXduSEW
	OgMOtk4PmW6ySLksXqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxFC-00005l-Vq; Tue, 21 Apr 2020 18:03:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQxF9-000057-IJ; Tue, 21 Apr 2020 18:03:35 +0000
Date: Tue, 21 Apr 2020 11:03:35 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [RFC 2/6] nvme: make nvme_ns_has_pi accessible to transports
Message-ID: <20200421180335.GB31265@infradead.org>
References: <20200224184859.20995-1-jsmart2021@gmail.com>
 <20200224184859.20995-3-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224184859.20995-3-jsmart2021@gmail.com>
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

On Mon, Feb 24, 2020 at 10:48:55AM -0800, James Smart wrote:
> Move the nvme_ns_has_pi() inline from core.c to the nvme.h header.
> This allows use by the transports

This looks ok, but I think it needs to grow a comment as well.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
