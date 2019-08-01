Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFFA7DE00
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 16:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wf9O4S/V7FCipAR6y/xw1WhV3QbFfJsUTCruiZVtP/A=; b=YPrW3r/Sm7GKX/
	sAeFrEKjmuBvGPwtGgz1Qzb1TzCugoxGBlHBR3Qc1yDchAYRxxiLHJo4+4BlbHcV5I/zUztcjBixa
	Yg+XU4XfUalFFGeaO1uSsH82FCpm4mUX8603v2gQgr3iW6EtKEqOGG8p/xcOuqNQ4QS/PR+mvjnxK
	FiYdDS2OcN7I6cQVdjiAGG+o4C/wCvVbOLXNVLrqRmdEWMMnUJ3U7b9Rdu3/xeEbBDLVIW4B5k7su
	z+1YxiB1c7sTv91Ve1UmdyyJYP+vxIJwkPblh/STmQeuATCrQSI8a2y+tcy5nX3ptV7Iv9KUip9O/
	19QJO8VuNUntVAX90uxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCBs-00062w-DL; Thu, 01 Aug 2019 14:36:24 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCBi-00062M-3o
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 14:36:15 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 07:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="177837292"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 01 Aug 2019 07:36:10 -0700
Date: Thu, 1 Aug 2019 08:33:31 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate
 failed because of controller reset
Message-ID: <20190801143331.GC15795@localhost.localdomain>
References: <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
 <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
 <20190731205836.GD15643@localhost.localdomain>
 <68358e82-cbd5-6199-1329-89421c778dc0@grimberg.me>
 <20190731215437.GA15795@localhost.localdomain>
 <55631812-bc90-9dc1-53b7-a76696a7140e@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55631812-bc90-9dc1-53b7-a76696a7140e@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_073614_200540_621ED1D0 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 06:13:06PM -0700, Sagi Grimberg wrote:
> 
> >> Well, I don't think we should do that. Unlike I/O commands, which can
> >> failover to a different path, these admin commands are bound to the
> >> specific controller. In case it takes minutes/hours/days for the
> >> controller to restore normal operation, it will be unpleasant to say
> >> the least to have admin operations get stuck for so long.
> > 
> > Unpleasant for who? The scan_work is the only thing waiting for these
> > commands, no one else should care because you can't run IO if you're
> > stuck in very long reset anyway.
> 
> The hung task detector would care, and a user who will attempt to issue
> a passthru command, and the rest of the system that have one of the
> kworkers sacrificed for a significant amount of time...

blk_execute_rq already defeats hung task detection for stalled IO.

My point, though, was passthru doesn't care about scan_work. A submitted
passthru command is blocked for reset, so blocking scan_work doesn't
make that situation any better or worse.
 
> > I think the main point is that we don't want to take a delete action on
> > a transient condition, but sprinkling NVME_CTRL_LIVE checks is open to
> > many other races.
> 
> Hence I suggested the transport error code...

That should work too.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
