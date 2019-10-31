Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109ABEB178
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 14:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQF6GycreV0xOscN++YGvmbepizcu98hDlSdCLkYSMo=; b=NfmLvjPIjUSd8a
	+PRSJIIDqr+ruUQ4o6lkGftYi0890NTs3LeGmVO4P5qVBszx7dbBMQE7srLoCx7r/cYFBc9xTYDWN
	HKEeHca3QeWYfqmodKNPO9V612veEf2bOOArExOVkUsIzFsQ+ASs5gmGvJKEChe4QY+Tod5RZ42MK
	xsyhUBPzl/7fvApzkXoEzNu1USwcxj+xvsl8Irw1t9HNk6abl9MJPPxtP7yVJhGX+hWce5baWwviM
	xWfiXKqHCy1srRlGWzHh7dQ8nae0387B3UdffDDs+GpTI1KjjEidJKP9vdbOJaSv22si3n/JeOhlU
	GyMYh9frlr1ofRwGcRHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAmo-0001KN-1A; Thu, 31 Oct 2019 13:46:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAmj-0001Jx-1G
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 13:46:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DC96E68C65; Thu, 31 Oct 2019 14:46:42 +0100 (CET)
Date: Thu, 31 Oct 2019 14:46:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
Message-ID: <20191031134642.GC4763@lst.de>
References: <20191029223214.18889-1-linux@roeck-us.net>
 <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
 <20191030140511.GA14252@lst.de>
 <2931487e-2720-fd42-fda0-e47cf89c90c9@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2931487e-2720-fd42-fda0-e47cf89c90c9@roeck-us.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_064645_225754_0B09F888 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 07:54:47PM -0700, Guenter Roeck wrote:
> On 10/30/19 7:05 AM, Christoph Hellwig wrote:
>> On Wed, Oct 30, 2019 at 08:16:48PM +0900, Akinobu Mita wrote:
>>> The nvme_init_identify() can be called multiple time in nvme ctrl's
>>> lifetime (e.g 'nvme reset /dev/nvme*' or suspend/resume paths), so
>>> should we need to prevent nvme_hwmon_init() from registering hwmon
>>> device more than twice?
>>>
>>> In the nvme thermal zone patchset[1], thernal zone is registered in
>>> nvme_init_identify and unregistered in nvme_stop_ctrl().
>>
>> So Guenter said above the thermal subsystem could use the information
>> from hwmon as well.  Does this mean this patch would solve your needs
>> as well?
>>
> Depends on the requirements. Unlike hwmon/iio, we don't have clear
> guidelines describing when thermal vs. hwmon would be a better choice.
> There is some interconnect between thermal and hwmon, but quite often
> it is a one-way street (hwmon devices can easily register thermal
> zones, for thermal zone devices it is a bit more difficult to register
> associated hwmon devices).

I'd like to hear from Akinobu-san if this also solves the thermal zone
use case.  If so I'd be much happier as we at least solve two use cases
with one patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
