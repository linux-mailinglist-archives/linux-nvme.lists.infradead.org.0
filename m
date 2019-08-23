Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74629A5CF
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 04:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UFDZXXwXBjel8aAc0Ij794gCQetQ89KzDmzr2WwiCXw=; b=S+EMZXH150ggPRvWRhyobKpjF
	3t7Y1w6qlDBDnIzWCJiJiF3V9P7qZ+93+muXRwJBPjLlxpW6hutjuqF1CSPQCuG2DtyYDdEWTL9Xi
	/NClQVetTTui7uG4NKO84adiY0jVdDmJGM9EZ0DBjOgeqN0p/ZLYGP2ksZrH6TukVwgtpitvU316T
	Gd/tJzAQAGCYcGSFQqEe2KJlMPI4Q3GaS/N+0/R4sHKM3wNWpnfLcjV4A6PcMu14EbtXT6rAtJM+4
	/O+RWb1icsx6s4R7t3DMDSjWV20ib+y8NRttTduqVrieL4AHXrwMFc9Eo7gp6+7XadSqI87azlFh3
	6i+CQ0rqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zgk-0008Vy-B7; Fri, 23 Aug 2019 02:52:30 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zgZ-0008Ve-KK
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 02:52:20 +0000
Received: by mail-pl1-f196.google.com with SMTP id z3so4683845pln.6
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 19:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vsjEFYHyrGgVCCvRlXGASNKdZOa3t1osr8ZE4zyjGFA=;
 b=OcnukTECGtMtYTxbLqHtwI4xRvmagGddryVN63WxNNJCTrT3pXwza/P5TD0tJP2sV1
 e6r6MBz0GdDlEUyzqWNrbiJHSDbOUq50akWfdy411FZTtRFeLjqRzi0/zQ3jSaYiZUhn
 beh6DyC16RqqpjjC6/Objtzv+jKVHQcHwtDA+0Zv7RRVuL0LV80eWZ/VUYPCQAR+fgnf
 IRQapNoaC/XuYsgbCdnOe3DlAlAv6fPXptQK2wHaErT7HJLygmU8YKPPrBnwLUuSNXAp
 D+wat/OKfXQqludaroageOLNMf3CqOXys1qgYJlRdsNRDp+YvrEjI2MIVUthLGZsAIGp
 tRmg==
X-Gm-Message-State: APjAAAXo2pkHEsezh3ks2olGr0G7asAT63ERh5ro6jUVK/ftcublP//f
 q0NXVXkH0Enj8rmn9+JLxhs=
X-Google-Smtp-Source: APXvYqzYllyu+AowB9AkQJiIriO5jx5po3tyFxRYIlq4oot4Ib4PM/wOMPVf1zzBqf1XJeoreiOXlg==
X-Received: by 2002:a17:902:8f85:: with SMTP id
 z5mr2204532plo.328.1566528738795; 
 Thu, 22 Aug 2019 19:52:18 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id d189sm838746pfd.165.2019.08.22.19.52.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 19:52:18 -0700 (PDT)
Subject: Re: [PATCH v4 2/4] nvme-pci: Add support for variable IO SQ element
 size
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Christoph Hellwig <hch@lst.de>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <20190807075122.6247-3-benh@kernel.crashing.org>
 <20190822002818.GA10391@lst.de>
 <87e1fea1c297ef98f989175b3041c69e8b7de020.camel@kernel.crashing.org>
 <4fc11568-73fe-c8b5-ac29-d49daee9abad@grimberg.me>
 <fb5aa2db6b54edab69a8abad254b346dd3d7b205.camel@kernel.crashing.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8545a898-e80c-5ab6-6f9f-f351955db5f0@grimberg.me>
Date: Thu, 22 Aug 2019 19:52:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fb5aa2db6b54edab69a8abad254b346dd3d7b205.camel@kernel.crashing.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_195219_664168_914DC070 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I'll fix it. Note that I'm going to take it out of the tree soon
>> because it will have conflicts with Jens for-5.4/block, so we
>> will send it to Jens after the initial merge window, after he
>> rebases off of Linus.
> 
> Conflicts too hard to fixup at merge time ? Otherwise I could just
> rebase on top of Jens and put in a topic branch...

The quirk enumeration conflicts with 5.3-rc. Not a big deal, just
thought it'd be easier to handle that way.

Rebasing on top of Jens won't help because his for-5.4/block which
does not have the rc code yet.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
