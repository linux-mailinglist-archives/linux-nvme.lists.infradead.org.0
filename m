Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426021F70C5
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 01:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJXhdm6NWa4Z25peIHXbsFm5AD04HpG7ljdmO0ny2ZM=; b=VSHs406toyvy/G
	vcCLGZk0XiQdL6nQyh3gh23873PaHxThMdH+oeKkqpe5o0/JTybY3RYTnrNlPjZGx6bTFWpuoIeoW
	A22D1C5eFRpxs4OSn/k+n+25ltR403kbXfhoh88NXovGVY9c+MBdt7iPd0u8hHvibTDMDNAlYzmh5
	X4yVkmn6z3vm98SqwYV68n9oCPM6EOkhRjz6d3IeGqYckF+unlRMXiMJSluhK95DP5OEe6hdOmlGh
	yMarK0FkrCxJTGKEreY/TurF8NvyedkJrMqpds6dng9OE0TKuqLlFMsthleoABOMDVF/wO3HyuMY0
	HyXkk1eUjHEBdOm+fw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWPj-00082y-Ec; Thu, 11 Jun 2020 23:15:15 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWPV-0007Zt-7v
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 23:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rIUgVXxvzfu5SKxDzXpSuKU5d3tG9aRNXyTtF3+t6ng=; b=ZUkJgIb23p8Muz3mTI1uxW06AC
 ly+hkxXBSh+nnVOogG5wTHatZBMHbhnVLG4zhP8efP8FPZ0iXiFOMxV8Z/aBrBx27j7m1PacFqQPV
 T/aQ+hCUzqDP24QoJsARjin7+hCSeLTWDRRZTi/eYaHyXGHiS+XWGWY/UZ/BgbcK5BhJ45clbiwCZ
 mWfuIWXkrfuKxpiMQnt7qOEGlUyDCwHQLpKZOQ+Ox6Kt5RCCAurwpp614a4pUyHCf/AtRLG+g+brx
 dnVHGevGM5lEKLzDUCUOFqsWvBTZgIPn54U9982w9RU2xIEY3ba5Ml8IM8eYC7Fvg8MCn7ath7qBT
 eHvQpJ0Q==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjWPN-0001pB-PY; Thu, 11 Jun 2020 17:14:55 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200514172253.6445-1-logang@deltatee.com>
 <20200514172253.6445-9-logang@deltatee.com>
 <BYAPR04MB4965E830CF6FDEE90FBC950B86800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <36ea5fb0-ff95-fa27-0659-84c91f6b0587@deltatee.com>
Date: Thu, 11 Jun 2020 17:14:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965E830CF6FDEE90FBC950B86800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_URI_HASH,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Subject: Re: [PATCH v13 8/9] nvmet-passthru: Add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_161501_281513_4DE547DF 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 5:05 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> +	if (subsys->nr_namespaces) {
>> +		pr_info("cannot enable both passthru and regular namespaces for a single subsystem");
> 
> Let's try and keep the error message witin 80 char per line or split the
> message into two pr_info() calls,how about this ?
> 
> 
> pr_info("cannot enable passthru & regular namespaces\n")

Honestly, I think that is too brief. The error message is only 74 chars
and there's a long standing exception for long lines in the kernel for
printks. Even Linus has recently suggested that keeping to the 80 char
limit is not recommended when it harms readability (though I don't
generally agree with this 100%)[1].

Logan

[1]
https://lwn.net/ml/linux-kernel/CAHk-=wjR0H3+2ba0UUWwoYzYBH0GX9yTf5dj2MZyo0xvyzvJnA@mail.gmail.com/

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
