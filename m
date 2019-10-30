Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8B8E966D
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 07:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzPl3+Xj/WmVfKprE6BLqm+Vfpjr94FDy17pkzCVzFE=; b=inpJU2DWN6hmZ4
	6QmK92dKpUDAI9NgFZyIk9x6jgcnR0SE3gmLqDtGoR7K/zB5fZc1kjh7QGlkkTuQTjNK3QdmHBa2n
	gZYTjeREzgh7ruiVPMm0IlW8h/L9EVEUTMyv5iePktEUKigIn04pgm1xtgz2FHhuxqDQ376GAGtBc
	dVjqQiKV0iIjmGJYMafm9rpGEHJKEgJMN77lpj35aQhFsQJF+q9ckYWMSSHPnRmIm6UlCJjN+0JNg
	Tjc7obTvwVcl3u31fZtOTs3iuO8Ct2s+pTtVvDpMtFeS9pV8Wtr6LtPTpRjvrRZZ4B2551IiQdXEx
	3MUtOJhTYrs/3qBc4wlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhac-0004Ck-G3; Wed, 30 Oct 2019 06:36:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhaX-0004CJ-5i
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 06:36:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3475F2067D;
 Wed, 30 Oct 2019 06:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572417372;
 bh=ye+9uTcDFHfW4nG0kg+9QlIaQGEYdj9xh87zTZYlUwk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RRPlrkCeoOTCZI4vuUlCau2Uujy3hLqPtXwlWBgWnWsmBVeBAHhzEnP6r7GjnAVie
 IUItHgHHNk4Rk20C3s1Nodhd9fFIx65Z4XcurjcLU4hICUtoeX4b/uvAahdhueg/nk
 kZ9sHhWagswid0IcxqPMc7GaOcYrfcLQ3NdQ7N0c=
Date: Wed, 30 Oct 2019 15:36:09 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: allow block device to use buffered I/O
Message-ID: <20191030063609.GB16863@redsun51.ssa.fujisawa.hgst.com>
References: <1572409583-3109-1-git-send-email-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572409583-3109-1-git-send-email-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_233613_234050_1570C1C3 
X-CRM114-Status: UNSURE (   8.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:26:23PM -0700, Chaitanya Kulkarni wrote:
> NVMeOF target already has a support to execute requests in the
> buffered I/O mode with file backend. This patch allows=A0block devices
> to be used with file backend code so that buffered I/O parameter can
> be set for a block device backed namespace when newly introduce
> configfs parameter use_vfs=3D1.

Is the fs overhead so bad that we can't just remove the bio based nvme
target? It seems low enough that having a single path to optimize is
worth considering.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
