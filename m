Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27B5CE218
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 14:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/zs88O2FC2EmnmbtODGRpskB02JsT9SCjESRRQI77o=; b=pGHcy9sUkyxaUi
	idDF5FShaE80wsEgBuq6t/o4KbE6W/FPrTofwi7u7sID69rA9vyBFwyH0nr/HhCiDY555NyqhC472
	IHLBznVpbp/cR7c1HEG/YHC3ARDw6eVIW9OMTdoUFBJoBmaRcQ6lleI1FCJZutfwoYyUOFSp0RSlm
	DN6HOGSNMnv/zVRtw3TijEhJo9VMRyfvVvLvDTpNQz949ClrmMb2e2pz1GyLlYurZUFdHZHmeXaL8
	Po1u8moSkqOGnneYl0W4eywTE2NEk0PL8D6W/xpmH9P/N1eivWjaohIZZuak6bLOEbo21ro82Mhjz
	RqwsM/3NlwDeU529zKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSPx-0005Ns-TY; Mon, 07 Oct 2019 12:47:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSPt-0005NR-5V
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 12:47:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 14C5368BFE; Mon,  7 Oct 2019 14:47:03 +0200 (CEST)
Date: Mon, 7 Oct 2019 14:47:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
Message-ID: <20191007124702.GA28611@lst.de>
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
 <20191007120721.GA21060@lst.de>
 <CAKv+Gu_mYpopYMCiq=TqHBkzZoRLJD_0Xi8J0GB8+sCHJSmK9A@mail.gmail.com>
 <20191007122738.GA24804@lst.de>
 <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_054709_354715_372E3879 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-nvme@lists.infradead.org, axboe@fb.com, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 02:32:43PM +0200, Ard Biesheuvel wrote:
> OK, that is good to know. Mind you, I used 'interconnect' in the
> abstract sense, meaning whatever sits between the CPU doing the read
> and the 64-bit register in the BAR space.
> 
> But I fail to see your point. Why is it relevant for deciding whether
> to apply a NVMe fix if the affected hardware can or cannot use other
> types of PCIe devices? Note that I am not proposing some hacky
> workaround to be applied, but just to stick with the workaround that
> was already accepted (and I'm pretty sure that this Apple hardware got
> broken too with commit 7fd8930f26be4)

That isn't the point.  I'm fine with the technical changes, but the
commit log and the comment seem to imply that this fixes your
interconnect issue.  It does not - at best it works around it for this
particular device, and even that only as a side effet for fixing a device
side bug.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
