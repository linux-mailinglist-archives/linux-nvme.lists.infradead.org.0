Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C5F5CF67
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 14:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7m8FQUZffyneD61dO2zIU01CgFsQ0K7IVl+iuLLQ6o4=; b=J/0et6kkdKs0MG
	/7hiqgN6hZLCAK3QvnVEfF5s/T74PUPLXzCFPtpGpYtcK+XMvfaGC+1M85NE2MqOOdFXsYJ39e5An
	8FnBwwyFeBdpRczNCTKsY/6VH3rqhRLzWxdcB9ghL3z0xLPxISqw9MeTycCVD6akkfSWA+toSek6K
	YP3yQegHYQN0RXQRernrzH5/uWFZaRfdWePcE8BW8nCB1sVv3lnThr9CN5oQIPtuNwGU/lr/74lya
	fGxHD0YlhvAkbTpYASzO9rFS30ywnPiT8hn/PQH1GaC8JZjW1/Z5CI4ypTDHhQusxayUEZAeWTv3/
	+bzDmr9ZnG+9BswXLWjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHt2-0003Bb-DG; Tue, 02 Jul 2019 12:27:52 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHsl-0003BA-Uo
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 12:27:37 +0000
Received: by mail-wr1-f67.google.com with SMTP id c27so9900564wrb.2
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jul 2019 05:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aURJIv/Cboi6G4NVIdeZCz0tSWynK8kmH0o8ntT0wAg=;
 b=kO9SisFFJSpuYuIo3+5PGduV7pIVjTRvN+XFp5mj8TyQptIG7MufLAL1VqzKVoT/C3
 3+mpxxKcEi8EM3j3rs3mLs135q6myQzp0/rVMt5iGIhltk1DE7EusB/mf4SuQTbPDffD
 WhKCq1NI9FugtsvPnUkxrlrYniHbbQAqEdzkfRAX6/2jUaCS41Z7S987qrin/HhdoYcy
 Is+WRHPDLcO4W6u4/8t/Gdea9pPxcbSPNcIZG0HKTCQQ0cTx9NDsrTXbiAD7NIjUrrSq
 4xK79/dRbOgNSUVned0N1mNhjauS+wFZca4RD012juJrknnTL78lfjV/Hh4jwFgS6hg1
 WDcw==
X-Gm-Message-State: APjAAAUTsCukBmKL3H0ZoGU7vOAoz8fCrsKEyoMkhfo4Cclqk+rR6eif
 8BCkW2YEz1w/bKRTjR2g9UbEaBzIsiOeJwklUiH6erVF6Xk=
X-Google-Smtp-Source: APXvYqygboJef7Xpa0zJwvBWDw4PGtHTjJqAbojoI5UZ52SEw3LRCwAkW15RdVg6O+mFjSXTxJZHqPwC8AzzyQI/O74=
X-Received: by 2002:adf:b748:: with SMTP id n8mr18043972wre.268.1562070454078; 
 Tue, 02 Jul 2019 05:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
 <CAOSXXT6U8BeyXYWP9x-LW4mNkWYtumWdyw+fc19HJMpxRLQeLA@mail.gmail.com>
In-Reply-To: <CAOSXXT6U8BeyXYWP9x-LW4mNkWYtumWdyw+fc19HJMpxRLQeLA@mail.gmail.com>
From: Bryan Gurney <bgurney@redhat.com>
Date: Tue, 2 Jul 2019 08:27:23 -0400
Message-ID: <CAHhmqcTdN9UfYJCmfQ1kzSF+mP8-xjZyxBjqGr0dCs6gqth5Pg@mail.gmail.com>
Subject: Re: disk-activity trigger not working for nvme disk
To: Keith Busch <keith.busch@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_052736_032216_9992F516 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 7:27 AM Keith Busch <keith.busch@gmail.com> wrote:
>
> On Mon, Jul 1, 2019 at 6:12 PM Frank Steiner
> <fsteiner-mail1@bio.ifi.lmu.de> wrote:
> > It's about the disk-activity trigger for the led kernel subsystem.
> > We are trying to turn e.g. the num lock led into a hard disk activity
> > indicator by
> >
> > echo disk-activity > /sys/class/leds/input0::numlock/trigger
> >
> > This works fine on all our older thinkpad models with SATA hard disks
> > and works also on our PCs with SSD disks (SATA as well as NVME), but
> > it fails on our newer thinkpads, i.e. T570 and T580, with NVME SSDs.
> >
> > The LED just stays off all the time no matter what we do with the hard
> > disk. As all other triggers do work, people on the ibm-acpi-devel list
> > supposed it might be an issue in the nvme driver (and not the thinkpad_acpi
> > module).
>
> I'm not very familiar with the led subsystem, but I can't imagine what
> the nvme driver has to do with this. We don't take any particular
> action to notify any subsystem of IO activity, so if the blinky lights
> work as desired on some nvme platforms but not this one, it sounds
> like the issue must be external to the nvme subsystem. What does this
> platform want the driver to do in order to trigger the desired light?
>

On a search through the kernel source, I found
./drivers/leds/trigger/ledtrig-disk.c, which has this function:

void ledtrig_disk_activity(bool write)

Looking at the log for this file, I see commit
eb25cb9956cc9384b7fa0d75dec908c9fac8c444 with this note:

"The patch... is widely used by any ibook/powerbook owners with great
satisfaction.  Likewise, it is very often used successfully on
different ARM platforms."

So it sounds like the intention is to give a storage activity light to
platforms that don't have them, due to the design decisions of
manufacturers.

The only callers of ledtrig_disk_activity() in the kernel right now
seem to be ide (./drivers/ide/ide-disk.c) and libata
(./drivers/ata/libata-core.c).

However, there's definitely a motivation to try and extend this to
NVMe devices, for a key reason: each NVMe device is its own
controller.  With current form factors, the manufacturer might add an
activity LED, but it will be a surface-mount LED on the drive's
controller circuit board.  That works for add-in-card and U.2 form
factors, but I don't believe I've seen an activity LED on an M.2 NVMe
SSD, and the device won't be visible inside an opaque computer case.

Also, sadly, most portable computer manufacturers have been omitting
the storage activity LED from their case designs, even for computers
that are using Serial ATA for storage.  (I've "retrofitted" a couple
such systems I own, moving the power LED to the "HDD activity"
header.)

And if there's a problem with the monitor or video driver, a storage
activity LED can give a positive indication that the system isn't hung
(though perhaps not as much as other operating systems that empty
their page cache in 8 intervals of 1 second each.)

As for server platforms, those hardware designers are usually very
good about placing activity LEDs on each storage device, since it's
mission-critical equipment.  I even read a news article from Flash
Memory Summit 2018 that the EDSFF hot-plug NVMe form factor specifies
a status LED on the drive, eliminating the need for backplanes to
provide status LED functionality.


Thanks,

Bryan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
