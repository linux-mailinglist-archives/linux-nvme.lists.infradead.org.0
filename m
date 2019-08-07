Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0A085570
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 23:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2T55zUcedXcearSKV394kwHZGw7J2Emw1lfh3tB0tis=; b=K/5kq17l5NDH5w
	ODlcuxd670pDB5SOWqlSW4v9rGENmmc12bnzVKsoWGu4FODLcxd9oilazlqZ7UPQo7dbMl5FBFI3e
	sovf5xTY78ap2yTU5W4FJxFaJPwQLWiJclXF+BoXu90pIo3Qi7VViBhzR5yOoT1oXmBsoNwFzbzfj
	4WaV5z88J8fQdErivE4iyALTcsrbC1CH2EokiguxBQGqxVN9FRTkkZYcoYdMqriYBuD+FPEbjJAHx
	o7xGuemezgWV6NLJH8YRH8W5EMsg2yzCzg4YVDWjgzdFkBCW937AKCzsPlPwHyNDazB3AdIRiZ6eg
	8ANYnZZ3SteP39lFwTeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTtC-0002rU-5w; Wed, 07 Aug 2019 21:54:34 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTt4-0002rB-A2
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 21:54:27 +0000
Received: by mail-ot1-x341.google.com with SMTP id r21so104446020otq.6
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 14:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aeoncomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N8gpewXSiniLwf52mSw+q4hKiNkl6lHeASxWhnkUnJw=;
 b=qCgmPv6a7quS5H1P9e1aHHndJ89uTVTsaMAfSt+m6L6SIchgNoGhAIfAeAdf+NgIYc
 x2QPYq9esyeh7WtcETp4hLjL3CWKUQ6fjaepe19Idb5fc+3CDIHXar6oAhSUV8TTGGZb
 i6VmVg6cbtiTiKyxn87ep8yDZtvsp4A1tuFBHX8oHl2u0ksEDrdPxUulpHA0Tp+oXA+b
 16ShaKniwDSIRfu18TfGw8pm2XKsYpwG9zNF6CabjCNwxZLR1MxGdJU32teKerzQJHFM
 zkuUwvgoN7ychSfu7Nfmb/irUFX8mr5NBa0jBFT13vADQOtRa2lR09wJgD5oCYmldUgN
 q+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N8gpewXSiniLwf52mSw+q4hKiNkl6lHeASxWhnkUnJw=;
 b=Xsg8U9fI75g0fwbOYOmiyDcMD4nszgYFsqs7UCikYM88uoJG+3/Y3CioU6X4qqZFrD
 Mi5nTFsWW6d6sPkrpJ/N/hfftSl0B109YU2ME+25snrHrFzaJkdDX0ZUg3goiVo7qmvZ
 koRhXHj7sBVnBSvz+vHr1JY1Y9oMdNYPwJJ0V4YWefuVxEgCfjhr265+D0UBolTVq4vI
 V9nt9ImkQ7Et0ajAkGf2bJwnBooodMlc5/2VCth2B0xMXLQNoHdjfL3v6zTgd4fI5QN+
 mZQgOzAmVCQ2CzAkHBy5vIMbU6uPXLARXniHXp5eNWHFQbLAykDnOOCCdl6Nu/kvpVZK
 hypg==
X-Gm-Message-State: APjAAAVfXyXHUhMCq0E+OJ1XXZrZ0jRp7dlV/kRxOVWrmlqcrpVJsGMS
 E30p2NYWxzyolPgE/xGtHEwE8HaDf4vlvh1vbMlue5WvEzA=
X-Google-Smtp-Source: APXvYqxXqT5/pkoqnQnfdL5ph2zdEsC79nVa9pQQii9yG5LeFSA434Iz8CStR3k4QsbVEDqcpyF4XTviiBVDYL+NbfQ=
X-Received: by 2002:a54:4001:: with SMTP id x1mr213441oie.65.1565214864264;
 Wed, 07 Aug 2019 14:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAFCYAsfsCH+swCmpubto9od6dmJFsw0i+VDri9U+GVyZkOqcWg@mail.gmail.com>
 <20190807213039.GA26026@localhost.localdomain>
 <CAFCYAsd6ra346vBuNfd8fGcL_5ntRTNneXa3_TTk_YoAUy0ZFw@mail.gmail.com>
In-Reply-To: <CAFCYAsd6ra346vBuNfd8fGcL_5ntRTNneXa3_TTk_YoAUy0ZFw@mail.gmail.com>
From: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Date: Wed, 7 Aug 2019 14:54:13 -0700
Message-ID: <CAFCYAseCyHqpn-6NEhbu3EpyGfs-eMmsmkdKhg9QCiNP_tuE-w@mail.gmail.com>
Subject: Re: inverting order of NVMe pci enable/disable device during
 boot/shutdown? Failing release.
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_145426_350581_C959717E 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 2:36 PM Jeff Johnson
<jeff.johnson@aeoncomputing.com> wrote:
>
> On Wed, Aug 7, 2019 at 2:33 PM Keith Busch <kbusch@kernel.org> wrote:
> > Do you require all 24 slots be populated to observe the failure, or can
> > you repro with fewer?
>
> I have not tried with partially depopulating the JBOD but I'll attempt
> it now and report back. It always occurs on the final one or two
> endpoint devices (SSDs) to disable/release during the shutdown
> process.

Depopulated chassis down to 18 NVMe SSDs from 24. All 18 were
functional with good status, negotiated speed and width. All SSDs
visible to kernel.

After shutdown `sync ; poweroff` the next to last drive in the
shutdown disable/release order was left in a polling state
(G1/0width).

Host: Intel Xeon (Sky Lake SP), UEFI, VMD enabled, CentOS 7.6,
3.10.0-957.21.3.el7 (with DPC enabled)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
