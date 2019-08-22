Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A19A2A3
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjD2roalFkVwylnZigCbLzN5ApAiU+zvitfTlGZJ80Y=; b=AwhNzfru6GogeU
	YxAAOPidPLzuMpyRWwc3hwE0lDTVziWpirhtkj22nkY+Z+JArh34nhamcDV7Rkg8PPEddA7unhyb0
	kCBuAf0ktQTbuqN6l+a2lzaOYZGqJFNGpPbXqR58jmUiYL7SDnjzhj2JoxIgn9PW48psbghTlQgj+
	1/kLocxYmQlqzI9I16vKa4Be5484/N2mTgUXRFXqCYHphHTQOHlhbRj/IEMfb24NZ9d2rZLV6Ux+u
	UKP4tbl7d6owo91RAoKoxGVbTpyVEJ078/pwmleMVmLoyPuu0yV/t13Ur814YaGx7VJvOi+6e/XJ/
	7siMsHP5YXrMyFb9PQTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vI2-0003uX-BM; Thu, 22 Aug 2019 22:10:42 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vHZ-0003WA-GM
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 22:10:15 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 15:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="173282478"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2019 15:10:12 -0700
Date: Thu, 22 Aug 2019 16:08:15 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] make: fix discovery.conf override
Message-ID: <20190822220815.GA16605@localhost.localdomain>
References: <20190822213539.1198-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822213539.1198-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_151013_616362_B7C90FAE 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Thu, Aug 22, 2019 at 02:35:39PM -0700, Sagi Grimberg wrote:
> it is located in sysconfdir and not sbindir
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Thanks, applied.

>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index ff525643f838..6409c9e13a87 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -121,7 +121,7 @@ install-etc:
>  	$(INSTALL) -d $(DESTDIR)$(SYSCONFDIR)/nvme
>  	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostnqn
>  	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostid
> -	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/discovery.conf ]; then \
> +	if [ ! -f $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf ]; then \
>  		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>  	fi
>  
> -- 
> 2.17.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
