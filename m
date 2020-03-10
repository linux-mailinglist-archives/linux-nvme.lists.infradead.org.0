Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B6F1803F8
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 17:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2nloOhC3Zm4o+5eENf8JWZ6H/CpcfLW0JiGVmNBHEQ=; b=oc03Sl2dA6ZTf2
	ToDhp2Y8vk8rLjrg71/WwjDemiUmOGu64hNX9FljoMpQOvNkzRs5/aJCQMZ9I6BYTVXnELo7/dfSi
	Z3zaYMc/BnKOkpzTF7XAKGF9DezJ5thUAmnYZmmKm34bV+k2hHMKOlZVKGB7RjlZYC89s3xleFFvd
	S9y+dWAlNTbrUQFpjimNambGUp/gmjYwOaFnPR9CPKcoAtf+bVLmHlqbWrCcqCsZOX0Xnup42xbYd
	Z4AMR5BJkDDMMu8ruC9/xEVPx2O1MJ8TUAz68rxdNXdLAWZ7NVOuhNiXaIIJr56RPFaKNDOPrIf1X
	3plO5HQNJhaW5pmmuxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBi7C-0000Oo-Rf; Tue, 10 Mar 2020 16:52:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBi78-0000O5-3P
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 16:52:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AE6BA68BE1; Tue, 10 Mar 2020 17:52:15 +0100 (CET)
Date: Tue, 10 Mar 2020 17:52:15 +0100
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/3] nvmet/fc: Sanitize tgtport reference counting for
 LS requests
Message-ID: <20200310165215.GA7034@lst.de>
References: <20200306130440.16864-1-hare@suse.de>
 <20200306130440.16864-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306130440.16864-2-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095218_291984_6CC90562 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> @@ -482,14 +476,19 @@ nvmet_fc_xmt_disconnect_assoc(struct nvmet_fc_tgt_assoc *assoc)
>  	struct nvmefc_ls_req *lsreq;
>  	int ret;
>  
> +	if (!nvmet_fc_tgtport_get(tgtport))
> +		return;
> +
>  	/*
>  	 * If ls_req is NULL or no hosthandle, it's an older lldd and no
>  	 * message is normal. Otherwise, send unless the hostport has
>  	 * already been invalidated by the lldd.
>  	 */
>  	if (!tgtport->ops->ls_req || !assoc->hostport ||
> -	    assoc->hostport->invalid)
> +	    assoc->hostport->invalid) {
> +		nvmet_fc_tgtport_put(tgtport);
>  		return;
> +	}
>  
>  	lsop = kzalloc((sizeof(*lsop) +
>  			sizeof(*discon_rqst) + sizeof(*discon_acc) +
> @@ -498,6 +497,7 @@ nvmet_fc_xmt_disconnect_assoc(struct nvmet_fc_tgt_assoc *assoc)
>  		dev_info(tgtport->dev,
>  			"{%d:%d} send Disconnect Association failed: ENOMEM\n",
>  			tgtport->fc_target_port.port_num, assoc->a_id);
> +		nvmet_fc_tgtport_put(tgtport);
>  		return;
>  	}
>  
> @@ -522,6 +522,7 @@ nvmet_fc_xmt_disconnect_assoc(struct nvmet_fc_tgt_assoc *assoc)
>  			"{%d:%d} XMT Disconnect Association failed: %d\n",
>  			tgtport->fc_target_port.port_num, assoc->a_id, ret);
>  		kfree(lsop);
> +		nvmet_fc_tgtport_put(tgtport);

Can you consolidate all the calls in this function using goto
unwinding?

Otherwise looks good.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
