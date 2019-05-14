Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67ED1CA5D
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 16:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfKfmTW85rIEQeO8SgH2o/kqCEAMxKn+l88UuJ71Umw=; b=biS0hASQpd+/bu
	fyJJzIyb1njywjPTEtg27U+h48WE9RcERRpTip8q4ID53PlvGe6qoKGZBvKNeD3s9t6wqkzLcifz1
	1gLJngeO6hOSzSAI5Q2MV3LwfnbxOV2N0RXtMA00w22QbffazcMpI/wmGB1yeqHjmCIXxcR/vP1MO
	CWic/vz95sKFJ1XRHiypkORTTnSsG/zFwKfGqcho3W49vwHfkuYOvpJ5nsqca1cMsny3yfhkJmT4n
	n9L09V3ZSm30mnGDV11082St9liaHkxyFpvRJntEbhhoYnaVKWx2MSDLrwuaXjh8Vy3misPdZeIJD
	zgq4CTxdCxxyK2vMwv7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYQR-0005kZ-44; Tue, 14 May 2019 14:29:03 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYQM-0005jv-2x
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 14:28:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 07:28:57 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by FMSMGA003.fm.intel.com with ESMTP; 14 May 2019 07:28:57 -0700
Date: Tue, 14 May 2019 08:23:37 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514142337.GA19881@localhost.localdomain>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
 <20190514052027.GB6294@lst.de>
 <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
 <20190514055832.GA6843@lst.de>
 <CAC=wYCECcfqoDDMcgVj-4dAEUxNpY62vAEMOD8-eGrZK8wOV-g@mail.gmail.com>
 <20190514135434.GA19837@localhost.localdomain>
 <20190514141220.GA25519@ming.t460p> <20190514141439.GA14213@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514141439.GA14213@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_072858_133825_9412E320 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: keith.busch@intel.com, sagi@grimberg.me,
 Adam Carter <adamcarter3@gmail.com>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, axboe@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 04:14:39PM +0200, Christoph Hellwig wrote:
> On Tue, May 14, 2019 at 10:12:22PM +0800, Ming Lei wrote:
> > The two aren't merged because the default segment size(BLK_MAX_SEGMENT_SIZE) is 64KB,
> 
> Yep.
> 
> > and the following patch may fix this issue:
> 
> Or this one posted yesterday for that matter:
> 
> https://marc.info/?l=linux-block&m=155772952511144&w=2

Nice, either one looks good. We could also safely cap it to
(limits->max_hw_sectors << 9) instead of UINT_MAX.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
