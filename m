Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D702386C38
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 23:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cY92SOss43mGvJZ6O+ehymB+6sBS5braLXLfuZXoqU=; b=nYWAijQBuOaJpm
	B4NpsSdknIxGMMfrrxrnVj5r9xZ+farJiXEr+l8KIaHjV5408fs0l2z+2056KbozLP/zQnDErE9lI
	dWV44GW5RxZ5H2TMwU3j3FJ6LePJ27xaVqIJDOS4TI/6FaP1iYbsr/5cUbM98QBc4fbZtzqB4Z+cV
	SHIn9EUO6+sZxKi9HAVUb/05p6vO19koEkci5Ud2EhPh/lm7/+Q8BVoyqpqXFQzsqjiuMwkdgXvOm
	N6J+ELX8R5lG4ZfQhK5A+9nINXfbJ3g7Py2Py8Q2aYneKiCRuWCSxL5Su1QnGiafoSbIxgvJ0/noE
	JU68CdhK1vtSnWJC4Vpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpqQ-0003PU-Jk; Thu, 08 Aug 2019 21:21:10 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpqL-0003P5-Of
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 21:21:07 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 14:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169117324"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 14:21:04 -0700
Date: Thu, 8 Aug 2019 15:18:39 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3 3/7] nvme: make nvme_identify_ns propagate errors back
Message-ID: <20190808211839.GA27519@localhost.localdomain>
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808205325.24036-4-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_142105_815772_47089124 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 01:53:21PM -0700, Sagi Grimberg wrote:
> right now callers of nvme_identify_ns only know that it failed,
> but don't know why. Make nvme_identify_ns propagate the error back.
> 
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index f435c85c4062..e503fd14de81 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1108,13 +1108,13 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
>  
>  	id = kmalloc(sizeof(*id), GFP_KERNEL);
>  	if (!id)
> -		return NULL;
> +		return ERR_PTR(-ENOMEM);
>  
>  	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
>  	if (error) {
>  		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
>  		kfree(id);
> -		return NULL;
> +		return ERR_PTR(error);

The previous patch has nvme_submit_sync_cmd() return a BLK_STS_* value in
some cases, but ERR_PTR requires -errno's in order for IS_ERR to detect
errors. I think you need:

		if (error > 0)
			return ERR_PTR(blk_status_to_errno(error));
		else
			return ERR_PTR(error);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
