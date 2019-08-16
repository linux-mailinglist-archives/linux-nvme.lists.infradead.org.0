Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FD5903F7
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 16:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrkMXqVM4b69DLChveRrAfN49xAXEpfIBHj9tK8twMk=; b=d0dkSXq2x0N6Br
	YIQILwtD36gk3ZDxbOl27NIdD9dqtweiuZFikVi3pt1BvR6YklcbTEQZn69hWAEaWzBUZidcbVbOj
	fTHrEPQ6RDtEeA+1Z0XGxnCnPzjiXG6AsFXaTpNMluq7jTeOk3DFOPTG9I2ZbeZACqDcrF0u7LbJG
	qNZmXOD76yqXx0DaWy3dz35fFdAKbgsJRUqy1RQILabPEEhJvo137yYDlsAyb1gcVTpznd+ELmeIA
	qMHGgScvptFcN4V0nJQxnctYqLcteiXHYfC7cHmRn/lL6PGKxTYmbanmgRbTvRMWwOtMeyfY6MyAx
	lRXt0VxnpK0ipnxeweeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydEu-0005HL-Tv; Fri, 16 Aug 2019 14:30:01 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydEk-0005G6-Vk
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 14:29:52 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 07:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="188827808"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2019 07:28:57 -0700
Date: Fri, 16 Aug 2019 08:26:48 -0600
From: Keith Busch <keith.busch@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [PATCH] Revert "nvme-pci: use host managed power state for
 suspend"
Message-ID: <20190816142648.GA6849@localhost.localdomain>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
 <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
 <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_072951_063322_BBA26D83 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, Keith Busch <keith.busch@gmail.com>,
 Jens Axboe <axboe@fb.com>, linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 07:12:11AM -0700, Chris Wilson wrote:
> Quoting Keith Busch (2019-08-16 13:46:41)
> > Could you please try Rafael's solution? These two commits here:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=accd2dd72c8f087441d725dd916688171519e4e6
> > https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=4eaefe8c621c6195c91044396ed8060c179f7aae
> 
> Which indeed work, thank you.

Great! A pull request inlcuding these fixes was sent to Linus earlier
today. We should expect to see its inclusion in the next -rc.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
