Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ED7151C8A
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Feb 2020 15:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tXvfqeWUi6Zf0gP+RXInmZxSxMuh/uNXFmEKbXI0B4=; b=ledxOevCSJpoUMxjg4tdrXMA1
	Qfh0kySnUnPAsB/6bLFk53WOuATfRW6Y2ZfPxUCZbLagS5hdyY2dWvkv33sZ9VrghUQ89vVy+hInt
	aqy6Mpd5tebww6eJPEtZCOEv2z0P8cMefR/9RZ7JIuTGl33Qww4KXe8KwhoFw6icAYzxYJACbjnVJ
	ABkQvG/xKrVK98cEb8RrcnF5ZqxNmWATxhY1ZbAjsA2Vnc6hrkBj+MXSrTVolCb3kKYdDtxNvRth9
	57ZXd0vTEd9zfO/nf+d9kSEl0sG0U62Kk+Y8aok8xZ34w/xCTzuxVHM4m6bbgWK3uIgUPZwqOeNp2
	ehF0Z2bKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzVc-0005fi-BP; Tue, 04 Feb 2020 14:49:00 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzVW-0005f2-Oy
 for linux-nvme@lists.infradead.org; Tue, 04 Feb 2020 14:48:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:48:52 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="219768750"
Received: from edmundna-mobl.amr.corp.intel.com (HELO [10.251.3.184])
 ([10.251.3.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 04 Feb 2020 06:48:51 -0800
Subject: Re: [PATCH 1/2] nvmet: Fix error print message at nvmet_install_queue
 function
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg
 <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
References: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <20bcbc11-2bfa-a3a9-5216-961ecbf6495e@intel.com>
Date: Tue, 4 Feb 2020 07:48:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_064854_862048_C29376FE 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/4/2020 5:38 AM, Israel Rukshin wrote:
> Place the arguments in the correct order.
> 
> Fixes: 1672ddb8d691 ("nvmet: Add install_queue callout")
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/target/fabrics-cmd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
> index 7211996..53ef507 100644
> --- a/drivers/nvme/target/fabrics-cmd.c
> +++ b/drivers/nvme/target/fabrics-cmd.c
> @@ -136,7 +136,7 @@ static u16 nvmet_install_queue(struct nvmet_ctrl *ctrl, struct nvmet_req *req)
>   
>   		if (ret) {
>   			pr_err("failed to install queue %d cntlid %d ret %x\n",
> -				qid, ret, ctrl->cntlid);
> +				qid, ctrl->cntlid, ret);
>   			return ret;
>   		}
>   	}
> 

Looks good.
Ed

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
