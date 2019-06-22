Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3B04F2D0
	for <lists+linux-nvme@lfdr.de>; Sat, 22 Jun 2019 02:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiBcvC0MrTuC3jOHNnvVZAH/cgIMnenY7GY5dOzK4Ow=; b=WqydknOFGh7iF4
	ccN2u+dBVlK+rU1qNu8FD+jf1iPFEhd0KUWz0S9MWKQ089e2Z0C5oOARzF8JB/WAuGwLsPx56tfeQ
	N2m+Fq/gx/NAjuPQIlMEfTieAHB78Ax+FZ6TxEdXaUQzKNu5w+SVu32xdO6uNUtHkUiJm6aJI1KJm
	6IbOn2snY5HvtLbFaBa3yqGlz3hyjrwTn25IGxuPivp9qHA3wABSaHAsF27HVYhyz/wfLsaStgBls
	LRIVDamJ6owMSjlFIS9zS8KXx7Is4Cwx/uBLt2LUFZf2UX7gu/UISoR0P0YkhYsbqRb90AOXFV4aF
	n3OU+JkI5dCYaySv6X3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heU3R-0005o7-1L; Sat, 22 Jun 2019 00:38:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heU3J-0005hA-5g
 for linux-nvme@lists.infradead.org; Sat, 22 Jun 2019 00:38:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so4123755pgc.6
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 17:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=O7QTvJiAu/Q8/HjJ5nUr6gudkIRVoYlPv4+Ej5BiCjc=;
 b=mhqkR49Wb2lhV2Y2dLMaS8bu7c7R6LF/fRiC5GV71PFRCIMhjkEjDiHMdv1l7mWS6p
 S0CJRk7BUl0sPZp1o0LAdyMRcX8hSe4AadudaKp+qRSonEWKpNV1a9Q1yURc5OAmgrtL
 2mESTqnptklcHUhZ3dx7+g+hoePl51tK71G4MDfYZ5IdrvDIkdJRoJP/6yzoF0AJT9uI
 JIHR5s6WrWG1UkW8RtiD2RSS7aoU5Axq6k9N3Qf5SefxvcR5WBUYeWjmo5DrP0A3NvVj
 2bI3mO3bO4kZJU/HA1XREMrjbULJhn06QIkEgdDxyBkOGqcQZX5xXtswsK5lliPgRkuC
 mtFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O7QTvJiAu/Q8/HjJ5nUr6gudkIRVoYlPv4+Ej5BiCjc=;
 b=Jt+sPilLLJDZ8/HrRdMcuRsD54GmOwhv9TwZdH1PkQV4oCffnei4nSrUc58waJ5BNW
 GIch6oZyBQKVxfiLce8RGSLnvoQIhs0yUnwc2Yaqk64S+KCwXrznWIeCowkfT0w52RnH
 orf/kg7cIsu6xK2D8Sjksf7nKAkOJFpSUFAjk/u9l69acv9b7oW8XL7CChVkLEg9Ua5V
 HN8yN0HTKeEkvfc/bd5yaj8PaGfbLzieiuJ2795ezsIZT8E5i9LemSdw9cBtaHCIT8gb
 3RGhASIClSWkmks+2iA40ULLhB0A6SkehU+L5qFUtMxUKDi4nYC2hZERvEbLTZ2+8Xix
 dg1g==
X-Gm-Message-State: APjAAAUr32xFTHjZNbGzc+RPJjfnySJeDIGHSaFqndV9YCkWVOIjGJp4
 N5yitB1bPUVZ71UNdVCw2B4=
X-Google-Smtp-Source: APXvYqwZH5nTyhiQBNmtMLqjleW+Pw30JSpJPye7SUnz6skzI2FZNGBXzLjb+SGiI9lKR3w6LILkFw==
X-Received: by 2002:a63:2323:: with SMTP id j35mr21040634pgj.166.1561163924648; 
 Fri, 21 Jun 2019 17:38:44 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c133sm5640074pfb.111.2019.06.21.17.38.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Jun 2019 17:38:43 -0700 (PDT)
Date: Sat, 22 Jun 2019 09:38:41 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: "Ewan D. Milne" <emilne@redhat.com>
Subject: Re: [PATCH] nvme-fc: clean up error messages
Message-ID: <20190622003841.GC3139@minwooim-desktop>
References: <20190621211944.28604-1-emilne@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621211944.28604-1-emilne@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_173845_242331_0A2564BE 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: james.smart@broadcom.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello, Ewan.

On 19-06-21 17:19:44, Ewan D. Milne wrote:
> Some of the error messages are inconsistent, and one of them is wrong
> (i.e. "queue_size 128 > ctrl maxcmd 32, reducing to queue_size").
> Make them more clear and distinguishable for log analysis.
> 
> Signed-off-by: Ewan D. Milne <emilne@redhat.com>

> ---
> @@ -1259,7 +1259,7 @@ nvme_fc_connect_admin_queue(struct nvme_fc_ctrl *ctrl,
>  	if (fcret) {
>  		ret = -EBADF;
>  		dev_err(ctrl->dev,
> -			"q %d connect failed: %s\n",
> +			"queue %d connect admin queue failed: %s\n",
>  			queue->qnum, validation_errors[fcret]);
>  	} else {
>  		ctrl->association_id =
> @@ -1358,7 +1358,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
>  	if (fcret) {
>  		ret = -EBADF;
>  		dev_err(ctrl->dev,
> -			"q %d connect failed: %s\n",
> +			"queue %d connect failed: %s\n",
>  			queue->qnum, validation_errors[fcret]);

Hmm..  It looks like the first one and the second ond are not pretty
consistent because the second one does not have any queue property like
I/O queue even the first shows "admin queue" itself.

>  	} else {
>  		queue->connection_id =
> @@ -1371,7 +1371,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
>  out_no_memory:
>  	if (ret)
>  		dev_err(ctrl->dev,
> -			"queue %d connect command failed (%d).\n",
> +			"queue %d connect failed (%d).\n",
>  			queue->qnum, ret);
>  	return ret;
>  }
> @@ -2678,16 +2678,18 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  		/* warn if maxcmd is lower than queue_size */
>  		dev_warn(ctrl->ctrl.device,
>  			"queue_size %zu > ctrl maxcmd %u, reducing "
> -			"to queue_size\n",
> -			opts->queue_size, ctrl->ctrl.maxcmd);
> +			"queue_size to %u\n",
> +			opts->queue_size, ctrl->ctrl.maxcmd, ctrl->ctrl.maxcmd);
>  		opts->queue_size = ctrl->ctrl.maxcmd;
>  	}
>  
>  	if (opts->queue_size > ctrl->ctrl.sqsize + 1) {
>  		/* warn if sqsize is lower than queue_size */
>  		dev_warn(ctrl->ctrl.device,
> -			"queue_size %zu > ctrl sqsize %u, clamping down\n",
> -			opts->queue_size, ctrl->ctrl.sqsize + 1);
> +			"queue_size %zu > ctrl sqsize %u, reducing "
> +			"queue_size to %u\n",
> +			opts->queue_size, ctrl->ctrl.sqsize + 1,
> +			ctrl->ctrl.sqsize + 1);

This part looks good to me, though.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
