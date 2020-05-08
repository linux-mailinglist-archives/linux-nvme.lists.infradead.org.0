Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449AC1CB4A7
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 18:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5ALsNZNVefMVaEgY4lpcZXWURl7URhhbaMS1WWwheg=; b=O3GJ19IsPb6hW5
	tpYQh63CkvZg9XOj0/iXtYjWWsEYsUuA+xp0vaeKGMNX3r4onMnnMQDszu4hpCaPiSIpKEoaNd3bA
	xDJQM7HK/t4Zme6SVS0vTXeLNTmRgSw9ZxbrhWIxI2lhuatVXYVDNHyL2jQvMjrnbSwwz9Py50nGX
	tbS9TSuWnS2PXdAicCd0NkK/p6vdX8jUs4030QRAEkm4f+3rLNuLG9UUQ78SYmQT9jpaICcQmrmjc
	tY9yQOD4msoc1hOZC+/plkUPbcrGKe2x6v4tD+4/eWxAGAH9YR8xj9+IwngelFD3qVMnOmvKcSHgv
	GOsJSGlcBjT2oNfoZ0gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5fp-0004xd-PD; Fri, 08 May 2020 16:16:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5fk-0004w0-3y
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 16:16:25 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CEC1206B9;
 Fri,  8 May 2020 16:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588954583;
 bh=hwJCAAbdcufl+vVPcJlNyZl8MJ2d6DW57Cahcc++qYQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VvCuDbAIr8htgpLvFtAj2PFlbR4VpJkAd8UTBzK6JaBeZ5Xjkl4VQJmyyNMkIT/ZL
 f6LrGT8eK9G2cFn4qL3uIbEJBROQzcqnVeOBkIhFa0zSlxKWqUy/zPIkuJ2Ha/SGQV
 ITJsV5+VLUix6IVOctRBr0rDKjIePYSrvgJ6ALG4=
Date: Fri, 8 May 2020 09:16:21 -0700
From: Keith Busch <kbusch@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200508161621.GB2622778@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200506163104.GD12919@willie-the-truck>
 <3453193c-424b-1e4c-16be-279088612c68@arm.com>
 <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <6b573185-c6a5-501c-7db2-befacefa3701@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b573185-c6a5-501c-7db2-befacefa3701@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_091624_195869_BB71C443 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:41:01PM +0100, John Garry wrote:
> I have an FAE contact, who I can ask. That may take a few days.

John,

In the meantime could you see if the following resolves your
observation?

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e13c370de830..8e96ec6eed61 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -989,6 +989,7 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq)
 
 	while (nvme_cqe_pending(nvmeq)) {
 		found++;
+		dma_rmb();
 		nvme_handle_cqe(nvmeq, nvmeq->cq_head);
 		nvme_update_cq_head(nvmeq);
 	}
--

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
