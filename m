Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53A7391F7
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alah597HYqwQBiGUmggq8V4FmehvK+GKEQR9H8JeFTo=; b=XzTAZqdhWi5RhF
	pXAatHEDoPdIMsidrHy4qoIfjhC1s2a8JacXmabUhtxWdVz0B6NJ9tXdmexh6rAcxpech9SjoRSH+
	TKLOQDoEVtAw/SSXg3lU5symBZibdJsLmfKTc3TGLcNwIIjWMilKUd7aWhOHhuTE+5ZVkcGwBkDA/
	MNleH3/5y7EnvR6zmCgCuLZGVUGP1B8H5NVN/m7MPXUofTow52V29zO99ivdrTtolePOUJXTFBilJ
	b7YiRnoHBNltB3BjpRXxJL1XjH+BHhMbaFubXKZ/hG+tjP1e5cpp0NZSKGcMkJ3YBBm7hYT6ZxOpb
	1R03fOasIixGt6yGA0Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHhr-0008Vb-T7; Fri, 07 Jun 2019 16:27:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHhj-0008Uu-UE
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:27:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so2687708wmj.5
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 09:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7rPjA0rgHTPPe5HzXQLiQhw979VpPUWv86nW7lWlQVQ=;
 b=FSSKiwDbQGSWMyN+oqgcGiUnQj6hZKME8uiDgDoBvdpWFoBr/RtxSFhmLXmHvDsRJI
 SPQpFoPd1+hjdhcpE0bafmMlRG7TxaQnUm6CkmjL7TNSb7H+u1XQ6gq+csAZkwH9KSFf
 C7HtTPmombbrEt7Yel7UOrxDDoj9RkYpn7HarT4mPnrnqKJIdT7BBo66p54L7S+zjdc6
 QcGaSDTOT3hRF2mSaF9rjPNd6bcAIlxaKttcYLXSMP//wQ4lDH48cYggM1t7OWhjVA+j
 xfDcVBsba12gZThCUA5malhwVslVumjCLZ4rsRlMeYc2BYmiIJ828S/AIamUbqS8pTSz
 0+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7rPjA0rgHTPPe5HzXQLiQhw979VpPUWv86nW7lWlQVQ=;
 b=Z3i0P9f/mPLRXXP/WTEdCwJytOr+EAaZ+axh1kyuTa8sNUHAgo1YeUsuRSkPOMq4J4
 5EcqY9VTD4tLsbh1oO3tuloAGBNN6sUT6rJ2iah8OvS5zxZiemcgJi8lKSMlurHQqkAU
 tIh9sFRREXuXG2U2wXT69NuYCCiVZeYyRwjkDF5X+4GvQPmkiaElzSNM3/42HYmRS9uR
 4Fi5xODc0h3kkUp2B9b0tSQOtHZKSIk6x7WNkVeUUX+CtGLUCrnAJTP4UuYr1rNPlE/K
 hzTwKxuy+DlBBpaIqC9oSYfuRm2tjZsQaB5YHPCYdxgXMHi8TNiKsyMTFsPtC7hXVtGB
 Hj6A==
X-Gm-Message-State: APjAAAVMs0DSrlPI8BfbPaWGf9gyDDuxw8K4Rp+ZdcDOvV+8VI+aErWX
 5YP6jhlBFWkoR895uQE0OtiH+v/qT+CiFOBEV8KNQpD3t5w=
X-Google-Smtp-Source: APXvYqy2y6CmHxJITivT1J55GeVW3eicAFeMt+ADl34tjIMxr8YAjoZ0tB28//HveCbYYzAyCWghyYIffX+Ii7mRSXo=
X-Received: by 2002:a1c:80c1:: with SMTP id b184mr3912700wmd.24.1559924818340; 
 Fri, 07 Jun 2019 09:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190606212854.122478-1-bvanassche@acm.org>
 <CAOSXXT5vsi4Fp20dj9TrouwNAYfOAMxAsbFZADZQ9pZE8uo3VA@mail.gmail.com>
 <yq1a7etjuab.fsf@oracle.com>
In-Reply-To: <yq1a7etjuab.fsf@oracle.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 7 Jun 2019 10:26:47 -0600
Message-ID: <CAOSXXT55eF5hUqoyyrY1OV1iPs3bKwU6FbmTN6m_-sr2JXQ5dg@mail.gmail.com>
Subject: Re: [PATCH 0/2] NVMe 1.4 Identify Namespace Support
To: "Martin K. Petersen" <martin.petersen@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_092702_627257_34C7A4EC 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 9:21 AM Martin K. Petersen
<martin.petersen@oracle.com> wrote:
> > Series looks good. There doesn't seem to be much in-kernel use for
> > these preferred access attributes unfortunately, but this is a good
> > start.
>
> Userland makes use of them to ensure partition/MD/DM alignment, pick
> sane values for filesystem layout, etc.

Okay, that makes sense.

The intention for this feature is to communicate potentially larger
physical blocks than page sizes, so I was just hoping for enforcing
that access from filesystems. Something like this from xfs

  https://lwn.net/Articles/770975/

would be a nice feature.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
