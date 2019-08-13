Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E348BF5E
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 19:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iz0xijjg7HXcRpZLmYDpTLxGxfY5+p6uh4hlH5mbulk=; b=sD7yv34+6vhwuc
	RQEsmGnqG99x3lZdrUigJFCSkBbTrh5SsMlQG5iJNiQX54rw5IHmktkZysqOoP4UP/QG4Iqr2QpMM
	TMY70AJmyI33nfW6rKmj5rQSUvSEXda0bxdKLs97mMCrMAxNh43bk98xu2FWNWqCzzdapkYS6Ukxr
	53IV3d4jZ+GWjwNmAjAcimaOxR2TDV7uqcHGXJBBph1cuoqzhds9gZPOFwPPRcHqN6TfcBC1Hl5Iu
	pI4vGmggKhWB5x33s+CdN9/YMjXuQL8ZJzx3v1QcIpy6r9CMHToayVvlDOOkH4Tfuok9CMRwHr6++
	lXx2/p+c5X3PZxFQzGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaIE-0005cQ-GA; Tue, 13 Aug 2019 17:09:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaI3-0005aa-31
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 17:08:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0438F68B02; Tue, 13 Aug 2019 19:08:51 +0200 (CEST)
Date: Tue, 13 Aug 2019 19:08:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190813170850.GA10538@lst.de>
References: <20190812075147.79598-1-hare@suse.de>
 <20190813170144.GA10269@lst.de>
 <955adc31-6d46-3187-54ac-8d342c117bf8@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <955adc31-6d46-3187-54ac-8d342c117bf8@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100855_390529_4848A8D3 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 07:03:35PM +0200, Hannes Reinecke wrote:
> That was my worry, too.
> But I wasn't sure if that was the direction we should be going.
> Personally, I'd be more than happy to add a flag for non-retryable errors.
>
> Let's see how it would look like ...

Can you start by explaining what the actual problem is, e.g. what
you are doing, what the expected and what the actual behavior is.
That also belongs into the commit log.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
