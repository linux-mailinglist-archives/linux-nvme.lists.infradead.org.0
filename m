Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91293280B5
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4WWDwHLoa7+QV6d/A8ZEzG310x9pU833S4Hgid6M68=; b=gQS4SSPhq7keb7
	6cHO7Zr3EFFauSp4NtMsi6DwqQj/A59H+bkMUd39NXrTRcN+M/y8DYtkfsOfCI7cYKybSSltaIrgY
	dr6JeafZ6P4tQkUMQDd7V+btI9712QUAzpQXnyc5Vo/i6nBNPvOa/DP0T4hDjgF3L6//lC3jRaHc5
	dUrViN+JkHOVmFzY0hYKERgQnBngrtem3bWhHl8QjG2w3RFMnv6qn7mXsV0ySE0ej6zfy/5J8cPFk
	J5I4XfGCgKtHEZaG8jPUvz5WQVFxqTwCGVXw6WCDnJCXH1HuCBv5BfsUPlEjIMdoqcLAcDp+Duojy
	GWuQXpIkysUOFEGfI3xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpOe-0008K4-Px; Thu, 23 May 2019 15:12:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpOZ-0008Jd-PP
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:12:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id g9so3398867pfo.11
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 08:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EyKtXoIwJ0gjjzXbxzWJWW7Bazlb7Lv1/K2ZeCzcAZY=;
 b=aqvgBwJ+MIbyNc+YH2pa5wq1cGVn9NpX7LCcMFeUDsozIWcRt22l20PQTf9Be6Q4z7
 YFdlhW0/ylgYPxFBVaQbyAq2X6IXUHrxI35jEqe6xChECXnSiGavbbX/ATe6ECe7Ec2a
 wTCrG9MSgqoB4F0UCUVZeJi0X/WPPwfzFObUlm6dnJlENUy/iVXbanOR+q/KigSrVsYv
 lRd5GB18kyPSHF/KuIaG12yqKLagGBWfJbcYpOQp9YOAy50Wfiqt2QoNlLFVcGL7SvqK
 tbcEvsTcP8vxNBFOmKE5jh5pQQqUBNbv63Xx+vEc4uBt6D03FDkLP578Ge2ldZ+Wywrk
 GVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EyKtXoIwJ0gjjzXbxzWJWW7Bazlb7Lv1/K2ZeCzcAZY=;
 b=efF37Fx5Km6hRLDMJFY4cN/flf4oz9VVKx+RnaZv9zyI5nn6QBiniY+vc7d/kB3v1Y
 zXsHBk3bJNSDG2NYqhNWqRLQikVySnfkBjSJxJDRC5T1ap0IwaY47917rxHdJSxhW8lN
 uWjeI5HLRtnZX9fSHZQQLBmU8DjmEBxWU8JUQwRDEjAQJQoIBdGVw17tic1smKI+afG8
 UatHzxHo2O2RQLuXiK/RoKDfgWbEstOB5dPcZ3kmy4OR1PBhiD14DkHhY7tr3UWSP8BO
 4xCfm/fDwT4FPXj8HIrrbtekXJVvceYn/5IC2xWY+E7GyHwxRfm4C6C/ey7jteXR/Bft
 ML0w==
X-Gm-Message-State: APjAAAWt2btu062plZtQVF2Zk4wdULoekqsN7AG7yANeSc+7BzicOQJ0
 5atBar9QWwLauju3TXrR9OQ=
X-Google-Smtp-Source: APXvYqzRC5Oi7ZfqDJpbpX2hR2D4C1BRmnKLFsk+XxfT5HNGBlAqIB9pr5k6oes4KWUZddgHDK2buQ==
X-Received: by 2002:a63:8949:: with SMTP id v70mr98714936pgd.196.1558624355763; 
 Thu, 23 May 2019 08:12:35 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z9sm51025523pfj.58.2019.05.23.08.12.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 08:12:35 -0700 (PDT)
Date: Fri, 24 May 2019 00:12:32 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 7/9] nvme-print: Introduce show_nvme_ctrl helper
Message-ID: <20190523151230.GB27763@minwooim-desktop>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
 <1558602058-29434-8-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558602058-29434-8-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081239_819895_80B827FD 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de, minwoo.im@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-23 12:00:56, Max Gurtovoy wrote:
> This is a preparation patch for adding namespaces attribute for each
> controller.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme-print.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/nvme-print.c b/nvme-print.c
> index 7316117..7e1f9ea 100644
> --- a/nvme-print.c
> +++ b/nvme-print.c
> @@ -2843,6 +2843,13 @@ void json_sanitize_log(struct nvme_sanitize_log_page *sanitize_log, const char *
>  	json_free_object(root);
>  }
>  
> +static void show_nvme_ctrl(struct ctrl_list_item *item)
> +{
> +	printf(" +- %s %s %s %s\n", item->name, item->transport, item->address,
> +	       item->state);
> +}
> +
> +
>  static void show_nvme_subsystem(struct subsys_list_item *item)
>  {
>  	int i;
> @@ -2850,13 +2857,8 @@ static void show_nvme_subsystem(struct subsys_list_item *item)
>  	printf("%s - NQN=%s\n", item->name, item->subsysnqn);
>  	printf("\\\n");
>  
> -	for (i = 0; i < item->nctrls; i++) {
> -		printf(" +- %s %s %s %s\n", item->ctrls[i].name,
> -				item->ctrls[i].transport,
> -				item->ctrls[i].address,
> -				item->ctrls[i].state);
> -	}
> -
> +	for (i = 0; i < item->nctrls; i++)
> +		show_nvme_ctrl(&item->ctrls[i]);
>  }


This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
