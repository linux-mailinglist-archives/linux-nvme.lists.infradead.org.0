Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F786A2B1
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 09:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHMKz4Hxdm9Rt8Lpt6Plyt6el9AO3hl6A/JJB0fsyyg=; b=Jz2Lv0cdXd9fKs
	sfeQvawPFH8PmITShTRQHkQMfjcqbFAFGHXPQS1y134btfa5ltNoZSp5QjlBS2NkEqkrD+zWZmJAO
	sXoW4TjaA7vT/2MRRmIh+XOQ/evHwUT49bi0tvelOVTQTjD16GMHucVIufbke9qWsOioG31aTrsjC
	oCUPQY4xrYLMgWn8ys9oKTIl6mymAjNzppsKyiXhRMc4WngO6AsTrmgQmwZmAbZN8ebORpS87A0Gw
	eI2bdSWC2C9Jwidt1wjaaWKevsELaW4oEU1IXiPDW6oquFg5BF0PCYyrmvOBWhQoYtVs5gZ3Fu4qQ
	nSLj8FjjILcKh1Qq9i5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHdW-0003JK-Dq; Tue, 16 Jul 2019 07:12:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHdL-0003Ig-AS
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 07:12:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so19718757wru.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 00:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NRMwMg47jMgHw5IV6mLn77vCMbjTm5a1h1uSx62uOvQ=;
 b=G6UOoyG4OpBJlQQLzmaFloHe3nuENgspxTjIBz7jv8cj5mP1IIMtFcFO3nJvj/pAwy
 eML3A7zTqkP3LdjS2OyhXlFO0kNOnNm8k0foJabROCDxtumoTdZx54rdSI0O82t9WiOv
 ES+dbenlOsdBIHK0ESYZ+l+ORNzihGI4yp6gssCc9vCMQMj/6mLMnLN/q1ICcMTIMPgT
 oIlQxEOqhptdBfUDvmsoBX8Sfg/Tfe6WW4pnThWkgDCSnXVX3XRpkxLkFXr3/7mxPXP9
 bFZchluDQ5fG6r2riheUhJrF+4Vtb+ga+DwCJ+pxKospCsIXm6p9F4nmdGGCTr+WB5X7
 i0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NRMwMg47jMgHw5IV6mLn77vCMbjTm5a1h1uSx62uOvQ=;
 b=ELHHzbx1KnBsqBdWV4poUe7IilGbdmdpCdZp4vS/f6v0kbPp+cP+9v0hwpabhp9qwa
 +JVNtcR1Oc5hyceNVLT7VSWo9XptVRuaO72shmbFwQUKfa5Cooz5GSMmi1GEJeW7dobK
 tFJWrXa78+ySYnj1AYRAz+jtsw9XA/tPi908x0HK4/CFDaKgRPnhIlyw/HgR5ZIOE7En
 2cQ/adpfpAMCn/hv8zqOmAHHPGcDtwh7RltLwG6s8Ur8OiuuWJefRFdYU3LSObehV3mB
 R5Jd05OjS4RMDC0sBEWJK0JaF2P14H3DrRnZKleqX7US1j/ZvgmvRceoTR2nxbs+OHKW
 QqNg==
X-Gm-Message-State: APjAAAXaAqCKLnYzGLkVyaubh6sPetPdVt+pr83PdsD0RqNeLMKNRdSl
 Z4XOGsx7rNnaPHeAvUn2OB9CU7Y+N5D7xkCaMuY=
X-Google-Smtp-Source: APXvYqxYnHToOhs/3iJ+zhUk9UkGqG8ndpZlzspM4fUkQE028nVJxGUAYohpBwoHFUSU8EYSfdgHtQFcn6FhqzEfmhA=
X-Received: by 2002:adf:f883:: with SMTP id u3mr33605341wrp.0.1563261137356;
 Tue, 16 Jul 2019 00:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
In-Reply-To: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 16 Jul 2019 15:12:06 +0800
Message-ID: <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
Subject: Re: nvme-5.3 ssd performance regression
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_001219_357760_145F55CB 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 9:05 AM Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> Hi !
>
> Something I noticed while testing those patches for the Apple drives.
>
> With 5.2.0 (and those patches):
>
> [benh@mini ~]$ sudo hdparm -tf /dev/nvme0n1
>
> /dev/nvme0n1:
>  HDIO_DRIVE_CMD(identify) failed: Inappropriate ioctl for device
>  Timing buffered disk reads: 5960 MB in  3.00 seconds = 1986.22 MB/sec
>
> (The numbers are reasonably stable accross multiple runs)
>
> With nvme-5.3 (and those patches & the ctrl->opts NULL fix)
>
> [benh@mini linux]$ sudo hdparm -tf /dev/nvme0n1
>
> /dev/nvme0n1:
>  HDIO_DRIVE_CMD(identify) failed: Inappropriate ioctl for device
>  Timing buffered disk reads: 4520 MB in  3.00 seconds = 1506.63 MB/sec
> [benh@mini linux]$ sudo hdparm -tf /dev/nvme0n1
>
> Here too, the numbers are quite stable during a given boot but
> interestingly they seem to change from boot to boot, I also observed
> 1700 MB/s for example. It's a rather major regression.
>
> The .config is identical in both cases (an x86_64-defconfig with a
> small tweak or two, I removed more drivers mostly and made nvme a
> module)
>
> In both cases the io scheduler is mq-deadline. The device has a single
> IO queue.

It should be caused by the following commit, and that patch uses
single mapping size to limit max hw sectors, and looks that way
is wrong. For example, on qemu, max_hw_sectors is decreased to
512. You can try to revert the patch and see if it makes a difference.

I feel we might need the max segment size limit too.

commit 7637de311bd2124b298a072852448b940d8a34b9
Author: Christoph Hellwig <hch@lst.de>
Date:   Wed Jul 3 09:54:44 2019 -0700

    nvme-pci: limit max_hw_sectors based on the DMA max mapping size



Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
