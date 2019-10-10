Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC68CD280C
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 13:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDbRaVGMua94Cde7JOrJd/aHRf7aXYN4Gv2wauP/fOo=; b=OdJbl0K6tdU4d9
	uPm8S2FHL0zJdtZrr6rdU2FFyOG3eHR8llLMkiQOxeHylIjvRgH4BdJZYZS/uk0ixEzOvPfIZYiW8
	L6dFKUo5l/wTWTg+A8eZo5PCMxC7xMnISZvxB+CUkYMQkaIg+M2ooAW8N/AbgFCsYoESNZaak60Tf
	Mr/1qsUhHXLr9RSmcWFVW/p+uZHnL8i/Wa9c1YLoP/Wp9Kc1FH68r6Us0AUM4vSnGlODSO34ii/xb
	Czvf3Bj0YxhtqmmSynfYI3wBWBQCZu/RFCbKcdgD9Kg6CLEbHnmDa9s6gG5Zuh95mA4A7xwsMldaf
	Akv4XQ2Fh40DLHJBGFNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWlh-00013Y-BP; Thu, 10 Oct 2019 11:38:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWla-00011K-Tc
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 11:38:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 22A1F68C65; Thu, 10 Oct 2019 13:37:54 +0200 (CEST)
Date: Thu, 10 Oct 2019 13:37:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v9 01/12] nvme-core: introduce nvme_ctrl_get_by_path()
Message-ID: <20191010113754.GA28921@lst.de>
References: <20191009192530.13079-1-logang@deltatee.com>
 <20191009192530.13079-2-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009192530.13079-2-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_043759_098100_7BB75F95 
X-CRM114-Status: UNSURE (   9.76  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path)
> +{
> +	struct nvme_ctrl *ctrl;
> +	struct file *f;
> +
> +	f = filp_open(path, O_RDWR, 0);
> +	if (IS_ERR(f))
> +		return ERR_CAST(f);
> +
> +	if (f->f_op != &nvme_dev_fops) {
> +		ctrl = ERR_PTR(-EINVAL);
> +		goto out_close;
> +	}
> +
> +	ctrl = f->private_data;
> +	nvme_get_ctrl(ctrl);
> +
> +out_close:
> +	filp_close(f, NULL);
> +
> +	return ctrl;

No need for the empty line here.  Also can you make sure this new
code (and all the new exports) are only enabled if
CONFIG_NVME_TARGET_PASSTHRU is set.  Preferably by having a little
block at the end of this file with this function and the extra
exports with a big fat comment that they are only for nvmet-passthrough.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
