Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32DB1088E1
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 07:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2vRUJeScrfmMpCcbliVGe7T+FMxHQxi4mYWJl/UXgM=; b=nVCSr2oso4HW/O
	Czl59zwMdfx/OZNlkIfdh7Z+wgVMd7S5XjYlafmJKM532eD1gM83hv9buqa81r6VLE9zcqA2YdV1U
	+SF/Ulx3fiP+gxDxh8KBE9CVMttLiaCPPgZIHEkoiyc3NFHYCjSx5UDgEBV5WaUxm/pLPSTkv+xc2
	LFrnIO1p2bBUc5tqISqa8g1Zdd+dryp5w4nKmD+UJZ5Zwd4Yl+7PTHx8jtiUEZbNa/ORfTuic3fm8
	aE/HvL2B53cB9MxhVTQvpbMHF19Hg0EIIYG2JLa65L0xDvVczpwsCyXKx5GqvLGNTHC2wmAbhd7gC
	enkvxGbXsoHCTRxCqL1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ8L8-0006I5-GQ; Mon, 25 Nov 2019 06:59:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ8L3-0006H9-SD
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 06:59:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5350E68BFE; Mon, 25 Nov 2019 07:59:07 +0100 (CET)
Date: Mon, 25 Nov 2019 07:59:07 +0100
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 7/8] nvme: hwmon: switch to use <linux/temperature.h>
 helpers
Message-ID: <20191125065907.GA29695@lst.de>
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-8-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574604530-9024-8-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_225914_062905_1897A2DD 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-hwmon@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Eduardo Valentin <edubezval@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Nov 24, 2019 at 11:08:49PM +0900, Akinobu Mita wrote:
> This switches the nvme driver to use kelvin_to_millicelsius() and
> millicelsius_to_kelvin() in <linux/temperature.h>.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
