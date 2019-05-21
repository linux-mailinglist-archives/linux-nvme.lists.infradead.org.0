Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75632485F
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlBHSAPLkbFOy4LfWHnlc1qVmYU65quNS4p8stJcUe0=; b=UntFXQkxOZ4omf
	ZaMT6xfd1Easc7rclAiJklC368JAJIBonWvCa8wwnjpUSTwnyVFZWW6UIaWYnCIpJgAXH7ShETSGk
	b2JAw941MkWjRM6JM/7BhYnlKH+Pv97mkZgeX+x36gegazyRGv95neBJIL4kqMwljBFQ86+opWY4l
	M2YNDcgE/dYQ3ojE/zLyHuyTcsUN0hniPW7ZG4E4jWTrBZUozcdBepJO8ZLIHTQnrmBopvEOH7eku
	LFNmhzT0cOJPWQ4YZ/Xvg+u1wezRE+PnfAClR8jmJL/KXnvsACcYoJaBCxAOZbKXe58Se4Lz3t0sQ
	D5VRI8dH+P0geN6XjCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyZD-0002bi-Me; Tue, 21 May 2019 06:48:07 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyZ6-0002bE-Rb
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 06:48:02 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 1E3FD68B05; Tue, 21 May 2019 08:47:39 +0200 (CEST)
Date: Tue, 21 May 2019 08:47:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/4] nvme-fc: track state change failures during reconnect
Message-ID: <20190521064738.GC30402@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-3-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520063624.50338-3-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234801_042281_141C2DEE 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 08:36:22AM +0200, Hannes Reinecke wrote:
> The nvme-fc driver has several situation under which an expected
> state transition fails, but doesn't print out any messages if
> this happens.
> The patch adds logging for these situations.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> Reviewed-by: James Smart <james.smart@broadcom.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
