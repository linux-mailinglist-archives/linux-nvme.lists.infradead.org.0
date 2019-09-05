Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B6AAA6A6
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 17:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mOgLZP4Ii0m0QTU4nuoRAQcmFpMmkbYRXwV+UcfkkE=; b=clxDekQBi83Qpt
	uxekHsnZ4bf+VSp2rZWDxsbo6OrC5eZvCNfZ5NFqDJ0o0tdAuE6OCq6e/1BRBhsJaKmLUdRM6BZet
	M/cHRiuZSH5aTHY31KrcK5QYTEFOFi+hRtRV2KkEUoNwm4QlTPXlqa+Gz9M8dvpy2fnTrcXvVBNmA
	A5EkwPhh3PvviehjQore70XXnyBlJMRpn9W7TAULmCWaJVJv/c1vd2vvXOkF0w2BXxOTZmEo4gMox
	UG8u67OCmEF9Xuvh01laigSivDK9RG3mhinE27v4piSVXDqKT5RZRp+JKGZT5Wf+pBHfo1dfbxorX
	RU+gfIODruIJ5QUc5L3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tGS-0004rO-Gi; Thu, 05 Sep 2019 15:01:36 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tG0-0004iY-Kt
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 15:01:09 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 08:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="195119894"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2019 08:01:06 -0700
Date: Thu, 5 Sep 2019 08:59:38 -0600
From: Keith Busch <kbusch@kernel.org>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH] nvme: Remove double assignment of cq vector
Message-ID: <20190905145937.GB24939@localhost.localdomain>
References: <1567695048-5234-1-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567695048-5234-1-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_080108_700115_147D2F3F 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 02:50:48PM +0000, Israel Rukshin wrote:
> Poll queues don't use it, so the assignment should be only when
> using IRQs.

It's not really a double assignment. An interrupt driven queue may become
a polled queue after a reset, in which case this assignment serves to
clear it's previously assigned vector. It doesn't actually appear to
matter if we've cleared it or not when the NVMEQ_POLLED flag is set,
though.

 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/host/pci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 10d3071d6098..492074c95b9b 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1560,7 +1560,6 @@ static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled)
>  	else if (result)
>  		goto release_cq;
>  
> -	nvmeq->cq_vector = vector;
>  	nvme_init_queue(nvmeq, qid);
>  
>  	if (!polled) {
> -- 
> 2.16.3

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
