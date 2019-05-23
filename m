Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C00279FE
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 12:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajJuESyUWsjKYHko3VYWrdYiqvMOh1SKJxTM7gw2knU=; b=OhznT4mlrHWC6I
	MxNQtMxxUwGXPagxTUWI4EyqGLtgWmXR1EHA6rX5TjvobpE+qMIe8g9yBRkAyWRhk4xJAa0kaqnvX
	v4gkQ8wPdAbHxZx5LcPA3Mqd5RDc32Cq5xRTNVPL6sx/e1S+NTkNVSfesxs0pDZ5xvvLhNS3xGDHe
	27WW7+qsVM7nI660lu4SJvtjAInZBW0UNb+OUGO6H2rh51WtJJ1EDg+IUSbmDdD5k7pDFIpmDq4sV
	8L95D+0mitU3sZq0aCypStXyjRZectFPB9vSkGOU/Fy9B3zCB0DYedMcozRbILMWPG5BG0oH5iy4q
	+lfR5Kj4nL34c7GGqnxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTka9-0002ob-Sk; Thu, 23 May 2019 10:04:17 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTka4-0002oB-Pl
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 10:04:14 +0000
Received: by mail-ed1-f65.google.com with SMTP id f37so8348422edb.13
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 03:04:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OqWu9K98diHE/z+ycDwbyxcKok8JbJud6vPiwvkFCxI=;
 b=iztwVAgKrkGzWrHrCA4mrL6/Q3f5MP+0vqDPeSyYaZp9Adx02RlIEP7soE614lvqrL
 K6xsmfaDIgzRMs38b5rXAjcq/RCi4iMcF4pd/OPDd+2skrZKUtOH9pcbRli+lf5ojVRl
 8S8p6sSHjGYp7l8P62bzlty1T2o878+7zeNgnvoCWe8zehDNeRtigBmh1PcVkGUYDKZ2
 seWHI6dxGGhiS6A1Co59bvGL0abBHOJYq5mnBQpsg8RnM8fx8LgAEncOJADa2pakMEu0
 Tv+uvUg68Odd2OI1a+IAidM6wNhi0nGe1taGr+FJPO0MU97pYk13aoARU0XUnXqLarug
 inUA==
X-Gm-Message-State: APjAAAWdmZyxt0ZX0NpHfgGntTw7IBkHQ0LPoXXQJ9MU3XZACzqaogyr
 BNQoRtSR1odgCtGoIDOD2+g=
X-Google-Smtp-Source: APXvYqyITuiw9vIRuHQxE8jW7QXxyRWXQ9vaVzvRpfJ4PdoND8+7Sbsp/oa+1PuCZ9/ZvJgXNmVV9A==
X-Received: by 2002:a17:906:6a97:: with SMTP id
 p23mr23240666ejr.203.1558605851029; 
 Thu, 23 May 2019 03:04:11 -0700 (PDT)
Received: from [192.168.1.6] (178-117-55-239.access.telenet.be.
 [178.117.55.239])
 by smtp.gmail.com with ESMTPSA id j3sm7591001edh.82.2019.05.23.03.04.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 03:04:10 -0700 (PDT)
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
To: Keith Busch <kbusch@kernel.org>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <721e059e-ed88-734c-fea2-3637e6d31f4c@acm.org>
 <20190522202805.GA5781@localhost.localdomain>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <83503209-cc83-7ca6-7775-638800626dfd@acm.org>
Date: Thu, 23 May 2019 12:04:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522202805.GA5781@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_030412_831389_1559A8BD 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/22/19 10:28 PM, Keith Busch wrote:
> On Wed, May 22, 2019 at 10:20:45PM +0200, Bart Van Assche wrote:
>> On 5/22/19 7:48 PM, Keith Busch wrote:
>>> Hardware may temporarily stop processing commands that have
>>> been dispatched to it while activating new firmware. Some target
>>> implementation's paused state time exceeds the default request expiry,
>>> so any request dispatched before the driver could quiesce for the
>>> hardware's paused state will time out, and handling this may interrupt
>>> the firmware activation.
>>>
>>> This two-part series provides a way for drivers to reset dispatched
>>> requests' timeout deadline, then uses this new mechanism from the nvme
>>> driver's fw activation work.
>>
>> Hi Keith,
>>
>> Is it essential to modify the block layer to implement this behavior
>> change? Would it be possible to implement this behavior change by
>> modifying the NVMe driver only, e.g. by modifying the nvme_timeout()
>> function and by making that function return BLK_EH_RESET_TIMER while new
>> firmware is being activated?
> 
> Good question.
> 
> We can't just do this from nvme_timeout(), though. That introduces races
> between timeout_work and fw_act_work if that fw work clears the
> condition that timeout needs to observe to return RESET_TIMER.
> 
> Even if we avoid that race, the rq->deadline needs to be adjusted to
> the current time after the h/w unpause because the time accumulated while
> h/w halted itself should not be counted against the request.

Hi Keith,

How about recording the time at which the firmware upgrade finished and
making nvme_timeout() return RESET_TIMER if either a firmware upgrade is
in progress or if it has finished less than (request timeout) seconds
ago? The reason I'm asking this is because I'm concerned that the
patches you posted would need a careful review to see whether or not
these trigger new race conditions.

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
