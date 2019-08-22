Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41C49889F
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N1ms7tg88JjiJIvSkPLSbtVzL3W+bGfTJSNYAR6fd8=; b=XBCaCVs97TFoxq
	ZHr00KzzQhXnO2g4/ERiutAUm093MxObemIJA/5bYYiM6HGOR9eqjaHYNq2zvTY6FaFZsy8U2e6Id
	AA50VlwKq0rLJz/so3hjPgBDLMU1YOuSibwPF8yjQ3qH1p1Zis+TeCtwg85wWZm/+rg+YeQw5I1dT
	YIxqd/PO7SgHwfCGGreTDrQeemblc8Qvs0t9Zg0fz8UbEBH0CHjDvdURJnbLCKK36N1W60YnP/2GF
	TcF9IsRA2IGDoAdDzzuOwbEj4FhA5VkOubqU6JIMYXpY+wvcgYmkXmU0mABEw5Ed9Pa+Zu8SipQdN
	084nokrDP+Vuevzm3inQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bDj-00017u-RS; Thu, 22 Aug 2019 00:44:55 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bDe-00017Z-UP
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:44:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C77B968BFE; Thu, 22 Aug 2019 02:44:47 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:44:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 2/7] nvme: return a proper status for sync commands
 failure
Message-ID: <20190822004447.GO10391@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813064304.7344-3-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174451_127974_555DECA2 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:42:59PM -0700, Sagi Grimberg wrote:
> callers should not rely on raw nvme status, instead return
> is more appropriate blk_status_t.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 867c8977eb3e..f9bc10407f1b 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -774,7 +774,7 @@ static void nvme_execute_rq_polled(struct request_queue *q,
>  
>  /*
>   * Returns 0 on success.  If the result is negative, it's a Linux error code;
> - * if the result is positive, it's an NVM Express status code
> + * if the result is positive, it's a blk_status_t status code

Hell no.  blk_status_t is a __bitwise type for a reason.  Don't mix it
up with random other values.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
