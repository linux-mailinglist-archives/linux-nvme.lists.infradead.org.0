Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ACF1C458
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 10:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNKkOlAD/5mMO763ym9AlwXotq/GTQcxCQCMzbboFVg=; b=UBi7MfKXCqTvmK
	XT3Ri/9MOsVmBRrxURokbZfgpchdp+MeEz3YkXypt8LOkR26juEfxLBRfdNbM8CuAtUne1kIhTto0
	57oqYRHHr0jUnEpQtcG+Ucip9EWNlCosL/U+pWAtUcrcjI763y7wR6p8NzM3TTl7PB+3vIeFtNqFG
	w8LmISDRTPRLM48H2J9y+unlfvdX5yu4Uj86tXuWhdu2nnHjRYv3fCgEJd0/1YUiynIRCRfJk0k2Q
	xLkotK1J49vYSeP5dKenPfVuz5qE4zgC2bWagzxQys/hPqMKff0bipz8bxL89uueEioRN4Xqa3xn6
	DavVZGEjnG3PnAsWMqjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSQV-00028a-6c; Tue, 14 May 2019 08:04:43 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSQO-00027n-8c
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 08:04:39 +0000
Received: by mail-ot1-f66.google.com with SMTP id l17so14405187otq.1
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 01:04:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kB17CNIkNudo9lQqUE06/YkvGevRbJzz0AoPJPb6ktc=;
 b=LRd2+Xf9uEvuk7GAHzcDses02Q4X8zwnXPYkjyzGCiB6rlBNs4oe6RuC9sk5DfSKjr
 50OvpMfxrzo661kBDAy+Jn8NKtAkSozmiFiao4zBQCmipuLnF2HpK9s4OtJiIaAr8vQY
 Vrz5nZnvXz/C4P5o0GwC6JMYIPs85zpZ8Ta/1FsSchSHqLvOOcOhjbcNxeEMAPx6jFNP
 RnW/K4PPjktRiC97oVNRd/Q6uv7kRDCvmYTBAc6kqg5z9z3Y2MUWZDE0uofjSIb5422r
 HwUbxwhEszC7L/XETukyGYZXcv2RIOfUXUffPjE9l3iRG4ptlx5HvdO5OejyJPJkPRCD
 U4nw==
X-Gm-Message-State: APjAAAW8tQcaWD3sqb6W/xVeh1S4eZqBFrgBBNi2NJ2qZ+y7xPuHpOyf
 A7DcPAb7V/knBhyTE28KayTbGmOjiqG5ljdzRjw=
X-Google-Smtp-Source: APXvYqxWif0G6pQHhcU4KlJ5vC6KPXRlOORPDLaMZI5cz8NUcPo2oZliCB12ipxHoYjnRvcTjRrFXRhyFfoFmxezLIc=
X-Received: by 2002:a9d:5912:: with SMTP id t18mr14859091oth.252.1557821074817; 
 Tue, 14 May 2019 01:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
 <20190513145522.GA15421@localhost.localdomain>
 <d69ff7154191492eaa8f55535a7effa5@AUSX13MPC105.AMER.DELL.COM>
 <20190513150458.GA15437@localhost.localdomain>
In-Reply-To: <20190513150458.GA15437@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 14 May 2019 10:04:22 +0200
Message-ID: <CAJZ5v0g3cCYK3rAQn09pCr7LMrRr=zQy_ceaEB5AKhVx604YgA@mail.gmail.com>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_010437_704117_356E1E66 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 5:10 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Mon, May 13, 2019 at 03:05:42PM +0000, Mario.Limonciello@dell.com wrote:
> > This system power state - suspend to idle is going to freeze threads.
> > But we're talking a multi threaded kernel.  Can't there be a timing problem going
> > on then too?  With a disk flush being active in one task and the other task trying
> > to put the disk into the deepest power state.  If you don't freeze the queues how
> > can you guarantee that didn't happen?
>
> But if an active data flush task is running, then we're not idle and
> shouldn't go to low power.

To be entirely precise, system suspend prevents user space from
running while it is in progress.  It doesn't do that to kernel
threads, at least not by default, though, so if there is a kernel
thread flushing the data, it needs to be stopped or suspended somehow
directly in the system suspend path.  [And yes, system suspend (or
hibernation) may take place at any time so long as all user space can
be prevented from running then (by means of the tasks freezer).]

However, freezing the queues from a driver ->suspend callback doesn't
help in general and the reason why is hibernation.  Roughly speaking,
hibernation works in two steps, the first of which creates a snapshot
image of system memory and the second one writes that image to
persistent storage.  Devices are resumed between the two steps in
order to make it possible to do the write, but that would unfreeze the
queues and let the data flusher run.  If it runs, it may cause the
memory snapshot image that has just been created to become outdated
and restoring the system memory contents from that image going forward
may cause corruption to occur.

Thus freezing the queues from a driver ->suspend callback should not
be relied on for correctness if the same callback is used for system
suspend and hibernation, which is the case here.  If doing that
prevents the system from crashing, it is critical to find out why IMO,
as that may very well indicate a broader issue, not necessarily in the
driver itself.

But note that even if the device turns out to behave oddly, it still
needs to be handled, unless it may be prevented from shipping to users
in that shape.  If it ships, users will face the odd behavior anyway.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
