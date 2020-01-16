Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C893A13DF8E
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 17:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kE0dhJ/5wW0QLN6nTIzA6eZ1mAEnZfFneDy2mdIUwPQ=; b=EPjVcf7YZvsf8H
	uewpooanGwn4bq5W6mvXpfs/Mx8HJpnHiBOQOGs1SUVdAZBiH45vcFk+hQf0EnLUMdaVSgkygKswi
	tIkh5SEv5pS9/iONunBuOt+nQULyY+7dgCiPBoSwFRX228M+kTXKQQvQJnljxBYMLqdBL3JzwJ73e
	MtNkJvhQENk47mZi7LPsZNEL3FaVwW8e6l6EX/pP5/n2pP23RSbqco7sTw6AAyyf1cB2g6j7jTy8J
	u87hs97nEsXFPfUhxXE4stOGHLN811pSjlB2eFxgIoQBcBVhBn8dHd3WW4sQ7HWAWNTnbNDbW0an2
	ypn5nPMDKlGvE+QKfuKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7ex-0006Ki-9c; Thu, 16 Jan 2020 16:06:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7en-0006K9-D2
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 16:06:10 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48D4B2073A;
 Thu, 16 Jan 2020 16:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579190764;
 bh=wvhCv7GmfP2fgpGWqgun49h6BQAfW1sFILq1eZAo4tY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EFtW47a0gbQ/guvS8wcpYDN1aH5cG8gihh20KApVyyWh253c+Bmc5sU9Pgf0zdyhU
 z3ojfVny6cWIyACY/XRg6PhCNVndCNuDo4Kc74Ym6R7gvHxDb3YYZjTy6EmZ+O4Uzu
 CS/JWKEncDy/skDuVooyhaIBv78b4qZOwyyA62B4=
Date: Fri, 17 Jan 2020 01:06:02 +0900
From: Keith Busch <kbusch@kernel.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
Message-ID: <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114181745.2297-1-edmund.nadolski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_080605_460514_9228C9AE 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 11:17:45AM -0700, Edmund Nadolski wrote:
> +static void nvme_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
> +{
> +	struct nvme_queue *nvmeq = hctx->driver_data;
> +
> +	nvmeq->tags = NULL;
> +}

If you've multiple namespaces, disconnecting one of them will cause the
shared nvmeq to have NULL tags, which will crash the kernel on the very
next CQE read.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
