Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E77CD04C
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 12:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7e4vaC+zofmQrI91iA6ESwDNEHTUAUOE5Q78zdwMxw=; b=mp94zJGOGyIfa1
	4Fn2VpezV+mIXQHvtsguxARNRYCH7P2fR1B4EHKQ29J7XPkdVkGOi66gaaTe83m2ku7Rn0NMkKy88
	NjZPvlBvBTuBnLOnGpF7tccrYKB3B3Ky+n9DE60ZZPzWS1B3ey/zz5w74aDqskX1KPkyec/vQCoWE
	LXFAbX2GZ4JNIwiQ+IR84syAc/3BkP450pQ60zl61tniaYeeVvbkx2r9jIJfuUb5Qk1NqgpYoQZT+
	xU5PkEV5v3QoSdCcVf2LesS0aOkEF2UI5w/ajsqRxF4/lfFVZiPAbKYSC/kUgitp+m8beENbeO3Sv
	4kRDfQKURvJ2IsxeARug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3WT-0007t7-WE; Sun, 06 Oct 2019 10:12:18 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iH3WP-0007sr-Qs; Sun, 06 Oct 2019 10:12:13 +0000
Date: Sun, 6 Oct 2019 03:12:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Message-ID: <20191006101213.GA30175@infradead.org>
References: <20190926231940.7494-1-m.malygin@yadro.com>
 <20190930150202.9259-1-m.malygin@yadro.com>
 <11e37d39-c85e-f844-953f-f540596b4410@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11e37d39-c85e-f844-953f-f540596b4410@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: m.malygin@yadro.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 05:03:36PM -0700, Sagi Grimberg wrote:
> This looks fine to me,
> 
> Christoph, you happy with this version?
> 

Conceptually yes, but it really needs to at least follow the kernel
style.  I'm also not sure I'm happy about all the extra indirections,
but I can be talked into it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
