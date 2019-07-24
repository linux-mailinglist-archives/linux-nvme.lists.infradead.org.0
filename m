Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C572850
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 08:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iWQeGFLlQtk+Gnk9I9G2+GfhT4Z3WzmY51uBr96oTI=; b=bQQUquJWFztzDS
	tfQB1WRm1RgLnxjK90PkC/2zLV1r5hMiqX5iAXANcfqamB2FnhHCn8dz4yiLqwjY/qD27BAb4BkZj
	fjh0EwfhBeLQbmRb6icjKbs4mrvPlqowgJEueYI2ESwODN9j/8E+sitMuPMs+OKyCMlWrLUGeOC+P
	3pcuSj27uf+BADYQExcT9IiB93+QFOwIgkBC/DmG5RM2o4QCkroWMvhQWbh8Jv+qW+LI9biMRITzW
	Q2qFIUWM8TwI+iVhKZV1jw4v6cCOq27GGyDZNHMdKK3Z/C8IpxjEj5U/tk8fUbiabythVLqpYznDL
	aPRWyvpIbhoyRSdJ7uMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAqM-0004e1-5V; Wed, 24 Jul 2019 06:33:42 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAq6-0004d9-Ku
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 06:33:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 110E568B02; Wed, 24 Jul 2019 08:33:25 +0200 (CEST)
Date: Wed, 24 Jul 2019 08:33:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Potnuri Bharat Teja <bharat@chelsio.com>
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while
 reading socket
Message-ID: <20190724063324.GA1999@lst.de>
References: <20190708095200.15921-1-bharat@chelsio.com>
 <20190724062836.GA25058@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724062836.GA25058@chelsio.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_233326_839779_1B23B27B 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 11:58:38AM +0530, Potnuri Bharat Teja wrote:
> On Monday, July 07/08/19, 2019 at 15:22:00 +0530, Potnuri Bharat Teja wrote:
> > Using socket specific read_sock() calls instead of directly calling
> > tcp_read_sock() helps lld module registered handlers if any, to be called
> > from nvme-tcp host.
> > This patch therefore replaces the tcp_read_sock() with socket specific
> > prot_ops.
> > 
> > Signed-off-by: Potnuri Bharat Teja <bharat@chelsio.com>
> > Acked-by: Sagi Grimberg <sagi@grimberg.me>
> > ---
> Hi Sagi/Christoph,
> Can this be queued for rc?

How is this a -rc candidate?  I was planning on queuing it up for 5.4444.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
