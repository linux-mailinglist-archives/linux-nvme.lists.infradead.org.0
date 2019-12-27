Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B454112B57C
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Dec 2019 16:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcOB/MOFc2jVUFM1NWn0Oyqhy/wfmqaczqhXihSLZVM=; b=mXnhgJfl3M0kF9
	NtQMEdS2PxEOOx8Oyl6LBotraWjOyxUOFdRffblkqgoFM9acqhMIy6qhu3d9P+AdFw7v16PyVaY6D
	V5YtzjUHfYFoLR3CKYP+k0fatjOhg05pzAqeBis0GKQm6tPl1P7g8zbAyzXfDPQbCsWKJjAFVlT9E
	1cq8AaYB1492ry0QXIaanq849LfgPc077l0Q6/HZhkZfQKGTdz13AEJBFC4mqTRhQyIN0SwAjQ/1Q
	SulbNuRvGJRJokCO9pF1FW9d+ENRX4wfSolQn1ksB8CusHTDCghn+Qkhgpc18/rsHVf4Et1tuLlwa
	OXYzWPH01hK3cGOQX52Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikr9r-0004Xi-24; Fri, 27 Dec 2019 15:04:07 +0000
Received: from hodge.hasenleithner.at ([88.99.36.100])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikr9m-0004X0-Cj
 for linux-nvme@lists.infradead.org; Fri, 27 Dec 2019 15:04:04 +0000
Received: from [IPv6:2001:470:584d::10] (unknown [IPv6:2001:470:584d::10])
 by hodge.hasenleithner.at (Postfix) with ESMTPSA id 657F2760095;
 Fri, 27 Dec 2019 16:03:58 +0100 (CET)
Subject: Re: nvme blk_update_request IO error observed on formatting device
 with kernels 5.5-rc1 and above.
To: Dakshaja Uppalapati <dakshaja@chelsio.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>
References: <CH2PR12MB40053A64681EFA3E6F63FDFBDD2A0@CH2PR12MB4005.namprd12.prod.outlook.com>
From: Eduard Hasenleithner <eduard@hasenleithner.at>
Message-ID: <0b33acdb-2b8c-2a06-3c6d-b978f9a760ad@hasenleithner.at>
Date: Fri, 27 Dec 2019 16:03:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CH2PR12MB40053A64681EFA3E6F63FDFBDD2A0@CH2PR12MB4005.namprd12.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_070402_593574_B6A7435D 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 27.12.19 15:08, Dakshaja Uppalapati wrote:
> I am trying to setup and run NVMF with tot linux kernel installed(5.5.0-rc3) on
> both target and host. Attached is the target configuration using ramdisk device.

> The following error is seen in dmesg:
> [  219.507989] blk_update_request: I/O error, dev nvme0c0n1, sector 0 op 0x3:(DISCARD) flags 0x4000800 phys_seg 1 prio class 0

> Please let me know if any info is needed further.

How big is the ramdisk?
Are there further error messages in the kernel log?
My current speculation is that it might fail in blk_cloned_rq_check_limits,
but then there should be an additional error message,
 e.g. "blk_cloned_rq_check_limits: over max size limit".

Eduard




_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
