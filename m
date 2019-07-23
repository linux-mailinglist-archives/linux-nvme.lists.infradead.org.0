Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF155719A0
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVGXglOxKNkrtUJREX6BtBYEJ9XF0AvCgGL2CyH6ORk=; b=RRf9THE01ukFjX
	LbRaYa4DFMSbrZyQEkORvgcHbnsH31FW6sFLTDgctL3fkVUgxhr97KiQRkeX+kfUwoFFeNn1hzsr0
	xxEyYTOjW9G+PKI5WqrfXi4MttH3s8P2Q0cY0XklwY1z7a4VgN/2FKjT7zS1jhtAED9/vghm3fa91
	Knrk2viV69f77mALNiJMrqKdqsiVDH+iPGu8B8pkkGgzpK0c6rXDToYAZcoDQCwLc0xM4UENYyY7V
	b/BTWEV4AgRgrJ1VUle7aZ7wXI30h5ueDXJY1HUFOfsjpcHeSVfecJAMzhgRtCtorRMpywTQHuPeh
	Tuh3FOp51TscTeV+Zgfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv4q-0000Cm-BD; Tue, 23 Jul 2019 13:43:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpv4g-0000CM-Kl
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 13:43:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so19463003pgm.3
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YqdRt5rBMoMqCgc4YHsE3x5I7F8vwfc49rxNaBHP9J4=;
 b=FTxXn0oMalLlpfYw7RGzCEJEvzdmdlS3gmgW+kS8ecskqJj8UBiI9AKOqQjBTMPg1h
 XlgtKOUfKSNyja3T7zkV7JuEBggUuSvDV1CK/pBpqi0O/ZNXFDStanFT8CmGLcykF9/O
 jn7AyVVlRwIGEANtyZBGeGLcKIoVzaoDK24LUYP4bQAH3mEym3HwMLWho3ZT0I+zpZow
 G9A8TqtcPopQ20YWb7046usRsGwGbqcM7GnFYzPWay5cVWj9WDlzOdRaCsenzLY68Az7
 vKPw4/s8W79sHOt7waC77qTQNhcoIHNCJC4YmUdAXkBTciCmuNU+GcCpDNeWm6BRugjX
 8k8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YqdRt5rBMoMqCgc4YHsE3x5I7F8vwfc49rxNaBHP9J4=;
 b=EQ/HtsaEDpHXX9tCz4A8vS9dk49Tp9t0pxpTajj2UIQj6RRiDMQ9jaK5zgV547CTBy
 6WfP7l1bVS5exOWicLwnsJknN+idE+udVyVDk0INqjH7n+Q7DAfU4HAU45UME9Vf5thQ
 RITRtu+whWWu8jU/W1U4kY8b9YpSnsGYjNjIU2SN4LMZzRPwtq25tC4mluRYCohFjYBg
 KfrLNvddQpYpIwV/ViTlPEen8k4BgGhqvEkogiJmohTVtyeBEwj0SItXwZUfpx7DloJt
 yak7YvTgKMF3afuefwqgty8ZpxfShokfyDWZpSXjcMK21wNaqkE4szUdb0Pq6imqCde5
 8+Ow==
X-Gm-Message-State: APjAAAXdKKLDt0aeIfsgMP7EHM3keuj1UwpbjYsK8e4lTllqORTINAfl
 9kW3k3vO8NcwtP4Wz/USeziFcbNy0J0=
X-Google-Smtp-Source: APXvYqzUURVuO/mM7gn8o37Q4zpUrZbu2j6FtKJ83ArCbeF6e6IekuZrzjkdESNcfcSQrR7qIZK5Kw==
X-Received: by 2002:a65:614a:: with SMTP id o10mr75091456pgv.407.1563889405866; 
 Tue, 23 Jul 2019 06:43:25 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o12sm32832456pjr.22.2019.07.23.06.43.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 06:43:24 -0700 (PDT)
Date: Tue, 23 Jul 2019 22:43:22 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 1/3] nvme: have nvme_init_identify set ctrl->cap
Message-ID: <20190723134322.GD7148@minwoo-desktop>
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723000654.6448-2-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_064326_685841_E71E9BE5 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-22 17:06:52, Sagi Grimberg wrote:
> No need to use a stack cap variable.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 76cd3dd8736a..058e06e40df8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2563,7 +2563,6 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
>  int nvme_init_identify(struct nvme_ctrl *ctrl)
>  {
>  	struct nvme_id_ctrl *id;
> -	u64 cap;
>  	int ret, page_shift;
>  	u32 max_hw_sectors;
>  	bool prev_apst_enabled;
> @@ -2574,15 +2573,15 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>  		return ret;
>  	}
>  
> -	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &cap);
> +	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);

I think the host drivers already have the CAP values before the
nvme_init_identify() being called.  But it looks good to me with the
goal of this commit.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
