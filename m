Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAA71EE61D
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 15:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzvTUH1I680psoATJUad9vxMwLH2a+n2T+ogN68BtFE=; b=OvKjF3KQUFcM3F
	WK2rqriwPng/m959V0GbbNGtQIbVNYUqhWx0QFTNiJ8CEs+s+m1seipQZr/p7heZt+W+wmwwLfWmQ
	8YaEkx006lIGAVYWYqFwBwtr4JMo2dwH7896k65Rrr3jB0QVVk87WOH9RQshmGeAOHeex+TIm+ErD
	zAp/stywiMyuq9f+LNukjvexkhUnO3Qa43boxwuXYPgJG8aA//ZvvhLyGiudW9QPb7uBU6MkEfVcm
	rFdiBVGJMMle3PKy/+mVqXEavzulltZk+0NrvDl1ozjURszX5fQshcw+MqKDBpeYUWyZ2LUs/MBl4
	WBxiSIcuA8twGypA6o/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqN0-0005l8-Bp; Thu, 04 Jun 2020 13:57:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqMv-0005km-Sl
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 13:57:19 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10D1D20772;
 Thu,  4 Jun 2020 13:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591279037;
 bh=RMOHDeXWTVhS/XIwolrfUoejd4y8GelZHQJt66ZodYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0QxUEWxlOLDmKRNch0mxR2G64WXUJXJNZThXvu349LaxoL/Wm6MQsNIAHnwzqGdoG
 8xBJQ0xQFOQ9taQDD9ohoX1BwfQIcJhfUcOG25F1ZYMXnl8H87pig1Idj+hxno4lh5
 vZhAJ67CV8zu2hjETNL89UoKkxdob0qbfF3A7Ow4=
Date: Thu, 4 Jun 2020 06:57:15 -0700
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme: check for NVME_CTRL_LIVE in nvme_report_ns_ids()
Message-ID: <20200604135715.GB146361@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200604115602.78446-1-hare@suse.de>
 <20200604115602.78446-2-hare@suse.de>
 <20200604132259.GA146361@dhcp-10-100-145-180.wdl.wdc.com>
 <79298b5a-857d-60dd-91c7-058182b39b0e@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79298b5a-857d-60dd-91c7-058182b39b0e@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065717_945915_00DD3605 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@wdc.com>, Daniel Wagner <daniel.wagner@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 03:48:02PM +0200, Hannes Reinecke wrote:
> On 6/4/20 3:22 PM, Keith Busch wrote:
> > On Thu, Jun 04, 2020 at 01:56:01PM +0200, Hannes Reinecke wrote:
> > > When a controller reset happens during scanning nvme_identify_ns()
> > > will be aborted, but the subsequent call to nvme_identify_ns_descs()
> > > will stall as it will only be completed once the controller reconnect
> > > is finished.
> > 
> > If nvme_identify_ns() is aborted, shouldn't we not proceed to the next
> > command? It looks like the code already does that, from nvme_alloc_ns():
> > 
> > 	ret = nvme_identify_ns(ctrl, nsid, &id);
> > 	if (ret)
> > 		goto out_free_queue;
> > 
> > And then from nvme_revalidate_disk():
> > 
> > 	ret = nvme_identify_ns(ctrl, ns->head->ns_id, &id);
> > 	if (ret)
> > 		goto out;
> > 
> > Those are the only two paths to nvme_identify_ns_descs(), so it looks
> > like nvme_identify_ns() must be successful in order to get there.
> > 
> 
> True. But if the controller is entering reset juat _after_ the call to
> nvme_identify_ns() there won't be any I/O to abort, and the scanning code
> will proceed to call nvme_report_ns_ids() exposing this issue.
> 
> > > But as the reconnect waits for scanning to complete the particular
> > > namespace will deadlock and never reconnected again.
> > 
> > The fix looks a bit fragile. What if the controller is reset immediately
> > after the check for live? It'd be safer such that reconnect didn't have
> > to wait for scan_work, no?  The pci transport has no such dependency,
> > for example.
> > 
> Oh, that wouldn't matter; once the controller is reset (ie enters a non-LIVE
> state) all outstanding I/O is aborted.
> 
> The point here is that only _outstanding_ I/O is aborted.
> If the scan thread continues sending I/O after that things stall.

My concern is if the controller is LIVE at the moment of your new check,
but is reset immediately after that, and before the identify command is
sent. The identify won't be aborted since it hasn't been dispatched yet.
Would that get everything stuck again?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
