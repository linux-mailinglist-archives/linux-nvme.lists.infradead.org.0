Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC027179470
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 17:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NADQ/nG6FpcSlCR5h526sTpiwhdHhZF5q6BNQx4EeaY=; b=tc6kHqGhMYHlAp
	ypmK6SJbKnqVfa42PFulXQt7ha2+yvn3fKho3QB700p551zt72Ff6uFOmyAK4baR4SkFbgzyLwE6v
	viaSJ42DrWjWS9tJyaKsDfzWBOsJRWjDqcOwVMCbfxla4zltQ0DMNRbMjlvTbu9bUPq8dtqP5m5Z4
	s9hwoXB0xyNrYru+N2X7t3XpE66PBVAB2QJwr+SiG5CxbNl27UyPB6OKodrXqQxrjbGv3Se9J4nLC
	Cvsx0u8mBYQR7bmITDOtCBvgHfYvOj2QAgfDr2GQJZv2UUVFwSnt3V+J/DP8D+6lklgkB062t+EWR
	7tt1CFwTD139uQ+WP8rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WWV-0008GU-4Z; Wed, 04 Mar 2020 16:05:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WWP-0008G8-F5
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 16:05:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CEAEF68BE1; Wed,  4 Mar 2020 17:05:18 +0100 (CET)
Date: Wed, 4 Mar 2020 17:05:18 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 1/2] nvme-pci: Remove tag from process cq
Message-ID: <20200304160518.GA11029@lst.de>
References: <20200302194616.2432-1-kbusch@kernel.org>
 <20200302194616.2432-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302194616.2432-2-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_080521_657922_75E1F5A8 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: bijan.mottahedeh@oracle.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 11:46:15AM -0800, Keith Busch wrote:
> The only user for tagged completion was for timeout handling. That user,
> though, really only cares if the timed out command is completed, which
> we can safely check within the timeout handler.
> 
> Remove the tag check to simplify completion handling.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index da392b50f73e..db84283f2a5a 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -991,14 +991,13 @@ static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
>  }
>  
>  static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
> -				  u16 *end, unsigned int tag)
> +				  u16 *end)
>  {
>  	int found = 0;
>  
>  	*start = nvmeq->cq_head;
>  	while (nvme_cqe_pending(nvmeq)) {
> -		if (tag == -1U || nvmeq->cqes[nvmeq->cq_head].command_id == tag)
> -			found++;
> +		++found;

Any reason for moving from found++ to ++found?  I always find the infix
notation a little odd when there is no need for it, but that is just a
personal preference.

>  	 */
> -	if (nvme_poll_irqdisable(nvmeq, req->tag)) {
> +	if (nvme_poll_irqdisable(nvmeq) &&
> +	    blk_mq_request_completed(req)) {

Do we need to check the nvme_poll_irqdisable value here?  If it got
completed by other means we should be fine too, shouldn't we?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
