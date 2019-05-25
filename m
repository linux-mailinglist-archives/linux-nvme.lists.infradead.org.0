Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD652A48B
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 15:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHFbkChVLYMb0JBu8qEQ9znxiMtyeFsCaLU9RpI7N9Q=; b=HwE03nQ2iUP2GD
	Uu2FVTO/3dGaoC61p27TXqgXquC23P3oj92QdAfEC45E7TJHC8seQO6RjpdZ2ANaKfxKA5A5m5K3h
	BHAx3flriGISNIvZazwMZoE5BlQYtxsu9BOGOnkGm7W2BNeyyNfraSJ5fLAbmgIMA100Pp+pN06jI
	V+HAlwEkhc7ofEnwKIVbD1l2W9u5miAEWg1GeQkCIm/eYlWjdWeX5cj+ndMZk9BCWi4JyTMiBty9o
	/MtdbdBeyyJYA47UrtM22LgbMEG+hsnyi4S0PB9GZbWTkR7aOPfe6wuQw54tEugVlH++PLA+D/nn4
	5KyQZFlUNvya7HpVF3pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUWdU-0003Yf-TN; Sat, 25 May 2019 13:22:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUWdP-0003YJ-7u
 for linux-nvme@lists.infradead.org; Sat, 25 May 2019 13:22:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so6599895pgv.0
 for <linux-nvme@lists.infradead.org>; Sat, 25 May 2019 06:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BtHcFoY1YvGMX+UxThjiwfFWzgGMi5BIor2D9dfWYW4=;
 b=IRzjngKCZ9jnW4So//zUTOkPUrlDnFTJLuAuZSVqewbFiXFV81RVO/bI9/OumOXmHP
 cyJBDGWtI1BePalIyahM8mRbC3B0wqaAUUuJnrkwoEioLEXGaRVBXECHiAkxiAq3QT5p
 jYAeEJJZ6GwisyCXwvw92EjyYgGCPlBh2MXEu4Zt48kn127UHOQmbfX6XkvC5rN0PoQu
 gQKNUs/w4cHhpIcllgQoGZsXcQLHR7QqGcaPTmscwPhZ2YGaf3htTxD/AUkET7hIv8fa
 miQNiJCPCHiAgidNtZCiPjXB/vDYLPqKmqOyq0ECDEKDH8HOKjPvuHYpFQyTJeXyVdDn
 EKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BtHcFoY1YvGMX+UxThjiwfFWzgGMi5BIor2D9dfWYW4=;
 b=uM/wN7wtLa7MPie1XrV4RHu1sKn4M0od+Qy0SOEHBvtbUXedKPm5zE22rfXNMi/Kfe
 3o30wBQwPOvW9mXg5/rwbuZpoQ6ztwUei2YyzyZeRX5cNFuGzY/zoF1Xh3APXmp2njVO
 CY/v0rGe8hnZBKIZQxzIzXI7vuBzJ2+q07MB8xvMkHVumOLqtJvyxJFhpBgpGsG1mxzD
 M3NKCXZGtjyY9EtqpQUdIHOveqhmSpZLDhf3vQUnCkvj7E7w6kUBGjuXU6pFHdTN3rAB
 Q1wP/8XUnn+g2hHRbet4xiNhiT/aP0vQraJVmidQcUwvboyQt+JK8Y3zWM9WnW0GI49a
 jeZA==
X-Gm-Message-State: APjAAAUx1kNcQakuWT1Oh/jNHqmUSHuLgQa4925Iu/52YFbquSukJQdq
 hVxsD+T9Ii6b4HCx3iRVepU=
X-Google-Smtp-Source: APXvYqxp+YDH/7EEX5qV2I9JmEsHGTId2ZlnVUmCDe5QdR5S4YqQQUFdaUt5WexfoKjJSgFvJAg49A==
X-Received: by 2002:a17:90a:80c3:: with SMTP id
 k3mr15665458pjw.65.1558790569839; 
 Sat, 25 May 2019 06:22:49 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r18sm8573379pfg.141.2019.05.25.06.22.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 06:22:49 -0700 (PDT)
Date: Sat, 25 May 2019 22:22:47 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 1/3] nvme-pci: reset timeout when processing is paused
Message-ID: <20190525132245.GB342@minwooim-desktop>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-2-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524202036.17265-2-keith.busch@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_062251_309460_AF95BEDE 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-24 14:20:34, Keith Busch wrote:
> From: Keith Busch <kbusch@kernel.org>
> 
> Do not escalate request timeout handling if the controller has
> temporary paused command processing. We do not expect requests to
> complete during this transient state, so just reset the timer.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index f562154551ce..101e20522374 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1263,7 +1263,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  	 * the recovery mechanism will surely fail.
>  	 */
>  	mb();
> -	if (pci_channel_offline(to_pci_dev(dev->dev)))
> +	if (pci_channel_offline(to_pci_dev(dev->dev)) || (csts & NVME_CSTS_PP))
>  		return BLK_EH_RESET_TIMER;

Keith,

Is it okay to check CSTS.PP status without checking CC.EN ?  Can't we
just do the PP check like:

	if (pci_channel_offline(to_pci_dev(dev->dev)) ||
			nvme_ctrl_pp_status(&dev->ctrl))
		return BLK_EH_RESET_TIMER;

What do you think?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
