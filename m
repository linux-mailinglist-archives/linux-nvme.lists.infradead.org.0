Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A68949BB5
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 10:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTxXgQpozQsiKlZXgnwboVBndNH0e2JvsFLVsx4arfk=; b=Z+F108r8+zRTjM
	v5lCOdKQV598YTb6EKaBhkon3YKi0NP/7+R6WAP47fHTBlH2eVumhceyLYZ5VkLTTI1hNMH2Tj+lG
	tmLdoQSyQwIGgHrvc0lFdncNdYDi5axny9NNoFt5u9zsKi0qLFq19LeoDxZhSHwG+7Qbeu0VbjxSz
	7y2gtxmm3kZV2vrA/u8Z+A0OW9IE3rh703gCV9CXngVNpBCF2J8UgcZdO3827gUS3kkI62/z0b0uC
	SdRoZwSbcZ7bOxfBvqxZ5s7eL3BZ3bPTmz8WaQq0qRVPKkwDYc52kH0wU+sgzDyzq4G7qZ61A3QBe
	qRuzu7eV1hqd14kQrbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd995-0000IX-Js; Tue, 18 Jun 2019 08:07:11 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd98j-00008r-0Z
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 08:06:51 +0000
Received: by mail-qt1-x841.google.com with SMTP id x2so14203955qtr.0
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 01:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZZFVzMIsw2Aj7pTRgo/2FmyBTRVVD/iyukGOksnFh0=;
 b=fcNF1ZRJ00IZY2gkoExFv8g2IKGSRXmFWQ4kTALcYGFNqqrUcKhlhXbw8Wd2QTjXwk
 k0hHLA/17QImguQYtA/TR2zp8TsxK3sPCIr3yQuqpD9mq50ZkjZPvKLgFOrIMK6ZEiI4
 u1OmH0w4FyBtbebTkCgfeMwZ9ZX7PA4I5L4kmyGKXDS5eMQgGpa0ooVT+xz0yuGMCoAh
 UbMqePAObC4vq75Y6QCm+kjZBSoADK4p2BHz+xHfR4n54L5ervkhl9RH+LlT8voGN1B8
 z8VJbv+sXx489sBAwwPxj4lSN42gPDjGhD0ljE8FjIWBSLw7VWjq7EfZZjnsO7wTKkM1
 mm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZZFVzMIsw2Aj7pTRgo/2FmyBTRVVD/iyukGOksnFh0=;
 b=RjT/v+R9nT3VkSga69pWa8U7VzXvvRnlCWrBPaDaZ8rk1uCElIbmqqJ9juhQMoXOay
 sKX5ulgtky5I7YVLLh0nFhKuF33QEO+0TaPJtY/E2xmg6qmuddiisVO9uB92YHhyivZM
 luX9kVtxmlWUdq7VMFeDmVIqA+WZRuySVwDj+i1Zw20Li1pay5sjflD/jm2rN2AgJjRw
 7y3D+cuQ7LcxhJv022ZGYmMnyIpLAftZvh+OM/L8+7HFKgxJpynyfI5sarF2kPy47H8M
 S/UzB5DNHRNHJY4joig3Fc11GYHMnWzoHYe1Iqcuf1Rj41Dq9i4Uo/5cyu8qafzeMcWC
 GoYQ==
X-Gm-Message-State: APjAAAWrsPJh3bLtIiLuONGa4OqGUucTj0MGm4p/blr6cGPX23DBXxzD
 jBNAAfzdtNWab/QDuKmaztkE0n6lNaVZeHaEHjUj1w==
X-Google-Smtp-Source: APXvYqylBOZvcoG7IqfNWowr8Rr/SUDXGkVrsTHhfIANPkwzO7H1s0HZeyIAAJeNkKds08HWL2fXX9sFjtf5aII0HaU=
X-Received: by 2002:aed:2358:: with SMTP id i24mr10041411qtc.239.1560845204774; 
 Tue, 18 Jun 2019 01:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
 <06c38b3e-603b-5bae-4959-9965ab40db62@suse.de>
In-Reply-To: <06c38b3e-603b-5bae-4959-9965ab40db62@suse.de>
From: Daniel Drake <drake@endlessm.com>
Date: Tue, 18 Jun 2019 16:06:33 +0800
Message-ID: <CAD8Lp44rqGh3nmUOFhwq+SSxpJGuWvLFJ8sKtM0q1GeY0j4v9A@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Hannes Reinecke <hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_010649_718390_7D417047 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linux PCI <linux-pci@vger.kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>,
 Keith Busch <keith.busch@gmail.com>, linux-ide@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 3:46 PM Hannes Reinecke <hare@suse.de> wrote:
> On 6/14/19 4:26 AM, Daniel Drake wrote:
> > On Thu, Jun 13, 2019 at 4:54 PM Christoph Hellwig <hch@lst.de> wrote:
> >> So until we get very clear and good documentation from Intel on that
> >> I don't think any form of upstream support will fly.  And given that
> >> Dan who submitted the original patch can't even talk about this thing
> >> any more and apparently got a gag order doesn't really give me confidence
> >> any of this will ever work.
> >
> > I realise the architecture here seems badly thought out, and the lack
> > of a decent spec makes the situation worse, but I'd encourage you to
> > reconsider this from the perspectives of:
> >  - Are the patches really more ugly than the underlying architecture?
> >  - We strive to make Linux work well on common platforms and sometimes
> > have to accept that hardware vendors do questionable things & do not
> > fully cooperate
> >  - It works out of the box on Windows
> >
> Actually, there _is_ a register description:
>
> https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/300-series-chipset-pch-datasheet-vol-2.pdf
>
> Look for section 15: Intel RST for PCIe Storage.
>
> That gives you a reasonable description of the various registers etc.

Thanks for your email! I also spotted it for the first time earlier today.

Section 15 there (D24:F0) describes a special/hidden PCI device which
I can't figure out how to access from Linux (I believe it would be at
D18:F0 in the cases where the 300 PCH is integrated into the SoC, as
it is on the Whiskey Lake platform I have here). That's probably not
important because if even if we had access all the values are probably
read-only, as the BIOS will lock them all down during early boot, as
is documented. But the docs give some interesting insights into the
design.

Section 15.2 is potentially more relevant, as it describes registers
within the AHCI BAR and we do have access to that. Some of these
registers are already used by the current code to determine the
presence of remapped devices. It might be nice to use Device Memory
BAR Length (DMBL_1) but I can't figure out what is meant by "A 1 in
the bit location indicates the corresponding lower memory BAR bit for
the PCIe SSD device is a Read/Write (RW) bit." The value is 0x3fff on
the platform I have here.

We can probably also use these registers for MSI support. I started to
experiment, doesn't quite work but I'll keep poking. The doc suggests
there is a single MSI-X vector for the AHCI SATA device, and AHCI
MSI-X Starting Vector (AMXV) has value 0x140 on this platform. No idea
how to interpret that value. From experimentation, the AHCI SATA disk
generates interrupts on vector 0.

Then there are multiple vectors for the remapped NVMe devices. Device
MSI-X Configuration (DMXC_L_1) is set up to assign vectors 1 to 19 to
NVMe on this platform. But it says "This field is only valid when
DMXC.ID indicates interrupt delivery using MSI-X" but what/where is
DMXC.ID? So far I can get NVMe-related interrupts on vector 1 but
apparently not enough of them, the driver hangs during probe.

I've nearly finished refreshing & extending Dan Williams' patches and
will send them for more discussion soon.

Daniel

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
