Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D394F82C0
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 23:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ABIiujjPlq969SGTBKKCWkk3NpDroJoiUgaRpjQynVM=; b=A9XE3O+Obn3PmY2mGf60sgfw0
	c+RZLhWWQeqx/YW71b7Mkp+kprEDSJ+CJzPRAIBAEWj4pj+4vRAhqtwSWtSGnV+xp+W8sXytPkxKE
	r2wlpV5RKbnAasXTmcFvQAbGrpkRGWY86qzmWODFsJgDw+ECCTqzZrJBGOzEDTWwqclsd8UtbdgRd
	Hr8fnJYwx9vkgYnzxqLTkzSBoeIHnW15505BEy8TRO9JQJC59WqMp5k6mK9HBlAyP57B4GqlpUZ/p
	Hz2dK5f9kjSjAX9+3aUti5PwEpBFwylslKRBCu1NVtLfwuTo1iDZuEQWEX6qsihaD5Me7KW7sFbe9
	dspFzXfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHt4-0005PY-R8; Mon, 11 Nov 2019 22:10:18 +0000
Received: from hodge.hasenleithner.at ([88.99.36.100])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHt0-0005PA-Fo
 for linux-nvme@lists.infradead.org; Mon, 11 Nov 2019 22:10:15 +0000
Received: from [IPv6:2001:470:584d::10] (unknown [IPv6:2001:470:584d::10])
 by hodge.hasenleithner.at (Postfix) with ESMTPSA id 39FA5760095;
 Mon, 11 Nov 2019 23:10:12 +0100 (CET)
Subject: Re: [RFC PATCH v2] Workaround for discard on non-conformant nvme
 devices
To: Keith Busch <kbusch@kernel.org>
References: <216cfad5-b724-f69d-9a8c-c5ee2ec13212@hasenleithner.at>
 <20191111185830.GD10851@redsun51.ssa.fujisawa.hgst.com>
From: Eduard Hasenleithner <eduard@hasenleithner.at>
Message-ID: <7f3256e5-6f7f-16ad-65b9-6d7701c88dba@hasenleithner.at>
Date: Mon, 11 Nov 2019 23:10:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111185830.GD10851@redsun51.ssa.fujisawa.hgst.com>
Content-Language: de-AT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_141014_750113_33D9D3B4 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11.11.19 19:58, Keith Busch wrote:
> Please initialize 'range' to NULL so we don't need the 'else' case.
	...
> Let's get a better description of this. My recommendation:
> 
> 	For devices that do not consider the DSM 'Number of Ranges'
> 	field when determining how much data to DMA. Page aligned and
> 	sized is always sufficient as that is the largest a DSM range
> 	list can be.
> 
> And let's add the known devices to the nvme pci_driver that require
> this.


Thanks for the input. I've considered this in the next version: PATCHv3.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
