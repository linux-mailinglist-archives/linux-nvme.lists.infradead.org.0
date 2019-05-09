Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5E91853E
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKL1TJTW7ZOdfNdle+zBVM5sdQS/+4ScICP6CFpbK/Y=; b=mxeVkL84UfsxSv
	F2cGw/XpzQhR88XjQhpWjAG0N5qR+rQ8L+AOGQyVcsTRHxN/G11FTMi5YLKmI+bPHNhsj3Lze3j+w
	LfTeW92tQsJOrhCfmjWneoD2Ww9d5Wc36uH5iL9/glhhoB/nSgFUgqx2xJv8YI5L1onHQYHtOtijA
	WEJkdCQiDr6vuftBsHySmlAE/PCj99eZVLByX+0JoWUiMrlmuYttwmJ6pT48tPwnNsxIz8osSNtjj
	8ZFq5HkCfFTfTCjb1AihHmPAmLckYrXJ1GzSviARml6aSkMlW2FZoUc3pYtHiK/yDvvVnDATzrm4O
	MdX9GB7faUvK8beDhlGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcLz-0001Nw-7d; Thu, 09 May 2019 06:16:27 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcLm-0001NQ-GX
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:16:15 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5765367358; Thu,  9 May 2019 08:15:55 +0200 (CEST)
Date: Thu, 9 May 2019 08:15:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH, RFC 2/2] nvme: validate cntlid during controller
 initialisation
Message-ID: <20190509061555.GB15229@lst.de>
References: <20190508075508.28552-1-hch@lst.de>
 <20190508075508.28552-2-hch@lst.de>
 <20190508142814.GB7113@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508142814.GB7113@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_231614_698821_BD0D6F1E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 hare@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 08:28:14AM -0600, Keith Busch wrote:
> On Wed, May 08, 2019 at 09:55:08AM +0200, Christoph Hellwig wrote:
> > +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> > +		if (ctrl->state == NVME_CTRL_DELETING ||
> > +		    ctrl->state == NVME_CTRL_DEAD)
> > +			continue;
> > +
> > +		if (tmp->cntlid == ctrl->cntlid) {
> > +			dev_err(ctrl->device,
> > +				"Duplicate cntlid %u, rejecting\n",
> > +				ctrl->cntlid);
> 
> Patch looks great, but let's make this print more informative by showing
> tmp's device name too:
> 
> 			dev_err(ctrl->device,
> 				"Duplicate cntlid %u with %s, rejecting\n",
> 				ctrl->cntlid, dev_name(tmp->device));

Sure.  The printk was taken 1:1 from the existing code, but I could
improve it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
