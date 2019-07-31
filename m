Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7D57D115
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 00:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+8tQR+F60Y3Pt75me9PrL1oFe9drSaHPS84iz8vONs=; b=nqm1AKx452hMyt
	OHQ74Jh8jYxj8d6vs+LIBinrAGJXHhlyaZujfezY7ePPS1CHb6MXJBJfkW6jQkbPT8uP2OdKQrwG6
	acyy3UJT7BmiGW0tAnUKtvmzvrCRJjBLYGMbtHo5tYmfjop0LHoWoJvzWJ37vz843R+hPQxcQNblW
	TydQSepL4SZKOeZ6k9kylN0ErX25eduJQEi6cxEa35rlAPvdgVxWbIGyAs7+xTNZN5Y2aFMYmbWa9
	ECmgDOEng0/3cbwDjyNao+CYaj2Do1XEF+pqu37wkZLqJTJzX7i7ERGV3NFkMCnH7PaKR406HBuzo
	pwbawRjybJgwBL/mFzgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswza-0004Qd-AA; Wed, 31 Jul 2019 22:22:42 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswzW-0004QG-6r
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 22:22:39 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 15:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="371719160"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2019 15:22:36 -0700
Date: Wed, 31 Jul 2019 16:19:56 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190731221956.GB15795@localhost.localdomain>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_152238_264125_1807C65D 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 11:25:51PM +0200, Rafael J. Wysocki wrote:
> 
> A couple of remarks if you will.
> 
> First, we don't know which case is the majority at this point.  For
> now, there is one example of each, but it may very well turn out that
> the SK Hynix BC501 above needs to be quirked.
> 
> Second, the reference here really is 5.2, so if there are any systems
> that are not better off with 5.3-rc than they were with 5.2, well, we
> have not made progress.  However, if there are systems that are worse
> off with 5.3, that's bad.  In the face of the latest findings the only
> way to avoid that is to be backwards compatible with 5.2 and that's
> where my patch is going.  That cannot be achieved by quirking all
> cases that are reported as "bad", because there still may be
> unreported ones.

I have to agree. I think your proposal may allow PCI D3cold, in which
case we do need to reintroduce the HMB handling.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
