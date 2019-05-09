Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7885C18546
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMkdH94G8hi37iHVgs6SswFbw0JrUUNyvCwacvNJDnQ=; b=rVjow+SNCq1tlY
	O9V+f279mHXiY5s/EOh9MGLHdB/DACpM0U2k/tYOoxox76QMadjqedQjMhiX/RM2gfIg/ZQ39TlFO
	jtkzrq2KTsVhQkfOqZfDkHr0a7yNWh+MD9ufeqE3U7KxySQCUmv0cNw7oJ6kBkIpLsGxxQfewwOvr
	hjUD/WbI+592K9GNb/rW8zYHX8Uh5U2ZnRliNGn4WTR+CPawuOO7nUjv/YgBzPANri2oufbpvYorD
	o/t3sz420rwk5WDoFZn25KDu0QIGFD9JvYyZedl/lt/2dHgBmEDb4XqEtZO1mwHz67raBGZOP+AzF
	Gus4bDZemFzhXWUvk7Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcNF-0001yu-K5; Thu, 09 May 2019 06:17:45 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcN5-0001yX-PM
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:17:37 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 1BC8867358; Thu,  9 May 2019 08:17:17 +0200 (CEST)
Date: Thu, 9 May 2019 08:17:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Edmund Nadolski <ednadols@linux.microsoft.com>
Subject: Re: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
Message-ID: <20190509061716.GD15229@lst.de>
References: <20190508075508.28552-1-hch@lst.de>
 <6b9497da-a1d1-84ed-f59c-ef602297a2aa@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b9497da-a1d1-84ed-f59c-ef602297a2aa@linux.microsoft.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_231735_966894_F8788987 
X-CRM114-Status: UNSURE (   8.73  )
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 hare@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 09:47:42AM -0700, Edmund Nadolski wrote:
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index eebaeadaa800..4f4ffcce7416 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>>   	int count = 0;
>>   	struct nvme_ctrl *ctrl;
>>   -	mutex_lock(&subsys->lock);
>>   	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>>   		if (ctrl->state != NVME_CTRL_DELETING &&
>>   		    ctrl->state != NVME_CTRL_DEAD)
>>   			count++;
>>   	}
>> -	mutex_unlock(&subsys->lock);
>>     	return count;
>>   }
>
> Would lockdep_assert_held(&nvme_subsystems_lock); be beneficial here?

It certainly would not hurt, although it seems a little overkill for
a trivial helper with a single caller.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
