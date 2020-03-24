Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8232F191614
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 17:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yE1ENu8TDpwK8sRvOpOZgE0VHTZWxWuAXr38ssyyxw=; b=Ic3gPNuEUDAcGK
	e9b7M5H2SEjZPXOsBgM+WASTUL4SdMmXE4pdO2bZOzE77ePvef1EDTfUTqOgwC3o/KIK0bRxrHUgq
	Y7jnd0+Jf95ic+FEz84JcKSdU3h2sKWhXXH/KyJJKTJlqPRLqkiJ2OFpoxKKJOmebSBEIaXyR9P57
	BYkAzSb4ru2tBDifXwq4HrI85ZpFItzJIjCcKWiVDyoZ6N/BRn1+gFZawtMIb0au+xLKr+oFT9oua
	qJsGsZJ2hPEi58OPKULEigQPFNjdPKQUHyew+n7zwowGEf3e1f8b8cfYQkD0GV4o2YfuTCgaePVh4
	eHUWrHIX4eGaBuMgCqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmHY-0003Gs-78; Tue, 24 Mar 2020 16:20:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmHT-0003GD-U0
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 16:19:57 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD9332073E;
 Tue, 24 Mar 2020 16:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585066795;
 bh=Nzgytqci/pFQzaoBhNiViqBoPCaW8cS5sUxfpWRKEIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WOYFWwNjBDnnDf2cIS7e2tNfO94mb0OiK6c2GF8rfpcUt04pbRLkXAJa6semGwBER
 CpI3Ah3M/4bVs7c2PkYwt/p/fKI+kMc5NvJI/of1R5uhH5VTU1VIw4c9Yz83JNGWSu
 dLgJxHN4vpgZDhY21Sh34hJRXuOUhiH2fWZn7BXE=
Date: Wed, 25 Mar 2020 01:19:52 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme-tcp: don't poll a non-live queue
Message-ID: <20200324161952.GB30956@redsun51.ssa.fujisawa.hgst.com>
References: <20200323234352.23753-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323234352.23753-1-sagi@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_091955_991100_F66F1AF1 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 04:43:52PM -0700, Sagi Grimberg wrote:
> In error recovery we might be removing the queue so check we
> can actually poll before we do.
> 
> Reported-by: Mark Wunderlich <mark.wunderlich@intel.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Applied for 5.6, thanks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
