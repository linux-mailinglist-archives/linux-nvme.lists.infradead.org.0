Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E21A91E
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 20:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yEwFpSZgKbj8a7XblfBYBwJH42QiaIcq8njIZc6MSYI=; b=raeL7NuqThOTzC+ejkVEZKfCk
	7w+n4jRoHUz/OFRFQuEVUcH6Ax0UZMJbmLlCv8QiMOu2acmeq8kgUEFQBoVfW21Bncg5yLT79COBf
	9bIcYii1K4dWSxS/XqROykaXpuB3nw4H+uNNUmc4/d3XBcbDkpniQImomuzbAGwzRA6OFkXTHZq+y
	wLN51YOTZeL62qdhF+41WjtTwYVIfZt6odaSX/QY9ZzHFwhvRSNNUpgv8uy4KxnfT9lvGOfjA6GYt
	YaU2OtNmhRq4bp8IZExmyhl6GBgvHe9eWD2FykvNNB3oEfFC0RDgZyTjJ2qP0o+JcPoB8FTuQKsG4
	ko3AMljow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPX3P-0003dK-7n; Sat, 11 May 2019 18:49:03 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPX3G-0003cz-Ij
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 18:48:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 May 2019 11:48:48 -0700
Received: from kheitke-mobl.amr.corp.intel.com (HELO [10.254.18.195])
 ([10.254.18.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 May 2019 11:48:47 -0700
Subject: Re: [PATCH] nvme: add support for Verify command opcode
To: Christoph Hellwig <hch@lst.de>
References: <20190511000406.5458-1-kenneth.heitke@intel.com>
 <20190511071822.GA14764@lst.de>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <fdd74c58-9bfa-ed43-9658-f7ee9d26a110@intel.com>
Date: Sat, 11 May 2019 12:48:48 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511071822.GA14764@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_114854_629243_996BCA69 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: keith.busch@intel.com, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/11/2019 1:18 AM, Christoph Hellwig wrote:
> On Fri, May 10, 2019 at 06:04:06PM -0600, Kenneth Heitke wrote:
>> This allows the Verify command to be sent using the
>> NVME_IOCTL_SUBMIT_IO ioctl.
>>
>> Signed-off-by: Kenneth Heitke <kenneth.heitke@intel.com>
> 
> I think we've decided that NVME_IOCTL_SUBMIT_IO is deprecated and
> everyone should be using NVME_IOCTL_IO_CMD instead.
> 
> Maybe we need to add an official deprecating warnings (probably
> just a printk_once, maybe per process name?)
> 

Thanks! I wasn't sure which was the preferred ioctl to use and didn't 
realize that SUMBIT_IO was considered deprecated.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
