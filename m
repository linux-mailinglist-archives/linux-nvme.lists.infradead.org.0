Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22908334F
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 15:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QF24es9QV5NnJOJ9QFz0hGjgwi24WeUpdgFHhJqTEu0=; b=tdWQ5x0nvhjGBq0dagNc7LD3C
	RaiKO+w1tosebOedSrD1Dn5tUEvzMPLGXtjHQ5TKOmOVBMhRi9CIy1+iFKDwzrJJl1ZcVFwWWyRn2
	ot/+YKeryuhFDs7d9AeqKieuzm2BtAKMBjMI3s8QPdweWcOJRuoR5UcETwgQlV6SIj08HVkeQH83J
	0MBuvJBfU1NqkV+iY4dgeuiZO/wewHjyGJKuGuVTvXXtM1qmH4L9FsSOc9X4ud4JUG79mPTSkeUyO
	mdHEVCW2V6D6jH3hoBnx98EIfVcLYQ0P5aGZdSUKWzycYcBtwSDY4FigCGDledvTGzoSPUC5sad/l
	8vcMMXSUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzrf-0004vt-EK; Tue, 06 Aug 2019 13:50:59 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzrZ-0004vZ-BB
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 13:50:54 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 06:50:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="168302945"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Aug 2019 06:50:48 -0700
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190806111036.113233-1-hare@suse.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
Date: Tue, 6 Aug 2019 07:50:47 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806111036.113233-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_065053_430038_583E6C67 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

On 8/6/2019 5:10 AM, Hannes Reinecke wrote:
> If the DNR bit is set we should not retry the command, even if
> the standard status evaluation indicates so.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cc09b81fc7f4..c3e9254f4757 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -279,6 +279,13 @@ void nvme_complete_rq(struct request *req)
>   			return;
>   		}
>   	}
> +	/*
> +	 * Any pathing error might be retried, but the DNR bit takes
> +	 * precedence. So return BLK_STS_TARGET if the DNR bit is set
> +	 * to avoid retrying.
> +	 */
> +	if (blk_path_error(status) && nvme_req(req)->status & NVME_SC_DNR)
> +		status = BLK_STS_TARGET;
>   	blk_mq_end_request(req, status);
>   }
>   EXPORT_SYMBOL_GPL(nvme_complete_rq);
> 

- If DNR always takes precedence, is the blk_path_error() check still 
needed?

- Can/Should this be done in nvme_error_status()?

Ed

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
