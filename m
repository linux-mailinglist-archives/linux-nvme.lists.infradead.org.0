Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D966EE67
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 10:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDMpjK9LdhUy3FphD/ZvSZl5uFpSnxfMia4vG8Tn56o=; b=LP4G44gDlVOI+R
	f9bM1tOa4/H1vOIouQjjTaBrXf3tAsJSOWu4PabcWxVBtDoBEKqRMLoKFf10X0dSG3VJuzOiW++8K
	qW1xRlHPDr5eSzNlKPrrvNpdj0djgRtYRBEopz38zwLsg6QMFO7tjO8c+nnQMCvWwkWMoBLAaUCBj
	PbrilZ6CGf/JvjO3lkxCYMp0b6dqshCONhU7p+5kzOIHjlebMMp6H1e+CVxrgImdnCSAzIvbDR5z8
	qPSegDwgvxyYpmW9b2Z9DFEE0FHxKgvZC/8Nl32P9cUGZnBnQltcUpgcI3c/YlHROMtsHx6VdCfoq
	R9CRUyHWhrAyH03jnkRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokWA-0006cA-OP; Sat, 20 Jul 2019 08:14:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokW0-0006bp-O8
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 08:14:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so15447288pgi.6
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 01:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VMj5C2Pth7my1Gv4ynmg9Lq0ufISM/hcsGUcQpV08CQ=;
 b=Sl3riGu4HqzrluUk5vC6D/05Vh4FrMTiHRKk4qycqqMz8ANSrQqWvek0weQtHIKIWD
 jfGhlTAy3abmeAytuJp+1Mwim0o875cr1ruKhAx6Pwi7Gn/j6+mU18MqC2e3M1WGBe8F
 AIznqnlVQ7rnxHzdE6HA3Y58PV9SFoSw32NqDBrSzW7l56axfpTup0NTJtQbesv2n4U5
 uyr5kT8uW2jE2c06/FEQr/k1qRNOeXjkRE+sRHHj3qzM02PdbNNenIY++Wnl4oz2gRmv
 kQaGFStnHRHuojxwu+k5+vBTJH/8TK1VW4qMdFsGzJljwlKQHqbH85xeHbS00etl9B7y
 hDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VMj5C2Pth7my1Gv4ynmg9Lq0ufISM/hcsGUcQpV08CQ=;
 b=tHNLv0l4Pv4wFIHG7NZ5BZ23VkeqB/qy6iXcLeMQeHvrBFXOsvHMk6YEFXDBdrkqte
 QuoSXcJ69sCCA2rKr3LM+jKlSkNbKp+e+fCthHPBJspf8B0MlocL0Y5wuhqnZoLZ80bI
 XHx2DQPXc1LXcZgqB02oewRA5mafqrlorOZzGiy/Q58NnMK3xgmcg1fbGJnvnwfOYeRP
 yGDiWokA4kZ2DnwzTMzL5RjUIJ0mTS5mEYcoJL9NIjBF62WsE8ZVYNtGMj3ohE/VmyCw
 OxpTEIv1wRpLN9/OQRTgITSKngjDW1T3QNAL0N8AX9PEdyIzAvm6UiYZk0eOxFBXQGSz
 ndkA==
X-Gm-Message-State: APjAAAXUTDeGmx/5wavyCDMjTjIDJIYZJdi9Dl6yM5BRNajfuoLF526s
 tOm0QcX5qh8GuypeZKDErNw=
X-Google-Smtp-Source: APXvYqyycSOP9U/1IkusqGjIrf96JiPANeqlw5wQNXprClTk/kPnaiWM2nynZ8AB0m9Cpmvf6mnCEg==
X-Received: by 2002:a65:6815:: with SMTP id l21mr12386904pgt.146.1563610488238; 
 Sat, 20 Jul 2019 01:14:48 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g2sm41513543pfb.95.2019.07.20.01.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 01:14:47 -0700 (PDT)
Date: Sat, 20 Jul 2019 17:14:44 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-tcp: cleanup nvme_tcp_recv_pdu
Message-ID: <20190720081444.GF22395@minwoo-desktop>
References: <20190719194646.24826-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194646.24826-1-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_011448_791198_429DCB8F 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-19 12:46:46, Sagi Grimberg wrote:
> Can return directly in the switch statement
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/tcp.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index 361e4bd6338e..8d4965031399 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -611,23 +611,18 @@ static int nvme_tcp_recv_pdu(struct nvme_tcp_queue *queue, struct sk_buff *skb,
>  
>  	switch (hdr->type) {
>  	case nvme_tcp_c2h_data:
> -		ret = nvme_tcp_handle_c2h_data(queue, (void *)queue->pdu);
> -		break;
> +		return nvme_tcp_handle_c2h_data(queue, (void *)queue->pdu);
>  	case nvme_tcp_rsp:
>  		nvme_tcp_init_recv_ctx(queue);
> -		ret = nvme_tcp_handle_comp(queue, (void *)queue->pdu);
> -		break;
> +		return nvme_tcp_handle_comp(queue, (void *)queue->pdu);
>  	case nvme_tcp_r2t:
>  		nvme_tcp_init_recv_ctx(queue);
> -		ret = nvme_tcp_handle_r2t(queue, (void *)queue->pdu);
> -		break;
> +		return nvme_tcp_handle_r2t(queue, (void *)queue->pdu);
>  	default:
>  		dev_err(queue->ctrl->ctrl.device,
>  			"unsupported pdu type (%d)\n", hdr->type);
>  		return -EINVAL;
>  	}
> -
> -	return ret;
>  }

For the non-functional changes here by early-return:

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
