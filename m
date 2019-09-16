Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279B8B35D7
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 09:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwHGTGfASbWUo10/U8Fs8aDBa/84njbgOuPgXQmtMXg=; b=ipBKmUR5Tkmoiv
	XCY0J9/dQag16FuUA2U48/vkhdq7XqkXFIVwopLagO8xR7EIxDsEFvBmFKsccTPs1P3RUXQP/npt4
	UUi/4/nZk2VKsfOC21Yorn9pVO7hQHP54VKckW6S+X22yvvU37OOMCMLZQI8owlLaEEVhQ5XYIoa6
	ys5T8mSUiOPctFfcY1GY95OLg6Idm1pIGlEfO+h/IzsXixt54AZ1KGmLrhb8zZ+rTeZnh13jpZGfl
	pkwONzNhgztfNXTB7T51sLvUVOT8CqDJ3iRmBPjYNp9Y8reMFCfczOBDznt9sETIOeBNt2lxsi2zd
	cTGa5SnSxt7jUq8JLkLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9leC-00046F-0C; Mon, 16 Sep 2019 07:42:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9le2-00045q-0R
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 07:41:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0CDA868B05; Mon, 16 Sep 2019 09:41:54 +0200 (CEST)
Date: Mon, 16 Sep 2019 09:41:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Balbir Singh <sblbir@amzn.com>
Subject: Re: [PATCH v2 2/2] nvme/host/core: Allow overriding of wait_ready
 timeout
Message-ID: <20190916074153.GA25606@lst.de>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <20190913233631.15352-2-sblbir@amzn.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913233631.15352-2-sblbir@amzn.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_004158_202776_F747EFD5 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbusch@kernel.org, axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 11:36:31PM +0000, Balbir Singh wrote:
> +unsigned int nvme_wait_ready_timeout = 0;
> +module_param_named(wait_ready_timeout, nvme_wait_ready_timeout, uint, 0644);
> +MODULE_PARM_DESC(wait_ready_timeout, "timeout in seconds for wait ready on reset");

This is only used in core.c, so it can be marked static.

Also it introduces a > 80 char line.

> +
>  static unsigned char shutdown_timeout = 5;
>  module_param(shutdown_timeout, byte, 0644);
>  MODULE_PARM_DESC(shutdown_timeout, "timeout in seconds for controller shutdown");
> @@ -1938,6 +1942,9 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
>  	u32 csts, bit = enabled ? NVME_CSTS_RDY : 0;
>  	int ret;
>  
> +	if (nvme_wait_ready_timeout)
> +		timeout = NVME_WAIT_READY_TIMEOUT + jiffies;

I'm not sure the NVME_WAIT_READY_TIMEOUT #define really helps much here.
Also the code is a little confusing as as, why not and if / else with
the normal timeout definition?

Then again I'm not even sure we really want this.  The debugging use
case is somethign where you can easily hack a line in the driver, and
we really don't want normal users to mess with a random parameter like
this one.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
