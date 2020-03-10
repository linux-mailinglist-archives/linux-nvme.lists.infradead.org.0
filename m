Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C1C180993
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 21:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kBueSyT9lG9u+91NSseY2SZDFgalHAZIgloEKJ0a58=; b=jENEbCg9SJ5b9d
	e4pKFlRwbaly5vS0NXRd9V4f6R96PM/w0jNAy1UX7U1qgx8DcFnDswg9QZ/xZWp266u382GIrksL3
	V8BYDrf2rX4u2W0AlG9PNfUp2Vv2UBFjYm2ScjESx6UsiCrAJfIj/65h14N2/IImPHijA4YbNzsKo
	jjq9wBhJIh/SonrQkUynRW3O4mXxPEO2agGWdwndHQXap81BbhpwV5yHnEsoZtqPoO17NvVLV9Yv7
	W5P2gg4Dg7ovw5ANaFURJ8/SghLJxjPdX7lgFYxFmkiGreVA9EOoGT4c/ite34COjr97OpLwA4X/y
	Q7lv0+lDOdoTKiVqNhpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlt3-00022A-97; Tue, 10 Mar 2020 20:54:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlsz-00021m-8H
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 20:53:58 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EF19222C3;
 Tue, 10 Mar 2020 20:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583873636;
 bh=bF6sSIodPU9nAapKOpH16NP9C35Bj2zaGPjUSgdj/Fs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z5ts/8eCTS+kYPLr399Csg8kP3tlna2QZQKdkCiwjQmXaE4foAMrojjftzpJe8DGW
 QswuGCL4yMRooOHpreMWG6sMsfIP2Q5tBve9RvVg9B3SWg5dW2eOJkemReoLXXZn9Y
 QwCsaPu2kbOTtOAXSEPjWGQqnLHpED5HvJ/jmtZc=
Date: Tue, 10 Mar 2020 13:53:54 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme-tcp: move send failure to nvme_tcp_try_send
Message-ID: <20200310205354.GB604509@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200226004324.10694-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226004324.10694-1-sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_135357_314912_439AEF8B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:43:23PM -0800, Sagi Grimberg wrote:
> Consolidate the request failure handling code to where
> it is being fetched (nvme_tcp_try_send).
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Added to 5.7, thanks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
