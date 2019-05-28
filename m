Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2292CF98
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TbCLE5Eq6i8RXqa6bUtCBYJvEx/1moY+ejusjy32P/Y=; b=Yr8XL0zgtzogisDZ88hTP1fms
	TAUH0DGrEAeADlvHZyFu290sGhbr05l6rvQ/oUaxPtFJgMxGGCdWFmjaDYPO6IZIaQ3pYkyelZD+N
	99B/5JWyjM/+ZjLdM9AQn5QNo6uwBrFeVl46UbOw4sft2LHSPfo7l/cSIQbkKNXDQkQZRPNfB03dQ
	I0fw21GImhcgd1vlwyUebAOCycrv8f+9Dv5m02OHUZCxsN6YT4lxV66laDsnnVy1uRwcCF1SD/pbJ
	MqMPzyYvXxhjpurlfuRKeET0cG/zZWPTdojU5OoUbjKnntRKHrUNXD+T9+CnOXmLEbj5hxz5ZzJgj
	qCqC5OdyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhu8-0007vW-7a; Tue, 28 May 2019 19:37:00 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhu3-0007v1-J4
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:36:56 +0000
Received: by mail-pg1-f195.google.com with SMTP id w34so6917319pga.12
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 12:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DSmX0/Y2XPL9quSW1mMzb1HvcmiyQ5FEmo4zs82kaAg=;
 b=CUcJiK2aVOAnQbXHiwokzhjkxrf+CzilRGXl34vIn1+SBAeqTyhmZbYvt9f7FD0RvW
 iLMLWtq0d/6m6BFDarGDyGSfaDXuXboTDhCH54T3+DcFGVjlkkKNTcCrYmrpEJKVej+p
 MUIt0F7S9UGivJ827mH1UGebxW663zFQaqKxKhza4ztaujNHqja8Z0y6oW5cZ30rud5c
 CxDfPziJfu1LZ+8mX0URx7mfxFiqC6dSGEUwIZ9hqy8jVxMiRKTVtKGA57jDHMD/yPJI
 1jlZJ6suZiZSHazu4nyDTA8G1fWfu9WSBLGYpfYiYzq88UNoXw20VbCDDH9wtz6RLWti
 1z3A==
X-Gm-Message-State: APjAAAU6R2oFuQhu1zL+Mmm56sVVcvgyyBeYkDA7N93xfaK4i4RH+ubN
 4DBYWjrroFNVNEQGKBPUPoA=
X-Google-Smtp-Source: APXvYqwr9zboygs5kqjgomu2rwMBjLpFyhuSVyVtnXXtXq1a27GYIaH/9OSHN9DjHj2dK8qi+soWmw==
X-Received: by 2002:a63:ed16:: with SMTP id d22mr134096119pgi.35.1559072213776; 
 Tue, 28 May 2019 12:36:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id v39sm5588710pjb.3.2019.05.28.12.36.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:36:52 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
 <ceb1744a-cc68-9588-bd07-d3060630e857@mellanox.com>
 <724732d9-2ea2-e349-435b-ae664692b565@grimberg.me>
 <77b99fb1-8996-52bf-1e6f-f2fee9216a2e@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bfff9f16-6893-2324-9b64-34bd69e5459e@grimberg.me>
Date: Tue, 28 May 2019 12:36:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <77b99fb1-8996-52bf-1e6f-f2fee9216a2e@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_123655_629371_26079F40 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I'm getting the feeling that we need to map the qe's in queue_rq
>> and unmap in complete_rq. I don't see any other way around it because
>> on the bonding use-case we need to wipe out all of the device related
>> resources because we need to have it teardown and be prepared to get
>> a different device on the next (re)connect.
> 
> Yes, thought using block layer iter but in case it won't hurt 
> performance I'll do it in queue_rq/complete_rq.
> 
> Let me check that...

OK,

So lets just do that instead, and not try to get too smart with device
referencing...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
