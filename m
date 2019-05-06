Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D992815092
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 17:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AyaEyW69hos055XuLmDb79HwwROfWsTMqEIbXdPWOR4=; b=Iqug3d8VAZPXNajG/xb90e8Nm
	RXRGIIyjIqxzIxzmWEkjNkLToSVXgPqkiU+vvqkfytXcAx4DtGL34w6ClQQCWjg2qV1L3UdO1WHCC
	uFTiSe2PxCv6+gslIiEGmsVvMLkfJRDm3FwKcgpz5ZPH45Hnr1/cVt1AsKHq18noWkjNAfroz+wfF
	eGB0CXWEZExxT3evblg2UPxK2AUk/oTe8InUdEWNYMQwvqyeV95r3r70GlODA34q1DidMUSF6KrJ+
	TQaSjppXWABPfsY7oECNm7EiaQFNaH2DCu5YOEvqbIiJ1TMoIttUw0qX3BFHHnAHK9e21XmZOuf5v
	8yms/uXdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfp8-0004l3-DZ; Mon, 06 May 2019 15:46:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfp4-0004kj-6Z
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 15:46:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi2so6553205plb.13
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 08:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K365ogCN1dlAvrdZkjO6i/VgMZki/WwWtaN6UTLkdhI=;
 b=Hi1AW6tXbwHy5onSHwJUEUlEqBQqfyL4DGjfKNZVrjCrFCOIHkbqpouRty/C198uU1
 P8z5FyxHSsJgpfEKQca0BJ2lEm5Yj9QeZyoz0TQKBvENUl7zm+jv7Ysa+dS0W99FSSr9
 +6+USdh/qJ7ZzERgad85BKSbZQ4/HvmwRx0p3Spyb69CMLhR2QCFKNRqL2MBdhzNu4J+
 JSeKvDCTAXPq1G5xjgeeD8sd4KT2eu/xSxWSXpxZYsxpWE2TD7cB1UqEUEEdwOilVXQl
 kBqRwdlaurAWARclQ1PrMI994VhiQjJ9Q2lRFYiKranb/e3jvXDIlVmXOMax5w6hB6Yc
 Cg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K365ogCN1dlAvrdZkjO6i/VgMZki/WwWtaN6UTLkdhI=;
 b=k3CBzksPXVz31TC3BPYIY0EDPuOq04lOIh7fKWgR62ASpSmNWvfv75bVmFp1BBBKHg
 6j1zCgGd4ueJbrZKD7OAM+s8y87VS8fI7MzT91wfUYyisAaTzKiRHqkm9U2491IKDXot
 TCEy5vnEPy6i5UNnzr6XP7NxV8pSdCaZS//BcsXcn2guRMYu446n3wY1Bsxc18fEsYeC
 UuwzwxpwUEJqQ8u+7Y1Xw3e8D0zMeRRbwC/vxWt6Vpz9wb3FLZl+DRe48tD5/rKfaL64
 Ps8HspGIH7ZeYBTjlencm30lBw3h59U67d0ze2998r3cqWmZa+8i5RJEnLrq3/aMh7gw
 sQAQ==
X-Gm-Message-State: APjAAAWijQXheqojEePb7j57g1nUM0cr6CA5AJqxmY7kjZgfQaRczyTF
 EB5fpchmvuQ0lyND9DGv7vg=
X-Google-Smtp-Source: APXvYqw9UZ8/79NFrpoMxZIZ0NgsWJYsn9PeJRzLQOH/pRkXzbK3QjtRoGs/ovq1IHCJzTN195a16A==
X-Received: by 2002:a17:902:b715:: with SMTP id
 d21mr33349909pls.103.1557157593570; 
 Mon, 06 May 2019 08:46:33 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id n26sm22774218pfi.165.2019.05.06.08.46.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 08:46:32 -0700 (PDT)
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
To: Keith Busch <kbusch@kernel.org>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
 <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
 <20190506151727.GB2164@localhost.localdomain>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <0e3de84b-9b18-4e0b-43db-9a47453a80e4@gmail.com>
Date: Tue, 7 May 2019 00:46:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506151727.GB2164@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084634_266998_31D81FA3 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 12:17 AM, Keith Busch wrote:
> On Tue, May 07, 2019 at 12:07:47AM +0900, Minwoo Im wrote:
>>
>> If don't mind, can I ask how can blk_mq_tagset_busy_iter() make sure that no
>> more requests are coming into this request_queue during this iteration ?
> 
> If a queue is frozen, there can't be any allocated tags, so calling
> blk_mq_tagset_busy_iter for such a queue is a no-op.
> 
> I'm not sure you actually want to freeze in this path though. That may
> block forever if a request needs to be requeued.
> 

Oh, I see.  It seems to need another way to fix this situation instead 
freezing queues.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
