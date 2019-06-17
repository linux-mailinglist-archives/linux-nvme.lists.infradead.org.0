Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B2447DF7
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 11:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNPRpPJm6c9mYuTR6yJrWC1Gi2hBwGfth1hGFLnAjfE=; b=deKD4hONW/9GJi
	l8gSLotSmVXCUK0w3W/aL+sYOS8aVthDQDjaUJ8owM8rrNnTkQyDcBm2k6qQBB83arC/W/Xo54Jmr
	jIenPDF6AqwQ4WgT9UgkFIVS5KWSUpw/6bxtKOcNmCbo5unQTywkJB6tLorLTmM+HAchTL65Qadj3
	dGJgIBXVSDm6MmSWUZfLZRzGovwIVP8uVL4W1v5tsvn6hNg2Rq5surmHjh8RnzIkl3T4b6w0PC7Jf
	EZDtwG6Jw0So8vS5EAEwfWsCEIVJ4YXo2kLEelEKrvBFAG4U38lQ/LFH9UgDoZTlgx+jdIDdzbsPs
	GB2CILftbGG08jLV837g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnf0-0004nV-08; Mon, 17 Jun 2019 09:10:42 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcneq-0004lz-UW
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 09:10:34 +0000
Received: by mail-io1-xd2f.google.com with SMTP id w25so19500195ioc.8
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 02:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=Mj+s4plNnZbEVe10BIzmZ1IijmMEuCHawFgLwkcZqoI=;
 b=ZVXe7pF/DKKbAtg0BLq1kHz+Yf8AmgubdjAQekKwZeBkWQQeo+lrwMdIAePBmlOgcE
 WJ3paACJ9GsoxC9mAywQ6EfBHW7Qhb1RZpLg6OjDRo0//12nX9SRpN+HRZNsKHbLnYNY
 mXR2sr52mBeN/pkOHc0Q5eeZBCOpWx8hMerKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=Mj+s4plNnZbEVe10BIzmZ1IijmMEuCHawFgLwkcZqoI=;
 b=M0OwZdb7wy91CgakU1uxmqdj4f/H7vnQZibhAWy8QjgTYi53DHDgmLV/8YG11tiRNK
 UWbWakIPjldaNZqjz8+Em7gZ/FgrzJ5mmRiMqokax3A5qz6SljL/usHyNcVddugBSyh3
 FZ7cDj67E6EjDYRgUrRKOfZhHEhNWwn6Vtj2S83ErtnOlEiHuXt2T0EHrPQIyLZDAgF7
 u8glWQj1lSMzXOg9xrND5Xbh35D7Li61+kxGltQd8c0lCO1gBQznETh0nZPR3oFBWyOI
 zu0LUkFe1J6nfzsufF7ZeesxBd/ZRyEcP0J3LhBAmgOEYoGMU8n0qhYFpngN+j1BThG9
 OU2Q==
X-Gm-Message-State: APjAAAVXLmi5nwXbdbzeKblPPWvxOO3emzLs70naAxMfsi6r7RIG0+eo
 tgJ3n7RcWbszg0WzSbPwvbZGxdMnWbp+01ITy0GwWQ==
X-Google-Smtp-Source: APXvYqwKR2USXudxvvKfOK55glU2D5y5FMiBAo7oI/W/qo2pfnh4b2Kx5on0RhBtIfzYHBRJ2BHKN9CUkaC5PBmqWrM=
X-Received: by 2002:a02:298b:: with SMTP id p133mr87239176jap.37.1560762627424; 
 Mon, 17 Jun 2019 02:10:27 -0700 (PDT)
From: Kashyap Desai <kashyap.desai@broadcom.com>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
 <20190608081400.GA19573@lst.de>
 <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
 <20190617084433.GA7969@lst.de>
In-Reply-To: <20190617084433.GA7969@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgBfxw4kQGu5dmvAzKBgtajXfsrgA==
Date: Mon, 17 Jun 2019 14:40:25 +0530
Message-ID: <e7443be50725bbdcdb6f1f4cc73955aa@mail.gmail.com>
Subject: RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_021032_990822_F6168F63 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, "PDL,
 MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>
> On Fri, Jun 14, 2019 at 01:28:47AM +0530, Kashyap Desai wrote:
> > Is there any changes in API  blk_queue_virt_boundary? I could not find
> > relevant code which account for this. Can you help ?
> > Which git repo shall I use for testing ? That way I can confirm, I
> > didn't miss relevant changes.
>
> Latest mainline plus the series (which is about to get resent).
> blk_queue_virt_boundary now forced an unlimited max_hw_sectors as that
is
> how PRP-like schemes work, to work around a block driver merging bug.
But
> we also need to communicate that limit to the DMA layer so that we don't
set
> a smaller iommu segment size limitation.
>
> > >From your above explanation, it means (after this patch) max segment
> > >size
> > of the MR controller will be set to 4K.
> > Earlier it is possible to receive single SGE of 64K datalength (Since
> > max seg size was 64K), but now the same buffer will reach the driver
> > having 16 SGEs (Each SGE will contain 4K length).
>
> No, there is no more limit for the size of the segment at all, as for
PRPs each
> PRP is sort of a segment from the hardware perspective.
> We just require the segments to not have gaps, as PRPs don't allow for
that.
Thanks for clarification. I have also observed that max_segment_size Is
unchanged and it is 64K.
>
> That being said I think these patches are wrong for the case of megaraid
or
> mpt having both NVMe and SAS/ATA devices behind a single controller.
> Is that a valid configuration?
Yes. This is a valid configuration.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
