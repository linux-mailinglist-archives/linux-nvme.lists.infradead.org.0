Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9E61CA4C4
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 09:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8oGXB3PYwoBOQDuNbUfeZr63JwoZo2vu8UhkB2ECXhg=; b=Iy5X4jCDXT8npSQf2P9sPZNtu
	V7TF9NWXOZhZKkVkXQiHLPizPXoiMqOjVdiHELG1El8m5gI6PrORiQ7/uVj1X0U9B07Jhej4j9Hmd
	agpTWq2/RF10QJqZ/J/cc6xy+mPKuDQT5IoTl0FBIsbKQ7K6b7IYj8zjXHitRar8x72yFZf41AKKu
	/Tk27DSw5epBHg8eq+6uwYohcUaWoOGfrEUam/1ewwIms98KyL0NyYid6JHZMTJWpryNLUwdqjRXO
	ojueCx3fb64HWpX50F9rvvpVHaLmNy11hafMojoiwuVzTqIcYYIHmeDHV4uhZeKY3KBw3lxHxwDyc
	x2bxz/HOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWx5Y-00038Z-OZ; Fri, 08 May 2020 07:06:28 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWx5T-000386-RM
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 07:06:25 +0000
Received: by mail-wm1-f68.google.com with SMTP id k12so9081116wmj.3
 for <linux-nvme@lists.infradead.org>; Fri, 08 May 2020 00:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U+Vfyh5WNMp5lSegygPRJG4ZfPZFa9TSRXzBn1AmmuU=;
 b=EcXOCscVWS4H64UoZxCLmBYcDwzKr9mgo/UpFKElhy8Q52gV+1vSqAaw37bCOMQuwo
 O3zBKv88qwk93l2pjWgAWe5O3fodYxQNqeoH1kN8MTYGg1o/4xukSATaBlebAvN0fyjc
 36DjA9SJc6E5Vff66NKvlE0BCc1BMOOiLpg3bYHZxM+mD/Qj1KAHF/B1SRCUElHlWOlx
 M20z4BA0Htzm5INuHs1MN7Egvcuq3mCNWWoxxDY7Sg/ozp8FLfbM2KSIiO6RjjA1b5M+
 vlPwBu+ssRCgQghURJxomPu5Rz/14zwuncT1zaQmZPCAUY69n69wl8+Qw0tPUZB+DkHE
 Fz6w==
X-Gm-Message-State: AGi0PuYDigO5YjbGRKX6NCQI5c9DvYcI09xH2TG+5xJYS7MuD0vaIaJP
 R5P+GLuAYooPcvLOwZjWj5Br7ocV
X-Google-Smtp-Source: APiQypJH8KnnnrsSxVVzwJwaHIwezPvh8IG35qCNL3f0/Ik0U5ZWn4LXDV6U2DpMGsDy8FNjDmYkDA==
X-Received: by 2002:a7b:c306:: with SMTP id k6mr14019791wmj.40.1588921582062; 
 Fri, 08 May 2020 00:06:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:6507:baa2:4de7:40e9?
 ([2601:647:4802:9070:6507:baa2:4de7:40e9])
 by smtp.gmail.com with ESMTPSA id c17sm1425644wrn.59.2020.05.08.00.06.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 00:06:21 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme-fabrics: Add support for padding alignment (pda)
 option on tcp
To: Yoray Zack <yorayz@mellanox.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
References: <1588860124-40089-1-git-send-email-yorayz@mellanox.com>
 <1588860124-40089-2-git-send-email-yorayz@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fa6f363a-17fd-b8a2-e772-da264a2b4538@grimberg.me>
Date: Fri, 8 May 2020 00:06:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588860124-40089-2-git-send-email-yorayz@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_000623_883489_580CD54F 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: Boris Pismenny <borisp@mellanox.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Consume the pdu alignment from the nvme connect command according
> to user-space directives.
> 
> Signed-off-by: Yoray Zack <yorayz@mellanox.com>
> ---
>   drivers/nvme/host/fabrics.c | 14 ++++++++++++++
>   drivers/nvme/host/fabrics.h |  4 ++++
>   2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index 2a6c819..4468b57 100644
> --- a/drivers/nvme/host/fabrics.c
> +++ b/drivers/nvme/host/fabrics.c
> @@ -612,6 +612,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
>   	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
>   	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
>   	{ NVMF_OPT_TOS,			"tos=%d"		},
> +	{ NVMF_OPT_PDA,                 "pda_size=%d"           },

This is very specific to nvme-tcp...

We are gradually making the fabrics arguments span transport specific
stuff. I'm wandering if we should have a cleaner approach to
this...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
