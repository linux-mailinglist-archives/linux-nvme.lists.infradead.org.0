Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB7D17E71
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 18:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEg1fHDLUtx/9ClebPyU/SwMURIPf8rLFvs58CRo+qE=; b=UmoQKhYVq4eAhKVjKWkxaAJhZ
	T9p8K7lC/rTTer+0f1F0F6HW9qe6/OdlZ+8XWC7w1GYThwF4ZAWE67sBbI/67TkgsBo+1ynNHW+Gi
	LBx6bv9NJ73Zx1b1m0j87p9u0ryC5LGNls69tI5+7Q7HDE7ODLqxr3+79emiXG/kxcDLiXsfAF8y4
	HHC3H3CsirACPl3zTngxDkVFT8XAbaGyn8MTKabVXLh1Ec+6+Pjskz35DVeIkPybQzZnh5nOrSQUc
	t9IsLRSWXLKRWbzGc3wSArEKqj4VjqYUlJZDYBKg1KzOBE3PG4jJUCYXZ4QktIDxYVaNWxgn2zMjq
	jbKW+Nxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPjQ-0008Jz-72; Wed, 08 May 2019 16:47:48 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPjM-0008JJ-0M
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 16:47:45 +0000
Received: from localhost.localdomain (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id BCFB620B71AC;
 Wed,  8 May 2019 09:47:42 -0700 (PDT)
Subject: Re: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
To: Christoph Hellwig <hch@lst.de>, hare@suse.de
References: <20190508075508.28552-1-hch@lst.de>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <6b9497da-a1d1-84ed-f59c-ef602297a2aa@linux.microsoft.com>
Date: Wed, 8 May 2019 09:47:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508075508.28552-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_094744_073127_3A54F911 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/8/19 12:55 AM, Christoph Hellwig wrote:
> Life becomes a lot simpler if we just use the global
> nvme_subsystems_lock to protect this list.  Given that it is only
> accessed during controller probing and removal that isn't a scalability
> problem either.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 30 ++++++++++++------------------
>   1 file changed, 12 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index eebaeadaa800..4f4ffcce7416 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>   	int count = 0;
>   	struct nvme_ctrl *ctrl;
>   
> -	mutex_lock(&subsys->lock);
>   	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>   		if (ctrl->state != NVME_CTRL_DELETING &&
>   		    ctrl->state != NVME_CTRL_DEAD)
>   			count++;
>   	}
> -	mutex_unlock(&subsys->lock);
>   
>   	return count;
>   }

Would lockdep_assert_held(&nvme_subsystems_lock); be beneficial here?

Thanks,
Ed

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
