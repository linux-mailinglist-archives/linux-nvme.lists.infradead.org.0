Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E3B7328C
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 17:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1n3rLg6TK7Df/YTaumyBATdyWkPMIjpsTp4HF2O2ho=; b=VPomx5Bjct3Akl
	mwg9n1zyhrndZ/MYP7/MPsQvIMBt9CFy7/xg9DvnHkCo82umdZUCdnbOXaLCPXjnoJVILZ8fDtmy1
	z6355PfZcu9v3L2lEPjZb0Vg/GLhoDCDU2VyTVFDed2u8g77I6aU6L0MPM9gYilC2rBzumP3SvREN
	LEFnVMNugJiU2a8P9mSVIUb40Ujk4YeWcFMFV208Mp2RddEFzKrDHl7wuPXWdpi+1GKshciGOve/n
	SiKWVqy0dJJB43EPwWLY9XslcscQMxf854BhubznRitF2LaZ+A0Wd7n9BRdry5MBmnvaONiu+CQUN
	Inuc6OousJob8pdPeogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIyw-0003zj-4J; Wed, 24 Jul 2019 15:15:06 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIyn-0003zE-Un
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 15:14:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 08:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="321369214"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 24 Jul 2019 08:14:56 -0700
Date: Wed, 24 Jul 2019 09:12:01 -0600
From: Keith Busch <kbusch@kernel.org>
To: John Donnelly <john.p.donnelly@oracle.com>
Subject: Re: nvme statistics :  iostat vs  sar
Message-ID: <20190724151200.GA5379@localhost.localdomain>
References: <D4F9A3CB-489A-4946-ADF2-C7C17A21E076@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D4F9A3CB-489A-4946-ADF2-C7C17A21E076@oracle.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_081458_038238_44172A32 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 09:51:36AM -0500, John Donnelly wrote:
> Hi,
> 
> I noticed  nvme I/O  does not appear  in sar disk data (-d ) ,  but it does appear with  sar block (-b)  and iostat.
> 
> Is this expected ?

'sar -d' should show activity. It does work as expected on my test machine:

# ls -l /dev/nvme*n*
brw-rw----. 1 root disk 259, 0 May 23 09:07 /dev/nvme0n1
brw-rw----. 1 root disk 259, 1 May 23 09:07 /dev/nvme1n1
brw-rw----. 1 root disk 259, 2 May 23 09:07 /dev/nvme2n1
brw-rw----. 1 root disk 259, 3 May 23 09:07 /dev/nvme3n1

# sar -d 2 10
Linux 5.2.0-rc1+ (localhost.localdomain)        07/24/2019      _x86_64_        (112 CPU)

09:03:06 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
09:03:08 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev259-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev259-2      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:08 AM  dev259-3      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00

09:03:08 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
09:03:10 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:10 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:10 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:10 AM  dev259-1  26370.50 105482.00      0.00      4.00      0.00      0.02      0.00     12.75
09:03:10 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:10 AM  dev259-2  26384.00 105532.00      0.00      4.00      0.00      0.03      0.00     12.75
09:03:10 AM  dev259-3  26389.50 105556.00      0.00      4.00      0.00      0.02      0.00     12.75

09:03:10 AM       DEV       tps     rkB/s     wkB/s   areq-sz    aqu-sz     await     svctm     %util
09:03:12 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:12 AM  dev253-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:12 AM  dev253-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:12 AM  dev259-1 225306.00 901224.00      0.00      4.00      0.00      0.02      0.00    100.00
09:03:12 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
09:03:12 AM  dev259-2 225304.50 901220.00      0.00      4.00      0.00      0.03      0.00    100.00
09:03:12 AM  dev259-3 225306.50 901228.00      0.00      4.00      0.00      0.02      0.00    100.00

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
