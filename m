Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3427109218
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 17:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ICkaKR4rc8tTpukOMJlKhIdI+0FXuqiBxEYadx6p07U=; b=pOjZiiBHmOaJQqdNb/u5+kH8j
	nVWk6Pbuz3FN2qEbRszNrewIoASJXUu71pCcQPUazwREFdcQg249TIznjLjtz9RkJdnbDm3YYh1wi
	AziKzgEDBCL23TEvJEharf597JIdMPlqoKqzkQ9YcFc7SQYnlyEjvJLilh2GAVnIaXZ2i3+3U5QuZ
	BLiquzGMCG+e6Qyn25X5ehWjfOpJKDGTg0xDCtrpymzP0UZwhKy9bQ5uUAhXr8UsLc6IN8kiUA8a7
	Lly1uLYIp08zz4ApOepNGpy4e9g2nSsoQL9XQElIgj/Xdr+l5R4A7A514Nictppf+Q1U8TBOsZXNu
	e/+teu+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHV8-0002Ey-Dk; Mon, 25 Nov 2019 16:46:14 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHV4-0002ER-Hh
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 16:46:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 08:46:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="202419179"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 25 Nov 2019 08:46:07 -0800
Subject: Re: [PATCH 1/2] nvme: remove unused return code from nvme_alloc_ns
To: Johannes Thumshirn <jthumshirn@suse.de>,
 Edmund Nadolski <edmund.nadolski@intel.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
 <20191125160612.3542-2-edmund.nadolski@intel.com>
 <1ca1b4c3-8c42-c728-d987-18821f83088a@suse.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <221e4352-7fab-abea-9f43-2cd1df60dbaa@intel.com>
Date: Mon, 25 Nov 2019 09:46:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1ca1b4c3-8c42-c728-d987-18821f83088a@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_084610_627985_99F0CA7C 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11/25/2019 9:09 AM, Johannes Thumshirn wrote:
> On 25/11/2019 17:06, Edmund Nadolski wrote:
>> The return code of nvme_alloc_ns is never used, so change it
>> to void.
> 
> Oh no, please do it the other way round, check the return value of
> nvme_alloc_ns() and handle error properly.
> 
> nvme_alloc_ns() is doing memory allocations and these can fail (although
> less likely because of the GFP_KERNEL allocations).

I considered that, tho it looked to me like the caller (nvme_validate_ns) and 
its callers (nvme_scan_ns_list, nvme_scan_ns_sequential) don't really care, 
and intend simply to continue on regardless of memory alloc failure(s).

I can either add the -ENOMEM handling, or clarify the caller's intent w/some 
comments. Which is the way to go?

Thanks,
Ed


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
