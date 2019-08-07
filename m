Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DF384F18
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 16:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIVkXze8gcq1/mUVRVtrVgVydd5ljQnZ5HRDfMMKvwA=; b=tQALsIHOzM91R0
	G2XrdK+ZgQqeLm8YeGqb68epUeatdXSB2fPjgwWegL9KY68qX7zD05NHnzJL0j7/rsoOdaUW+R80k
	1HGKsapDoX1n/NKoVl+5XjdgVYJwyzRQKKHeCkr3aIEgFLIrASK/5vZbHhH8AvANmHQh2NrmEcxHx
	2BxCw9X2biIV9DlboUjAh7sx8j6AZknF2lP4D2IgWaPs30r7xErBwhV8iXmY3pGHln/oj1ZIU9S9X
	ZWGP9yXZ2EkdvCuZhGdvixuAUNdA6XFjWy25TOV75hLIYXfnRFp/xn3/bRU2h4f3oZD7Sz9B3sCvj
	vlHiIgFURQ0YTyPxs7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNGM-00053f-LD; Wed, 07 Aug 2019 14:50:02 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNGD-00053K-F0
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 14:49:54 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 07:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="374434857"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2019 07:49:52 -0700
Date: Wed, 7 Aug 2019 08:47:25 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv2] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190807144725.GB25621@localhost.localdomain>
References: <20190807071208.101882-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807071208.101882-1-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074953_521789_F5BACA19 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 12:12:08AM -0700, Hannes Reinecke wrote:
> If the DNR bit is set we should not retry the command, even if
> the standard status evaluation indicates so.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cc09b81fc7f4..2c6c9460adea 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -274,6 +274,10 @@ void nvme_complete_rq(struct request *req)
>  			return;
>  		}
>  
> +		if (nvme_req(req)->status & NVME_SC_DNR) {
> +			blk_mq_end_request(req, BLK_STS_TARGET);
> +			return;
> +		}
>  		if (!blk_queue_dying(req->q)) {
>  			nvme_retry_req(req);
>  			return;
> -- 

Ah, that's unreachable code since it wouldn't get past the
nvme_req_needs_retry() check for this branch. We'd need to reshuffle
this a bit, but at least it gets all the error handling in a single
case. Something like this:

---
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5ca937..50522267247d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -267,17 +267,23 @@ void nvme_complete_rq(struct request *req)
 	if (nvme_req(req)->ctrl->kas)
 		nvme_req(req)->ctrl->comp_seen = true;
 
-	if (unlikely(status != BLK_STS_OK && nvme_req_needs_retry(req))) {
-		if ((req->cmd_flags & REQ_NVME_MPATH) &&
-		    blk_path_error(status)) {
-			nvme_failover_req(req);
-			return;
-		}
+	if (unlikely(status != BLK_STS_OK)) {
+		if (nvme_req_needs_retry(req)) {
+			if ((req->cmd_flags & REQ_NVME_MPATH) &&
+			    blk_path_error(status)) {
+				nvme_failover_req(req);
+				return;
+			}
 
-		if (!blk_queue_dying(req->q)) {
-			nvme_retry_req(req);
-			return;
+			if (!blk_queue_dying(req->q)) {
+				nvme_retry_req(req);
+				return;
+			}
 		}
+
+		if (blk_path_error(status) &&
+		    nvme_req(req)->status & NVME_SC_DNR)
+			status = BLK_STS_TARGET;
 	}
 	blk_mq_end_request(req, status);
 }
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
