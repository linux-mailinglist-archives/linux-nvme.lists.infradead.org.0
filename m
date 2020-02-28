Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A45C17412F
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 21:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AB/gyVx5x19RRB6X705rFXBnOiBgHJKvGPMk3bYJlx4=; b=sfn+WlsoNBhLjCrl70gL4dO2Y
	IPsVdp9RDx8DwCGT74MgM8eLAN4An0CZSt9WuQBaA4IcB/nsbL27w6fb/e3iRHwME0ZVIaFxGE6z9
	oMFtWJ85fFB3wMxjBXsxrrWGT25ZXlVhA66HPCJ0ATrQpzc85jMrUH22lPPvep+pF2unMUjv8/TlS
	7XlT0IRdDNpQuC6GcCFkGfVmF4x4iAoZeKNZc3T/hEslgAr1+w7+Ola/uwEbqLeagftHIwZ1+giZA
	fsVB7wJWdsSN0cVLf0ZRdQWrdp/T50KYF0Gi1/CDxbJp3ng6gHhwwy63uhJZ63DngB1TmONMwd1+u
	pb8L3Ubag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mTu-0005A0-0n; Fri, 28 Feb 2020 20:43:34 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mTo-00059T-DM
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 20:43:29 +0000
Received: by mail-pg1-f194.google.com with SMTP id t3so2107379pgn.1
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 12:43:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0iPNn0V0z95oUp3Sa5u9jlGjaoLeO4rK05mSnSlG1uM=;
 b=aev6WmiCjPkdlvj2YgP6TJ4z6+hyFWMVqnmE4ZNsypbjALLKRN/P+nHcbBl76DnAyu
 4eb9TuN8R+LF+6YCEMRua7XymN9HHgG2BCZsvaMifr+/JwvaKmFfbUx8mxNJ+M4MJ+9s
 xlF0nE+GilcAsd1Q3a3emBMO2RJ80e11GUfraIEWbuCUj7mzfVxN0fObAkkDB2yET+WB
 Zs4FcR87JzUhL5VhHRFwB+VaSWv7Rlnwpn38FBlt9pom1bwR8Hbt3IucC8p/7VkON644
 q2tMq7kkG6/MjuzLpvNPlG9MgpmaLrLi4GfP6ZwE2TDrKOhmPzQDJHIwZW4mvm2egvy+
 B8ag==
X-Gm-Message-State: ANhLgQ2VEvwiDvo9JoI7D2fl5xwYnbXMnRfgE95U/XZUEBuVoAqhVfwL
 PPmwmOIGGi3TMbaAreSRE7E=
X-Google-Smtp-Source: ADFU+vuOCtog5UdS0XAUyO5VBcDBPmUwyf8rFSJ16BBAG4YlNJZXuOzeoPEYbfrBqpRnMMS3stmmnQ==
X-Received: by 2002:a65:5283:: with SMTP id y3mr640039pgp.370.1582922607554;
 Fri, 28 Feb 2020 12:43:27 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id t189sm12135548pfd.168.2020.02.28.12.43.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 12:43:26 -0800 (PST)
Subject: Re: [PATCH 06/29] nvme-fcloop: Fix deallocation of working context
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-7-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bbe3978b-5250-aae6-112d-5faa01b9fc2a@grimberg.me>
Date: Fri, 28 Feb 2020 12:43:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_124328_452178_13C9C851 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Is this directly related to the series? Or should
this be a dedicated bug fix (that in turn will go to
stable etc)?

On 2/5/20 10:37 AM, James Smart wrote:
> There's been a longstanding bug of LS completions which freed ls
> op's, particularly the disconnect LS, while executing on a work
> context that is in the memory being free. Not a good thing to do.
> 
> Rework LS handling to make callbacks in the rport context
> rather than the ls_request context.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>   drivers/nvme/target/fcloop.c | 76 ++++++++++++++++++++++++++++++--------------
>   1 file changed, 52 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
> index 130932a5db0c..6533f4196005 100644
> --- a/drivers/nvme/target/fcloop.c
> +++ b/drivers/nvme/target/fcloop.c
> @@ -198,10 +198,13 @@ struct fcloop_lport_priv {
>   };
>   
>   struct fcloop_rport {
> -	struct nvme_fc_remote_port *remoteport;
> -	struct nvmet_fc_target_port *targetport;
> -	struct fcloop_nport *nport;
> -	struct fcloop_lport *lport;
> +	struct nvme_fc_remote_port	*remoteport;
> +	struct nvmet_fc_target_port	*targetport;
> +	struct fcloop_nport		*nport;
> +	struct fcloop_lport		*lport;
> +	spinlock_t			lock;
> +	struct list_head		ls_list;
> +	struct work_struct		ls_work;
>   };
>   
>   struct fcloop_tport {
> @@ -224,11 +227,10 @@ struct fcloop_nport {
>   };
>   
>   struct fcloop_lsreq {
> -	struct fcloop_tport		*tport;
>   	struct nvmefc_ls_req		*lsreq;
> -	struct work_struct		work;
>   	struct nvmefc_ls_rsp		ls_rsp;
>   	int				status;
> +	struct list_head		ls_list; /* fcloop_rport->ls_list */
>   };
>   
>   struct fcloop_rscn {
> @@ -292,21 +294,32 @@ fcloop_delete_queue(struct nvme_fc_local_port *localport,
>   {
>   }
>   
> -
> -/*
> - * Transmit of LS RSP done (e.g. buffers all set). call back up
> - * initiator "done" flows.
> - */
>   static void
> -fcloop_tgt_lsrqst_done_work(struct work_struct *work)
> +fcloop_rport_lsrqst_work(struct work_struct *work)
>   {
> -	struct fcloop_lsreq *tls_req =
> -		container_of(work, struct fcloop_lsreq, work);
> -	struct fcloop_tport *tport = tls_req->tport;
> -	struct nvmefc_ls_req *lsreq = tls_req->lsreq;
> +	struct fcloop_rport *rport =
> +		container_of(work, struct fcloop_rport, ls_work);
> +	struct fcloop_lsreq *tls_req;
>   
> -	if (!tport || tport->remoteport)
> -		lsreq->done(lsreq, tls_req->status);
> +	spin_lock(&rport->lock);
> +	for (;;) {
> +		tls_req = list_first_entry_or_null(&rport->ls_list,
> +				struct fcloop_lsreq, ls_list);
> +		if (!tls_req)
> +			break;
> +
> +		list_del(&tls_req->ls_list);
> +		spin_unlock(&rport->lock);
> +
> +		tls_req->lsreq->done(tls_req->lsreq, tls_req->status);
> +		/*
> +		 * callee may free memory containing tls_req.
> +		 * do not reference lsreq after this.
> +		 */
> +
> +		spin_lock(&rport->lock);
> +	}
> +	spin_unlock(&rport->lock);

Won't it be easier to splice to a local list instead?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
