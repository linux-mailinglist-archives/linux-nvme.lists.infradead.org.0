Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D099B3A5
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 17:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJNV69jXjYacQNv7ixYcHx0p08ngvrz+bZ8ryCFwxu0=; b=jIdfuH0jL0hwZ1
	dgdfcroQIDbJEQS/eBBmIiuoUXwHfcywhq8kQ2UqoCZVpzyRUtd18iAeTJMEqxUQVcZoAr78Vrjqx
	Cf3J8C898ZS53O8FxBV33uIoI1W5g0gYvKjoNzB7y+QlX/E/b+fLskkIcrOmHgFUN4xkcwyDvl/KI
	VpYrB8aleoLy2o5jxMPTu8IUP/Yb9vnlo3YEs6ukNhLpvw20N5MFX+0rgiwu7kZgWTImx3MRnxGQD
	uLUs+aJ10I8foCOsW2lMRsVb8PSC2AuIQ545xT3jq6/p/xARkQacqu3xXn2ryKQ4PrFw14kvs/CKF
	iXjzCuBlhave1o4InUQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1BiV-0006Yf-2s; Fri, 23 Aug 2019 15:43:07 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1BiK-0006QQ-2q
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 15:42:57 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:42:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="173513990"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2019 08:42:54 -0700
Date: Fri, 23 Aug 2019 09:40:59 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/3] make: install udev rules in sysconfdir
Message-ID: <20190823154059.GC16605@localhost.localdomain>
References: <20190822220937.8021-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822220937.8021-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_084256_196282_C1E55E4C 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 03:09:35PM -0700, Sagi Grimberg wrote:
> When the libdir is set to /usr/lib the nvmf connect udev rules are
> ignored, when placing it in /etc/udev rules are working as expected.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Thanks, all three applied.

> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 6409c9e13a87..64684a88d9f9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -10,7 +10,7 @@ SYSCONFDIR = /etc
>  SBINDIR = $(PREFIX)/sbin
>  LIBDIR ?= $(PREFIX)/lib
>  SYSTEMDDIR ?= $(LIBDIR)/systemd
> -UDEVDIR ?= $(LIBDIR)/udev
> +UDEVDIR ?= $(SYSCONFDIR)/udev
>  DRACUTDIR ?= $(LIBDIR)/dracut
>  LIB_DEPENDS =
>  
> -- 
> 2.17.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
