Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C416145AC8
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Jan 2020 18:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wk2NIeWuDrz6VQC9Os7A/D0rsHyEScG65hVQgFOk4+A=; b=M73cI3fqYA0CuE
	jFBdFcdvn7qzBxjLXMI37zST2/t6XF7neStoMOeTQqBU0n3l+7HbOGp3V2+BjccGxpU9Ac29xSSz+
	CH5DA1giUcZz1JnmMAcunAJlUn8BojqFKuAyPce0xqWM7WPSn7BT0Yuh54vt7jXqvfUxoWX1j4wW2
	PwIwgpOuMQyMnVCX8Zl/enwJwB8INCtaYDmfnmulBQg7vs2Q8nZE4+70eqTlYT0T/0bFgrJnTJHje
	DWAR9KBPaDJ9WiCxH9R8habxx8kSRs8Ana5tb/P+8rsq7KObX+DuyFFvbrvdVby4BodjoiRIeV70w
	MZZjjyTYgFni6lxP9HXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJl3-0004SJ-Sy; Wed, 22 Jan 2020 17:25:37 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJku-0004OB-Mg
 for linux-nvme@lists.infradead.org; Wed, 22 Jan 2020 17:25:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 09:25:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="400074140"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 22 Jan 2020 09:25:27 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jan 2020 09:25:27 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.100]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.36]) with mapi id 14.03.0439.000;
 Wed, 22 Jan 2020 09:25:27 -0800
From: "Derrick, Jonathan" <jonathan.derrick@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme/pci: Add sleep quirk for Samsung and Toshiba drives
Thread-Topic: [PATCH] nvme/pci: Add sleep quirk for Samsung and Toshiba drives
Thread-Index: AQHV0JE8PJxAY0HnKU6GNvS3A/cVVaf3dteA
Date: Wed, 22 Jan 2020 17:25:26 +0000
Message-ID: <d74ae02c0a560973fda9b35acc5e5f16e1438fac.camel@intel.com>
References: <20200121193012.29360-1-jonathan.derrick@intel.com>
In-Reply-To: <20200121193012.29360-1-jonathan.derrick@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.4.211]
Content-ID: <EF680A43C16FD7429C6BD1861376ABCE@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_092528_810839_2BB51528 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "N, Shyjumon" <shyjumon.n@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "axboe@fb.com" <axboe@fb.com>, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2020-01-21 at 12:30 -0700, Jon Derrick wrote:
> From: shyjumon <shyjumon.n@intel.com>
> 
> From: Shyjumon N <shyjumon.n@intel.com>
> 
> The Samsung SSD SM981/PM981 and Toshiba SSD KBG40ZNT256G on the Lenovo
> C640 platform experience runtime resume issues when the SSDs are kept in
> sleep/suspend mode for long time.
> 
> This patch applies the 'Simple Suspend' quirk to these configurations.
> With this patch, the issue had not been observed in a 1+ day test.
> 
> Signed-off-by: Jon Derrick <jonathan.derrick@intel.com>
> [jonathan.derrick: fix up commit message]
> Signed-off-by: Shyjumon N <shyjumon.n@intel.com>

Sorry the signoff ordering is reversed here. Should be Shyjumon first.

That being said, I wonder if there's something else the driver should
be doing for the whole range of devices and platform combos that seem
to require similar pm quirks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
