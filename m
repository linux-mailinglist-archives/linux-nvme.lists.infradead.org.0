Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8147A1D7FA8
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 19:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJkyNNeBnPLhSsQBE6OhSlhDbaeGOcKWq7qFxdvmQvA=; b=ZM1d8VM/EXJse5
	3so1ki0LpW+pqjRyTRBIzFFy3Igt7tDTFt8BJFI2d3KjDJqKi+fMklvg+HwlKU7iyZ0hc4B6ZjkQ/
	ieVoUgye+aFXqIT6Wx2/jtl9pwX7gcJ/FkwHPa9/AJZ+qw7if4fYMGn++AiYPJE+TccWi8T4QzpEz
	KoKx+gQvFyTQhAFkiXzqvfCaqn7BKT2ZnL2KMKpVGlO0la3qXYZa1fDQZ4ZMPSjEZXcPTMj5yVan2
	1oMgFEW6DQKy5aUUbcdp+XLLlS/MR1VdpKGwrJajQTwBhWK9KO4L5LRfQadSttb5brOBhCk17xiH6
	balKHwvVKa1TGuKUQPSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajEF-0004YE-Ro; Mon, 18 May 2020 17:07:03 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jajEC-0004Xv-9T; Mon, 18 May 2020 17:07:00 +0000
Date: Mon, 18 May 2020 10:07:00 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH 1/2] nvmet: check command slot before pulling and freeing
 aen
Message-ID: <20200518170700.GA7418@infradead.org>
References: <1589821386-43424-1-git-send-email-dmilburn@redhat.com>
 <1589821386-43424-2-git-send-email-dmilburn@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589821386-43424-2-git-send-email-dmilburn@redhat.com>
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
Cc: chaitanya.kulkarni@wdc.com, hch@infradead.org, dwagner@suse.de,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:03:05PM -0500, David Milburn wrote:
>  static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
>  {
> +	struct nvmet_async_event *aen;
>  	struct nvmet_req *req;
>  
>  	mutex_lock(&ctrl->lock);
> -	while (ctrl->nr_async_event_cmds) {
> +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
> +		aen = list_first_entry(&ctrl->async_events,
> +				       struct nvmet_async_event, entry);
> +		list_del(&aen->entry);
> +		kfree(aen);
> +	  
>  		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
>  		mutex_unlock(&ctrl->lock);
>  		nvmet_req_complete(req, NVME_SC_INTERNAL | NVME_SC_DNR);

I don't think this change is correct.  This loop just needs to complete
all the requests that the host sent.

The new loop added in the new patch should free any aens still queued
on ->async_events, but be totally separate from the loop over the
requests.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
