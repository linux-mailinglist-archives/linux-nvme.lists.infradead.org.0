Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5047CDB37D
	for <lists+linux-nvme@lfdr.de>; Thu, 17 Oct 2019 19:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3WHM20xjwoM7YpZeG/FbipVp9kwVTWpZVXQKcZz908=; b=kxy/XC89QxoOiG
	icFGFgBiVetDeFmKAXiVawmoNlBEvmIGPVV70YNh99U+WgXS1jvTsR8NEqcc2CWWmHo1rdZcRKxWn
	udgHtICXSafnaN6ArBCbJ/CVuwCk6NC48JhqknVh6kDYimEwZF3tStFQ4W9hSZ0uWmBPyRNbcZ8fJ
	/mgixWpWRoB79xvVqSXP4AZAaiJ3E3ORznR+bSamR9tEkbk0Vc1sNDIj+9USnSeEaRdOi8MaNM2u8
	LJko4AovkmsZ0AprS9chGqA3MHWQQz4l10SbnPcQd38DzL8fDFiD100YWVmAUgGVdCOpOk3LXNY+i
	sChr0poHEKj/9bwr2aDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9jD-000843-86; Thu, 17 Oct 2019 17:38:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9j0-0007ta-FJ
 for linux-nvme@lists.infradead.org; Thu, 17 Oct 2019 17:38:11 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A252021835;
 Thu, 17 Oct 2019 17:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571333888;
 bh=8z62F80tqg6N2820/YBtBzuF1LK9/mC60VqTI66tXA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tBh4Zvvsfxi3fALxaZStp4IVlXpQ7Ma3Wp2cBU8DzS+YUtBXIIBIatUKHZ4gcVQ0W
 9InA3jR6DtFRCdjFzYEHIS57eWVgGdHYzaRFsiqK6TyJJXqcRhhO2fLKAPRxMEkMkC
 tLOVn+AemJVfYd+/gZfzfHoxus4KZOPIO7rFNcck=
Date: Thu, 17 Oct 2019 11:38:07 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: Set the prp2 correctly when using more than 4k
 page
Message-ID: <20191017173807.GA91017@C02WT3WMHTD6>
References: <20191017073428.46155-1-haokexin@gmail.com>
 <20191017145554.GA8676@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017145554.GA8676@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_103810_550115_323BD6C3 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Kevin Hao <haokexin@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 10/17/19, 1:40 AM, "Kevin Hao" <haokexin@gmail.com> wrote:
> +	unsigned int offset = bv->bv_offset % dev->ctrl.page_size;

Can we do this without the modulo in the io path? The page_size is a power of
2, so this should work:

	unsigned int offset = bv->bv_offset & (dev->ctrl.page_size - 1);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
