Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB39E61C92
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 11:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpBRN2vxCB8u6nE4giUHfUy0jekzTChRcEciLLZmk5Y=; b=iYdv4K7nCeavC1
	iqzT+bjhHGzLcdFlAqfHEKb+ScmUi///B1O16IQRIqzAM4/FQdaAFKk85roN9MLj/DRjdGWXJSBEJ
	zn7O3mepz3TMR+IVf2wU3DS0hDajOWglcgev0EPbfadFRjpvUagTJcmbA49iCW4Qttbsz+qHs7ZUK
	iMDNwfvaw2SGyPyGMdWZffbBjlRbrXLE4MMk7PQvPpdD6ZJgCkEEVCpzgQNUyWZ4kIbC6tOLXSNTi
	K9zEq6BcimAhJy9/aKXQM9LI97qlh/4UdYZ98X6SDJY9IMgpy4xnxljnDGNMAx4sIiWbZCxf9fCK7
	5ctpc0J/RvXCUwEbzKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQHJ-0005K9-BT; Mon, 08 Jul 2019 09:49:45 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQH8-0005JR-In
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 09:49:36 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x689nB1I028972;
 Mon, 8 Jul 2019 02:49:12 -0700
Date: Mon, 8 Jul 2019 15:19:11 +0530
From: potnuri bharat teja <bharat@chelsio.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [RFC] nvme-tcp: Use protocol specific operations while reading
 socket
Message-ID: <20190708094909.GA15390@chelsio.com>
References: <20190704110935.1228-1-bharat@chelsio.com>
 <04b2f7d6-25f4-ef69-b1da-00e9bb13ac16@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04b2f7d6-25f4-ef69-b1da-00e9bb13ac16@grimberg.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_024934_629932_BFE6ED94 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Monday, July 07/08/19, 2019 at 02:36:28 -0700, Sagi Grimberg wrote:
> Potnuri, this seems fine to me,
> 
> Acked-by: Sagi Grimberg <sagi@grimberg.me>

Thanks Sagi.
Shall send it out as Patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
