Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839F1BE32B
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Sep 2019 19:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+PwLBDrAxCLw5GsshXJpNs4QVOZlxJVyC5I3EjmKss=; b=QeLD78f+E450e7
	W4W5DonCXN+9PkycnCqHEtreP0sInprwlSjk7Xzl3j/FMKA7duTrqgoaXGHESF16VKGIk1EmLKYOs
	2wZ4tUVI1IuYqDbaLTdoLvnieeYnvHG8Af253h0Qpx1MjDqv2kzreTEKVwv/oQQsNns2jRoVYBj5a
	UMSFkJlCUrvfVTDS4ZE/MnGluKR8GoYMVwZlM4udxnV6EGG5Ie91iVJyVQNbRwLRAoJA19D03/3fN
	qStkgXuD4OuF9KOnXeIv87ftaccMWHRGHQJG8ruLTUOTDjSZEoFmoIQyTWyS0FG7QSSXn0MilntiB
	KB3tSHCJ2wMPCk0+JsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAsL-0006ED-Go; Wed, 25 Sep 2019 17:14:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAs8-0006Dq-0T
 for linux-nvme@lists.infradead.org; Wed, 25 Sep 2019 17:14:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 40F2468B02; Wed, 25 Sep 2019 19:14:33 +0200 (CEST)
Date: Wed, 25 Sep 2019 19:14:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH v3] nvme: allow 64-bit results in passthru commands
Message-ID: <20190925171433.GA16895@lst.de>
References: <786558932.78398145.1569330892814.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <786558932.78398145.1569330892814.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_101436_201803_F374C64D 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
