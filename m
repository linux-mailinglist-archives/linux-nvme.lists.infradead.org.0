Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D075A9277
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 21:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Etxp/MeZe7IwAfi2acjTUjZl/jsK2h1bAQLwXAsdoa0=; b=RjuiSdbKM+CX7Y
	gAJW0gMxUSCXaIxrX0IaLKZmO7utas6SLJ39qWU8cZwCT/G3Z4f+mo8VjDibZfkXB/ulwMNenC4Fc
	JImS2+GevJL48nOW29rET3GzonUxtleIKCkWJOvK0IybMkvKs1td1dfQMTQ8k4DCMziCasKnZRsqW
	vZXWAAj0bxsLvw0TbmKb3yH7tSenp52xb7aOa/1iqAGaHkxaY7bWCZo6+/NszA4omwlAfvt9ruRRx
	VR5A8qPRhfkN/ojSBkuRsHg3qtFukyOZFvZxcUr4ddeq3/WvyLFG9JR+XRhkGvAPZ5vzKwNQlwbAc
	g+t6VhoGPTDqQVWJ3XVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bDZ-0006BL-4s; Wed, 04 Sep 2019 19:45:25 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bDU-0006Ak-Ly
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 19:45:22 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 12:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="194841917"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2019 12:45:18 -0700
Date: Wed, 4 Sep 2019 13:43:48 -0600
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 1/1] block: centralize PI remapping logic to the block
 layer
Message-ID: <20190904194347.GH21302@localhost.localdomain>
References: <1567614452-26251-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567614452-26251-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_124520_737186_794C388B 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 martin.petersen@oracle.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 07:27:32PM +0300, Max Gurtovoy wrote:
> +	if (blk_integrity_rq(req) && req_op(req) == REQ_OP_READ &&
> +	    error == BLK_STS_OK)
> +		t10_pi_complete(req,
> +			nr_bytes >> blk_integrity_interval_shift(req->q));

This is not created by your patch, but while reviewing it, I noticed
we're corrupting metadata for TYPE0. Even if there's no in-kernel use
for accessing this data, changing it is still wrong.

Perhaps these t10_pi complete/prepare functions should be part of the
integrity profile like generate_fn/verify_fn.

Or as a quicker fix, we could exclude type0 like below:

---
@@ -246,7 +247,8 @@ void t10_pi_complete(struct request *rq, u8 protection_type,
 	u32 ref_tag = t10_pi_ref_tag(rq);
 	struct bio *bio;
 
-	if (protection_type == T10_PI_TYPE3_PROTECTION)
+	if (protection_type == T10_PI_TYPE0_PROTECTION ||
+	    protection_type == T10_PI_TYPE3_PROTECTION)
 		return;
 
 	__rq_for_each_bio(bio, rq) {
-- 
2.14.5

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
