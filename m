Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A091373B7
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Jan 2020 17:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7by8VpFHWZavwp0x5wf1fH9pbjl9C/Hh2Cihq0YUZ84=; b=MAia3RiyNcp3LW
	4T4UOoqsPj1dxbQW7iqspqpEt8F6X6bfDIN1/VMC1irhAdCiLgDX9nekxYPFD+OLu9ZbcgkbFUtjd
	bJjJZjbIhwIAw65sSPyL6TstaBRIea6g1cySrYqxbwEv8RoY0w/oZ6/pFDTAtcWubFchf9s6jQotQ
	1xxetESES0WbWiPo/Dyq1IwR76xCHEDLhEY3TrQskpbiXXsGt32NiWQ55Yu+Vzw18lJCOEXhjTMVC
	w4fkKqXVan2ifIOGw8pghdPX7eXqPpCF9KeX3OcU8dv9Zu54NrdQyXloHn1bUZ+Z4VEUMYsZjKZAS
	rPPvIVGD8zW3e2v3KZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxCP-0002kp-9O; Fri, 10 Jan 2020 16:31:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxCJ-0002kE-D4
 for linux-nvme@lists.infradead.org; Fri, 10 Jan 2020 16:31:44 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65178205F4;
 Fri, 10 Jan 2020 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578673902;
 bh=Rrk4n1nHKqxj+BZCcSgnpXUKkWUtPTA1mv68Gy7dZO0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IrbMpNEO3empPNaJOZ9/BBjsosxffjbyeTmhwaC5ygwe1vlJhhVWfAh0XUUOmOySF
 nPLJuu4WDpKEvLXufBqY1wH+gLdayWRrZ2S6z2KwnwLWQ/Z/yLjN7KIp/aLEd+Sx26
 dThCEIS9BeCJC1ZHLa2ixTdNyl1x5Tb/XyRM+3G0=
Date: Sat, 11 Jan 2020 01:31:34 +0900
From: Keith Busch <kbusch@kernel.org>
To: Amol Grover <frextrite@gmail.com>
Subject: Re: [PATCH] drivers: nvme: target: core: Pass lockdep expression to
 RCU lists
Message-ID: <20200110163134.GA18579@redsun51.ssa.fujisawa.hgst.com>
References: <20200110132356.27110-1-frextrite@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110132356.27110-1-frextrite@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_083143_460004_F8439B61 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org, Christoph Hellwig <hch@lst.de>,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 06:53:58PM +0530, Amol Grover wrote:
> +#define subsys_lock_held() \
> +	lockdep_is_held(&subsys->lock)

This macro requires "struct nvmet_subsys *subsys" was previously declared
in the function using it, which isn't obvious when looking at the users. I
don't think that's worth the conciseness.

> @@ -555,7 +558,8 @@ int nvmet_ns_enable(struct nvmet_ns *ns)
>  	} else {
>  		struct nvmet_ns *old;
>  
> -		list_for_each_entry_rcu(old, &subsys->namespaces, dev_link) {
> +		list_for_each_entry_rcu(old, &subsys->namespaces, dev_link,
> +							subsys_lock_held()) {
>  			BUG_ON(ns->nsid == old->nsid);
>  			if (ns->nsid < old->nsid)
>  				break;

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
