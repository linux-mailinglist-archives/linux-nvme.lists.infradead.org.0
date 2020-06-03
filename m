Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E21ED53B
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 19:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oHQKGbmjcL48Ge6xMiCvA4UFuMl0NXeJJZcsTqOfpgs=; b=BYYeohDKVuMMdDz0xHNv+d5Km
	GylkcWRAN4aqOo1eafDeghA/id7Bk1Mq6sGdYpDKVqGIFfEYRH0Y3k+2yiMS6rtjvbmicuU4qSRJx
	ZLe/Si9sTmiNPQRLPvEzfpn9CyWN7PI60BEhckMcAiP7sduu8USAl5Mp1YKb2MkYjvMFJOIwzRFzF
	MPRJbYWgzAymIIN/tGINNJ50Pg4oxa8SQnNHmsjniBFJgE2KaxcpvMrJXQknP11ampGNu/re1SftC
	/rLFBYDrJja16grLbuQGZ9qYsdScnMtDyYzn3bPWINkkZ1Q9h+ixj2vE2t8En3T2pCpo1qxrIfJMf
	R2+6vFATQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXT7-0006wo-4P; Wed, 03 Jun 2020 17:46:25 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXT1-0006w8-F2
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 17:46:20 +0000
Received: by mail-oi1-x242.google.com with SMTP id i74so2593060oib.0
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jun 2020 10:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tLGib8QhKZA9YKCvMvFgf4hACvnUS23mYEOPh4jekmw=;
 b=YfLRQVawNCEoOkg4sLOUqrByMY6fMm8V3qqeZu75VC+iV/MWnaMHM1KFxi5BdjMG3n
 wbewxE1y0hv52bn9Ob+e5fhmEl/unMckUBuEtP2Sc7MqAtZVrTKfvfISFz8rsro2AOoz
 0DpqBrMNrBSTXHb9yxiGzF8gaZTfW5n+93HRhryjy8cxCA5I6KyN3AW84gXxbRya5GXV
 1d3XHdjzEDxt4GkNHP0B+VaSWs+UAK/nx2V9k6wUG3D8NUgwGaWrxvKqb95oz01Ouyvc
 /AEgNlU8QMHbZnHkh7tk/bzpCZTHXNam3lLGnigY31AKMuO6mV0RtgerZUrnsuU6Urfd
 6kwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tLGib8QhKZA9YKCvMvFgf4hACvnUS23mYEOPh4jekmw=;
 b=fOLkESDTPCpjUerF6Kp23blYRfaGlEkSpa0eVUbgoTSDL28KZhY2eWYqjGWuEGbVs+
 ziLjnKdOlK8cm9Bu19LzCldrN4JGVpTJR08hVvJPSZdjHsR6eBQSu9dm5T9Io/w2zw0c
 fmz01pm7ayK8mbDgQh3V4ujJJgGqkp0rE/73CcUwT6lvPNF3n4JRZWclyFYPYmXFosct
 wEO4dcdanclTMTs2+YG7OFywvrJZWDYNJWGECLS80uORn4wHDW2RKdJ8vr9R4VbWIkih
 NnyLJiX10Xl98lWPW0eDeExdApNzbAuV8dPyqV4bdEAPcpLiEFfrLqJZE12O73r3Jiu+
 v3mg==
X-Gm-Message-State: AOAM532EyOAdNoWpwZinrC7OBqZ9+eXjaYng2/smE5bb0af4abl2MBpH
 5zI5ign8EboXu5yxceHP0SA=
X-Google-Smtp-Source: ABdhPJxy8Zf2XsCDO1575uUEMLKxENOKfiuERqjT0h4VKr09t1jPb69kq9KkdZnXM6uw+4YtyYZRSQ==
X-Received: by 2002:aca:dfc1:: with SMTP id w184mr580117oig.113.1591206377881; 
 Wed, 03 Jun 2020 10:46:17 -0700 (PDT)
Received: from ?IPv6:2606:b400:2001:91:8000::763? ([137.254.7.173])
 by smtp.gmail.com with ESMTPSA id s18sm747255oie.36.2020.06.03.10.46.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 10:46:16 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: Only call nvme_cleanup_cmd() for normal
 operations
To: Daniel Wagner <dwagner@suse.de>, linux-nvme@lists.infradead.org
References: <20200529113740.31269-1-dwagner@suse.de>
From: Himanshu Madhani <hmadhani2024@gmail.com>
Message-ID: <d4f5a66a-01d3-191e-231d-0aa7cc03d61c@gmail.com>
Date: Wed, 3 Jun 2020 12:46:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529113740.31269-1-dwagner@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_104619_506060_F69376FE 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hmadhani2024[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hmadhani2024[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 linux-kernel@vger.kernel.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/29/20 6:37 AM, Daniel Wagner wrote:
> Asynchronous event notifications do not have an request
> associated. When fcp_io() fails we unconditionally call
> nvme_cleanup_cmd() which leads to a crash.
>
> Fixes: 16686f3a6c3c ("nvme: move common call to nvme_cleanup_cmd to core layer")
> Cc: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Daniel Wagner <dwagner@suse.de>
> ---
>   drivers/nvme/host/fc.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 7dfc4a2ecf1e..287a3e8ea317 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2300,10 +2300,11 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
>   		opstate = atomic_xchg(&op->state, FCPOP_STATE_COMPLETE);
>   		__nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
>   
> -		if (!(op->flags & FCOP_FLAGS_AEN))
> +		if (!(op->flags & FCOP_FLAGS_AEN)) {
>   			nvme_fc_unmap_data(ctrl, op->rq, op);
> +			nvme_cleanup_cmd(op->rq);
> +		}
>   
> -		nvme_cleanup_cmd(op->rq);
>   		nvme_fc_ctrl_put(ctrl);
>   
>   		if (ctrl->rport->remoteport.port_state == FC_OBJSTATE_ONLINE &&

Reviewed-by: Himanshu Madhani <hmadhani2024@gmail.com>


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
