Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0388F978C
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 18:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IB14Dy93FzuYwOj6GNhIViS/naEwvgRVMEt1QAEgWJE=; b=IbhhodxTKV/hwPnlZp4FfplKa
	0TXIOPYp4utPiT/6HCd8jdDyug/4FTh1Qhmfz3CIRr5s0jXOqFobWzGXR9W110zxpHV7IeLVtPiBl
	oDNoA3K3ijN2mf70z2qd3FIxVjEEb3EQRr/34YuZmu754D0pkJeDnxQeKKG8CR9iuzL+MgZdR6ctl
	eawlYgmoa0iuvFM0YdGhKKMcO5NGRTkEiBy3G9VhQSXzAJX4ckm2sGTkqSVYFaEpTL51CJ0w2ZKqE
	+v4kinA/clnSP14UG9747J4uqCvyS5MHmGMKAVol+aVsv/91nByvP8zLSgf1wWwoCeiTJRcuBofqF
	RSJybKILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaGk-0005mO-00; Tue, 12 Nov 2019 17:47:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaGd-0005lr-9n
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 17:47:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id z25so1767118oti.5
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 09:47:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ewoJyxqALhtNGhyBRw6LMKQAHlOzsnyJO+KXyyq5qJc=;
 b=gJBKAJtxUKtOSJU+i80Ll/CamHEB8nAbar5aE8nsPJHxZsiWmMMFs1FjiS/j5BcqCC
 P9fN/EoSvEALLsZsOCby/ehmmgiJBiCVVo+kbgbmAqdMEHuOIktUFl8Qgbtc2R7yquTe
 +lKQ28UjG3ewKg5jDcBV11PbaUBpt5ml1mnvOwpuP0QDch0AVpmrkeEHYOxHQdKXsR8T
 fACNMGCkepxU/sNyfsLCz+v8YBnGUcoh+NDzwHK0UB1qXMW4LvGdp0sO6Cvte75HP+jt
 JidJbIRwknCt3ZIRcsXyy0EUtNjRKBP5tIbIm6GJw3mGxGIY1MEicLUL/3zsvbgYtr0k
 d16A==
X-Gm-Message-State: APjAAAVkz5oE7qX6xTR6twSgFUQNktzAuFvRJ5tvqJxqxfkc6z8z9I2P
 v1Qjw4bf1PhZPqafABM4uwc=
X-Google-Smtp-Source: APXvYqxkDwm9pRujUEhRawOsE8PCp5C8FHuQxpxcITtPZ13IIRL2fNqgui2hafMGKUZMOoTkPQ39XQ==
X-Received: by 2002:a9d:491:: with SMTP id 17mr24359461otm.55.1573580869042;
 Tue, 12 Nov 2019 09:47:49 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id t19sm566460otr.5.2019.11.12.09.47.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 09:47:48 -0800 (PST)
Subject: Re: [PATCH] nvme-cli/fabrics: Add pi_enable param to connect cmd
To: Max Gurtovoy <maxg@mellanox.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-2-maxg@mellanox.com> <yq15zjwza2y.fsf@oracle.com>
 <ed926da1-1466-edbd-6fa3-fb828bf455cc@mellanox.com>
 <yq14kzdx182.fsf@oracle.com>
 <b3670fb4-7782-d4af-a9a5-c30b6d1db6f0@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <98aa5f26-909d-1e93-55a2-cd2ba9929ff7@grimberg.me>
Date: Tue, 12 Nov 2019 09:47:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b3670fb4-7782-d4af-a9a5-c30b6d1db6f0@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_094751_340677_D2D27BEA 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> When an I/O request is received by the SCSI stack, we inspect it to
>> determine whether we need to allocate one or two scatterlists. If the
>> request has a bip attached, we'll allocate a separate scatterlist which
>> is then used to map the protection information before the I/O is
>> submitted to the device driver.
> 
> For an NVMe/RDMA controller we must allocate a pool of PI MRs in the 
> constructor function in order to support E2E PI (and it's expensive).
> 
> We can't do it in queue_rq function. In queue_rq we get the needed MR 
> according to the namespace format from a pre-allocated pool (PI_MR for 
> PI_namespace and REGULAR_MR for REGULAR_namespace).
> 
> We can go with the module parameter approach but it will be very limited 
> for users and wasteful.

Yep, this is a fundamental difference for the RDMA devices that supports
integrity.. You effectively need substantially more resources to track
all the inflight contexts.

We could in theory lazily allocate the special resources, but the 
queue-pair extra sizing is not something that you can change in runtime...

I'm fine with explicitly enabling PI for controllers that we know that
support PI.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
