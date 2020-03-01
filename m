Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC930174F25
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 20:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZjnUCQMh3QjwfjkLNMKnB9j6iy55l3ertpXa+gTjJY=; b=oOmFeImaXwydFI
	KY7O//BpKJnn7s+bvC6Yc9kFdNopXnHv55F8wm3utfYULe2amtGilYDxeOU1/rn1pR9KJPxJX7Zl8
	Det7fFwlYSMQj4JrZwxGkadhQoiylznzvZwSJwpalt7RzTGCCwxhaiZlpNVHyu02aEap53ChV1zP1
	B82tVWuONJxRRVQDTZM0HIupZsn3bVHwXyrraz5zNtsXgeCSzPRohpolQlBscLusvD9eA2YNz5975
	UjpbA+MfGmq0pcV3lfBJFHYVEKAO3Og3R/msx9GdWl3yaVpZ8UZm0/aBP4NVx3laTniBr/3hJWf8U
	4gu/eHG72QH0420bTFLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8U4K-00070f-Ue; Sun, 01 Mar 2020 19:16:04 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8U4F-00070I-JF
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 19:16:01 +0000
X-Originating-IP: 71.238.64.75
Received: from localhost (c-71-238-64-75.hsd1.or.comcast.net [71.238.64.75])
 (Authenticated sender: josh@joshtriplett.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 8F863E000A;
 Sun,  1 Mar 2020 19:15:02 +0000 (UTC)
Date: Sun, 1 Mar 2020 11:15:01 -0800
From: Josh Triplett <josh@joshtriplett.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: Check for readiness more quickly, to speed up boot
 time
Message-ID: <20200301191501.GA235404@localhost>
References: <20200229025228.GA203607@localhost>
 <20200301183231.GA544682@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301183231.GA544682@dhcp-10-100-145-180.wdl.wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_111559_769592_AB08772A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@fb.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 10:32:31AM -0800, Keith Busch wrote:
> On Fri, Feb 28, 2020 at 06:52:28PM -0800, Josh Triplett wrote:
> > @@ -2074,7 +2074,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
> >  		if ((csts & NVME_CSTS_RDY) == bit)
> >  			break;
> >  
> > -		msleep(100);
> > +		usleep_range(1000, 2000);
> >  		if (fatal_signal_pending(current))
> >  			return -EINTR;
> >  		if (time_after(jiffies, timeout)) {
> 
> The key being this sleep schedules the task unlike udelay.

Right; I don't think it's reasonable to busyloop here, just sleep for
less time.

> It's neat you can boot where 100ms is considered a long time.

It's been fun. This was one of the longest single delays in a ~1s boot.

> This clearly helps when you've one nvme that becomes ready quickly, but
> what happens with many nvme's that are slow to ready? This change will
> end up polling the status of those 1000's of times, I wonder if there's
> a point where this frequent sleep/wake cycle initializing a whole lot
> of nvme devices in parallel may interfere with other init tasks.

usleep_range allows the kernel to consolidate those wakeups, so if you
have multiple NVMe devices, the kernel should in theory just wake up
once, check them all for readiness, and go back to sleep.

> I doubt there's really an issue there, but thought it's worth considering
> what happens at the other end of the specturm.
> 
> Anyway, the patch looks fine to me.
> 
> Reviewed-by: Keith Busch <kbusch@kernel.org>

Thank you!

Does this seem reasonable to enqueue for 5.7?

- Josh Triplett

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
