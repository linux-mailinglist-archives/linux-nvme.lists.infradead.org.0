Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AAA44CBB
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 21:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgaUkrqmyZ5SXYzQ5YmwXZaix5hcxpuN8XBOGSualJY=; b=DI+m16sumbU2kS
	wgNaZsHguYmzmp2sM8Dq6fKFiXdKfQoBgwbAQelk6jOxHy5bfiPaXiYRYlWmWWfZI1q5w5b/O4Qie
	yMcuXxsU+r7jOuwRLeqNeqA1JKttYonuprxzrFWeX1OsIG10nT84UM6sABRN7oq5kkTuxfQBzzS62
	cvqMXuvOx7qRIQlyIEvQs3KKS5Cot08R5Nwsj0JPz6mcR9WLxIqbBRKhK4IkOb+wvRIKOvkevVVLd
	/O/6tRwoFQk4X/MNAUbyqrSQh9vpe+gOWcQQdX99Rt4YP1VivMHbw1hf1oazm4h0zPqejlODHZzzh
	4vlOi7mJvr76+jP5covw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVs8-0004PT-3G; Thu, 13 Jun 2019 19:58:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVs2-0004OK-Dd
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 19:58:51 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so628432iod.6
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=0g3LShZij9OvLky32ww/mm8nsliTsm7gD3njRd6NCQk=;
 b=VvRUdVRnyB4TuhZ+9+/oPM6pb8vxTclPrmvRFZ9PzavJCtkYfSYgjGNiCUQTux1nUl
 9VjOQatdu+aPOowyvOuIY8hKioFj1wntgGyBXavSkEATXrC/5DcyjhYCe5Ag1uW/q8zp
 fQGdKjxC19RzzJyIAL/Mw4avblUSP65mKGcmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=0g3LShZij9OvLky32ww/mm8nsliTsm7gD3njRd6NCQk=;
 b=gFIVETborZADltvRK56JHAjVv+8DAvxnuDPGNtgF8G387KUI3h/eXZQM5UwxGohc5b
 SkfFs0/2t1F1qx81j3st7+PxIoqYewFvajmYcnKhLnTC+9huQptzyg7VlPdSV7PymlZK
 wqpX1CKdAxVOFV1e40l6xhyTZiZknseDgns1iC4ucuGFqmh5nG/YHBJwZRKbZx+cLH8w
 NZUf5Aaya1aVsVcgIkyUqr3LoPbxc0diosWK+MvhJflhX2chMMbqXdMP3LsJCgW3b72i
 4EaRUYnb9oQIIhJiMgv4w1jp/wvHLo1Zi7Jh0D9oShqH+GUBwFk8uEykaB9L2FzaIXVq
 9NdA==
X-Gm-Message-State: APjAAAXDY/5HtPnpxXgApmCp07/2JeWgfFuxOW6CNj7rIudkSVATJrRS
 cdFkkMymBlso0cbexLd+65ngl5dzTMj9CkWjiLwO7Q==
X-Google-Smtp-Source: APXvYqxdGc8NyPROiaW5qZ3CjU9Mi5BWb0Y5+Ghq0hcByTKiBd2ar5O9a3Vi002QTGCiPnE/Sx2A/4naPXD8YwkquS4=
X-Received: by 2002:a6b:f910:: with SMTP id j16mr7292522iog.256.1560455929090; 
 Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
From: Kashyap Desai <kashyap.desai@broadcom.com>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
 <20190608081400.GA19573@lst.de>
In-Reply-To: <20190608081400.GA19573@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgBfxw4kaN/cE8Q
Date: Fri, 14 Jun 2019 01:28:47 +0530
Message-ID: <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
Subject: RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_125850_463145_C87AD235 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
> On Thu, Jun 06, 2019 at 09:07:27PM +0530, Kashyap Desai wrote:
> > Hi Christoph, Changes for <megaraid_sas> and <mpt3sas> looks good. We
> > want to confirm few sanity before ACK. BTW, what benefit we will see
> > moving virt_boundry setting to SCSI mid layer ? Is it just modular
> > approach OR any functional fix ?
>
> The big difference is that virt_boundary now also changes the
> max_segment_size, and this ensures that this limit is also communicated
to
> the DMA mapping layer.
Is there any changes in API  blk_queue_virt_boundary? I could not find
relevant code which account for this. Can you help ?
Which git repo shall I use for testing ? That way I can confirm, I didn't
miss relevant changes.

From your above explanation, it means (after this patch) max segment size
of the MR controller will be set to 4K.
Earlier it is possible to receive single SGE of 64K datalength (Since max
seg size was 64K), but now the same buffer will reach the driver having 16
SGEs (Each SGE will contain 4K length).
Right ?

Kashyap

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
