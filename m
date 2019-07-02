Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B45D190
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 16:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTjCDoHfgRBKd6pqTSj7bwiUX0xiBYraBqfEk5CPuFA=; b=Az1P0tlCSCyKCC
	VAwAalT2CJbvIEsk/Pu5pc7O2n4mXR6O+r0DepB/QZ65oZdo3OuLWDcha10fOmN6v+/jN+nk9MzGI
	P88MfARnU5D5LJEDINLsNKtZpzF3Zif32bjjmQfBmlT/xJDUVBWbLfHthgGpXhQuiZ6w4bTwd1VnD
	7qMx44xolHKP+fxvf0IKpBP/bzA/x+zcjKOALgA5Csc/GE+AF7DmoTpd0vwyR0f3SQx1g0mZvEhmX
	G8N8G15zNMsBbhFP4nxtcZhckPm2jkhI/a9+hDB1NDL+69RTLc6j0shuNwiH0kabx+1YywS9cwTc4
	ZEPtiqCoG3jLI+Wzldkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJeo-0002aD-FM; Tue, 02 Jul 2019 14:21:18 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJef-0002Zq-GT
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 14:21:11 +0000
Received: by mail-wm1-f65.google.com with SMTP id n9so1058314wmi.0
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jul 2019 07:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YOP4cIhCFchFh7Ts0EaRKYxT55w5ilw6dPJQ+DsPjDQ=;
 b=qdsp5DuhiwqCSgG46I78GZwk/34jGMeHeMQ8xCjd++GsiQsX5lg3v4OeD9/1D8o96p
 66a+iQ0tEsAM/wcHW5P9yR79Rz+Z8Dp6rNHO4M6rwj8DQkcvYv9MeML4rwQ+n3yOfcDw
 ym40mYpmBtupTqUD5hbAg/wrY4iCXHth9VgMAohtp/NEM6seit9e6qmq6Fx/POn4E+jN
 oz1qW6F9EEKRxjg3SybRTc3ai0gqouz4L88F3RUUogkM/F6CBC50p5HqsgfcBlkn7Df0
 SsYw10l/uN43cAA/+8ew/L/F1TdlPVm91Kl/QbBSY+lA2xwYNo0areVzmNOv354qkaCi
 o6TA==
X-Gm-Message-State: APjAAAWzZw8pISleS5WKs0t7EyD1zIz9H92MNzfMG7G96vLWAVgbdnqg
 fELIOzkivO2iEnYBnKLAsr9W8vEnUzV6ev1NPD6z+Q==
X-Google-Smtp-Source: APXvYqzS3n+F8nxPXUZsJGoYYx4TXSm1CnYj1T5w5v5zzqIsBAPKiGpp/3FCnzuyj8gVO1B5tgBY0OiNixHfTzHXyvc=
X-Received: by 2002:a1c:a186:: with SMTP id k128mr3359340wme.74.1562077267560; 
 Tue, 02 Jul 2019 07:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
 <CAOSXXT6U8BeyXYWP9x-LW4mNkWYtumWdyw+fc19HJMpxRLQeLA@mail.gmail.com>
 <CAHhmqcTdN9UfYJCmfQ1kzSF+mP8-xjZyxBjqGr0dCs6gqth5Pg@mail.gmail.com>
 <976249a8-9789-dd28-20d0-4917566c2f28@bio.ifi.lmu.de>
In-Reply-To: <976249a8-9789-dd28-20d0-4917566c2f28@bio.ifi.lmu.de>
From: Bryan Gurney <bgurney@redhat.com>
Date: Tue, 2 Jul 2019 10:20:56 -0400
Message-ID: <CAHhmqcRjp9mk8NTw+3Du_NgTfDzHa7-kp-w8=b8amnGEBJkkPQ@mail.gmail.com>
Subject: Re: disk-activity trigger not working for nvme disk
To: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_072109_553287_ED426C64 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 8:49 AM Frank Steiner
<fsteiner-mail1@bio.ifi.lmu.de> wrote:
>
> Bryan Gurney wrote:
>
> > The only callers of ledtrig_disk_activity() in the kernel right now
> > seem to be ide (./drivers/ide/ide-disk.c) and libata
> > (./drivers/ata/libata-core.c).
> >
> > However, there's definitely a motivation to try and extend this to
> > NVMe devices, for a key reason: each NVMe device is its own
>
> So as far as I understand your mail, the nvme driver would have to
> be extended to make use of ledtrig_disk_activity, is that correct?
>

Supposedly.  I'm not sure how to do it, but it might be worth a try,
to see if it's possible.

I forgot to mention the locations of where ide and libata call
ledtrig_disk_activity():

In ./drivers/ide/ide-disk.c, it's called in ide_do_rw_disk(), near the
beginning of the function:

        ledtrig_disk_activity(rq_data_dir(rq) == WRITE);

In ./drivers/ata/libata-core.c, it's called in ata_qc_complete(), near
the beginning of the function:

        ledtrig_disk_activity(!!(qc->tf.flags & ATA_TFLAG_WRITE));

> However, Keith had argued
>
> > We don't take any particular action to notify any subsystem
> > of IO activity, so if the blinky lights work as desired on
> > some nvme platforms but not this one,
>
> and I was pretty sure that it was working for the NVMe in our HP AIO
> Desktop, so I checked again. Indeed, the NumLock does light up, and
> I didn't really care about it a lot when I saw it seemed to work.
>
> But actually it shows a strange behaviour. Instead of flickering
> when some I/O is done, the LED just flashes periodically, once a second.
> No matter what kind of I/O is performed on the disk. So it's not really
> working as disk activity indicator, and that would likely match Bryans
> observation that nvme doesn't use ledtrig_disk_activity at all.
>

Aha; that's interesting. I wonder if that specific example of hardware
is using a firmware routine to flash that light.  It's possible, but
it would be vendor-specific, and not really consistent with the
previous "HDD LED" behavior of having a near-analog response to disk
activity, or the International Blinking Pattern Interpretation
behavior of 4 Hz on/off during drive activity, and "steady on" for a
drive that is online, but idle.

One key thing to remember about NVMe drives in general is that each
drive is its own controller.  This is different from past drive
interfaces, like IDE, SCSI, and ATA, where most systems had an onboard
controller, which would then have a 2-pin 0.1-inch-spaced electrical
header, which would be connected to an "HDD" LED on the case.
Additional controllers (host bus adapters, RAID adapters, etc.) would
usually have an 0.1-inch-spaced header, where the "HDD LED" cable can
be plugged in.

Therefore, if each NVMe drive is its own controller, how does one
display the activity of each drive on a single LED?  Aside from
something like the example HP all-in-one system, most other
manufacturers seem to be choosing to not have a drive activity LED
anymore (and this design decision dates back to the early 2010s,
before NVMe system drives were prevalent in consumer computing
devices).


Thanks,

Bryan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
