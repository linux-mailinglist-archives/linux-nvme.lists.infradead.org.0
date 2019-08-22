Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864169A23E
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 23:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QPs86H3emZT7n+81z1lcoXqa+UuLq0oELMHX8PfwuU=; b=nm7b+PNLxORwpp
	pddhD5uzLfFCOpmqeWIKK4OP5twwCk7AR4EX61YYxaLc7FPWMRRtc3HZb9GiKUdutf/sf6BwHMgS/
	/a8en7NNbUsPHxd7Nj9t8Mp8AcdbmVBSjbzXcdUU06ojRqmdGc8f5E9U0gITDlsOOcL+wOTcfQmRN
	e0KUMAvBwZq73WFAgJOGkLun8E2aIOm4rz5XKVUHxFx4GGWCpI89KEBDq+4lEj1JnSfkI61qR0Kgy
	Kl4U6irE1uIOdh5CMGkRGN7iyI/s8RNdmOXqVfZCBuOg+B+siHRYeJzFTtzsnpXWfYQIeBAt3EjZQ
	xEF5bf8ZvmK9u8p2Vxzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ukI-0006kw-3h; Thu, 22 Aug 2019 21:35:50 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uk2-0006da-W1
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 21:35:36 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 14:35:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="330523466"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2019 14:35:30 -0700
Date: Thu, 22 Aug 2019 15:33:33 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] fabrics: fix loop connect-all
Message-ID: <20190822213333.GB16001@localhost.localdomain>
References: <20190822213141.396-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822213141.396-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_143535_067586_2B6DE49B 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 02:31:41PM -0700, Sagi Grimberg wrote:
> When we check the trtype, we handle loop like fc
> which is wrong as it checks for the adrfam attribute
> in the discovery record.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Applied.

> ---
>  fabrics.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/fabrics.c b/fabrics.c
> index 333669f84846..03e7210938c2 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -808,7 +808,6 @@ retry:
>  			return -EINVAL;
>  		}
>  		break;
> -	default:
>  	case NVMF_TRTYPE_FC:
>  		switch (e->adrfam) {
>  		case NVMF_ADDR_FAMILY_FC:
> -- 
> 2.17.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
