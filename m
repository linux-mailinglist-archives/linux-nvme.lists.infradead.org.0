Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30AE554C8
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 18:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EKo/vZqi+rN+qLVBJRqNhheaFxDSU85HkatKuWH20Eg=; b=WDyFC6pU7XeIbyOhE5eHIjtJo
	ggfn0jpx3njUUhz0SjuBA+cO9uWgOXtD43D9wvZxQmYMI413oF32zT34+whkZriqN4cA88jsj+mYv
	EPDUL3aMwJSZf28b6yGLfuv8ap1g27kGPdi/ox4oi8wlwEx/kSmiy8S4AnteQhrwsgE7NVREd2k6/
	8ADpHeWRY/CkR1G0Xo0kS/1tHViuCZMOLL3r41YGyonYsyK5pbSKbC9KSTWiNhlY96itb0pbR/oL0
	kvPBpQOlxCjwl5UIWoUDdQlEGjKpvQs3MpSU1Lgt6UXej5HnpFofY0A9kFj4BTu3qZxKLY/6TxHFN
	nQuPZfasA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoYd-0008Ch-Mj; Tue, 25 Jun 2019 16:44:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoS7-0004AL-IF
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 16:37:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so5119283pfn.5
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 09:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=B9XuswyDTpw0oWir2HyhxvhtaDewN9O+wgjeejn5D3U=;
 b=goBYS2+2E7dFzIu+Vrj1xfmmfIBQYsNkr1xHVrwVnMHqRNQ8WVfTSByot14NTLySiv
 wG+aMkPF1QGkjXsrwecCW3OGAvnCZLUvEl0dfg/rc6MvuC3y0YK7/CMYNfVELE5GugMU
 1jrLJacq/8etYhYVKQP4+JtWbzeBGQ0/9ihVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=B9XuswyDTpw0oWir2HyhxvhtaDewN9O+wgjeejn5D3U=;
 b=dNEuDhLT4U1If2Kv/XQsx18yPAAw+mcSumQ0b7+3IUyZ48LIVq6Ln5gYnAwM8oHMns
 6z2zikxljgdUe6AjkPneEqGiSwAGf6fjm22hKIb/5OsNLxDBg6pBB6Rjyl2yxTpYvmS7
 ndO6JKbHkqHmi8E88ewkdzx3nZYmJzpICLyBopzV11inHXNuGfeTOxA1ElfU3DuEqVVO
 RmrJrMqN6AQdMnp20Yfs+hZ0zk8QUO4Tecm2Epdi0J7sVUQFx28hByL0mHC2XSOFg2we
 2VyVwJtTJwmQNsUyG9N/mETuAfJw4nz/ArFhz2ZNzQFmCfSpHXHf1o5qljDO/tafcdU8
 hg/A==
X-Gm-Message-State: APjAAAXlrqzyBE/9QsGU+OWfDxDfORpn5pCV7/a1jcUTgIGsu9JCpHJe
 Ox+g99G06Iqa4m6TyutFrFo3SA==
X-Google-Smtp-Source: APXvYqxRuJWO3UYinE+KRpsD0t3Nee050AhboprW/AfhVfEMj0fSeAgBl4gabLcet8gKxAnZ12lqeg==
X-Received: by 2002:a17:90a:de02:: with SMTP id
 m2mr32941319pjv.18.1561480669738; 
 Tue, 25 Jun 2019 09:37:49 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c26sm16346361pfr.172.2019.06.25.09.37.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:37:49 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: clean up error messages
To: "Ewan D. Milne" <emilne@redhat.com>, linux-nvme@lists.infradead.org
References: <20190624221240.25268-1-emilne@redhat.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <14240398-683c-1d1c-f6e8-8fa8692270c2@broadcom.com>
Date: Tue, 25 Jun 2019 09:37:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190624221240.25268-1-emilne@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093751_705788_BE477775 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: minwoo.im.dev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/24/2019 3:12 PM, Ewan D. Milne wrote:
> Some of the error messages are inconsistent, and one of them is wrong
> (i.e. "queue_size 128 > ctrl maxcmd 32, reducing to queue_size").
> Make them more clear and distinguishable for log analysis.
>
> Signed-off-by: Ewan D. Milne <emilne@redhat.com>
> ---
>   drivers/nvme/host/fc.c | 16 +++++++++-------
>   1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 9b497d785ed7..ab162c57ddc2 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -1259,7 +1259,7 @@ nvme_fc_connect_admin_queue(struct nvme_fc_ctrl *ctrl,
>   	if (fcret) {
>   		ret = -EBADF;
>   		dev_err(ctrl->dev,
> -			"q %d connect failed: %s\n",
> +			"queue %d connect admin queue failed: %s\n",
>   			queue->qnum, validation_errors[fcret]);
>   	} else {
>   		ctrl->association_id =

Since we're changing them...

how about "queue %d Create Association LS failed: %s"

> @@ -1358,7 +1358,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
>   	if (fcret) {
>   		ret = -EBADF;
>   		dev_err(ctrl->dev,
> -			"q %d connect failed: %s\n",
> +			"queue %d connect queue failed: %s\n",

how about "queue %d Create Connection LS failed: %s"

>   			queue->qnum, validation_errors[fcret]);
>   	} else {
>   		queue->connection_id =
> @@ -1371,7 +1371,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
>   out_no_memory:
>   	if (ret)
>   		dev_err(ctrl->dev,
> -			"queue %d connect command failed (%d).\n",
> +			"queue %d connect queue failed (%d).\n",
>   			queue->qnum, ret);
>   	return ret;
>   }
> @@ -2678,16 +2678,18 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   		/* warn if maxcmd is lower than queue_size */
>   		dev_warn(ctrl->ctrl.device,
>   			"queue_size %zu > ctrl maxcmd %u, reducing "
> -			"to queue_size\n",
> -			opts->queue_size, ctrl->ctrl.maxcmd);
> +			"queue_size to %u\n",
> +			opts->queue_size, ctrl->ctrl.maxcmd, ctrl->ctrl.maxcmd);
>   		opts->queue_size = ctrl->ctrl.maxcmd;
>   	}
>   
>   	if (opts->queue_size > ctrl->ctrl.sqsize + 1) {
>   		/* warn if sqsize is lower than queue_size */
>   		dev_warn(ctrl->ctrl.device,
> -			"queue_size %zu > ctrl sqsize %u, clamping down\n",
> -			opts->queue_size, ctrl->ctrl.sqsize + 1);
> +			"queue_size %zu > ctrl sqsize %u, reducing "
> +			"queue_size to %u\n",
> +			opts->queue_size, ctrl->ctrl.sqsize + 1,
> +			ctrl->ctrl.sqsize + 1);
>   		opts->queue_size = ctrl->ctrl.sqsize + 1;
>   	}
>   

Given these last two came from a template in the rdma transport - you 
may want to consider using the same wording in all the transports.

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
