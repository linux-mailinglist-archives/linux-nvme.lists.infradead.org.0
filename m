Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B749FEB15B
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 14:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOA5hCDRNxK8SxLUQfTygq6UuDV/D5+PbkCq8k2lo1E=; b=FmeLN9D8E7IIa9
	ZqGCMNWcumkZ5UWLN5Lty+qJ5am/F+bYq9nmxsOZiLHHwSJ/MTnW/m537o00C+kToa8Pcs3wwVg0k
	mUYsvVcVJhf3scnxu3b1+Xh8q4nfKvAlTots6RPeYYnkrlFLJZdBQtGXfFkIBC43UW840R18Z641p
	Rl+ZtAb3Aouc+ThL+3b0KbXMNuUk8/dzVq+MEZcmnHqNySaAwL52FCzGkH9Kep6HPadfSlBukuLJh
	JizWtU3cUz13sJaB+Xs7dAa6V13Zf7FbVHLEsxQZBJ9d9NJ1u/ZStOJPAuTUo8Ws5ID4u0VSsw5sN
	bERPUzb8qyOcf9RLjQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAfi-00060Q-AQ; Thu, 31 Oct 2019 13:39:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAfc-0005zI-P9
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 13:39:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9831E68BE1; Thu, 31 Oct 2019 14:39:21 +0100 (CET)
Date: Thu, 31 Oct 2019 14:39:21 +0100
From: Christoph Hellwig <hch@lst.de>
To: Charles Machalow <csm10495@gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
Message-ID: <20191031133921.GA4763@lst.de>
References: <20191031050338.12700-1-csm10495@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031050338.12700-1-csm10495@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_063924_964808_7D150632 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 marta.rybczynska@kalray.eu, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 10:03:38PM -0700, Charles Machalow wrote:
> Changing nvme_passthru_cmd64's result field to be backwards compatible
> with the nvme_passthru_cmd/nvme_admin_cmd struct in terms of the result
> field. With this change the first 32 bits of result in either case
> point to CQE DW0. This allows userspace tools to use the new structure
> when using the old ADMIN/IO_CMD ioctls or new ADMIN/IO_CMD64 ioctls.

All that casting is a pretty bad idea.  please just add an explicit
reserved field before the result, and check that it always is zero
in the ioctl handler.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
