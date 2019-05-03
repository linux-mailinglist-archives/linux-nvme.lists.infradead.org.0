Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDC413231
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 18:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL5UCLft/7wAUaAS+iY9ZJMyR0B73fb9ysuWI7QpLRg=; b=Yn5El4yH0+Bqs/
	oUplgL5lgrpCjxXO79zESQBIy/vzeJdxsF77+zkbV3XXi/0eR7GYTEevU2AfuwcjpgcIOkfEfTjfH
	VaW8Aw/U7ItF3MSsJKHaGM4AGdWrhbPc5PlQe7pihlIs/h0neGviGQuiJBQv+CxyONCuOhK9F6plF
	evPgCNzUwT58JsevUbtu36YJ09915sMWxE9E/ReAIn4AwSXN78URiI0e6ZC5kjsfI65FmJgwVtNcv
	1+sA4HBxdFjRrIEkAgnfnbfP4q4md+ocg3F+spHZzAd2MmPd0gp/VuaqNPpkbGMKQnCp86H/i+GKP
	6d2lCyFt+qw+WuvGJSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMb43-0003Qk-00; Fri, 03 May 2019 16:29:35 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMb3y-0003Pz-7r
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 16:29:31 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 09:29:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="167307504"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2019 09:29:29 -0700
Date: Fri, 3 May 2019 10:23:47 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme-fc: trace sq head updates
Message-ID: <20190503162346.GC30291@localhost.localdomain>
References: <20190503141459.111641-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503141459.111641-1-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_092930_291692_1DDF07D2 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 John Meneghini <john.meneghini@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:14:59PM +0200, Hannes Reinecke wrote:
> @@ -1675,6 +1678,8 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
>  	}
>  
>  	__nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
> +	trace_nvme_sq(rq, queue->sq_head,
> +		      queue->sq_tail % ctrl->ctrl.sqsize);

Correct me if I'm wrong, but don't you need a +1 on that modulo value?
It looks like ctrl.sqsize is set to the last valid index rather than
the actual size.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
