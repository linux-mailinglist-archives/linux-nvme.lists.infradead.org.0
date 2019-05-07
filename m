Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8917C1694B
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4bmWrwA3GRvTHhyOA8przc44n8HymnZIsJXPWzLcJLs=; b=qZaKG6fUtos6ofIm5PvKzNN2J
	gTZW2+h/WfUlr16WxXux7ljjZVt5MzaJiiJRO6PcZLXtv+5h2mrJZMi433ma1DvWtYHK/VQ+qzCFz
	i/fS2nqCfC3x4QycqOhdNIs+ryCvXckWKOaKsRH74ga/6yuz5Kvb1aSkJ/7uqPyUt69GLkQnUxpKG
	R2VNr1OMYD8fw39pxMiOnUIF0Jzk9Ls0dQOrvyNy82L5Vgsyt1fChID5d9aGYOx2apCW0ThR5C9QV
	Cc+mo3DB/hL5D9T3GwC6PURWHXqePZ8DcIfyHpcgRk4/CzRrCEh5UdqTZJIRUVlFMYt3QH8ARUOUf
	C5ul0OO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO40C-0000NM-KJ; Tue, 07 May 2019 17:35:40 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO407-0000N1-7C
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:35:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 10:35:29 -0700
Received: from unknown (HELO [10.232.112.171]) ([10.232.112.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 10:35:28 -0700
Subject: Re: [PATCH v2 3/7] devcoredump: allow to create several coredump
 files in one device
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-4-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <aced1953-4ea2-c8b1-9ee9-068e92ae1f8a@intel.com>
Date: Tue, 7 May 2019 11:35:28 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557248314-4238-4-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_103535_312429_089DB2E4 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/7/2019 10:58 AM, Akinobu Mita wrote:
> @@ -292,6 +309,12 @@ void dev_coredumpm(struct device *dev, struct module *owner,
>   	if (device_add(&devcd->devcd_dev))
>   		goto put_device;
>   
> +	for (i = 0; i < devcd->num_files; i++) {
> +		if (device_create_bin_file(&devcd->devcd_dev,
> +					   &devcd->files[i].bin_attr))
> +			/* nothing - some files will be missing */;

Is the conditional necessary if you aren't going to do anything?

> +	}
> +
>   	if (sysfs_create_link(&devcd->devcd_dev.kobj, &dev->kobj,
>   			      "failing_device"))
>   		/* nothing - symlink will be missing */;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
