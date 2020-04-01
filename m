Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AAB19A833
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 11:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pa4OEFBuu6eZL3InK7TTm4QbEpJ3zFjb0l7phSMFJog=; b=bNHR6dyslN4PwT
	TgZBYPZqSLdD+N0Z7Pnpvdzlv+YeuqxRzD+RJZHQzCJJMCNimceS7XIRYo/brGqu3pAijfpkBLTip
	0PRnwSfCb8vYQOstFroqNllYbye0Hn63bITUEKjhIBWnuxiXVgG37lXYVxP7iideG3Ld/M3mdZ12E
	bxH4mnaualY8cMk+tYOlfL/mlyUq7VVtWNWMxeltH/z7Tc3AXKUN0/n/4jKkaqLVa1FG4G9dvOoe0
	cVU73Iqb3D+gPXCoyFDZ0o6O5U87xBt34R37z8hO4Grj2gA9m8+MjZuBTWdUsegBQmwEphhpeVGR+
	JyLYK0b5/4ELJduPzH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZIZ-00071C-3c; Wed, 01 Apr 2020 09:04:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZIT-00070q-9g
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 09:04:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AF90868AFE; Wed,  1 Apr 2020 11:04:26 +0200 (CEST)
Date: Wed, 1 Apr 2020 11:04:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvmetcli: don't remove ANA Group 1 on clear
Message-ID: <20200401090426.GA31980@lst.de>
References: <20200327070134.2882-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327070134.2882-1-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_020429_492540_58968FEF 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <keith.busch@wdc.com>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 08:01:34AM +0100, Hannes Reinecke wrote:
> The first ANA group is maintained by the kernel so it cannot
> be deleted.

Thanks, applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
