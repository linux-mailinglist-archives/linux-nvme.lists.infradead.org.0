Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602BA751E6
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 16:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WeWQm6yBbK1t1tm4/9ZAIQEn+eZ4i28XS4DRbDfYoY=; b=LHoqbVKD0vLBA6
	VP7mfI4oKLZtqK985pK7TQsyv7uoqewQyAFN1RAS/l0WIKdbLNXYc4f331vrZ0S/M7gimL+5MkiAa
	QZndzvVH5rloNS8eJmQaFUyywu1eMbqg1q5d0ViTPpnTDICETnqcShHRutWh1GRkpCwlbd7rbam0d
	gtD6M52tHtTMcr/UYmjE2vWHhswuqduS3YJR2L8FmSy0NVdnRO+SKfMdQ+K/aGMXzZ2wEDZo4mhIF
	t0obvssvOHgeGr+0cWbB7ostaAY0FS/ulnU52k3tZ43bjFSjCus8pBy14iOyHAqcomA3l2EDz2u5q
	BNqoi+ZQsZend6OD9J2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf9H-0002jS-Oz; Thu, 25 Jul 2019 14:55:16 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf96-000293-SL
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 14:55:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 07:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="177989924"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2019 07:55:03 -0700
Date: Thu, 25 Jul 2019 08:52:10 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190725145209.GA6949@localhost.localdomain>
References: <2332799.izEFUvJP67@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2332799.izEFUvJP67@kreacher>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_075504_969275_6A9FB0E4 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 02:51:41AM -0700, Rafael J. Wysocki wrote:
> Hi Keith,
> 
> Unfortunately,
> 
> commit d916b1be94b6dc8d293abed2451f3062f6af7551
> Author: Keith Busch <keith.busch@intel.com>
> Date:   Thu May 23 09:27:35 2019 -0600
> 
>     nvme-pci: use host managed power state for suspend
> 
> doesn't universally improve things.  In fact, in some cases it makes things worse.
> 
> For example, on the Dell XPS13 9380 I have here it prevents the processor package
> from reaching idle states deeper than PC2 in suspend-to-idle (which, of course, also
> prevents the SoC from reaching any kind of S0ix).
> 
> That can be readily explained too.  Namely, with the commit above the NVMe device
> stays in D0 over suspend/resume, so the root port it is connected to also has to stay in
> D0 and that "blocks" package C-states deeper than PC2.
> 
> In order for the root port to be able to go to D3, the device connected to it also needs
> to go into D3, so it looks like (at least on this particular machine, but maybe in
> general), both D3 and the NVMe-specific PM are needed.
> 
> I'm not sure what to do here, because evidently there are systems where that commit
> helps.  I was thinking about adding a module option allowing the user to override the
> default behavior which in turn should be compatible with 5.2 and earlier kernels.

Darn, that's too bad. I don't think we can improve one thing at the
expense of another, so unless we find an acceptable criteria to select
what low power mode to use, I would be inclined to support a revert or
a kernel option to default to the previous behavior.

One thing we might check before using NVMe power states is if the lowest
PS is non-operational with MP below some threshold. What does your device
report for:

  nvme id-ctrl /dev/nvme0

?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
