Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C1CABF6D
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4y5+EJRwhWRyIOQmwWtZJB+SeCKNG8nd6AUpkZdaMU=; b=BboEiXo1exxmr+7lvj1E4A6kT
	R70l68+Lny0UgZCNGfE2HM/4sj57TkMgUsULo5ojDy6z7GF91Y+6+GT8Zk3Wer260UHlYcAY5dvuy
	m6J3WoQJvzJ6/ic7OLjOQX/n6HkFIHbf2Q6QTc1c1bI4kQvp2MC7OioDibGW0jj45qb8CTur+CWzj
	VuLpj04p55G+Ao0NjCDWYOWB/4/erL8i262gfmx2SB2j8ZJeKmpGVB8D/m8IxLJWLq6rfaRsswIb3
	pQNyBX8tq12qjURzATPHbaKtnR2q9NCU69zJiyNfNLUXDEeQfyBR2NeGWBFVmmeipbjNzIwFsYScl
	Jg+RVaopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6J0n-0000DJ-0U; Fri, 06 Sep 2019 18:31:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6J0f-0000Cr-Kg
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 18:31:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id b2so6581705otq.10
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 11:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=inlyOQUAj9IgrEa/tTn6FC+PgqOBuK2w0K+3C9jmY5A=;
 b=k4VaiSjj1704QPjwLNZsQvq86jUhHgm5+/TLIoQ4kfngm4VU2uSBmjB6LE7fs7/9p6
 BWdX6nbg0eOaTU958vruUK4XrO7WZMCFnrjxoeWO52kOihitYNvqzFn+VwBWO9JwAF4H
 q2NjlcWjPYTzjt09gty1q94ROQnNijkQ9JfxfRzZyHl53chvLP7W/G2RphciuRKYo3li
 rUCHxfI5UM7vEwOYf9gSmpruMWbyQ7IB5WSqsEb3re7ECHIOJNDISGWMSj0zTwZfgJSh
 VuaZ3PrB2qphxV/YRYanQI7XDd+EDR/vUXSw+OJQB99qM/pAMD+XT4Q/FuSniPnEmM+P
 xXKQ==
X-Gm-Message-State: APjAAAVOYiTX4hUEXi6sDj5eabQZJEUCjn//5YLlCXdrVdFKzaaeMrg0
 TFNrduCTde0UjB+yw53x2y0=
X-Google-Smtp-Source: APXvYqxWAkAjBw9LI0HQBqKJ+CxguDMlNik/iXtNNjR5JA1VPQ+boOZQ7WXXD7Me44XzHY7PgXFxsw==
X-Received: by 2002:a9d:66d2:: with SMTP id t18mr8790061otm.355.1567794660729; 
 Fri, 06 Sep 2019 11:31:00 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t30sm1086635otj.40.2019.09.06.11.30.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:30:59 -0700 (PDT)
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Ming Lei <ming.lei@redhat.com>
References: <20190903033001.GB23861@ming.t460p>
 <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
 <20190903063125.GA21022@ming.t460p>
 <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <ffefcfa0-09b6-9af5-f94e-8e7ddd2eef16@linaro.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6eb2a745-7b92-73ce-46f5-cc6a5ef08abc@grimberg.me>
Date: Fri, 6 Sep 2019 11:30:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ffefcfa0-09b6-9af5-f94e-8e7ddd2eef16@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_113101_682410_9374B0E4 
X-CRM114-Status: GOOD (  12.66  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> 
> Ok, so the real problem is per-cpu bounded tasks.
> 
> I share Thomas opinion about a NAPI like approach.

We already have that, its irq_poll, but it seems that for this
use-case, we get lower performance for some reason. I'm not
entirely sure why that is, maybe its because we need to mask interrupts
because we don't have an "arm" register in nvme like network devices
have?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
