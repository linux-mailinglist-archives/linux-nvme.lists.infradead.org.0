Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F2A27E20
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 15:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zkl5QrRREoi+fl3DWfPh+b2WnXuToeDaZ50P5gqwkeE=; b=VEY3ERJvogshHH
	rhaEYx4fsZcxlEATuzhldM8loP8RU329nv1BPkPHMuCXSTPw543xwWc2xcy8DZvbsxfrAaVBM5Ofp
	moOHN+HI1fDbcCdNtQdB03ctRF0U6fnqFDC33OkGUS/CgM5RpfmLVX6uJq7jpPhvHOg/bDyqwppRl
	DDncmCVhzqmLJ4zZyYFGRCJljdyX075o0zQeX+lSb+qKy8rQv6ed+wrtqv40qhzGyrTNlEyZItraH
	ogkc+h0N6wFfJClfvcrPnk7xUPL3jBx3Ho/tSMjtm1Rt6W9O7tJtslJtgtNOTmgSaDTnNbTGxf/Tg
	An9RE55OU0ZXJ58UBN7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnlV-0000uL-7i; Thu, 23 May 2019 13:28:13 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnlQ-0000tK-Dz
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 13:28:09 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,503,1549958400"; d="scan'208";a="174753008"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2019 06:28:05 -0700
Date: Thu, 23 May 2019 07:23:04 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190523132304.GB14049@localhost.localdomain>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190523032925.GA10601@ming.t460p>
 <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
 <20190523101311.GB15492@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523101311.GB15492@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_062808_480118_5BCEF4EF 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 "Busch, Keith" <keith.busch@intel.com>, Keith Busch <keith.busch@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:13:11AM -0700, Christoph Hellwig wrote:
> On Wed, May 22, 2019 at 09:48:10PM -0600, Keith Busch wrote:
> > Yeah, that's a good question. A FW update may have been initiated out
> > of band or from another host entirely. The driver can't count on
> > preparing for hardware pausing command processing before it's
> > happened, but we'll always find out asynchronously after it's too late
> > to freeze.
> 
> I don't think that is the case at least for spec compliant devices.
> 
> From NVMe 1.3:
> 
> Figure 49: Asynchronous Event Information - Notice
> 
> 1h		Firmware Activation Starting: The controller is starting
> 		a firmware activation process during which command
> 		processing is paused. Host software may use CSTS.PP to
> 		determine when command processing has resumed. To clear
> 		this event, host software reads the Firmware Slot
> 		Information log page.
> 
> So we are supposed to get an AEN before the device stops processing
> commands.

Hm, I read the same section, but conclude differently (and at least some
vendors did too). A spec compliant controller activating new firmware
without reset would stop processing commands and set CSTS.PP first,
then send the AEN. When the host is aware to poll Processing Paused,
the controller hasn't been processing new commands for some time.

Could you give some more detail on your interpretation?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
