Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67666CCFD9
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 11:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nT8uOwp19poznboLhcU7BiF3pRcud6ax7RqfwnStRCA=; b=gUtArggfFcXQTS
	5EaHHsUuYuPake7tbGF6fzxY1t3bshd8qpBnB3qYgAA31HiS87C+mx1opqPK2N2vDxVMvwE8aIlz7
	uZ3QBChPDu/RB/UKFix5XGco/xdutp3RlQ/ishskM55SrO160pAXwgMOnkTWXx37H/9vuUtYmL5y6
	FBFqIxAlfLtbXBTcvXQT2Evoz4uHwHCtaCgbS8tZkEYUUuln5xYS4bZRCYvwO1GSYjPS/S9wmaJfi
	GCFfNvPpkhwf0zUA9lhjeCHOe0S9nyt4Lccr9NKFZX/NcOotutAUyTAWq1FdyqowvqRZ8LoAWRfju
	0blePB+eg/BrRHThVD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2cb-0006CR-P3; Sun, 06 Oct 2019 09:14:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2cX-0006BO-1B
 for linux-nvme@lists.infradead.org; Sun, 06 Oct 2019 09:14:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7539A227A81; Sun,  6 Oct 2019 11:14:20 +0200 (CEST)
Date: Sun, 6 Oct 2019 11:14:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2] nvme: retain split access workaround for capability
 reads
Message-ID: <20191006091420.GB25381@lst.de>
References: <20191003115729.8988-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003115729.8988-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_021429_217238_153263DA 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, ilias.apalodimas@linaro.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>  static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
>  {
> -	*val = readq(to_nvme_dev(ctrl)->bar + off);
> +	*val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);

Please add a comment why we are doing this.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
