Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C97199A70
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyLyCukmwCQQDl7lOrQLNw36iuREB0btTus36nQWBxo=; b=j6gDAhG2jDgpxl
	+caVtzA5rBwqaoqsqkfHan78DTY1lPXY20TOXhOp7yA6kOwNyajw15mlaYlE8bIixy6xSPfVVWdd2
	1S7CERqYTm4w8H0ZKGE9isJv+rZ/DBb1EuG+BepB3NuMosLnr0Iyyk2QmmuglhHF6PgBXblCdEZfd
	a0LAfGMTAM5Kkg4sWatyH7E74gfms+5p2TEUWmHYiWwYvmLxej3OVI5c/srwZP4GgL+DW+AWw38sV
	x57YOVz2huaJ+Y9Kq/R4RDRazl5PacfufrGDUJjBMWMuU6nzNiWqK6uOc2rGlemU+Yfn7FXCi3vmj
	nft28wAoKl5yIiO/zgug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJFD-0008KC-Cq; Tue, 31 Mar 2020 15:56:03 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJHtv-0004H1-HK; Tue, 31 Mar 2020 14:29:59 +0000
Date: Tue, 31 Mar 2020 07:29:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 00/29] nvme-fc/nvmet-fc: Add FC-NVME-2 disconnect
 association support
Message-ID: <20200331142959.GA16034@infradead.org>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
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
Cc: martin.petersen@oracle.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

James,

can you resend this with the nitpicks address and the reviewed-bys
collected?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
