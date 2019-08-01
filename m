Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2AC7E3E4
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 22:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3vihqfkyPBNvgrggAZ/6DTibEs5dkVrP0HWfGBgu4I=; b=CKzvYOoB76o9Xt
	9CHO6aiHw1r8zTsD1FcRwrvMt++XVb8xcTXge6e92nEPqZE9fSRrbhREDoPOZNDNONMqL5QNzj1DC
	qrhkGMjW/Gfyj6s8lmWEbBS5C+ZfP9RWEdhT9CBtAL2j9LmtR800OdlHxaLQcTdZxNqGF2VfIcMXL
	7cUClBYglRBf9soE+MxRKXWerdYiqslHEky6hpxsCzUPQhpFdf1ZIKQGfihNIGQGZ8XXF3O8Fk671
	vNrXYxEfGJR8tPScSnf6gU/bv+OExCspkBPHuYC8hRXzWaCvoAQklpYTxyFDDSy4mTT9KmYl0A/Ze
	Et12sHR+JgZjBSH/RdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHdq-0001gP-1N; Thu, 01 Aug 2019 20:25:38 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHdl-0001VX-IF
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 20:25:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 13:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="163729047"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 13:25:30 -0700
Date: Thu, 1 Aug 2019 14:22:51 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190801202251.GD15795@localhost.localdomain>
References: <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
 <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
 <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_132533_609948_32E14B37 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMDEsIDIwMTkgYXQgMDI6MDU6NTRBTSAtMDcwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBhdCAwNjozMywgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPiB3
cm90ZToKPiA+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTI6MjIgQU0gS2VpdGggQnVzY2ggPGti
dXNjaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPj4gSW4gd2hpY2ggY2FzZSB3ZSBkbyBuZWVk
IHRvIHJlaW50cm9kdWNlIHRoZSBITUIgaGFuZGxpbmcuCj4gPgo+ID4gUmlnaHQuCj4gCj4gVGhl
IHBhdGNoIGFsb25lIGRvZXNu4oCZdCBicmVhayBITUIgVG9zaGliYSBOVk1lIEkgdGVzdGVkLiBC
dXQgSSB0aGluayBpdOKAmXMgIAo+IHN0aWxsIHNhZmVyIHRvIGRvIHByb3BlciBITUIgaGFuZGxp
bmcuCgpTcGVjIHJlcXVpcmVzIGhvc3QgcmVxdWVzdCBjb250cm9sbGVyIHJlbGVhc2UgSE1CIGZv
ciBEM2NvbGQuIEkgc3VzcGVjdAp5b3UncmUgb25seSBnZXR0aW5nIHRvIEQzaG90LgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
