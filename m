Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875392A48A
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 15:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjOOZAIfh7DW5zHVslpzgc7dgKC+HzLslFYgjdE5sjM=; b=VppKS0soc3KQiF
	WQETnL9U0YcRx1gQ4lvKKSii3ZR5lBdf6VE6/aiOQeVyldKZQVO/F7ihHRwAMb0/6vvxTFVDfFs7k
	wkIle1TCUHzqvElwgzA7NJojmaPk4lz10sebWhJT/8FdUHs8wJ9Oar1TXF/wCXy0keAUEbz4mnrxg
	owFbX4gLRrAsWamXSPMEvF35OZyd5xiQ4jfngRHByrlYBRyIuSTpenjYGSLDbZeTMTaGoSVj8Akgt
	7mI2tsZKSCRGWRnZXQLYHexWHv1yjXKiO5+fV1yzLxKXYPqZeZ9aTKXCMBgrBUtFWKcF+7Zzm4t9H
	9Zr+NaoMmHeY5rQkwKRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUWY6-00024T-Vi; Sat, 25 May 2019 13:17:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUWY1-00023v-SC
 for linux-nvme@lists.infradead.org; Sat, 25 May 2019 13:17:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so6950384pfm.12
 for <linux-nvme@lists.infradead.org>; Sat, 25 May 2019 06:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0uAyWM2icdDFfjOZ0nuBlW6AESSFC0aRlUrR/zQ4zGc=;
 b=lL8h1S2hC8OG6jH4PRbWO8XLwZtPBUzuOQRKMilXuN8t56CZDpDS5cypLlAdSUuyRj
 1Yr4M+3GckBPfaiIBnpKtf33OL41pAI5Lhio5QEvuVuunkMNDbOU+2CMpHhSnrjRLf1s
 29CXM3XNbdBD/d2ACTenRXBHRGfxjORK/ykv4kdfvzc6BqGdm46T/cEbiir1TS6wTj2M
 s1A2KVaZvEMLCblbVSpQj5uDPKMx1t/NeGGNc2HqLfrk1N/I9LHDzyjhahg5Zld4W/gf
 6OaMwU1gmZK1Ni6549Ht8osbfF9XEXQbJR9jqxNVWO07TCrIv+zHJ3FE1r0+MyQu/FYX
 TE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0uAyWM2icdDFfjOZ0nuBlW6AESSFC0aRlUrR/zQ4zGc=;
 b=WQUsXBj8WDw+LuUglnYAp8amE3sP+86PHAOehCwfogiumNDDm4+XqqNMVGD1zD185w
 tdyOy3BTUdu4EnhSA2kRXe/plOxIBYjl0/9OqbP+OVJ7uu97DsVicIKpL6FAq9U6VVom
 52QAU3RTpfisI1oTc8cr437+qRBi00/w1LpExRSex7kRJp93lYyuFaSGBXPqcK8Yt3j/
 aR9RevEcYWLr1FfhYQhg5CftSTf73gtPXADqXuF/S+bCWM3O1YXLqWfGlHkzd9h8ZuH1
 sPB0AAI2wE4tQgFgh2yOG35AergS5liu2mvcPEeQDsKIDhxCOQnup4bZso0NpVuWxta+
 jw7g==
X-Gm-Message-State: APjAAAVZ27MYGe4s7EaEmDxoHQDc/DbOLWn/ANKrFOr/lYsL4N0UZMpA
 6BMNubr5f8zfy4H0K/hjm/o=
X-Google-Smtp-Source: APXvYqyXNnByI752ZjG8iWGMB356PKRZXGeYZ4lxUgVaFTEYnb9HU1DPO/CFmHw7+3iXXJkSYGBw8w==
X-Received: by 2002:aa7:8f2f:: with SMTP id
 y15mr108602614pfr.124.1558790236552; 
 Sat, 25 May 2019 06:17:16 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 4sm9272909pfj.111.2019.05.25.06.17.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 06:17:15 -0700 (PDT)
Date: Sat, 25 May 2019 22:17:12 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 3/3] nvme: quiesce admin queue for fw activation
Message-ID: <20190525131710.GA342@minwooim-desktop>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-4-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524202036.17265-4-keith.busch@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_061717_938478_2FFBC44A 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 96dac2292897..5a6d27823f7f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3604,7 +3604,10 @@ static void nvme_fw_act_work(struct work_struct *work)
>  		fw_act_timeout = jiffies +
>  				msecs_to_jiffies(admin_timeout * 1000);
>  
> +	dev_info(ctrl->device, "processing paused for fw activation\n");
>  	nvme_stop_queues(ctrl);
> +	blk_mq_quiesce_queue(ctrl->admin_q);

Keith,

Can we have an warning here to indicate if device firmware has not set
the CSTS.PP yet.  In that case, the information message that you have
introduced here may be invalid.  It would be great if we check the
CSTS.PP first, and then print it out.

If it's not necessary to have it, please feel free to let me know.
Of course, device has to prepared the processing paused status,
though :)

> +
>  	while (nvme_ctrl_pp_status(ctrl)) {
>  		if (time_after(jiffies, fw_act_timeout)) {
>  			dev_warn(ctrl->device,
> @@ -3619,7 +3622,10 @@ static void nvme_fw_act_work(struct work_struct *work)
>  	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
>  		return;
>  
> +	dev_info(ctrl->device, "processing resumed\n");

Can we print it out after admin_q, io_q are unquiesced ?

> +	blk_mq_unquiesce_queue(ctrl->admin_q);
>  	nvme_start_queues(ctrl);
> +
>  	/* read FW slot information to clear the AER */
>  	nvme_get_fw_slot_info(ctrl);
>  }

I am very okay to quiesce the admin_q here.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
