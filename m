Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA6420FF6
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 23:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=beD/mw5ICRAvOEJjX2tLG534PrtPc/LEShAA7EcwIwM=; b=WpiKpimqrDJwBJUqxlEsfHAOG
	XibivF4aqfKK98b39yvvuFWvvRqM76FmIk1F2K5PfD3hggf9ZS7KFVtt8ZZ5jDftH//D0I+6JzOFL
	HA7+CL+Rczk++u1ezPLNUcnDm5aM5rmXrJJs0WRavSe10jsb5UID3iEfXIUDB+e6nFJh1FUT15Fi6
	MesG/a+9EJxy2MoVjKS96p2aLCyind9q54xYHoYOX/vakrfKgEYR8VJ5YHuIZmy113mR+22T6EWQE
	Znhw8hl1c11zQK9soB+/5vJcDdt1o4au6Tp0JV/HFM+2qWmESNXC5aUbF60VFi14nGAwjLuEVxZlt
	OM9As7wyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRNpV-0003LG-Kc; Thu, 16 May 2019 21:22:21 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRNpP-0003Kc-Fr
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 21:22:16 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 14:22:14 -0700
Received: from unknown (HELO [10.232.112.136]) ([10.232.112.136])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 May 2019 14:22:14 -0700
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <2bf1e2cf-b922-d947-c939-375aba75994d@intel.com>
Date: Thu, 16 May 2019 15:22:13 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_142215_583103_E1F6E89D 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/15/2019 9:17 AM, Akinobu Mita wrote:
> The NVMe controller reports up to nine temperature values in the SMART /
> Health log page (the composite temperature and temperature sensor 1 through
> temperature sensor 8).
> The temperature threshold feature (Feature Identifier 04h) configures the
> asynchronous event request command to complete when the temperature is
> crossed its correspoinding temperature threshold.

s/correspoinding/corresponding/

> +
> +static void nvme_thermal_init(struct nvme_ctrl *ctrl)
> +{
> +	INIT_WORK(&ctrl->thermal_work, nvme_thermal_work);
> +}

Does this work queue need to be destroyed at some point?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
