Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4835215E
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 05:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ptMQVHdA6PUM4sgDHAh0X6fHHUV7fER5n5HA/AqnwU=; b=QK3qLvEMBmVpHU
	Vxcc736IbR5AMAjfTQ1SmsifIvswMiyRXOMuZQNVgF54n7N55oHUyxjWMWHuL4bKQm88Zk4ZNnRWI
	7Yb+GBa5+XDkaoseqQ3W5u11yu7vyMSvu6kkCucfkrSWWihZarMIcfC8E9U48GNXWjavMeb79ogtQ
	xeMPXxLPM0nXXCvLTijxpogOqWGmmIEjGpJ3c1AQnz3V5pWF94iwecq/oALG3R0rXGyOnZ6GAy2nS
	vBjol3RPwO4k+t1GnKqRFYlAGA9LSl4g/+mFma39ttCZehDe6luOyHqjkFSIyz2qdGqt2bMniRqgZ
	1gxUBfShGqEQxmfuVhQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfcUx-0004aq-F8; Tue, 25 Jun 2019 03:51:59 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfcUh-0004Zn-UI
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 03:51:45 +0000
Received: by mail-qt1-x843.google.com with SMTP id m29so16978564qtu.1
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 20:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kXJGETA/jJ0RNhUF4386IT59bPJr3Q37TZWH9CEiV9k=;
 b=hPTBh4P3Z7HxVQ1mJ762Mok61s1wxcWhUnvGdnKDOaJTWE83YvvY0cc1YDOaiqd7vi
 P0dDipAcCaZ3dHpKLAGwgnGe0Wgaqa+bfKynMaz5tBjJfnuAqFAdL/EyJ1eBrWezVs18
 ptnXHf7dxFDxwwoatvW15kdM1tOnFINndIdadOxn7Dk0tjxXq17X1zlMTKGMBeO3b8Zm
 CibeF4oHmo8j+8hQhCu5ZgDkBrUCBcBMoI3D++8Yr59saKhcuEnuSpamgac/xxgwUq4C
 THweH29RavF2tBZv3uTko+ba1VYlOn8w+7/GRUWWJgQ+XnCy35AbL6JKasygZeZRbaY2
 XhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kXJGETA/jJ0RNhUF4386IT59bPJr3Q37TZWH9CEiV9k=;
 b=ChLGyUytQApbRUOG3Vn0o4MUSdwCuOzcoAwor7JEx5s0sNvFBCCA839kiB9f4HQRzS
 81reOuNJWhGcfyo9yQW5BmU0Pc2MP4ijCqXxQHEqW3IT5F249G+KLw6K9AmZSyiBbsRO
 rioZ+kOk6hvT+BYo9JhE78XlWi/VGSUps5zXtr7WjJBZLMocqUAAF/yG/B+7jdTHWRKS
 T4ySUzL9kyMb4pb8JoGf0nAIPbzLzCzqlShOubd3lcHmvKWciA4rnWdRPWxgvj4+dj89
 ++O+6Apo7jr6jeNmb/dZjkAbV0jmKAuBQQGsTADliLDH8DgmvnOZ8gosmRrQNnpBRq9B
 cefw==
X-Gm-Message-State: APjAAAUJdjapSUjxosJEAhtRuL1ABResn9SNYUZXaNvQmykE02pB2x1h
 rqwSoCIYbk5O/4Vk1dF7jiZB5cgW+mgl6UPpc/doxQ==
X-Google-Smtp-Source: APXvYqysYiUZoWD/Jf4xCDTfTLYGuMOk+c5m665oC/suZNO5Km6hGfXjFCr3fn7wYiYo6ZCFPd5whrK8A0sCv8hhNSU=
X-Received: by 2002:a0c:9807:: with SMTP id c7mr30275759qvd.26.1561434700099; 
 Mon, 24 Jun 2019 20:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190620051333.2235-1-drake@endlessm.com>
 <20190620051333.2235-3-drake@endlessm.com>
 <20190620061038.GA20564@lst.de>
 <CAD8Lp45ua=L+ixO+du=Njhy+dxjWobWA+V1i+Y2p6faeyt1FBQ@mail.gmail.com>
 <20190624061617.GA2848@lst.de>
In-Reply-To: <20190624061617.GA2848@lst.de>
From: Daniel Drake <drake@endlessm.com>
Date: Tue, 25 Jun 2019 11:51:28 +0800
Message-ID: <CAD8Lp464B0dOd+ayF_AK4DRzHEpiaSbUOXjVJ5bq5zMXq=BBKQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] nvme: rename "pci" operations to "mmio"
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_205143_981071_ED15903F 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-ide@vger.kernel.org, Linux PCI <linux-pci@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Alex Williamson <alex.williamson@redhat.com>, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Linux Upstreaming Team <linux@endlessm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 2:16 PM Christoph Hellwig <hch@lst.de> wrote:
> IFF we want to support it it has to be done at the PCIe layer.  But
> even that will require actual documentation and support from Intel.
>
> If Intel still believes this scheme is their magic secret to control
> the NVMe market and give themselves and unfair advantage over their
> competitors there is not much we can do.

Since the 2016 discussion, more documentation has been published:
https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/300-series-chipset-pch-datasheet-vol-2.pdf
Chapter 15 is entirely new, and section 15.2 provides a nice clarity
improvement of the magic regs in the AHCI BAR, which I have used in
these patches to clean up the code and add documentation in the header
(see patch 1 in this series, ahci-remap.h).

I believe there's room for further improvement in the docs here, but
it would be nice to know what you see as the blocking questions or
documentation gaps that would prevent us from continuing to develop
the fake PCI bridge approach
(https://marc.info/?l=linux-pci&m=156015271021614&w=2). We are going
to try and push Intel on this via other channels to see if we can get
a contact to help us, so it would be useful if I can include a
concrete list of what we need.

Bearing in mind that we've already been told that the NVMe device
config space is inaccessible, and the new docs show exactly how the
BIOS enforces such inaccessibility during early boot, the remaining
points you mentioned recently were:

 b) reset handling, including the PCI device removal as the last
    escalation step
 c) SR-IOV VFs and their management
 d) power management

Are there other blocking questions you would require answers to?

Thanks,
Daniel

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
