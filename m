Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA57914B01
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 15:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTqD5Wc6PasAHAYNbbmVfsZCPwS2z1aE3JiKs5WXKT0=; b=WJ6KvPO9HQbPiK
	QZQthhxRyBAyjhavxc1sQOrgv5TYvqPKC5K5gf5YihUFc0J++XLQzoO1xe/OZhhEBspkOBtgBZ/yT
	z6bh1VTloTBoDa3T1C0p3f+OShjH6u+c/2ulp2X0Xw3VIvyBYuRtJoh4+mldHbf4BjTl22c6SkHd7
	7sbltYB+ao9wOpTBwl3X6xKAaeLwuA5r5D7iqwgn0YOoudfH27IXcPlmSU5+lf3yzcrg3PnIdYC+y
	ZqXQLIwGmjttR9TRZ+sH9j+T5IOY8DLA8hWDZ7YXfAjsv22ryD8miZRJ2leUhA1G9XWLi+1hTxHoN
	nvRzbqB6tNJc1cMQ3i1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdoZ-0008RE-Bw; Mon, 06 May 2019 13:37:55 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdoU-0008Qs-79
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 13:37:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="140506034"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 06 May 2019 06:37:47 -0700
Date: Mon, 6 May 2019 07:32:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH] nvme-cli: add missing endianness conversions for
 telemetry log page
Message-ID: <20190506133211.GA2029@localhost.localdomain>
References: <1557078927-4101-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557078927-4101-1-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_063750_276305_C0B73971 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 05, 2019 at 10:55:27AM -0700, Akinobu Mita wrote:
> Add missing endianness conversions for data area last block fields of
> telemetry log page.

Applied, thank you.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
