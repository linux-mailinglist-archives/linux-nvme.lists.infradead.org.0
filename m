Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492572914C
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 08:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U6fmD4sBNWYeqynObfDWcoQ7d6RHFKJDZ5xYn6GRw94=; b=ClhaQP5WMs4yT6O1786JE2lJP
	uKaBTqa7QDPiEuYHJSYYdSqOXrRdssES3YeZDaVIeWJb9LCsAkJTfsd5TD3Fj7/TUtB2zpnfdLry0
	hFA6IHV1NGh3JhfuwQLUy23gH0yAytjKH4tFEGhPoVeEFJ911+wI2EGwG4UGD6oTroyPCt2ZmOBJU
	PyD9nzvL4xZ1DWB2Ss4d0NbHtyGzRyIqmJrLrfzin+MQjGqByHVSuqCpkLvtZMnhwDi3K+wuA1TrC
	DagCVXQLBJdLdoW8uxHLFdLr1GA+HI6FNGaM7IHW49TBkdv/QNq22LZZVaJOUyrS8c2JmNr3Y76ww
	bJnWRugTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU42r-00049Z-KR; Fri, 24 May 2019 06:51:13 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU42l-00049A-Gl
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 06:51:08 +0000
Received: by mail-pf1-f195.google.com with SMTP id b76so4727587pfb.5
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 23:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=R+b7m641Rcg2p5tU0hrXY99ICyPxVe5Kvxb0A1aQ4yA=;
 b=Zvhu8g87/xhV2DGn+ACsbRFpsaSba37glyShRcHDPThPI1enMYl5Kbpea15s13hH/p
 I0f9f17mwlN/ecjnzrfVTXoX+tLVLGlEGJmHdPWYFP6V/+e96nZ7ZSWMWXy9F+XWuUEJ
 kVJBr6r23VfrkVlDvBVDuBwknk7E9TjVW4NqgJ9uf8XLja/o/C0/iPnMWjx79YlnHXPP
 tNHczFazE0irsGYFCtMmzU7gBxphXPLfHBascL2Q0y26W0geIFJLG+vGCs7iojE+mRDp
 IebO9zArB7YO7sgoId4L9PsXcDZbjSGstUDf8voPVSGjZ5KluRWkGXA2XqoWAk6ym+ei
 uc/A==
X-Gm-Message-State: APjAAAUpvLrqZU6SDn9rpVTj66Jm0HIOzZHsBklM/TT1jw5IPGib64cC
 uf7MWZuFBKdWFLKaFf3heyT2cN0d
X-Google-Smtp-Source: APXvYqz30HyNFn0E4CLssp6Nj6gjNpLsEOZhseL+0YrT2GwQa8KBQlNMGwYbxKKStx5WthwPXYqC8Q==
X-Received: by 2002:a17:90a:d582:: with SMTP id
 v2mr6704341pju.22.1558680666177; 
 Thu, 23 May 2019 23:51:06 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id e73sm1760894pfh.59.2019.05.23.23.51.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:51:05 -0700 (PDT)
Subject: Re: [PATCH 2/4] nvme-fc: track state change failures during reconnect
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-3-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ddf3f233-263d-288a-aedd-8d1ee3989709@grimberg.me>
Date: Thu, 23 May 2019 23:51:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520063624.50338-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_235107_561023_E9C8C3A0 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 0c9e036afd09..e5c81ba2b7a1 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2867,8 +2867,12 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
>   	unsigned long recon_delay = ctrl->ctrl.opts->reconnect_delay * HZ;
>   	bool recon = true;
>   
> -	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING)
> +	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
> +		dev_info(ctrl->ctrl.device,
> +			 "NVME-FC{%d}: couldn't reconnect in state %s\n",
> +			 ctrl->cnum, nvme_ctrl_state_name(&ctrl->ctrl));

Is this always "couldn't"? Is this expected?

>   		return;
> +	}
>   
>   	if (portptr->port_state == FC_OBJSTATE_ONLINE)
>   		dev_info(ctrl->ctrl.device,
> @@ -2914,7 +2918,8 @@ __nvme_fc_terminate_io(struct nvme_fc_ctrl *ctrl)
>   	    !nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING))
>   		dev_err(ctrl->ctrl.device,
>   			"NVME-FC{%d}: error_recovery: Couldn't change state "
> -			"to CONNECTING\n", ctrl->cnum);
> +			"from %s to CONNECTING\n", ctrl->cnum,
> +			nvme_ctrl_state_name(&ctrl->ctrl));

Doesn't this present an unnecessary combination of a lower-case state
and all-caps CONNECTING?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
