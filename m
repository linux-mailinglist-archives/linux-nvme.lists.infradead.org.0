Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6CE1DAA88
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 08:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZY1STDT4h/N2n3MN6KVLLh0uS9lpJLkF5Fd3EAHoN5o=; b=QMEf1WMdy15ec9
	IFKgcXl3EVk9i/hQC6W+D1ksx7FkA45zzLaKKJx2hjGhzeHritXEdv4XWxVf2oJRgypF2BXvWz4Ei
	QUTcr89dn6Mp19asyJwwrscmLkvLjrCNEkZ3mM4Q5TnECEUzSxFBTgeN5DQYwmEdvrLKLAYW4EKxL
	YirN4BEVZ092+vKYJzVyhAGNYpra09vO7/OcX5LLAflnEWQ4RI+7dntQC3yzTj3OPsL3ajAi10OO3
	Wz6lXjT6RlreHqcCoZKsrgH3nRszVLscLtQ1plqIRpdF1B0uRX4eGHmvudOlVKrnDNiGzg9onLIKx
	BfgF84sgavUvg7qiwigQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbI5N-0002CZ-Ls; Wed, 20 May 2020 06:20:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbI5H-0001oe-8q; Wed, 20 May 2020 06:20:07 +0000
Date: Tue, 19 May 2020 23:20:07 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH v2 0/2] nvmet: fixup processing async events
Message-ID: <20200520062007.GC18308@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <BYAPR04MB4965E89E9794EC5D80D830BC86B90@BYAPR04MB4965.namprd04.prod.outlook.com>
 <d5453672-54b1-b456-506e-5bf69adc9e43@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5453672-54b1-b456-506e-5bf69adc9e43@redhat.com>
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
Cc: "hch@infradead.org" <hch@infradead.org>,
 "dwagner@suse.de" <dwagner@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 02:17:39PM -0500, David Milburn wrote:
> We have only tested with rdma.

I you want to reproduce it I think we'd need to do something like:

 - generated lots of aens
 - shut down the admin connection


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
