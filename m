Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF671B78E
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM32yoBkOsr4rVCLnmbR3Ft7//yXP/SFxVNlKYXABuo=; b=SeDhAT3W/Ob0bN
	cdlHaV1lQ6XSDyc19ROEuLvR896UxEk1XcpbAfGbc0SZPvpzhqnx2EQotFnLxQtrx+8BZXWsFW00r
	ebgBKve454SR3ZrHSjmMD4aQhZQRZ5jr3i16hYb9goid4yLsCTPrdSY+vGJdJ2Ti8ZpOI/LA2vda0
	U2bQYX4c21aaxRNdh5oaYoLlCZ+PsB+1F9P7Yo5il1Va5wEodkxHs63mmBIyebsx56npPgKH6Q3/C
	v0mD6sKks26MIvMjJiCAUTqdrfOMhg1DO9OMTWKx+oEMNId5jAFtIf87C5me3+eCliJM5IhVQWGUX
	Wbv3YXVt530GZ/C3zOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBSu-0005x5-9o; Mon, 13 May 2019 13:58:04 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBSp-0005wG-4r
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 13:58:00 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:57:58 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 06:57:56 -0700
Date: Mon, 13 May 2019 07:52:35 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 6/7] nvme-pci: trigger device coredump on command
 timeout
Message-ID: <20190513135235.GD15318@localhost.localdomain>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_065759_199438_659FE6EA 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 08:54:16AM -0700, Akinobu Mita wrote:
> @@ -2536,6 +2539,9 @@ static void nvme_reset_work(struct work_struct *work)
>  	if (result)
>  		goto out;
>  
> +	nvme_coredump_logs(dev);

If you change nvme_coredump_logs to return an int, check it here for < 0
and abandon the reset if true.

> +	nvme_coredump_complete(dev);
> +
>  	if (dev->ctrl.oacs & NVME_CTRL_OACS_SEC_SUPP) {
>  		if (!dev->ctrl.opal_dev)
>  			dev->ctrl.opal_dev =

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
