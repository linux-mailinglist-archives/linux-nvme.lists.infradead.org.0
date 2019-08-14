Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A175F8D949
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 19:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vPqVwv5PLftUkflvQxfhvuXXCPhoHgSzr27o8XINCZw=; b=dRZ8ZjeavHYAITm/mjFveBrd2
	GDWQEc/HLMjAMyi56ihaWJyuk8j6h5Hv2RYrD8eHikfMrgKt51fVGptFuHSB3NDggWrVaZPAaqjSW
	/M/8F4MDdoOUw9byS33Yg+PPBEq/oI1lhKQzYs6eWNbgLb6Mzjv2z+tDd+xqsmhUHNChJfNcPcUWM
	5FGqsJpkJE0MOCZmlo8bII2wf9KTLokwctEd7JHUcaPpYi+F2UhkoKS1qLAqG0tlyMx6hri5XwbQZ
	G4Lf8P6lUsoqFnwcloR24Ix1ofmn6fPZ7YPGrLimtwkjwizzbORIiLVRC5Xp6noBH38SCtpmJ05Se
	tbCzwmKgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwjn-0006Vx-5v; Wed, 14 Aug 2019 17:07:03 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwjW-0006VF-D3
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 17:06:47 +0000
Received: by mail-oi1-f194.google.com with SMTP id t24so4744784oij.13
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 10:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2owrcVmpycq56LJg3ogKL7ea12bh0WQCG68QvsuOUP4=;
 b=RxYm6oITL6SPARD0bzbSsjxMM0wqYsk7XQboKNP6SaTcg2+TtGosybl1CXx4fWmRsd
 7y5fi0Avhb5KrFS/ZoHoFRpWvZSxRvNcslAiSzJCmIycnjdw+uiwxS+l2eGRiuEGqvPm
 8InHhMKARIMLO+B+R2ttUUpRyPWf9yfx2JihqFonNSoo4xA9/f93kEZuNNuZEF/Z7uZS
 aVQ7SuWQbUI2+uJEPG60z37HxiIfzpkdRBoRJlfgKMraBSImR0nqUtr2zImBsbr4dcjg
 tQ//1On9nz6LVDotXDSaOKidu8k/cUYz620KBheNPly3cTuUw0GdhK3p+i0FCO11l4eF
 g6aQ==
X-Gm-Message-State: APjAAAVhDBzI3UyvTo1/50BPXKoIjPyfjL1wHt8tBvTG+ycLztIJrLXQ
 l6/EvWh/asvnkIbQjemnKas=
X-Google-Smtp-Source: APXvYqzLBKsYz1yLY+qCuKIiwo8otY9xcCEaZ95kLGGElAaGwtXM4rSqQQs/2/eW3DM10Oi39zVixg==
X-Received: by 2002:aca:420b:: with SMTP id p11mr623745oia.124.1565802404157; 
 Wed, 14 Aug 2019 10:06:44 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id p2sm58310otl.59.2019.08.14.10.06.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 10:06:43 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-3-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6dc92c98-146e-206b-d3cb-127e5c7c3ac9@grimberg.me>
Date: Wed, 14 Aug 2019 10:06:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565777981-18755-3-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_100646_443639_AA6E74F2 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/14/19 3:19 AM, Israel Rukshin wrote:
> TOS is user-defined and needs to be configured via nvme-cli.
> It must be set before initiating any traffic and once set the TOS
> cannot be changed.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/fabrics.c | 20 +++++++++++++++++++-
>   drivers/nvme/host/fabrics.h |  3 +++
>   2 files changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index 1994d5b..d343c22 100644
> --- a/drivers/nvme/host/fabrics.c
> +++ b/drivers/nvme/host/fabrics.c
> @@ -611,6 +611,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
>   	{ NVMF_OPT_DATA_DIGEST,		"data_digest"		},
>   	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
>   	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
> +	{ NVMF_OPT_TOS,			"tos=%d"		},
>   	{ NVMF_OPT_ERR,			NULL			}
>   };
>   
> @@ -632,6 +633,7 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
>   	opts->duplicate_connect = false;
>   	opts->hdr_digest = false;
>   	opts->data_digest = false;
> +	opts->tos = -1; /* < 0 == use transport default */
>   
>   	options = o = kstrdup(buf, GFP_KERNEL);
>   	if (!options)
> @@ -856,6 +858,22 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
>   			}
>   			opts->nr_poll_queues = token;
>   			break;
> +		case NVMF_OPT_TOS:
> +			if (match_int(args, &token)) {
> +				ret = -EINVAL;
> +				goto out;
> +			}
> +			if (token < 0) {
> +				pr_err("Invalid type of service %d\n", token);
> +				ret = -EINVAL;
> +				goto out;
> +			}
> +			if (token > 255) {
> +				pr_warn("Clamping type of service to 255\n");
> +				token = 255;
> +			}

Again, if tos is an abstract opaque, this needs to happen in the
individual transports, not in the generic part.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
