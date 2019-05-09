Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F77193C6
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 22:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD5GkE4wQ9i5IiMC/T7dfo+z5x4UgKlDy3IYNz3wV6A=; b=BQ92h8VX8X3CS6
	54GnQir4SRjlvew8jKzYsELyGAUjR4mgZT//Y8EjllykkbH+yycz+HoRa/LM82vv7HxNLQWmaR10h
	+yJfZzaUOBOOlQZcCMR82Shi99bLVQoh80wS7EhM8grxFv3son7i6YhMAHnDPyTJQZNdDxbUdTBKr
	Gxjholu810MOgkfPs328d68tjlSTM1rwRIQaJ0sBs3/XqK2qScHpGpJ7EIyVzoCluYFjw+LvYKqKG
	XbpH1q2YEUMS/PzCxtZChiURfgZJsJBuNELdxhJda2d9NNjKiDQfIFCImeEu22e3b3OhOhLxnrWxa
	74QqbklxIIVzXR5YKiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpxo-0006Uz-OT; Thu, 09 May 2019 20:48:24 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpxe-0006LG-RS
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 20:48:18 +0000
Received: by mail-ot1-f67.google.com with SMTP id w6so3599296otl.7
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 13:48:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AiG+7IgefHphLK8dn9WkopmkK9DUfiTtLgzlRRlQQW8=;
 b=mI3lWDYtroNz7EwdHMWyr/7snf4d8W32/VrfBhc4b4p+z1727HqkjV9LoNbWRB0+fh
 ZPo429cbSSlJ3XNn9rs32ifK5QfFp/P6EYqUG4GxTH7hKcxIfbzelZNhPIJ1IgKx0Bd3
 tmJKabb1ml8aQe/ng68HZyb/cLNqq6GW72PDobl2I9eZaD4mXzVy2uZa0IhslJ7Fuf9l
 dWKb6es4s//nXREpyUi3JXo3yS51EDCkCk9uRxq5z4Jmbl5VI8ZpMOuKiZrZ/X+i34cN
 8K+i7d9TioZbRMNZGyJ2tlYqOvd4qlP9nfVe9jCYBHv9KR41V83Q44IPkuxJtcLFUVEF
 nhZw==
X-Gm-Message-State: APjAAAVN23WIRPIKRn+dbrgonUI8HvKh8G6Q9bBbEuPxSanrPa7LXytC
 zpeED2x6Mkv4is1LbpHbGShFrVDttzv3IUk96kA=
X-Google-Smtp-Source: APXvYqw+d5l5cm+UleUITr7HOyQ8ACwu67ZrRwR26Gg+fWAICc7KH+nf1I7TKDGAfD/yUtQCQd3BgNFEbbV4owdKkYQ=
X-Received: by 2002:a05:6830:1251:: with SMTP id
 s17mr4294953otp.186.1557434893575; 
 Thu, 09 May 2019 13:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <20190509065223.GA15984@lst.de>
 <CAJZ5v0h51nMCte4yL76nMWaYrrXDPrOK=CeUpc50=r2Pp_icPw@mail.gmail.com>
 <20190509092514.GA18598@lst.de>
In-Reply-To: <20190509092514.GA18598@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 9 May 2019 22:48:00 +0200
Message-ID: <CAJZ5v0iezuuXeHAuEPbJ2fAcbmaySCAofU+yZ-j-WuN6O+yq0A@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_134815_109538_E9B753DA 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 11:25 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Thu, May 09, 2019 at 11:19:37AM +0200, Rafael J. Wysocki wrote:
> > Right, the choice of the target system state has already been made
> > when their callbacks get invoked (and it has been made by user space,
> > not by the platform).
>
> From a previous discussion I remember the main problem here is that
> a lot of consumer NVMe use more power when put into D3hot than just
> letting the device itself manage the power state transitions themselves.
> Based on this patch there also might be some other device that want
> an explicit power state transition from the host, but still not be
> put into D3hot.
>
> The avoid D3hot at all cost thing seems to be based on the Windows
> broken^H^H^H^H^H^Hmodern standby principles.  So for platforms that
> follow the modern standby model we need to avoid putting NVMe devices
> that support power management into D3hot somehow.  This patch doesa a
> few more things, but at least for the device where I was involved in
> the earlier discussion those are not needed, and from the Linux
> point of view many of them seem wrong too.
>
> How do you think we best make that distinction?  Are the pm_ops
> enough if we don't use the simple version?

First, I think that it is instructive to look at what happens without
the patch: nvme_suspend() gets called by pci_pm_suspend() (which
basically causes the device to be "stopped" IIUC) and then
pci_pm_suspend_noirq() is expected to put the device into the right
power state through pci_prepare_to_sleep().  In theory, this should
work for both S2R and S2I as long as the standard PCIe PM plus
possibly ACPI PM is sufficient for the device.  [Of course, the
platform firmware invoked at the last stage of S2R can "fix up" things
to reduce power further, but that should not be necessary if all is
handled properly up to this point.]

The claim in the patch changelog is that one design choice in Windows
related to "Modern Standby" has caused our default PCI PM to not apply
to NVMe devices in general (or to apply to them, but without much
effect, which is practically equivalent IMO).  This is not about a
"different paradigm" (as Mario put it) or a different type of system
suspend, but about the default PCI PM being basically useless for
those devices at least in some configurations.

And BTW, the same problem would have affected PM-runtime, had it been
supported by the nvme driver, because Linux uses the combination of
the standard PCIe PM and ACPI PM for PM-runtime too, and the
"paradigm" in there is pretty much the same as for S2I, so let's not
confuse things, pretty please.

All of this means that the driver needs to override the default PCI PM
like in the patch that Keith has just posted.  Unfortunately, it looks
like the "suspend via firmware" check needs to be there, because the
platform firmware doing S3 on some platforms may get confused by the
custom PM in the driver.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
