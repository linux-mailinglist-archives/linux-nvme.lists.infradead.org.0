Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC987113D10
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Dec 2019 09:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDbXbq5rUhmwSY0jkv6pIUW7/CIuaxreZraOyD+dkDE=; b=jIo63H/wk87l0p
	5jPZ1hYEeZaizCAu914stxdIRGCmTRWtB5hUQudAygfsuNe0Ix1z8ENV92HYCAMnk/jxyZscIv6t7
	8JaA58VZME8LMsqQQjdDVC5ieQMrlaNAGS2o9+Anhdd41ziCLLIhXce0Fcx5R4sbt3pKj912cPl/n
	KBfhw/65ByaFhTYKYlkKFNxSItNyrtXDkdqaxzvgq10Vi5UYIR8H3OcS6BQVlAD9gfVPXFb5OqdgD
	FCNfx5ZyT5tkWX5fRWVgNRCM1OxvO/dQg6QSWGFn9Ah7McgSyLCciJQcMh7Qrfcl/H6566zh2o2N9
	gyd0O24HsBdhkx8sqq6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmZl-0000f6-Qn; Thu, 05 Dec 2019 08:33:29 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1icmZh-0000ev-3i; Thu, 05 Dec 2019 08:33:25 +0000
Date: Thu, 5 Dec 2019 00:33:25 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Amit <Amit.Engel@dell.com>
Subject: Re: [PATCH] nvmet: Fix req->data_len size in case of
 nvme_admin_get_features cmd, fid 0x81
Message-ID: <20191205083325.GA855@infradead.org>
References: <20191205081541.55962-1-amit.engel@emc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205081541.55962-1-amit.engel@emc.com>
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

->data_len is gone in latest mainline, instead
nvmet_execute_get_features check the transfer_len.  But your
general scheme should apply there.  I think a little
nvmet_feature_data_len helper to calculate the required length
would be nice, similar to what we do for read/write commands or
log pages.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
