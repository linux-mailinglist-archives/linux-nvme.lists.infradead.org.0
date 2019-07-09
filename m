Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F063E41
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 01:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1K6YkW2rzLsl7hxG+qMS43XEAdbEK1w6pf0ZnRNblwg=; b=FNPpuo1Qx4ugPW
	mtLBpZNiXpO/39iXhsk6gL9XuiQZwnWtV44/CIhma6BiYRmfd+UCkar9Qh6UJpjTmN/WNwio2aIAU
	7glOniKRKYaQaNmtrWROvZtdgr6wj2NPrdqohanEY295qSb5OJeO/ELJISih0I46Ps32taqFWGxV2
	YN2tbcEMh9xBIBzD5yoKOVMdgG6TqLNzb7v0tz9ie2oHym1hl4bNDfBeyNyESzTLVDNlpt2Utusa9
	VPYTnOKu5iAUZARgVa5+Q4oHpYHdR1KVpUAu4le9qJN6b4c+RlUqWqqwyeJDuJ8ZGYu6P5mHL40DD
	b2d7AWAIjhoWZ37aXloA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkzDO-0006CI-P2; Tue, 09 Jul 2019 23:08:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkzDG-0006BN-Ho
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 23:07:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so99130pfa.4
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 16:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Sr2anMUeYO5aY37zI+MFFXJDb/RcVu5DkSKttdtboI0=;
 b=O+2VbLTBs1xivmJLu0frXcIGJSa7ClEjDd98WFIVFLOOeWRmPEkSyeOPz1TH3zCBZA
 fZj3tUKDcoyzpcGk8XMJXIB/GhLnzXah5chR6U5JKMdvXcYu5rEcnej5ZFVGO2Jdgwnv
 e82qPmtcVeao6O9FnTCPHc+fXfCGFD6O/lqksx4o7fzjcqjQt/3d3Sok50ocp3rrNaoI
 MnXt52P6Hah26W1K3NIAHJkTgRYW3AbbSwDaYg+14raj/JKHtfuCde0VMJAFPB6XUQtF
 oQEzFU4Tawu+6vZHtU1rEzDku5FHugeghByJtP3a/h33HoNvWzwR692YTBIzmY+uGhTf
 R4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sr2anMUeYO5aY37zI+MFFXJDb/RcVu5DkSKttdtboI0=;
 b=cdLB1eb06hI7W3lXcx8ErbvUHZsYLxqIew71tV4yuOI5susQ1msuzQ/1NOkZL2o/C9
 9OW8F0bAxdqMlFjhFL/ZpuSZZbbS/cyMjxXrZ+B30+F/Aces5AhMW/R0bQHBsMZktq/i
 iW6TvFx8JaI/cgqAAr9PvQb9eChr2+B28/yYjY8Ae5gUo+Nq9IKjuToYmzL+2U3QxbuE
 z5TYfRGuPBqVxj9sldaQP0UqZl4QIIdEDEIeLX2jlgX5VR09PLVpfrXxeLha6e2B0tMz
 2Sk+38sXgglg/V/oyY56dYKHZfb6Z4ouiLjGKqGIaMLoQ7V0GifDJtdq1Dam18N6alSy
 XvLQ==
X-Gm-Message-State: APjAAAU5NJx8OY/Xfd4nL7hboS0wSpmZ6pakWQMaxtIS3PAF9CEmcx2l
 Afj6KiO7tJdTJglunQa/YoEmBIpc9ZQ7pA==
X-Google-Smtp-Source: APXvYqybvZKVCljNsxSDvDqf2ElMwAru+wlX8p6i5kOXm6c71duJhijmhmBRWIu+LHYXd1QutW9kCg==
X-Received: by 2002:a65:404d:: with SMTP id h13mr32619222pgp.71.1562713670442; 
 Tue, 09 Jul 2019 16:07:50 -0700 (PDT)
Received: from ?IPv6:2620:10d:c081:1131::123c? ([2620:10d:c090:180::1:2a])
 by smtp.gmail.com with ESMTPSA id b24sm147316pfd.98.2019.07.09.16.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 16:07:49 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
 <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
 <20190709212717.GA9636@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e7e4ec9a-b644-58a3-77b0-7828d73831ca@kernel.dk>
Date: Tue, 9 Jul 2019 17:07:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709212717.GA9636@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_160754_618922_50219097 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/9/19 3:27 PM, Christoph Hellwig wrote:
> On Tue, Jul 09, 2019 at 02:26:04PM -0700, Sagi Grimberg wrote:
>>> Looks good enough to me, especially now that we need to explicitly opt
>>> into polling queues.
>>
>> Cool, so unless we have any objections, lets let it sit in 5.3?
> 
> Well, the 5.3 merge window is over, I'm not sure how happy Jens would
> be about this new feature.

I'm most likely doing a later pull this merge window, so if it's
important and not super involved, we can probably sneak it in without
too much fuss.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
