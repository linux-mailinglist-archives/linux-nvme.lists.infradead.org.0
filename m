Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AD164794
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 15:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qESzmMuCYHuQWj7uNt585OxSR4rn4ueIlxYjMyDOsGk=; b=WpOtbyL2qU6SQf
	kIASMmzr2GkiuY5o0AXSp3xoQgZ82FkiiA7xLR3yeq1EV7dc643L/XPaVzZjuLaAwSHhxlIjjnALQ
	KOvTButja0jNY714C+INgYIdRNt/D/sqIucgUTGN+YiPxlzyPxi5H56JFVwXjnzSQ4/TDBR+pUybn
	HRaaWOBdmhYJIEvpCfj7niKCHDm15HyUWCMkC/HgKom/huc+jv8wpD+C2O5KOX/H3YKEM7v+UPpBq
	MK3FaV77SMDBkKgvMNrqPQ8VqKOZN91E78N+unkPsJsTxDyV2pC7tleLX+fy4znekAjGt3sPOgJGP
	TPH0ExhFbZn2NKLJkotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qoo-0001e5-O9; Wed, 19 Feb 2020 14:59:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qoj-0001dN-6C
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 14:59:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8242468B20; Wed, 19 Feb 2020 15:59:07 +0100 (CET)
Date: Wed, 19 Feb 2020 15:59:07 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvmet: add set feature based timestamp support
Message-ID: <20200219145907.GA17748@lst.de>
References: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
 <20200218231007.GA18306@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218231007.GA18306@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_065913_383194_FCCB27D8 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 08:10:07AM +0900, Keith Busch wrote:
> The last three ought to be a single patch IMO since those should really
> from an inseparable package deal for this feature.

Agreed.

> As to why we'd support this feature, the spec says "The use of the
> Timestamp is outside the scope of this specification". Is there anything
> interesting we can do with this?

I can't really think of why this is useful either..

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
