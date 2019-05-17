Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAEC219F5
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 16:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh1QlFiIeAuIK/ESLapmOruaS+bG/vL36dZWhOnNnUY=; b=nobLEmP6XqXGJO
	t+Xpve2EPhtIB0o/67CqUMnee+Kb4j5BSHGQ8IWLPzs7E0D6AT/QqRmyAVarLCwx/hnyDC/dbIC7u
	62jpOigRZu8CbYHpq2ntazEMWJ+iNK5IKBLCRpTPryvUHgknUhXoUxW49dNqFAIObzh6EQQFkuNyT
	xLw/hLfTuRlv//ksx2VFIJKJ4SxXqEDEWK64Wg2i0z+syRqYQpqgKI9j6gvcn+vN70oS0JJ7xGEFY
	OTtUtjm1Xgobq5hFSq/3Wh+CtJILlFT3gt5WlU9+9CYkB676jr/Wwr8KpTl/UyK3JtXTPmtFTWZnf
	xO7iGhLx1T6kfUXKfe7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRe8G-0006aw-Oq; Fri, 17 May 2019 14:46:48 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRe8B-0006ae-1y
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 14:46:44 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 07:46:41 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 07:46:41 -0700
Date: Fri, 17 May 2019 08:41:27 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Message-ID: <20190517144127.GA24925@localhost.localdomain>
References: <20190517094736.14504-1-hch@lst.de>
 <20190517094736.14504-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517094736.14504-4-hch@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_074643_149342_089D217A 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kenneth.heitke@intel.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:47:36AM +0200, Christoph Hellwig wrote:
> Holding the SRCU critical section protecting the namespace list can
> cause deadlocks when using the per-namespace admin passthrough ioctl to
> delete as namespace.  Release it earlier when performing per-controller
> ioctls to avoid that.
> 
> Reported-by: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

This looks fine.

Reviewed-by: Keith Busch <keith.busch@intel.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
