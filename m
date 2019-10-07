Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25F0CE3C4
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 15:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAAyDdG6f6tHgBi4Wbl89ZuJodgyOsdMLbjNnyd/EVg=; b=V9d3ZnuXe/4KB1
	nbNhaxgiqYYYRAXY1aC2E7+QWsksbjnuIqyZidi34Pe3LQP0/8PlYhiCBCN/pi/B707YXjjTKkCvf
	Hx1eKdEcGejSkWC596nsNZo0a1DfA+XqOi95PKvu/2pBuI/fxx64s8Q9NvaMtOdNoIAAt4Av/da8u
	YlNk2ccBZy0++ZGv4rxNL+ZsAtx2bfIVRSZoxcHwLqQf9UWVKirvgHuahXfSbXW/AQ35oFhMNXCL3
	TvvpLnBMgzg0IyZm9b02XsV8RCDmleub4D+8a0Wvm7+DUwtBn1kGK4/rEFMNXlZh8ItbOU0gP6V25
	3M0fKOeMNW4Fn0Adkl3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHT7r-0003EC-81; Mon, 07 Oct 2019 13:32:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHT7l-0003Dp-R7
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 13:32:31 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 452E02064A;
 Mon,  7 Oct 2019 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570455149;
 bh=f6NOx7I3rz8/8d5/qtFLdVptLMgVUcd/WIGsVWWEtMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WTtQugSfunXJNKtBXSTlDGK4KDtiOIE8AIqXbCz7zYdXfeFbYo2eWjfvZTtWeHV+s
 kNj9P4ItsyQormAfm1L/9bvTIzA9yXfCbZLOwvHDTRE5Srv0l4v7CopRAugUcl1nl7
 gNdAEP/yfnsznC7Key8rjm0ZYwnUBzsSlbCid+Dc=
Date: Mon, 7 Oct 2019 07:32:27 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
Message-ID: <20191007133227.GA54763@C02WT3WMHTD6>
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
 <20191007120721.GA21060@lst.de>
 <CAKv+Gu_mYpopYMCiq=TqHBkzZoRLJD_0Xi8J0GB8+sCHJSmK9A@mail.gmail.com>
 <20191007122738.GA24804@lst.de>
 <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
 <20191007124843.GA53339@C02WT3WMHTD6>
 <CAKv+Gu-2yBVx2sh1wZ4d8+eJ8ffc44be86=FNt6K4euh+J1+OA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-2yBVx2sh1wZ4d8+eJ8ffc44be86=FNt6K4euh+J1+OA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_063229_899893_D46D9D0F 
X-CRM114-Status: GOOD (  11.74  )
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
Cc: axboe@fb.com, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 03:20:11PM +0200, Ard Biesheuvel wrote:
> On Mon, 7 Oct 2019 at 14:48, Keith Busch <kbusch@kernel.org> wrote:
> > If you explain this patch by saying it's to fix a host controller, then the
> > patch is no longer sufficient on it's own and should be fixed elsewhere,
> > perhaps by providing a special pci_ops structure for your controller.
> 
> Fair enough. Any suggestions for the wording of the comment?

Something like this for the changelog:

  Subject: nvme/pci: Split 8-byte reads

  The nvme pci driver had split 8-byte register reads using lo_hi_readq() due to
  nvme controllers that do not support that sized access. This behavior was
  inadvertently changed to readq(), which may break those controllers. Restore
  the previous behavior.

  Fixes: 7fd8930f26be4 ("nvme: add a common helper to read Identify Controller data")

And the comment:

	/*
	 * Split the 8-byte read into two 4-byte reads since all controllers
	 * support 4 byte register reads, but some do not support the larger
	 * access size.
	 */

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
