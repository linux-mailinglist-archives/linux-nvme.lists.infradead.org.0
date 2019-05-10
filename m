Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0451A4C3
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 23:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+mO2bdJJlySLHPH709O4gBYH0TCvEF8J//LRyUqrpQ=; b=FtQn34KvTxEv+6
	Yz32dRaYMlNXItPM2MV2XlXco0XVeavNzzsZ8XRQliB9l4GvNduqoD4vVUXa/FBhZYK+n+btuDdhj
	IrFQu15Is9gB3QKsRBxazBoZ2QqFTZRvjzy5gcYC5JAvC9RrkrBeBzLJKoP3rqvKUbRG4dX48Uepd
	mD82pR5SbUA1eUjTIhPUuP7SgKEjvlm9VF5rDODjU35RmfjC+zA/lxc71n2fQCjsgSsDpcm38fOHu
	98yw7SLe0jiyenpCeOqj5HZZE8kzU+oG3K9KLP3QaHj9SaI1NaWv6NobdelsVV0GNIBXeI51+8K/b
	u3PVg1HF5YuWpVXK1GEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDNX-0005R6-SS; Fri, 10 May 2019 21:48:31 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDNT-0005QY-70
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 21:48:28 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 14:48:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,454,1549958400"; d="scan'208";a="170455907"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 10 May 2019 14:48:23 -0700
Date: Fri, 10 May 2019 15:42:56 -0600
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Message-ID: <20190510214255.GA11723@localhost.localdomain>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_144827_307302_DC625D08 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 11:36:31AM -0700, Chaitanya Kulkarni wrote:
> This patch-series adds a filter to allow only certain user commands.                                   
> Right now we use this infrastructure to prevent the user get log page
> commands where RAE bit is cleared. We only allow get log pages to be
> read with RAE == 0 where we issue the uevent to the userspace so that
> user can clear the log pages.
> 
> Here we white list the log pages which are only allowed when RAE == 0.
> We also allow Vendor Specific log pages irrespective of the RAE.

I'm generally against the passthrough interface examining commands. It
is not for the driver to decide what an admin can't send to their devices.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
