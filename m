Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DC01371A5
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Jan 2020 16:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7FwoEYQrIbQ0o8b8uwRHUFgLsP7xnHc4yZYg2GmWeY=; b=P69JQJu/g1VCBC
	VDrdG1BQSSOU28CJPjI9Nq3487jwUu30OSSlDKfOXtMR4kmRlhrhEnHbdUMNILOUvgbPonauMKSV0
	7fwxM1kqaOocifYMRx+YdggGFWgCk0iW6s6JJ+FPSzY4n+mMowOF265ykS1Gh532inx1OgSVtp44R
	PVGepFx92OLWlQPTMgPfnpQOck/nkpvN0cpAI61UKZp2EQxjxL7fWY/a1okq//sqZQAcECOMYbdF9
	4YkHSjng1DqtMm0TEExg8/UT0MhxjurYfIHaPrkiDRnezsLegYAvCafvIZOW11f0FSe1uU639VGPN
	XP1FXIMAHvXxGxEgj2VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwVV-0004gs-Ou; Fri, 10 Jan 2020 15:47:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwVR-0004gI-A1
 for linux-nvme@lists.infradead.org; Fri, 10 Jan 2020 15:47:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id x184so1331398pfb.3
 for <linux-nvme@lists.infradead.org>; Fri, 10 Jan 2020 07:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z4ABlzGfi6l9NY75xhWGkqHQ22z62lYF4lGV0Z/l5RI=;
 b=LcxSVzG5beLFAGBipNshQyqz86YJ4TvGiOt8WALynXqSjPkkq7quMQSkFPFePo5f1q
 kJd0E4o7b+dPaAwBlXzfg5j5FKpHhUCAp057Fb328BFbzN8FK/VNHdiDhDR1bzkAooFs
 EzOxEsiGw18GT7yVSM8MCsgBXWLwE304YYV4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z4ABlzGfi6l9NY75xhWGkqHQ22z62lYF4lGV0Z/l5RI=;
 b=unEzVX4HNLJGzDyqx5SnHTrRMyRFcv7vS0HcZQnFhjT3rphLFwC7CvPMq2Ij/MYpiN
 oEV/YpeqHbQRbgeU3pwRwmdf/OG8YGTZml+jL07XkV9LjObhHXcBwpf4WaZxDZhyEeny
 0w1oYBYCZHbwQiWPf8M1mauLemYT8Py/ozO819NFfpMJHY8TYv2WTCXr/XR7pZfSZ9iL
 RhDqWxAJlP1PNIouGUzpkiYkPHUd6skcnS5wRPU9BG6JQkdao1/+JAfDn7w+jEBii7e3
 dgDShPHqkRK5SYoSlydBOnEjXyh+9flF7u/ZZH3d+RDXpw+6csrMzQnSwLE5UqxydSFm
 g9Yw==
X-Gm-Message-State: APjAAAUtRnqbdPvxmnxJhl8iWqCf2QQvhiw90pYK+5QCQiJaGeOqmnPK
 HQbCcII6dOA1Jfp42MCDIzdnWw==
X-Google-Smtp-Source: APXvYqwJtzElrbQ8rKden7GP/HTNQxSyjLQOYjfY8yPFbp0XjIM+yXed9Z3lzn1NH9U0cYSbLjiIow==
X-Received: by 2002:a62:c583:: with SMTP id j125mr5021922pfg.27.1578671244168; 
 Fri, 10 Jan 2020 07:47:24 -0800 (PST)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id z26sm3137300pgu.80.2020.01.10.07.47.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 07:47:23 -0800 (PST)
Date: Fri, 10 Jan 2020 10:47:22 -0500
From: Joel Fernandes <joel@joelfernandes.org>
To: Amol Grover <frextrite@gmail.com>
Subject: Re: [PATCH] drivers: nvme: target: core: Pass lockdep expression to
 RCU lists
Message-ID: <20200110154722.GA128013@google.com>
References: <20200110132356.27110-1-frextrite@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110132356.27110-1-frextrite@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_074725_355845_C058EF63 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-nvme@lists.infradead.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Christoph Hellwig <hch@lst.de>,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 06:53:58PM +0530, Amol Grover wrote:
> ctrl->subsys->namespaces and subsys->namespaces are traversed with
> hlist_for_each_entry_rcu outside an RCU read-side critical section
> but under the protection of subsys->lock.
> 
> Hence, add the corresponding lockdep expression to the list traversal
> primitive to silence false-positive lockdep warnings, and
> harden RCU lists.
> 
> Add macro for the corresponding lockdep expression to make the code
> clean and concise.

Amol, thanks. Could you fix this checkpatch warnings? hint: Use --fix-inplace

CHECK: Alignment should match open parenthesis
#50: FILE: drivers/nvme/target/core.c:562:
+               list_for_each_entry_rcu(old, &subsys->namespaces, dev_link,
+                                                       subsys_lock_held()) {

CHECK: Alignment should match open parenthesis
#60: FILE: drivers/nvme/target/core.c:1180:
+       list_for_each_entry_rcu(ns, &ctrl->subsys->namespaces, dev_link,
+                                                       subsys_lock_held())

Otherwise,

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel


> 
> Signed-off-by: Amol Grover <frextrite@gmail.com>
> ---
>  drivers/nvme/target/core.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 28438b833c1b..7caab4ba6a04 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -15,6 +15,9 @@
>  
>  #include "nvmet.h"
>  
> +#define subsys_lock_held() \
> +	lockdep_is_held(&subsys->lock)
> +
>  struct workqueue_struct *buffered_io_wq;
>  static const struct nvmet_fabrics_ops *nvmet_transports[NVMF_TRTYPE_MAX];
>  static DEFINE_IDA(cntlid_ida);
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
> @@ -1172,7 +1176,8 @@ static void nvmet_setup_p2p_ns_map(struct nvmet_ctrl *ctrl,
>  
>  	ctrl->p2p_client = get_device(req->p2p_client);
>  
> -	list_for_each_entry_rcu(ns, &ctrl->subsys->namespaces, dev_link)
> +	list_for_each_entry_rcu(ns, &ctrl->subsys->namespaces, dev_link,
> +							subsys_lock_held())
>  		nvmet_p2pmem_ns_add_p2p(ctrl, ns);
>  }
>  
> -- 
> 2.24.1
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
