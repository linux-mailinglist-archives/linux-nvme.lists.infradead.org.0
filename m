Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB010174547
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Feb 2020 06:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFAI0Y2AHy4GTp1MJ4lN2bZxivikX+Qieag4XoYGRlQ=; b=tiNlfHsFSYnyVb
	epMJM3eA3jZQo584iHIB/r2CvxHkcUcV8UQbE1s8jQRMSsreZE7nzJeOCh62ek65Oj1Xj7tGctkbt
	rP5goRCPNNtja2l4Poe9x2f7hay/R+NFB5Pki3NdgvDMu5W9yVyW+HO6iNH9V+EGCL64TPpikjFCY
	yAERy72Jd+fkyHNX9lZVdJ8WBYViwhgOsxuQmdexNCi8Nn6Fz47H+0a0/JTU5VZ8TRiOmmTlelskF
	uekCYhA4kkyzamUiAj90pFTQHYUUpp8WP0wNhGYWuRnuNKxMi5FJJzK28TmRKFcKuQAwSmCOy+TVB
	2oMexsTWeHvKHSJmnuqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7v4a-0000sU-4e; Sat, 29 Feb 2020 05:54:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7v4V-0000rk-SZ
 for linux-nvme@lists.infradead.org; Sat, 29 Feb 2020 05:53:57 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B3542468A;
 Sat, 29 Feb 2020 05:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582955633;
 bh=ruzyK7UpHx6ugn0FDSQ5RuK5pAVzSpFuYGBk7gC4g34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nidP6PGED6M7aoZkHS9EiQEjlBKoTzUTsbZJDznO6yrCajoMdBJXLWf51gPO7mim0
 qNNMZmyIEq+kBX5SAY8bvQcha6nlD3ygC36LpNMHRBQTg3V/Zfx/jb3WagWzFKJ4Nm
 FNLzTX4cYpPCZPoHEujHcikzA2M7uuNYNj+Qb6YE=
Date: Fri, 28 Feb 2020 21:53:51 -0800
From: Keith Busch <kbusch@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200228184519.GA2281@avx2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228184519.GA2281@avx2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_215355_945744_7845EB00 
X-CRM114-Status: UNSURE (   9.55  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 09:45:19PM +0300, Alexey Dobriyan wrote:
> @@ -982,11 +982,9 @@ static void nvme_complete_cqes(struct nvme_queue *nvmeq, u16 start, u16 end)
>  
>  static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
>  {
> -	if (nvmeq->cq_head == nvmeq->q_depth - 1) {
> +	if (++nvmeq->cq_head == nvmeq->q_depth) {
>  		nvmeq->cq_head = 0;
> -		nvmeq->cq_phase = !nvmeq->cq_phase;
> -	} else {
> -		nvmeq->cq_head++;
> +		nvmeq->cq_phase ^= 1;
>  	}
>  }
>  

Looks good to me.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
