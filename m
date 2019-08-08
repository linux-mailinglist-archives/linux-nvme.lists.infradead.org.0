Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABEE86E92
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4IQmA5vmXulP0mw/6XWkdABK29rMMlJLQqk1TpEzhAI=; b=udaFDIKArIWJiFHitpg7BzFIY
	yyx0Q+Nw8FNnjBy8O4Uvp5evHJLJAJ6lbCKhp2347qXbQf8ud8oVVlsrGz0yLisr22dv11jMFtTXn
	EzqE7Q+RKiJ755Ga4RnvKFlhYTX1n2LvdpccA2QA9vTgq3FFkx5Ulmy6pD322gMO0WEPxxTUKnUPY
	Dvyp4lwMveF/sDtXoxz2zYp+Z3fUd7ooMbjTSg8346UXqTXA3h4EzLJzi42kTDJqCf25lsJJOAtuM
	QTj/u5f00Bq/n9KOLMtAFunmmpvBrh0tDDTiFDZAVhk2o9n46ixwwlJ6hjmDBOTsWREQmYUL+wvKo
	gbA9ASeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsCe-0001wX-M7; Thu, 08 Aug 2019 23:52:16 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsCZ-0001wE-TB
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:52:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id d17so125936789oth.5
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:52:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BuINmdazurXK5+WrNJ+ko6c/f8RaM+9Qyl91UH0I+j4=;
 b=j/OdwhvMEvQyY6oivkqZbZyw9JtM+dTEEDTIguxv9peWsfhwzCoc60+KnDhmOEpFUh
 UT8mMlz7DvCb94J4gKSsE2aHaWe5gNRz4bxO6zdd2AZQPP+/S29vV5FrMmDpCq71qbCc
 uh/c5BY91mR9YfY9g48YsOtFOJbfSgaMY4bgeEEY+UvVusbEtS5icfZJwmYZLU5XsREx
 J99qh0F5WYaDKJA+Vh4aZG/7/lK6tHHnHp9d1TIQXYu3sZQT8LJ33s3P/UksJY0LSrO5
 kuy/jiNAOi5DkkvdNhl1xa5eqd7rFwjMoh13iZ321J2mSPZNKJR5+nGuQdqyhc3hY82k
 ZUqg==
X-Gm-Message-State: APjAAAVzNiwDOata9MBc/7aoUqa2nhuTAOFK6c0BSrP5q9eWt2P4ONAy
 +v3N/1SyU4oS14t60TsO3H/dSKaT
X-Google-Smtp-Source: APXvYqyWQgS9fIp7TU4wimr49b/zUxZEM2Sj2YO/+yAesfN7o7AKZlemB5ZB2XLZqatez/v/u+m2aA==
X-Received: by 2002:a9d:458f:: with SMTP id x15mr14420046ote.314.1565308331036; 
 Thu, 08 Aug 2019 16:52:11 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x19sm32064757oto.42.2019.08.08.16.52.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:52:10 -0700 (PDT)
Subject: Re: [PATCH v4 0/4] nvme-pci: Support for Apple 201+ (T2 chip)
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-nvme@lists.infradead.org
References: <20190807075122.6247-1-benh@kernel.crashing.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ae14ef26-b4a5-1ef2-e2a9-581e813893fe@grimberg.me>
Date: Thu, 8 Aug 2019 16:52:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807075122.6247-1-benh@kernel.crashing.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_165211_944547_9AE5A673 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, Paul Pawlowski <paul@mrarm.io>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This series combines the original series and an updated version of the
> shared tags patch, and is rebased on nvme-5.4.
> 
> This adds support for the controller found in recent Apple machines
> which is basically a SW emulated NVME controller in the T2 chip.
> 
> The original reverse engineering work was done by
> Paul Pawlowski <paul@mrarm.io>.

Thanks, pulled to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
