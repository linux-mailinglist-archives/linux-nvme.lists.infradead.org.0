Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609B1B96D2
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDtVGda3h/aG2eSwzYWma7h4Jhn9zMX2EY6ZTsyiuKY=; b=B6LEEPAuQSkt+D
	0+HM7QT6h6R2139NSxUiSZeTc/t985XKwwjigwgRsaM482gGLJEikD7EixKVk88jsnUMiA0uC2VUH
	mWbqKWxbo/u4l7g/gLzMalGWORyrkf8Tvx8WuayIg3DUWFLqEANIVlT7oC4llFC+GGT4nD+cmvAXo
	rVIoipha9XQr4F6dutjEl6QR9nINxqjg9q7YBB5PXbevnZR8PWW1P4Fih8/vKwghePPNU/ShOsqDO
	9yZwH2Mdx/8+EaV/lAJJX0igU05v/YM3F4z6M+SeWrjUqvGIbog524Ho4kJOHgG2IcHXpAhpknbvj
	/og0my4ixb515zT7m3kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN7V-00068n-2y; Fri, 20 Sep 2019 17:55:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN7Q-00068P-ES
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:54:58 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD0C02086A;
 Fri, 20 Sep 2019 17:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569002096;
 bh=yZCO4v4fZBAhBf7cVRwNF01joLuaJE574y7iX8J0JJs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RnWKj25UsgwTdXYFlyTq2usMl72gTEGncJhkbdYeJOCMtPamyrATkPNbbCUWaquoC
 vOYAtlVmO0kVSXoKloiKsd6hCrfRvQdAQ/sNTH0kecbBBslAuHXxkC0HHwV/BrN9yb
 RpDb+Zam0i9aGflefPFNfCyGjBHm1YaPeHDJm3AI=
Date: Fri, 20 Sep 2019 11:54:54 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 0/6] nvme: double reset prevention
Message-ID: <20190920175454.GB97854@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <6f31bc09-95d3-bf11-7846-e57d8600462d@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f31bc09-95d3-bf11-7846-e57d8600462d@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105456_504010_2A915510 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 10:51:52AM -0700, Sagi Grimberg wrote:
> 
> > The main objective of this series is to prevent double resets. This sort
> > of thing is known to have happened if a timeout occurs at roughly the same time
> > as a user intiated reset, like through through PCIe's FLR.
> > 
> > The double reset could happen because the controller disabling had been
> > occuring outside of the RESETTING state when we can't schedule the
> > reset_work, which is to occur later. When another reset schedules in
> > between these events, the controller ends up in the wrong state.
> > 
> > The end result of this series is simply to block subsequent resets by
> > initializing the controller state to RESETTING without actually
> > scheduling the reset_work. The first patches in this series are simply
> 
> are simply what?

Oops, cut off my message.

Simply fixing issues discovered while testing the changes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
