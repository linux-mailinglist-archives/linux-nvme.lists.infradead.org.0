Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D9A1728A
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SppagpxdK78JahrNduNxEoTfMZrfIx8gXIxvEIu/qCA=; b=fGpoA3WlLJE99g
	CGIkgUz23dCMRYI7eqTOBRmKj7qmWUEAeMVwjJlSBwOfHRAmcVn2UeLsyILeD7/OY13U77SIJJa0J
	kJYULnCAa/oULM8zdZZmewUOKq78xgd5R7AhCMm0tr7Lb4xj5RtKnG0spDcaodBCaJxzfuw47zQka
	T2hUO/yzHwvkHiKRdkSfsypVbXmh8xCS4TZ8arIg2lZK7eZHmk92m6kskLmvDfYtOHiVra35/cCXL
	qujs54nnHTa2Yhs6OtoYlWX4/pvPAFbnsgKaUSW9gQllJ7+Tm5rBUA5qA3UKp8NhumuAtm7bfLJzR
	E/+PWnIwneRogEqeOrAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGxh-0007lL-4Q; Wed, 08 May 2019 07:25:57 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGxb-0007kK-Qx
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 07:25:53 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4059168AA6; Wed,  8 May 2019 09:25:32 +0200 (CEST)
Date: Wed, 8 May 2019 09:25:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Message-ID: <20190508072531.GD21823@lst.de>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506194644.11109-3-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_002552_021393_8F21A01F 
X-CRM114-Status: UNSURE (   9.67  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	if (likely(!nvme_is_fabrics(cmd)))
> +		trace_nvme_setup_cmd(req, cmd);
> +	else
> +		trace_nvme_setup_fabrics_cmd(req, cmd);
> +

I wonder if we really need this.  My idea would have been to just
branch out to the fabrics command parser from parse_nvme_cmd().  Or did
I miss something why that might not work?

The benefit is that we don't have an additional branch in the
non-tracing fast path (and also make it look a little nicer).

> +#define show_fabric_type_name(type)					\
> +	show_nvm_fabrics_type_name(type)

Why do we need this #define to the same name/signature?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
