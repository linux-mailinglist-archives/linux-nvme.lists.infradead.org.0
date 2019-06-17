Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1102348A5E
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 19:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O5Wcm5tLsO6zrFV9Mg3uK8zuDgpwBYJr21FzIVFyL0k=; b=M546VFxLKQfnq41o+9JmF1ron
	O4CgDTW7n20xmV9oKAmuV2Ds7/noYzVrzqUnOm7VqRORoXaCGLok6m7VAcOh5hV357KUMdD9ojBbm
	N9u0qtlkNm8AayhIvmudF4Gt9b3IubLmeaCpGthlGDzoP5TKj600MWdEMToFuKj/2ocWpZjGd4L7P
	M+AsanbaXqpPvvP5qOXbwtLST96V1+3XRx7uEC4bG4SjJTpOTA3A17DVSTq18YGeloNquCI11gyJy
	PNyyoVGuW/w84S7xp+Ux01M7XDWh+F3OWazLaTJRarqjRnL1uZlCCLhjDm5cdaCHqe7Q10SDUJFr8
	2UHABf5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvbz-0003Y8-1d; Mon, 17 Jun 2019 17:40:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvbo-0003Xm-Bx
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 17:39:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id 65so7589730oid.13
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 10:39:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MebAnNw9lqBPqioYy4Y0TG3qheCRvq/c2Vqw7+lP4LA=;
 b=MaoOkZ21gHdLMb/yRVHk0i2RuiZ+2iVDVapDxnkrDgU1A0F0Jhr1Bon4L31juApYrW
 wgZ6ZkhBLB7igE+S2pCrVWJeXoR4iVCA7xTzRqEvz4FKvfGqSzDAsxwpAVHw/jt7Iba/
 2U18M/kn5TJ2y1cs6N31x6d6tAG9v68W8zfbIZqYd8SlzFhhWEG2G7J5mznTdR4ilOJr
 3gwtK5dMRmKISAx6ON8rHs12ZoKmpA9orEyKbGyvrkELMmZJHOk1jt7AZsUOQWl/9hih
 wkr7TCSZCMUjgILdTTp4+uATATy1Dvoc0w+ydYStnGBAmnv4346M2Ig+26uas63FQTXM
 uh9w==
X-Gm-Message-State: APjAAAWDejZfj8rKd2PQUJ5hkP8pbJSmGNEQX69t53pxjt1DGoWWi2AA
 wLQd29j0oRnh7eI2kb4z8dk=
X-Google-Smtp-Source: APXvYqwk/5KuTatoAbU/ytfGPSJ0Y3DQQnOXhUS0Dq4bus0GybDZChckHre3P66LBDR6MBL8CCZ9gg==
X-Received: by 2002:aca:f002:: with SMTP id o2mr3274oih.31.1560793193522;
 Mon, 17 Jun 2019 10:39:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a4sm2928032otp.72.2019.06.17.10.39.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 10:39:52 -0700 (PDT)
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
 <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <CGME20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988@epcms2p1>
 <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
 <667f4f9e-9356-44fb-d7fd-14d00b5393ea@grimberg.me>
 <20190612122646.GA32660@minwooim-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4a7a6044-3de6-c099-bdbd-02065c9ef6cb@grimberg.me>
Date: Mon, 17 Jun 2019 10:39:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612122646.GA32660@minwooim-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_103956_413193_0760E653 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Question, this is a case where the numrec is different but the genctr is
>> the same? I think we need to fail if the genctr is the same, but we need
>> to start over if the genctr is different.
> 
> This is the case where you pointed it out.  But we don't know if
> genctr is different or not because we don't have any notifying code
> in nvmf_get_log_page_discovery().  Even genctr is different but the
> retries count is exhausted to max_retries, it does not notify this
> situation to the caller to retry it.
> 
> Would you mind if the following patch is added to this series?  If not, we
> need to change the design concept which tries to avoid infinite loop that
> had been introduced by Hannes's commit 3cbcd165b47.

Thats fine, also if the numrec is different then it should be an error
in this case I think.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
