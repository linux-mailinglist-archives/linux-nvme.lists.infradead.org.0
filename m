Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0FE1B77F
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMlU7pTFtsBVEEIQrWXiatOybmB/n4xU8nGbDRIgpjw=; b=K4ayU/2z11ALKA
	RZMYCdEX9sNuzEk4TuFIlIkHFrBbHFxJWUpAtMr+MLdlMfKdfbL/WY9mplMa4WDsD0BjzOUa4wtHa
	8/1ebtp6XT1LWTezxs8kKX1jrUQoHTnUBKKVvdHiYcVMpuh60FmgjYVuJ6TMWAyTgAO+KAWsJ2VBS
	y2/j7fM8u6AGJYyzwjpDodK4Hs6zIeBV/gcjjcQx9trKaxrLn+6rKwbKs3PpNlh1VIILflce7mRRT
	thoFhCsV6YnlsoQbgcYjuBQn2k1o210XXbwTpWGKmcRVFkjyRi8O3BoODcFpTz/ptmDk7JhlO1GaY
	7g23eAbO7sewL1UzLqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBQt-0005G5-Q0; Mon, 13 May 2019 13:55:59 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBQo-0005Fe-9C
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 13:55:55 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:55:53 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 13 May 2019 06:55:53 -0700
Date: Mon, 13 May 2019 07:50:31 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
Message-ID: <20190513135031.GC15318@localhost.localdomain>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_065554_374033_AE1E3086 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 08:54:15AM -0700, Akinobu Mita wrote:
> +static void nvme_coredump_logs(struct nvme_dev *dev)
> +{
> +	struct dev_coredumpm_bulk_data *bulk_data;
> +
> +	if (!dev->dumps)
> +		return;
> +
> +	bulk_data = nvme_coredump_alloc(dev, 1);
> +	if (!bulk_data)
> +		return;
> +
> +	if (nvme_coredump_telemetry_log(bulk_data, &dev->ctrl))
> +		dev->num_dumps--;
> +}

You'll need this function to return the same 'int' value from
nvme_coredump_telemetry_log. A negative value here means that the
device didn't produce a response, and that's important to check from
the reset work since you'll need to abort the reset if that happens.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
