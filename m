Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6A47D367
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 04:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju2TvhgR4b7tuoxCJ6hZl7emZ0YO70K6hbpjuCd75mI=; b=maIuAD4DjcZEe/
	E6jWmL5lI1n986G1AYDVlZ0WDy8DDq4EOI4MQaPVbUcj+XwjNIwRm21RGC7CgF4RQSVmxyZQTo8PD
	ZMqTGwcjmSqEHMGjixIxkZdlBgk5vhDpI70/5NORcNrRkyzWtxpjh6fQLctujI0w3JZKCasqWjL43
	uQ1rzMCqqfQ361Xgd3drDPfRXaCQycqsbUlcU24jEw0L1XKVLx9rkdbt335sYmGoSzF/qxuWds3dp
	IobTYI9qcoQCSr2pGBCXU1JXJ4RD3UvNhehqtjHhnZhCTcCm0+9wZ11Sadx8ZEomPfInZdIgwTeQM
	jZpqI02PJMLWClGrsyZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht15u-0004M5-I6; Thu, 01 Aug 2019 02:45:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht15o-0004Ko-PE
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 02:45:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so1739244pgn.0
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 19:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WmYyY/zhwaALiUwxBG9Lhlp7lYGriDF7EmsazFZGY5k=;
 b=tZeaK+Fin9OugidlqNuaDg7lN9X+Qwb34fxcdexlhnsnKdWNzNJwvWmhKLht3YIHst
 C2GQvRvU3EYnKi9IV9EihHmknayeGw0RoPXVn2z1Ibs5yrUhEzQXW7L1RbW7LoTSTmXj
 bTvHKBON6fj/qCs6J7QL1N5fFgcP+K6OEAIV+1sjRBxGqwhGmIayTLk2CpHGY6DR4xmb
 wMVytHb8/pAWcE1HP5OagE0EHhiSKIL54zc+bko4LVeK3MVcaznKSP/H7xr7Keob+kFk
 rx5b53HI4h9jFpN28BbrFrKWKTXQX9ugBFh+qCYvVAWjfBzCTibOa7wPTVSKQDuHyTzb
 l7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WmYyY/zhwaALiUwxBG9Lhlp7lYGriDF7EmsazFZGY5k=;
 b=EuEEiIj31xLOq1sgytoF2tIlicghv1WFj12Dgc/Hi+awEnzZD+HKLANhZMm0gHbBiJ
 e5LXXZW+N1aqOx8B38kSjVfIA2DM0mk+TdOsVWsueW2nfY3bgsLhL3nHg2Yp3qlHnIRr
 /CMR241oH/3clBY1YN1/qSPUJ1MhGqujXQ8ucwePpyOXoGHHHQqwwY6/dNkz8pSLPMz2
 FoDd1LYg2XQOVCIl9u0x9aizjkjLcToyvxaf8aCogT1tWtsQ04G6Ww2TyVZ4gKYRUT//
 i5VKZJp5O5LBbWlqeywpQkhuBlKfaEuWCsRyF/HaMPNmwwQ9R/rUJ5lLNkUmOJzpIFIk
 Nn5Q==
X-Gm-Message-State: APjAAAX6kZoGgpbeN88puQ6n9bNqVMun9vXURiJylWppB2L3amKwlmcL
 F/mHjUq1BrCUBPxyWZqVkNY=
X-Google-Smtp-Source: APXvYqyrboRuSQT9Osy6AvPNKcL+fL8O9a1+4Eu7xAh4hLPP2nbg4XdZwtcTMLzzPtahzYjjGDfV8w==
X-Received: by 2002:a65:50c8:: with SMTP id s8mr76934074pgp.339.1564627523613; 
 Wed, 31 Jul 2019 19:45:23 -0700 (PDT)
Received: from [192.168.1.188] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id n17sm73694301pfq.182.2019.07.31.19.45.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 19:45:22 -0700 (PDT)
Subject: Re: [PATCH V2 0/5] blk-mq: wait until completed req's complete fn is
 run
To: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@redhat.com>
References: <20190724034843.10879-1-ming.lei@redhat.com>
 <20190730004525.GB28708@ming.t460p>
 <7eeb2e89-a056-456a-8be3-6edbda83b7bc@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <944c6735-f03e-c055-33d8-fe7f9a760b8a@kernel.dk>
Date: Wed, 31 Jul 2019 20:45:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7eeb2e89-a056-456a-8be3-6edbda83b7bc@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_194524_869773_5F1CCF25 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/31/19 7:15 PM, Sagi Grimberg wrote:
> 
>> Hello Jens, Chritoph and Guys,
>>
>> Ping on this fix.
> 
> Given that this is nvme related, we could feed
> it to jens from the nvme tree.
> Applying to nvme-5.4 tree for now, if Jens picks
> it up, we'll drop it.

It's on my top of list to review, I'd like to take it through
the block tree though. I think that makes the most sense.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
