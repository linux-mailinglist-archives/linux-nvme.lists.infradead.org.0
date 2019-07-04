Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B385E5FE03
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 23:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgggd4L7nlUImxKebekFc/zFPnZJ7LG5SnTUchZV3Mo=; b=DVFX4o8w3zg0Wl
	W3u0r4Qe5MQBVel+GYK7XMcXV0fhoFILoTFw5+ZBWMaX4PHOgtlgdz3+o1pYOyr6fGOQAuyv+id1X
	D5tfBrnTkX2QLjhCQPqnrna+5NAOWDbLq9niohIxFtnuJqJHwuWZI2IaYaPOMaT33TXHWfUkvtXKH
	dMJIE5mC8lwKC28h6FmmF+Ep1k5S+9WC7L1hAoogG0Bdu9ibwKikM03Sc378/Hu0O1KuYqpgJBKEe
	F/kfYBgO/vjX7t10II3YrWp6Nn0uiM4wIrP9wwWSGiYMHHA2h4PfkBtW3etheQGm8WwKvrEOkG+OV
	bkrQRfnSHDfBIUzTY4Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj8rm-0000b3-Ih; Thu, 04 Jul 2019 21:02:06 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj8re-0000ak-5n
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 21:01:59 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hj8rW-0003V8-PO; Thu, 04 Jul 2019 15:01:51 -0600
To: Max Gurtovoy <maxg@mellanox.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-2-logang@deltatee.com>
 <786259e6-ffed-8db3-74d0-71ed5a760079@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <d79a4c2d-9326-2805-b2a2-ca265ab2a717@deltatee.com>
Date: Thu, 4 Jul 2019 15:01:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <786259e6-ffed-8db3-74d0-71ed5a760079@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 maxg@mellanox.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v2 1/2] nvmet: Fix use-after-free bug when a port is
 removed
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_140158_543752_77D6489B 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-04 3:00 p.m., Max Gurtovoy wrote:
> Hi Logan,
> 
> On 7/4/2019 2:03 AM, Logan Gunthorpe wrote:
>> When a port is removed through configfs, any connected controllers
>> are still active and can still send commands. This causes a
>> use-after-free bug which is detected by KASAN for any admin command
>> that dereferences req->port (like in nvmet_execute_identify_ctrl).
>>
>> To fix this, disconnect all active controllers when a subsystem is
>> removed from a port. This ensures there are no active controllers
>> when the port is eventually removed.
> 
> so now we are enforcing controller existence with port configfs, right ?
> sounds reasonable.

Correct.

> Did you run your patches with other transport (RDMA/TCP/FC) ?

Just RDMA and loop. I suppose I could test with TCP but I don't have FC
hardware.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
