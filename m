Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C660F99EB6
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 20:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4KLCevj5Ub24PYFg/r1IJe1hF1L6fEqt8xp4zYBT5eM=; b=A1qPmiKFdaXaU5ODLz00eeMtT
	F+j8u6Zh7T9IefGbua/RYSFtQN6eVkuQcCSlV9zvCLM70YDV0IfSt6deUVulRX0lk2ZoAKs8F9xcN
	xHgpA8jyUIEBlnP8Ey8hfssW1K2Tf8VANQqyn0AxAbEwfTyEC4tdTDIjm2SBG6US4WuH3i6ysda5y
	BnRnL46PQM9t1UnK6mR8flkY/lk6I3OUEA+grOcFvzXztLbbNtHJqWJtiIrnhHYejUeLdNpPg1hSr
	/LmbDkPUrDl/fVhU2+cdvckEtU84IpNDanoCaE2JteGwMJ7FJTPhbu6NjcyZXeIWNjTEgkfGcDlcf
	3jApQJaVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rlg-0007fr-PW; Thu, 22 Aug 2019 18:25:04 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rlQ-0007JW-UT
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 18:24:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id e12so6347468otp.10
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 11:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U5n9Gi/RWjSJCOofZEE7SqKCVPUlymYI8hAjn5rQKgM=;
 b=SCSRguujG0IzTUMhW48AsbFYBjXVEXHBjWkptR/FvXE4gq3Hi3FcnsfCXHUsYzPJTr
 F/6lIzRWaQrWQ46bJSkYByET4ElcCz3FU3dtBDFUZ6AS604t88UyOL3XShdcAAFP/woO
 m6h8/0uKaCyG9kQrxBWYyAJdma1KHpPYUihlBNrw8y80sc1c7z9mn07Z6gF6ac0oIWOP
 9elbiFGVCZrrC1Xg6LF2hBKEUl22msNoKrLp/WWO7N6VsNei3vYB8mo7MqeemaBHrtZ5
 pOow6hDzdvk2cX9EOP2N+IR1zHaUGjPNEd4jmyp0i/oGfwiRs1xAQepS4TmQdTPi6iQR
 pEpA==
X-Gm-Message-State: APjAAAX8oyL1QOrxaHMiJkcNyPhPh4kemChAFUUQCrjOHiRPY4XYQDsR
 bxfEbyFUksmD3SBWtkV7yu8=
X-Google-Smtp-Source: APXvYqzSq5rfFn8WYQ/q6wlF6b2obt4BH83PxiFbOe3Nvpv3OjdZtrEAknJCey5mv1PP2bVCkbQBng==
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr728514oth.167.1566498287941; 
 Thu, 22 Aug 2019 11:24:47 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 17sm98415otu.63.2019.08.22.11.24.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 11:24:46 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] nvme: enable aen also for discovery controllers
To: Christoph Hellwig <hch@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-3-sagi@grimberg.me> <20190822002008.GO9511@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <36fb5daa-1351-7910-fcb6-ce052f56a5ce@grimberg.me>
Date: Thu, 22 Aug 2019 11:24:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822002008.GO9511@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_112455_518117_D951F306 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +	if (ctrl->queue_count > 1 ||
>> +	    (ctrl->ops->flags & NVME_F_FABRICS &&
>> +	     ctrl->opts->discovery_nqn))
>> +		nvme_enable_aen(ctrl);
> 
> discovery_nqn should only be set for fabrics, so that checks seems
> redundant.

I can fix that.

> But why are we only enabling aens for queue_count > 1
> anyway?  It seems in no way related to having I/O queues.

You're right, will add a patch to remove that...

>> +
>>   	if (ctrl->queue_count > 1) {
>>   		nvme_queue_scan(ctrl);
>> -		nvme_enable_aen(ctrl);
>> -		queue_work(nvme_wq, &ctrl->async_event_work);
> 
> Also we are changing ordering here, which at least needs to be
> documented.

Will do

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
