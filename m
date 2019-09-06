Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D4CABF21
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ckpZntZKnIovDzoVuKOdDJizFUO7JBQpuRv3ACuJjuE=; b=r6KD3e9VhrZmf0W5oygRmF45e
	l7MMjarvWV0Z+ZNEcWny6ym8D4rrll90LyIVL3Kz8DApDhspluaQhHivih/on7H9BxdclUtpmA20I
	mlSRuzBnOi12BBdA0qNBa4CI5hYOy6HP4cdS04PteqDjnUfSJAiBvTmvnszO0TIlEH8eeFU99tzbF
	EQblubSREIGO1a3OXYSF39nCy4kpHG5Jq+OrsyaffcQdbyexL6egrKKh0OeRaIRcUWyFylLlnNeZb
	DwUzyERscx6AXqY4oNiE8dPd857pOJ7BCcXxTyzoMhmMpUnsrkIuW/gcaJ/Ix3PX5SkqxxwrRoZ9B
	7kPjJ/Mgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IeV-000849-L8; Fri, 06 Sep 2019 18:08:07 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6IeO-00083f-8x
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 18:08:01 +0000
Received: by mail-ot1-f66.google.com with SMTP id n7so6532620otk.6
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 11:07:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kJc8FkLgbQPVQ4tFTiwrpMw8Px0ljhZ7sdsqeuO6v7c=;
 b=TskV9xP/ghwiYwe/A5oFILet+n+uRoN7rEEDiBg7g6XjV0E5Rcm6OlRcAC7iaIE9nV
 6qICb8ZhPrr0IyZU8ABt+Y4N5Ja44Y7HN82/lUZFXP3xbsDdemZsixcSVQV+CLazj0Rt
 kTDm/BiogWuvSOomFdldtsJdYPlB27dc205XVOcWm6uOEb4J4ArGCPMQoX6pbhpO1hOk
 +Y+vbDFpU12H0K6qinFLKYANtUD97YNTrDPp8CHtFDacQAAmKxNVBPC6M9QosADAGV7e
 IcHZyDHa/CdRzvCleu/hVbJZwWGCqIyz6Txwck/dzrPs3MrdGcRfkbs3wUd4SJmwskAE
 HQjQ==
X-Gm-Message-State: APjAAAUGt5i5IywcduGQ/n7Re7aaijoOot5EhNhNQZ4Nt+xb9qUvD78L
 2cjb/wf5ZrC7mhKU7SV0t8Q=
X-Google-Smtp-Source: APXvYqyrQU02EBEuKRU24KFGCaGhz4tSPfi4yCEpxpFWRMBTjJDU8bSXbPvym+ea9VaDlvebr2rpaA==
X-Received: by 2002:a9d:2f09:: with SMTP id h9mr8325700otb.21.1567793277469;
 Fri, 06 Sep 2019 11:07:57 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a2sm2019981oiy.29.2019.09.06.11.07.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:07:56 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] nvme: add uevent variables for controller devices
To: Christoph Hellwig <hch@lst.de>
References: <20190904215954.15423-1-sagi@grimberg.me>
 <20190904215954.15423-4-sagi@grimberg.me> <20190906125953.GA8873@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d8f8f532-655d-c418-8187-d67a354390aa@grimberg.me>
Date: Fri, 6 Sep 2019 11:07:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906125953.GA8873@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_110800_319191_D1C8621E 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +static int nvme_class_uevent(struct device *d, struct kobj_uevent_env *env)
>> +{
>> +	struct nvme_ctrl *ctrl =
>> +		container_of(d, struct nvme_ctrl, ctrl_device);
> 
> Why the weird variable name of d instead of dev? as we usually use?

copy and paste from netdev_uevent :)

>> +	if (opts) {
> 
> 	if (!opts)
> 		return;
> 
> ?  But then again how we can end up here without ctrl->opts?

pci controllers.

>> +		ret = add_uevent_var(env, "NVME_TRSVCID=%s",
>> +			(opts && opts->trsvcid) ? opts->trsvcid : "none");
> 
> No need to check opts here again.

Will fix

> 
>> +		ret = add_uevent_var(env, "NVME_HOST_TRADDR=%s",
>> +			(opts && opts->host_traddr) ? opts->host_traddr : "none");
> 
> Same here.

Will fix

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
