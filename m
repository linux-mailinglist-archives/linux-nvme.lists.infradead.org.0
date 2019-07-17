Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84C36BC13
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 14:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uj44QgeCWQkw1fBuNKJwVP5BQMtFKynjBVadjM2bD1E=; b=JFdO/8syRi1RZm
	3zSBaBDKcOvsfbSM8LT91jTLlwZwTVtCume3v6TrwuVo2dx1Pev/+dYLmZTrl/m38iVWQQ3enIP31
	yBc/6rlcLSAYZAVVl3O92ijfLv/lNuD7ZCq784Q6KuJgIcWD4wqCYCQmGb0SznEU+AsCDKMdUUMx6
	xRiHDYkt9caxAYUkRw3qhQVtPw1iAKlyGwIkST1qA0kIlNmbjYpk3tykDF+xyj2GhWahsL1rp15ot
	/uKAFLSBI87q8HffW6s4G4eKHFPSYcgZqkYxZDCBfxMNUlskTa5uW+B1FlPCfxXdsrTubL13UUpPG
	uSAFElfIzJp0MecLM9hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnie6-0000cQ-JJ; Wed, 17 Jul 2019 12:02:54 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnie1-0000bs-QU
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 12:02:51 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6HC2cat029785;
 Wed, 17 Jul 2019 07:02:39 -0500
Message-ID: <2cc90b8cfa935e345ec2b185b087f1859a040176.camel@kernel.crashing.org>
Subject: Re: [PATCH v2 2/3] nvme-pci: Add support for variable IO SQ element
 size
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Date: Wed, 17 Jul 2019 22:02:37 +1000
In-Reply-To: <20190717115145.GB10495@minwoo-desktop>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-2-benh@kernel.crashing.org>
 <20190717115145.GB10495@minwoo-desktop>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_050250_008030_E0C21D14 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 20:51 +0900, Minwoo Im wrote:
> -	struct nvme_command *sq_cmds;
> > +	void *sq_cmds;
> 
> It would be great if it can remain the existing data type for the
> SQEs...  But I'm fine with this also.
> 
> It looks good to me.

I changed it on purpose so we aren't tempted to index the array, since
that's not always valid.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
