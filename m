Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D552CE13A
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 14:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vg7LkBYwnBf8zcWomBUBuCGU7x/3rJiUHnXMaEpZg6w=; b=MMIy2P4nyAiTd5
	3uyoUsc0pVbF0wZQTTHM7GdoWKpgitDt7nMJNfoyhbkffmgf0QXGNXBgubH3wo9dBD91oOXEN24Lo
	epBRzzRWnK1QlMvwMBTDPVd6hwdP5wU23/q5xCoqZDqJGqN7LI7x1q3bxgMGRmCpMlSi7/ojiz++D
	sjOtWvA2mg+kjhuDKVi6Rn97cuLSNhLu1+2E2DXTQ/1eR1ar3k72FxPMH/zUsVAMwINLoVO6Smd45
	EcltPCfexQYKmy0op9NZ1PwNmmxY1SuqwI8usTym+zIarcNJy7F7QQAElYlMF7z8RTjfJqTUE2esj
	eEXK1CWw79Xh6AdMYXRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRnZ-0004hu-FM; Mon, 07 Oct 2019 12:07:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRnU-0004de-Ao
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 12:07:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 43C3F68B20; Mon,  7 Oct 2019 14:07:21 +0200 (CEST)
Date: Mon, 7 Oct 2019 14:07:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
Message-ID: <20191007120721.GA21060@lst.de>
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_050728_513413_8C88B211 
X-CRM114-Status: GOOD (  10.11  )
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

On Mon, Oct 07, 2019 at 01:42:53PM +0200, Ard Biesheuvel wrote:
> This fixes a boot issue on some ARM boxes with NVMe behind a Synopsys
> DesignWare PCIe host controller.

>  static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
>  {
> -	*val = readq(to_nvme_dev(ctrl)->bar + off);
> +	/* use a split read to work around buggy interconnects */
> +	*val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);

I though this was to fix back up the broken Apple controllers?

If you interconnect doesn't support 8-byte MMIO read/write TLPs you
have a much deeper problem, as this will break all drivers using
readq/writeq.  And we currently only have compile time detection for
readq/writeq, not runtime so you'll have to invent a scheme if this
works at all or not.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
