Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FDF8BEBD
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wScNCChziHtN09V+NUKDH3M5yCjoKYpAjgwb+ZI+gRA=; b=KDWmySavXk/kZyk+aI0T5eFTh
	a2V30eqO7PTgXuknNG7uSGCLM8e54y0BXdzRR/xV7Ltb96YT25jpGfsekgNR0iYysgmeotNJX0ASN
	tq157dvt/Zz12gqp7CfzdwxbhvNIYldt4561farbveMxOoRVd7pd8fj54XFJ7mdztpzs6ksDgtLx9
	kqXPLuFXUzLjjj8wvSW14BtK1rJ3R7JoFfAbiQfD+CVGBXQQVK8PISbaXBzaZFUshe0Ns9nCcfEbL
	elbOGkwcd4hwBhhuYK/G8PnKx9RhYZ2Zp41+DHcfkKGQRC5spuFBKY/ih3vxuTCKjrQ7mWgybJSI3
	XWI2+x8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZnY-00072O-JM; Tue, 13 Aug 2019 16:37:24 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZnO-00071q-JT
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:37:15 +0000
Received: by mail-ot1-f46.google.com with SMTP id w4so7735057ote.11
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:37:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NDui+iMLPf82DFGGrbj5sf9vH2VQ15P7EPB6Qnqz4zU=;
 b=r8Z8DKJzdhc/nVtNJShYP4q6fcr5RqNOU1IGyxA9XMrHjT3wzOyVWSoGmpx4bbgnSu
 n1HFzo8gR2eHfu8vm/RWRsEBoxyqhDPqwRwcVOjBV/h3zYIK8/QbpORDj3LEbpCROpQt
 DXBT3ZmjDq16Q8CKbxgguT+ld4uPhucCptGpwak25Ked5dcMRi/iZzBzU4FQ9415yqAn
 GG+RQUocRivP1WPE0wQIr0DNdlKpBP3XpBZx+Zl3ziDlZDx1+80ZfR/cK5ab+kiXl//9
 cOZZqWG6tMuSi4hz6a0lLkkxepRk5Ruu6IFZGOzc3s8MFP55EK22Eksrrb7tv8BzrSO/
 HVJg==
X-Gm-Message-State: APjAAAUu24iPmVUDjy16nTwOEnqD4PRPsOJS0JiYuLf+3ZomovVrYGQw
 n3nsHw4WYlPDa6O8PAgwwQg18WMb
X-Google-Smtp-Source: APXvYqxDHhAYGj1P926GQegAQdwmLxdPPZPuKuSk549QTzcDGz8ejTqibbkED/caSj3CV1MZkWYWuQ==
X-Received: by 2002:a9d:1cf:: with SMTP id e73mr9699797ote.38.1565714233100;
 Tue, 13 Aug 2019 09:37:13 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id s24sm13130324otd.81.2019.08.13.09.37.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:37:12 -0700 (PDT)
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Keith Busch <kbusch@kernel.org>
References: <20190812075147.79598-1-hare@suse.de>
 <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
 <1f2025d7-b79e-ad46-df73-66fdff1b5f28@grimberg.me>
 <20190813141510.GB32686@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5c6ec6e6-d2ae-2e3b-0adc-e30cbcce528b@grimberg.me>
Date: Tue, 13 Aug 2019 09:37:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813141510.GB32686@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093714_643633_2AFE3280 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> We need to override the default nvme_error_status() to BLK_STS_TARGET
> when DNR is set to prevent upper layers from their own retries/failover.
> I suggested adding that check in the existing unlikely() case, but maybe
> it's more obvious if we teach nvme_error_status() to default to return
> BLK_STS_TARGET for this condition?
> 
> ---
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 8f3fbe5ca937..50adcdde44d5 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -199,6 +199,9 @@ static inline bool nvme_ns_has_pi(struct nvme_ns *ns)
>   
>   static blk_status_t nvme_error_status(struct request *req)
>   {
> +	if (unlikely(nvme_req(req)->status & NVME_SC_DNR))
> +		return BLK_STS_TARGET;
> +
>   	switch (nvme_req(req)->status & 0x7ff) {
>   	case NVME_SC_SUCCESS:
>   		return BLK_STS_OK;
> --

Makes sense to me, Hannes does this address your issue?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
