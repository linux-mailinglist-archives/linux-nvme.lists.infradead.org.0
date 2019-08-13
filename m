Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260248BECF
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w0X0FFvHcZ5Nz9WYZuURDiKHEumA7BEreJDZa5vd4rQ=; b=o1/4FJ0hAmYebhy/y3ltyaSUn
	c42lCXCdhdut+1Gy8miak9DlvH4Y5wfy5nTKJAgtORUMJaTPeh6RGNHcW+XD+5l5cIrJ/hxAFisLr
	pEE827MiQM+OnoYqe9i9ujH1SJ/px6UlMvfaZS8leqEuVbSEiGVbt58/rAHbMj1+Kp26GPh4n0zgF
	1XBZSp6V15WgJCYOpBwttTeNIRe087bYU8dAdyO70PFDpQrEm6Rz0Qeo67vPkaTQR5YB9zmZQ1pad
	GwsL1t1ERqJQ4sJh2iAfgZB/DlS5KkU1n0ZpYhnvGJ2svs2qiLw8xYZKVB7ijfCY4xfz759Lekifp
	WFDD5hj/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZqV-0000E7-QI; Tue, 13 Aug 2019 16:40:27 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZqL-0000Dj-WB
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:40:19 +0000
Received: by mail-ot1-f65.google.com with SMTP id j7so30185694ota.9
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:40:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7Y9SrmY4DP5gLIpa0c/SZ3n8lzftntAkSz9N6afj9ao=;
 b=EANUPt6XtE9B6NdeJ2q0wPz+40vtlbnJLgt09Z2azWUYrGGYEoT/qgBHOixvF1VJMN
 Ep2m45oH0FQ/xFt3btv7BZ7PU/HOm49jPw5j1a690f6wQnwiL7foW3KRhU1hXkZAF9P3
 K3tMWyiFYxQSbjCOhkfKV5rVF3vsKzJW9vk/PGxUWvFr0N8y3FGjkvItVx7zmqDzB1wO
 Q0J4+8jg0nVP5VjSPbTnscMui68p6LWfPdMIJjnWDa761m1GzgWwoHbrubRDDC1YVqdX
 mK6nAov6CCnzR7b9bsj81Pa1uWIUN2XdCjihZxt2t83LXOYwEgFXYsDR461qFYOIKxD4
 WLfg==
X-Gm-Message-State: APjAAAUFKVK3r/qP2pOynJlT1iKGIIHSfTABcn9bcvOyuGa0mBIZevEF
 p1r1+Yt7p0mNeAqS66wSuKE=
X-Google-Smtp-Source: APXvYqwj7Wc/4oIj8DoxZgrXYlun9IIjVl4pfiF2S6AtLLFyTFc3Cefc5kfmwOrAdBeQBJsChjv0Gg==
X-Received: by 2002:a9d:65c4:: with SMTP id z4mr8126525oth.115.1565714415485; 
 Tue, 13 Aug 2019 09:40:15 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 44sm13801370otf.30.2019.08.13.09.40.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:40:14 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-3-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7054c205-5490-9329-8dc9-8c0bbb78e4d7@grimberg.me>
Date: Tue, 13 Aug 2019 09:40:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-3-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094018_037514_137F782E 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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


> TOS is user-defined and needs to be configured via nvme-cli.
> It must be set before initiating any traffic and once set the TOS
> cannot be changed.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/fabrics.c | 16 +++++++++++++++-
>   drivers/nvme/host/fabrics.h |  3 +++
>   2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index 1994d5b..9e9ee07 100644
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
> @@ -856,6 +858,18 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
>   			}
>   			opts->nr_poll_queues = token;
>   			break;
> +		case NVMF_OPT_TOS:
> +			if (match_int(args, &token)) {
> +				ret = -EINVAL;
> +				goto out;
> +			}
> +			if (token < 0 || token > 255) {
> +				pr_err("Invalid type of service %d\n", token);
> +				ret = -EINVAL;
> +				goto out;
> +			}
> +			opts->tos = token;
> +			break;

If we treat it like a transport agnostic parameter, we should handle
these limits in the individual transports. Also I think we can simply
clamp down tos>255 (we can still fail negative tos here though).

James, Christoph, Keith,

What do you think, do we want to start individual transport parameters
support like James suggested?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
