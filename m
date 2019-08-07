Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA9F84A0D
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 12:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNKqrVcKCwGxPt0xYOlFdgBZsKpuwIbmB3kXg7wslGA=; b=h4i9tLc4LluMPs
	pncS8IM0MHE0Va5W4C/u2cu0UsB5rA9PGvEhf+FjKUYPRAGqQtOVYXCwZl3IQ0PcC3yHyHDQU4Fxh
	CO7VaW1moNbfgYc1jLkNvjzWwuEtqddxAYEd/m6syglSdiDPDvwsIdDFXTvwz+PZtZ3qmAjnTsONf
	+k5YTsiuzfvwrg6UTeGR8iB48iXk/2Fqzf7/8+gcQCSUABe8F8aO06iPlE8/cuJI473ril+DoSEsj
	Nsox2577RRayzeU0U3LMcStkjg3YHlg95Q6vC1UeDdiNO+fZnbI1Nv2cL89nZacy67gaG5a/O5njZ
	ZOuavZABbTv5YdfyMI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJSi-00024U-72; Wed, 07 Aug 2019 10:46:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJRH-0008KO-Ii
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 10:45:05 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C62AB68AFE; Wed,  7 Aug 2019 12:45:00 +0200 (CEST)
Date: Wed, 7 Aug 2019 12:45:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state
 for suspend" has problems
Message-ID: <20190807104500.GB11356@lst.de>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <2763495.NmdaWeg79L@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2763495.NmdaWeg79L@kreacher>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_034503_901274_CC2A2370 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 11:48:33AM +0200, Rafael J. Wysocki wrote:
> So I think I know what the problem is here.
> 
> If ASPM is disabled for the NVMe device (which is the case on my machine by default),
> skipping the bus-level PM in nvme_suspend() causes the PCIe link of it to stay up and
> that prevents the SoC from getting into deeper package C-states.
> 
> If I change the ASPM policy to "powersave" (through the module parameter in there),
> ASPM gets enabled for the NVMe drive and I can get into PC10 via S2Idle with plain 5.3-rc3.
> 
> However, that's a bit less than straightforward, so I'm going to post a patch to make
> nvme_suspend() fall back to the "old ways" if ASPM is not enabled for the target device.

Sounds sensibel.

FYI your mail is not properly formatted and has way too long lines.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
