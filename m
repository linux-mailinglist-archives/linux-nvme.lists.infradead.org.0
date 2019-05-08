Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96A8180AE
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zF59krexPaVwtXGnSgLV/ko2ZPntjcErreQMuwg+9lw=; b=TcITAz1Q5U37dh
	lAoqTgA4/0ar8qnfPThCLmTH8zTlEAoVsnmXbsLpaowEikFQBbCGV0PmEev24IUFFlZEPsa7dJXdw
	1GV94RWQ33yzIrZ/4maf8LweyKPi9Oq1Ev13YOTYQl/cJq9yLgPODfhGkfQKaWbq3E4XiAD8YJzgY
	xVPQaZfyU9xVgbksWBS1bn3zFzyGfSveC7LwRM3cFUffFAcio55WhZDmk7wizfAOogQmjcWJOuoCR
	qcKJHsUsZJzKq59MNwjyqD3xjPHhwo1Kd32wg35SYoijFR5Vn1xFdchdzA7vGZnILP3ytY/gY7ZWZ
	8fGXcJtwJRmrtqT6Kf4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSc8-0005vo-5E; Wed, 08 May 2019 19:52:28 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSc3-0005uw-SV
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:52:25 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 465E167358; Wed,  8 May 2019 21:51:59 +0200 (CEST)
Date: Wed, 8 May 2019 21:51:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190508195159.GA1530@lst.de>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_125224_072576_0EB4774A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: axboe@fb.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 07:38:50PM +0000, Mario.Limonciello@dell.com wrote:
> The existing routines have an implied assumption that firmware will come swinging
> with a hammer to control the rails the SSD sits on.
> With S2I everything needs to come from the driver side and it really is a
> different paradigm.

And that is why is this patch is fundamentally broken.

When using the simple pm ops suspend the pm core expects the device
to be powered off.  If fancy suspend doesn't want that we need to
communicate what to do to the device in another way, as the whole
thing is a platform decision.  There probabl is one (or five) methods
in dev_pm_ops that do the right thing, but please coordinate this
with the PM maintainers to make sure it does the right thing and
doesn't for example break either hibernate where we really don't
expect just a lower power state, or enterprise class NVMe devices
that don't do APST and don't really do different power states at
all in many cases.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
