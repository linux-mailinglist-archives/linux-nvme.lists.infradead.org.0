Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEE78AB4A
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 01:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mgR3TDN54pc+y1A34NmTgLwDXKqlN6T88dr8w6DIzBM=; b=Thc9yYwmRiSifD12WsMv5nc9+
	2+WVHCMnuhi/lcplxFOkT6l1Zv0VcKSKuI3xOQrrtwMdDO8mfLKSca9jgdcZn0b+I6a0jsDVjrMPh
	W4HzQz1BGY6c5phjVtwktfkrxt/k1pYIfxqNq39qR/rNpIRI5KxNIqmDaDb1y67xGcDlhcjMKGG6B
	m8WQ6K4eJT1brKuLhfUQbnlBPK42xAfsS+hT7RBSBqVTl8FvIUDHsx9SOie9q9t9UbnrOGETfwbR+
	ckhHLdqeJHGTAgWP3S6cxJHEN7B56tr73qJ9UkAoLD/KATDNzTQK6FPYyoLyFjKE7eTOHWJbMODBm
	ybB2nDrYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJsj-0007jp-NT; Mon, 12 Aug 2019 23:37:41 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJsW-0007jV-6Z
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 23:37:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 16:37:26 -0700
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="327510688"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 12 Aug 2019 16:37:26 -0700
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190812075147.79598-1-hare@suse.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
Date: Mon, 12 Aug 2019 17:37:25 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812075147.79598-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_163728_253470_88CE89EB 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/12/2019 1:51 AM, Hannes Reinecke wrote:
> If the DNR bit is set we should not retry the command, even if
> the standard status evaluation indicates so.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 21 +++++++++++++--------
>   1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cc09b81fc7f4..5e1309709917 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -267,15 +267,20 @@ void nvme_complete_rq(struct request *req)
>   	if (nvme_req(req)->ctrl->kas)
>   		nvme_req(req)->ctrl->comp_seen = true;
>   
> -	if (unlikely(status != BLK_STS_OK && nvme_req_needs_retry(req))) {
> -		if ((req->cmd_flags & REQ_NVME_MPATH) &&
> -		    blk_path_error(status)) {
> -			nvme_failover_req(req);
> -			return;
> +	if (unlikely(status != BLK_STS_OK)) {
> +		if (nvme_req_needs_retry(req)) {
> +			if ((req->cmd_flags & REQ_NVME_MPATH) &&
> +			    blk_path_error(status)) {
> +				nvme_failover_req(req);
> +				return;
> +			}
> +			if (!blk_queue_dying(req->q)) {
> +				nvme_retry_req(req);
> +				return;
> +			}
>   		}
> -
> -		if (!blk_queue_dying(req->q)) {
> -			nvme_retry_req(req);
> +		if (nvme_req(req)->status & NVME_SC_DNR) {
> +			blk_mq_end_request(req, BLK_STS_TARGET);
>   			return;
>   		}
>   	}

This seems redundant, to re-check the NVME_SC_DNR here, after just 
checking it in nvme_req_needs_retry().

Ed


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
