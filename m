Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F254D37FE0
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQKpv4O1AbvGf5hfe77qM0OuQVj6z2PRi7wGlGlP6p8=; b=DDmMfD07aRQPrfIGYRtknyqg9
	qubMNv13nNz8VzNcH5X5TZbEQNpUsutxF83LRtRyU5qSEqAdx2KHTxhf4/pP4sDg+AkS7T1UUL+FX
	2b+8ZT10X1v9mm8A1GcYy0LaTRyYrQdrfNKLYqqZdX2HrvZVmEmnggHjA/B4agw5E4WJgaMgJvXR3
	oEr2Ktkz0mMVaedSC/yBAfn/zoyccDFWufkUPpLhy0dPdC/oW/qf/n/RoDP9fAwlZHyguoAedadS+
	axftQuVGcha43K9UdsHXPj2KdBlYDNy8uSUy7KrVGjQGPDIb3O7Ccr1sWAqeClTa4hZ3pca5H3Zro
	+HwDL8Udg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ0FP-0005BR-5j; Thu, 06 Jun 2019 21:48:35 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0FI-0005Ak-6V
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:48:29 +0000
Received: by mail-pg1-f193.google.com with SMTP id e6so2080357pgd.9
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 14:48:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VybXJrWztQHjKxrdIJGnoij5BzT/hKBd36z1nzjMUzU=;
 b=hRzMXAyMdzC91cexgh+zM8SzTvpIAWTwZKormxO1H88k/pNw18+Qew0WK5mJaGCKor
 REP8LJdqSuy3F+gqB72y90sUCIe0+MpGa/OPDiAExUaMRT9wkcKDpjdEXSxSHCi+lxz+
 SHpBz49V67FIXAqkUVSyhsNJXHi2KzG56Y6bWez0PfdIwvU3WZ6ClrEUQpJV1lDWY0bh
 IzfvN0LrFYsTSIHfoB/SocN8l/6G79TDH/DoVT3iLQ0ttfyUlylG59HE0Y1CsgQ1avxz
 1NTlgIAMsO37ruMYZKAAc/A6TJW89NciIQisR2RNAjymY33Ly6Wyh2Pxr9tWP4/28k/l
 6teg==
X-Gm-Message-State: APjAAAW5sM8TbA9/AvuEeP/cSN0Au4yx3rIPugaAtnqxMYz9MGEj6WdQ
 FIAxVnv1KMhTOTyfuXA+IOyB01g/
X-Google-Smtp-Source: APXvYqwQVH22F+He/FXpbjQWHyon9kXk2Y3486yIqmTCig6QbfadPu3KazZBYBktb5QDY3wqNUqDbQ==
X-Received: by 2002:a63:4f07:: with SMTP id d7mr583516pgb.77.1559857706765;
 Thu, 06 Jun 2019 14:48:26 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id n35sm132588pgl.44.2019.06.06.14.48.25
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 14:48:26 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
 <BYAPR04MB5749E9F546E6EA5415BEB20686170@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <969c0a9c-2e5a-b609-5c3b-411f9f2bf6ca@acm.org>
Date: Thu, 6 Jun 2019 14:48:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5749E9F546E6EA5415BEB20686170@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_144828_589875_BF48A9A3 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/6/19 2:42 PM, Chaitanya Kulkarni wrote:
> Looks good. One quick question though do you actually have a controller
> on which you have tested this feature ?

Hi Chaitanya,

 From the cover letter of this patch series: "These patches
compile correctly but have not been tested in any other way."

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
