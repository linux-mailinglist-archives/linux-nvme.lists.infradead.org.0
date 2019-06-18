Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C434A872
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 19:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LBSMVA789o6YhiShB5YsW1+IxaEvnPCUjJG8aPGNFIM=; b=g+TlD5RbXmkQTQchPxpVTxclL
	khpTzJhSOd0tdKbYC6KkHfQan1sflx/+ZvVlSwRK+mPHIG6oFmmdGt5RJvUbjEBBMH3h4xnMJVi0u
	X/myoaYABuSF9/5FGsKvlRUuvlkd3W6Rh/3+tG2WRa/CaDnHfVIv1Pak5brlY/fg6gI7Sow3tW4zp
	UB25pC3S+6HdO4uec9RxYWVRVdKW5YHI6rf8vcaey9YqPuymAQe1kCOVm5/lxyXaQnOlIMRwpUSen
	iPnFxllTD50HUg0K+YzO7i46o08YyxJXmZGPanxcZbk3YedeFIABgrF9oJeRc6jD0nPbkPYrwLYVe
	l+uys91nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHwd-00047E-L4; Tue, 18 Jun 2019 17:30:55 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHwX-00046A-Ms
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 17:30:52 +0000
Received: by mail-pl1-f193.google.com with SMTP id f98so417572plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 10:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dJRXZt5DtRjNdjOrYTivIOwdOChv/o+3WYWbg8BNn9I=;
 b=PjZ3jM6y/fTp+QeanG1p4WD+Q3yhxz3bHwaByPO7U/IZD0Uq15YqCgaTNAuEZj+HvY
 CNoEQsxpvsqqygyWa6UN0Eab/5smOxD/m3jZXF5+WfFC6HZprpTs2SHxyYZTZL1xNtPy
 ptgxQ082Z+TwsJunxgRxtcpEzN1rCa+WOQ8EGwCXpqR4WfDfXMpIlLDe4HLhGMIQdUFx
 Yyi9aqeZUh6/kFRNDroMpW4YGyjIgVUSICncBnw4wkuJXhYPzg8pNXBDPa1sUAl6vM38
 83KnVgdu6Zahv+I88zpeKiEtt5rEO39TV2Qco+gDowBr+07p7sVHKfShFnh17NlIyfBs
 lJ2g==
X-Gm-Message-State: APjAAAVWs2lGPOxKCR/5+PDTUpfRswZ7kRbq4+qypfjK8DLtafaq4Gnr
 7iKJGCB78leJop8/TR3HXLE94/NT8cM=
X-Google-Smtp-Source: APXvYqzLPBlkawgb4MR4neFNQwQM+ZiLxxgE80oUSlgPMGyCJkjF0Kxb5Od4Tku25JIhRaJTrerhyw==
X-Received: by 2002:a17:902:2f:: with SMTP id 44mr53622415pla.5.1560879048681; 
 Tue, 18 Jun 2019 10:30:48 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:8c36:4f80:5fb5:4302?
 ([2601:647:4800:973f:8c36:4f80:5fb5:4302])
 by smtp.gmail.com with ESMTPSA id v5sm4555437pgq.66.2019.06.18.10.30.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 10:30:48 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: Do not remove namespaces during reset
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-2-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <17c5aaa9-a8eb-f541-f136-9a728e72f428@grimberg.me>
Date: Tue, 18 Jun 2019 10:30:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618101025.78840-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_103049_743256_37291957 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> When a controller is resetting or reconnecting there is no way
> how we could establish the validity of any given namespace.
> So do not call nvme_ns_remove() during resetting or reconnecting
> and rely on the call to nvme_scan_queue() after reset to fixup
> things.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index ba2079d217da..e872591e5fe7 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3358,6 +3358,17 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   
>   static void nvme_ns_remove(struct nvme_ns *ns)
>   {
> +	/*
> +	 * We cannot make any assumptions about namespaces during
> +	 * reset; in particular we shouldn't attempt to remove them
> +	 * as I/O might still be queued to them.
> +	 * So ignore this call during reset and rely on the
> +	 * rescan after reset to clean up things again.
> +	 */
> +	if (ns->ctrl->state == NVME_CTRL_RESETTING ||
> +	    ns->ctrl->state == NVME_CTRL_CONNECTING)
> +		return;
> +

This is conflicting with the commit log, this condition needs to
go to the call site.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
