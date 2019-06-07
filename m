Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDD738C09
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 15:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=912NaqgRHZtstvhR9u0Nho4oVFr/ZsVy7h4CLc3R9bo=; b=REKSDlCSqP0zM0
	iBAsoqDB/OjaDbThrigyJt4iHyvVCYNr4wEND86eLDQKDvckRDGXqIKFlIMWyNOtpC4Sv/BCW7N3M
	tMo383S+G2b+G08lv8jgZKxynpuNqLfw5axIdtgh5mpBe9XMOo6hKh4DzJRHeMKz+BzVxOhLcijKM
	NyHtOpg8o/jFr+WMaIsgYmp6gswZF2xG5CTJ0gy/ZgcHIbI+yj+X7HwQuss+CcTgw53XXRldFh7NE
	yZ8FE5fGeunPGPDJCLajTflFbMSlZw3/tbqGVO3tgQAK1VQ6hqMpQ3bLnP4Ajw88ycNEVLspmZYZt
	43pzdq6X+rfdSL8+poyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFMF-0004Wh-AL; Fri, 07 Jun 2019 13:56:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFMA-0004WF-BK
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 13:56:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so2195715wms.2
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 06:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hiUvKerUmT5bXXeNyPAxzkwThoj4aulcyx6ygvfVw1I=;
 b=YujogZTAwyEjDQigwMFu3pWyidcVQydSa+C4CUKe6xq9S+QZoAs5dxliyKDbd11RmW
 wKXL2opbdrmeOLe/e1BOyo8ZuZ15hpVbFmAMKgWlZp+bYOtgBOVkxtpGY5BNikR+2Zb9
 2kRV8JydITAvmc6o9xtG5ux5eP2019TovHZ/hFG1Pwc84tpOWY/Wcf0v3XB3Z1nbd0/6
 /1gDyn0q8/UPlad7LbNPO+PsTE8+ElVX4nY07yjThPIaJcj9Au2JpRvx8ZRHOswodHqq
 y75TEuu1jnb7ATLywdkKPi+nhRmUvS78CbOIwKBEtobmbt8srQCXcbBjMBxdt9By9YRE
 +CMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hiUvKerUmT5bXXeNyPAxzkwThoj4aulcyx6ygvfVw1I=;
 b=WWgtFzoDWAS1tECHhvDZewNfatlsV65h5bOce+jclBEk8D6uKcNiDzenJpVFmVxwOS
 wFfe4ohSpItvc15N+vACimTLfNdN+zmutwnUNwkvGOYzC3efd9nJ9wos/H1Q0h91wijK
 634wS41QvkccoDvgxaCWFN7BXdWwnx7BWkYs4M9QRcfxPmYnfK+GIS+/Ny7xSSMsLfTr
 /3GOIEG1BIqR+dcJfTeMvkYNC2UjieTRXbMP47kDNuqLlQZ2uNXM5kCa6kFBQ5xPTqLH
 q9KW16Go5Py7Yb+z234fIosEfeFsXE9ngNP6u7Goaf1ZhMWaWOfZEZBlCbHpNFfnf95B
 JGUw==
X-Gm-Message-State: APjAAAXi4NgYeL1Ylu9CJ0QDGd7eihXPTFijbbF3DooW7+nnOoSxGkvA
 CClcGDQgqbMU1EkncyS4iYZExlkWE7ZmW5KJQ7o=
X-Google-Smtp-Source: APXvYqwtvPPedffsj6YK1TCgKvjevHPWDcCGKq2NlZcdUTjNSFblE747+k7UAUlIP81BaU1szI/G8eEVNDM1UgGDE2c=
X-Received: by 2002:a1c:e90c:: with SMTP id q12mr3813467wmc.128.1559915792811; 
 Fri, 07 Jun 2019 06:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190606212854.122478-1-bvanassche@acm.org>
In-Reply-To: <20190606212854.122478-1-bvanassche@acm.org>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 7 Jun 2019 07:56:21 -0600
Message-ID: <CAOSXXT5vsi4Fp20dj9TrouwNAYfOAMxAsbFZADZQ9pZE8uo3VA@mail.gmail.com>
Subject: Re: [PATCH 0/2] NVMe 1.4 Identify Namespace Support
To: Bart Van Assche <bvanassche@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_065634_414079_82DA166C 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 3:29 PM Bart Van Assche <bvanassche@acm.org> wrote:
> Hi Keith,
>
> These two patches are what I came up with after having read the Identify
> Namespace sections in final draft of version 1.4 of the NVMe. These patches
> compile correctly but have not been tested in any other way. Please consider
> these patches for kernel version 5.3.
>
> Thanks,
>
> Bart.
>
> Bart Van Assche (2):
>   nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
>     nvme_id_ns
>   nvme: Set physical block size and optimal I/O size according to NVMe
>     1.4
>
>  drivers/nvme/host/core.c | 14 ++++++++++++--
>  include/linux/nvme.h     | 12 +++++++++---
>  2 files changed, 21 insertions(+), 5 deletions(-)
>
> --

Series looks good. There doesn't seem to be much in-kernel use for
these preferred access attributes unfortunately, but this is a good
start.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
