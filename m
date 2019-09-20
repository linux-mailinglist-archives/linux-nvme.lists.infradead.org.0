Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892AB965B
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gaPORl3AOO6jowLe/M423g2rmza8UBCBxRKB4Jb5G2g=; b=HLKwejGXETfDnf/uw/Ix5Vp6O
	118WmEZgN9ra0rEgpublEXh88a0/bEg7o4m6aENqT+eVsHUVxWfO/DuV1YmotZI4UFZW1H5R9gaue
	pQjpxMjYuYFWMD9AG4XcKWHwEKrCJlZhFjZtIhDV/jYgk1uKZr6qLOZObv+rbomYOrsMSpq0QdRkc
	bvmR1aW2wS/3SXD0OD1eLdOH7e3j+B5+0Me5KbAtCrsaofjtaQznblQaXlssCMCdIGQ1l/mucFoP2
	iMTBsgZZOGqBexMZreSFCx96k85dKk3tBW5U5ij3G9/Rlv9tFj3iQPzbAUNn8LTT7EKrIEwTd4/yf
	8VKYkhtvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMPw-0007BJ-04; Fri, 20 Sep 2019 17:10:00 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMPq-0007Aa-NG
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:09:56 +0000
Received: by mail-wm1-f66.google.com with SMTP id a6so3272405wma.5
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:09:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cfxFfQGUkBcjDLVOdYbMW4OGTPS6aOIfBZ/xv+D9EV8=;
 b=sMBFrHlc68I/jvydKcavSkhzivWGCHZkdbCcGPMFcqA17eE02rjR+2Hg6Z8Yg4hW/5
 zdb8MxjD/kDmnFiTTXiHAdib8DLZxwy99xIr43MAVVMU5JfBSr9bJKIld4d0H5a3cH+J
 sW7YPYldnE9uW11rwTKof+oxEikUyL/HM44OgUy79COwgEDRs0Aqx+lzSs/a5ypkzwBU
 aq4kLMStEU0YsLxtoGgOubzu7rtO2EzopURONGGmAqB6Wf6PEpUi/6J8NoSoIaUqNouZ
 2j4cWQGfPz3S5CD/6yPVtY9r8cehDjFCgokqHYH/YTBg67xyAl1nnI8hXpA0zV7iURz0
 B6iQ==
X-Gm-Message-State: APjAAAUwfZcJj/XvF7c1bdkZWQOXqI8F88tv4dPp66fOIyNFf8R2BV0X
 AfTcW+JE4ogYxqIGlnt/55M=
X-Google-Smtp-Source: APXvYqy8dyp35r2taAzQm5OQLG1ObLmax7stbIj278cwtbNZj3zbQZo+lNJuvh0+dpDPAdbtrpx2fQ==
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr4516694wml.14.1568999392829;
 Fri, 20 Sep 2019 10:09:52 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id y3sm3012481wrw.83.2019.09.20.10.09.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:09:52 -0700 (PDT)
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
To: Ming Lei <ming.lei@redhat.com>
References: <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <ffefcfa0-09b6-9af5-f94e-8e7ddd2eef16@linaro.org>
 <6eb2a745-7b92-73ce-46f5-cc6a5ef08abc@grimberg.me>
 <20190907000100.GC12290@ming.t460p>
 <f5685543-8cd5-6c6a-5b80-c77ef09c6b3b@grimberg.me>
 <20190918143732.GA19364@ming.t460p>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1f01c041-cc6e-e27e-7691-63c903d1fed7@grimberg.me>
Date: Fri, 20 Sep 2019 10:09:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918143732.GA19364@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_100954_761822_C12194D3 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 John Garry <john.garry@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> It seems like we're attempting to stay in irq context for as long as we
>> can instead of scheduling to softirq/thread context if we have more than
>> a minimal amount of work to do. Without at least understanding why
>> softirq/thread degrades us so much this code seems like the wrong
>> approach to me. Interrupt context will always be faster, but it is
>> not a sufficient reason to spend as much time as possible there, is it?
> 
> If extra latency is added in IO completion path, this latency will be
> introduced in the submission path, because the hw queue depth is fixed,
> which is often small. Especially in case of multiple submission vs.
> single(shared) completion, the whole hw queue tags can be exhausted
> easily.

This is why the patch is reaping the first batch from hard-irq, but only
if it has more will defer to softirq. So I'm not sure the short QD use
case applies here...

> I guess no such effect for networking IO.

Maybe, maybe not...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
