Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A141EB68A
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 09:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ejgFH4oOMfNkyWewOPaNUiKVHi39uqBPBfDfupbUK2k=; b=ovtnctTGrqKgcOxvc6PjfolJx
	314oJhYMghwX5rKcg5wzzf1bzF+hZhcxPvs65U900Tz7id9qPR973P/kGSWfJW1HNaDcjuaxByyAy
	CYc4rBMbiuXM7e/vikWsbVm7gkdLBmVi4cdFEo6RbBtge6soA+DBExcBFWamXlZECjApXJRQqrWE+
	c6Za0ctZNw9KS56GT5Z44TA/AfPydDLpnN4zRjg/z5Qi8hlKRlz13DWgO5yJh4gIAI/GDiYWs0eiQ
	+kSDkGQaANhQlv/d+dm6jH9F/8gadwruAQhRGNx5I2KsQwxhQZCNUtyJPRskd+wXWkzzNiHvHdKUE
	6eeS5GTMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1K6-00078z-Ay; Tue, 02 Jun 2020 07:26:58 +0000
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1K2-00078X-JP
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 07:26:55 +0000
Received: by mail-pl1-f171.google.com with SMTP id n2so980091pld.13
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jun 2020 00:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DnnlMUE+TVOUifLZ4QeabbiKpcF5jRZhpD73ruxiaGo=;
 b=Bp8/M0Jnd/BIuFOlyicFcllQvzCUzUEDA34zqSoPT1mq9BgcduWfP1A9YLfdBnmF4V
 FFLhBKfn6Jp5ajB284dX+WCmUamsDca3qc0Y7vdhmRw9CgXV9sDVeKo4Hdi6DQ1J5qrW
 YiOEyrHIdEz96smSNr4Qfy2qRDLIkfL+jc0x60xUYRO5twn+OmQwlrj+SvWLzKCnt4+1
 2ClA5gB7W97cNjaq1uu4ECVQNRygzo1x0UviCI+sw2SiPyc5sKCFSCI1CnFa0tdqpREN
 WmtHyYAdI4jnTf8teJv1NxGQsAiM72YKjyjDSjju2QqzlyH/LLvD3QeAmDNrZ/j+yZYO
 x0pg==
X-Gm-Message-State: AOAM5322QSYcMeP05n4lkWdtnZu+VNU4gt6hHETR0Vl8kvebuRlgQrDo
 WaoxYT0CHqlGu8iY7LEGIuWxFeFZdb8=
X-Google-Smtp-Source: ABdhPJxuTq94T7AD5zSl6xIefCGInF0auT1syCdQlZf1w9AqkjHy1P6x5bbiY4Q97hqjFFbKXJ2ctQ==
X-Received: by 2002:a17:902:aa92:: with SMTP id
 d18mr24352296plr.127.1591082812364; 
 Tue, 02 Jun 2020 00:26:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:cc02:c83a:8bd6:1cfd?
 ([2601:647:4802:9070:cc02:c83a:8bd6:1cfd])
 by smtp.gmail.com with ESMTPSA id h7sm1430705pgn.60.2020.06.02.00.26.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 00:26:51 -0700 (PDT)
Subject: Re: [bug report] nvmet-tcp: Memory leak when connecting /
 disconnecting to the target
To: Victor Gladkov <Victor.Gladkov@kioxia.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <d9e18f6916a24a5a921ebbf5ec5e0249@kioxia.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <29ca9be1-22d3-dba6-b2d1-648b27e471cc@grimberg.me>
Date: Tue, 2 Jun 2020 00:26:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d9e18f6916a24a5a921ebbf5ec5e0249@kioxia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_002654_636877_2CD69BC3 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> [Environment]
> Branch: nvme-5.7
> Commit: 9210c075cef29c1f764b4252f93105103bdfb292

Hi, can you please provide kmemleak output for this test case?

Is this specific to nvmet-tcp? what about nvmet-rdma?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
