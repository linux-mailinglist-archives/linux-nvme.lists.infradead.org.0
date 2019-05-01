Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96121083E
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 15:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUFdyjLs3NxlZ3OF4PX4ndKU0y9V7grXzocUDKSyzNw=; b=t338ZN/TYHP0nq
	nZvnFunhAZdg84jZzaE+lL3wGBaUNjk5sutq0kgZMnSxSAHSiGV/+v8cWRHk5jo/KBjDrEkMBAWkt
	saU3/J6XOE+oXAQoN0OajhHQyOgGJYd9lSvXYUNYhW99MpGqGjsijT00r94U1C+7zIAp3Hf7uvwGD
	3WPqj6Eq9Je2se9uqYN1FYmasRG3ke2e9U4E4wsQdQreb1EmW5lC+4YCBLLa941HTnRxpp0nafhle
	DMArf5d/Vt/n7SDc7uVZVno/ZGJYyrHp7ESbuD5bk5jFu2w7c9r7sFDwTzLnSzU/EkqWHjHz/gExR
	gdpqF93CfrfNWb9n41Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLp9s-0006mC-JZ; Wed, 01 May 2019 13:20:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLp9n-0006lI-FH
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 13:20:20 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 14E5168B02; Wed,  1 May 2019 15:20:02 +0200 (CEST)
Date: Wed, 1 May 2019 15:20:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Klaus Birkelund Jensen <klaus@birkelund.eu>
Subject: Re: [PATCH] nvme-pci: fix psdt field for single segment sgls
Message-ID: <20190501132001.GB1645@lst.de>
References: <20190430165329.6984-1-klaus@birkelund.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430165329.6984-1-klaus@birkelund.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_062019_653914_09E9EF6A 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
