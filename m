Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7B31CD641
	for <lists+linux-nvme@lfdr.de>; Mon, 11 May 2020 12:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TVknU6YLGVF2/0D2XktNFPMPX6IL6wd0QHIX965JUgw=; b=jDF3ZN2JYl0iFSjKB87B0qYqO
	NfJjuFB8l7z/a9k+ICvxGdEcfiansLDVX+Kr41at+YxXwlpyJ/PCVORijxBzPAec0gUBDQShVKxNj
	5jqPuOgsA4Y01pZhF4gy9pdgGfkUuAm4x7xbIeB7/NFKEglWUOqsx7rFOZ+dz5qcS2ejT3KHTrfkc
	OftcRgboj6+bgXE9uXcH6unookIWivB/Woxn8YI5m5TgSsK7txQ8s+M3dCGfpiB3I8cJk/OW6okw8
	7EGwfV8d6GXEEB0yNebV40TnqC5IqPxqyfxiym+puANNkg/5U6biyjJQer2v2yXrukUMPaErOQ57u
	TCDNKApAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5TX-0000l8-4S; Mon, 11 May 2020 10:15:55 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5TR-0000jl-Tz
 for linux-nvme@lists.infradead.org; Mon, 11 May 2020 10:15:51 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 0F760F1EBC27229D092F;
 Mon, 11 May 2020 11:15:37 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.142) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 11 May
 2020 11:15:36 +0100
Subject: Re: [PATCH] nvme-pci: dma read memory barrier for completions
To: Keith Busch <kbusch@kernel.org>, <linux-nvme@lists.infradead.org>,
 <hch@lst.de>, <sagi@grimberg.me>
References: <20200508200406.2814437-1-kbusch@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <810046c0-9484-13a8-65e3-d9484c2cf552@huawei.com>
Date: Mon, 11 May 2020 11:14:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200508200406.2814437-1-kbusch@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.0.142]
X-ClientProxiedBy: lhreml705-chm.china.huawei.com (10.201.108.54) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031550_110982_FF714188 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Robin Murphy <robin.murphy@arm.com>,
 "luojiaxing@huawei.com" <luojiaxing@huawei.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 08/05/2020 21:04, Keith Busch wrote:
> Control dependencies do not guarantee load order across the condition,
> allowing a CPU to predict and speculate memory reads.
> 
> Commit 324b494c2862 inlined verifying a new completion with its
> handling. At least one architecture was observed to access the contents
> out of order, resulting in the driver using stale data for the
> completion.
> 
> Add a dma read barrier before reading the completion queue entry and
> after the condition its contents depend on to ensure the read order is
> determinsitic.

deterministic

> 
> Reported-by: John Garry <john.garry@huawei.com>
> Suggested-by: Will Deacon <will@kernel.org>

Tested-by: John Garry <john.garry@huawei.com>

> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/pci.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index e13c370de830..3726dc780d15 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -989,6 +989,11 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq)
>   
>   	while (nvme_cqe_pending(nvmeq)) {
>   		found++;
> +		/*
> +		 * load-load control dependency between phase and the rest of
> +		 * the cqe requires a full read memory barrier
> +		 */
> +		dma_rmb();
>   		nvme_handle_cqe(nvmeq, nvmeq->cq_head);
>   		nvme_update_cq_head(nvmeq);
>   	}
> 

JFYI, I have confirmed that the ES3000 NVMe controllers which I am using 
will write all 4 dwords of the CQE at the same time.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
