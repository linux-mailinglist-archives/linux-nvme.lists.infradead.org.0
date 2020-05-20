Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00C21DAA78
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 08:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScWWe5GzlO1AOWr2KytlHsT0gjkH/EosBWiVoY8+shI=; b=KZbyxeU+Hjo9l4
	bROWX4Su8Otbmzza6BxrzEN29ADo/gG42wRJpypnnHM08G5dYXEOS2EVabFhfqmgkTtsN0649UX9C
	u1/WYY/fzlP8sKp/q7SfIiUvUCPO5phEKAqMO10caN7Oy9O5jI23hgBLH/rUK64EDr2mcI7oEf14j
	oeFoL1mKpvNxdvm9tb2mLnQFbvjAnGZeBh99d7dPg9CP9OIhs1Me0xF20zx7w/TepLIy4XLvczInt
	wvrW2E1ivqf9N3NjallfegqEjC3ecvuYX1WSyZixWh7x6GSBdDPyJTeCwjvTnvSdNj2CKMhbvY8QH
	qk3J1wpPIONASASdl7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbI1Z-000880-9U; Wed, 20 May 2020 06:16:17 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbI1V-00087Y-D4; Wed, 20 May 2020 06:16:13 +0000
Date: Tue, 19 May 2020 23:16:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining
 aens in nvmet_async_events_free
Message-ID: <20200520061613.GA18308@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
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
Cc: hch@infradead.org, David Milburn <dmilburn@redhat.com>,
 chaitanya.kulkarni@wdc.com, dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 01:33:17AM -0700, Sagi Grimberg wrote:
> Something here looks wrong to me... There is no reason to free aens here...

I think there is.  Remember we have two aen related resources:

 (1) the nvmet_req structures in ctrl->async_event_cmds.  One of these
     exists for each command that the host has outstanding
 (2) the nvmet_async_event strutures hanging off ctrl->async_events.
     One of these is added for each event that the target generates.

So when the host usually only has a single aen command outstanding (like
the Linux host) we might start having a pretty long list on the target
for a while until all the roundtrips to deliver them have been
completed, and if the admin queue gets shut down during that time we'll
need to free them.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
