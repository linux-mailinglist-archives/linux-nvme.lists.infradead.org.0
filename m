Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D71E1C9540
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 17:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=toh/R5Tnehz3Cio6dm1IYB2oiIfOIiZoApbvG3qrXlI=; b=GQtLngj8VvH14wZgWqiBHotts
	78npNgW5zY9ylSXl/F1iAJtWUe+VCSdc1sT4P/cYWHABUwW0LpsdRtRD+mJknqDASsI6l/LR86fNa
	R0dzzOylZN3Su3yM2jA2ESRN/3KTPx18WZlDz2GwI+pzFRFRaBD10vfClzaevnWjgDGXT5LKosskn
	E+Lsb+bJCK2hEaeqZq5/muSSgOrINjgdag05MBTqG6t5a4kxH5WxLmxfsHk5Qip+yVMvBF7qwltsK
	A+g3+diA/XL7O3PBOBkR/Rb3265Cp52zab1BQl5+wbuY6ZXO5KbRizhZzSNc8cJWogcoHO7tYv5zW
	3HdSsGeVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWier-00076y-TO; Thu, 07 May 2020 15:41:57 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWien-00076R-SK
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 15:41:55 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 4113241B1C67FA101A92;
 Thu,  7 May 2020 16:41:50 +0100 (IST)
Received: from [127.0.0.1] (10.47.3.227) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 7 May 2020
 16:41:49 +0100
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
To: Keith Busch <kbusch@kernel.org>
References: <20200506143519.GA570@lst.de>
 <4155a814-798c-0c7e-5433-daf719c0345c@huawei.com>
 <20200506163104.GD12919@willie-the-truck>
 <3453193c-424b-1e4c-16be-279088612c68@arm.com>
 <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <6b573185-c6a5-501c-7db2-befacefa3701@huawei.com>
Date: Thu, 7 May 2020 16:41:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
Content-Language: en-US
X-Originating-IP: [10.47.3.227]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_084154_061306_D7F3C171 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: sagi@grimberg.me, Robin Murphy <robin.murphy@arm.com>,
 linux-nvme@lists.infradead.org, Alexey Dobriyan <adobriyan@gmail.com>,
 axboe@fb.com, Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>>
>> Or maybe exacerbating some other fault?
>>
>>   Do you see this with different nvme controllers?
>>
>> I only have 3x, and they are all ES3000 V3 NVMe PCIe SSD
>>
>>> Does your
>>> controller write the phase bit before writing the command id in the cqe?
>>
>> I don't know. Is that sort of info available from nvme-cli?
> 
> No, the only way to 100% confirm is with bus protocol analyzers. It's
> a protocol violation if a controller was behaving that way. We've seen
> devices broken like that before, though it's been a while since I've
> seen such behvaior.

I have an FAE contact, who I can ask. That may take a few days.

> 
>> [  885.344575] WARNING: CPU: 41 PID: 4565 at block/blk-mq.c:665  blk_mq_start_request+0xc4/0xcc
> 
> This warning appears to support my suspicion: the completion side is
> observing a new phase with a stale command id, and that command id was
> reallocated as a new request that we're still constructing at the time
> the double-completion occured.
> 
> Host software is supposed to be guaranteed the entire CQE is written
> once we see an updated phase, per spec: "If a Completion Queue
> Entry is constructed via multiple writes, the Phase Tag bit shall be
> updated in the last write of that Completion Queue Entry."

Thanks,
John

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
