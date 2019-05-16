Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D211FF83
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZU50uKHWBh4wHWa8Z0jlzr9YiHLSm0FET6nb6QCY00=; b=H52kQ/F93Q5g98
	F4gTVM1AZqWx5T0OmImgs1A/jpldErThiu4xAoEzDCQCac2ZL9/jqpJPYL77L9qAxW1y3KTdUTL7v
	es82RcT+91IYAPCZzVdvsK/blK5sPIO7rXL2uSKytG50wTsAPoMgninqzCXiyFAEUpW4MECeVxKAv
	clk4lH4sE2UGKqbbzM9ZOH6ojZ0xugOZHZD1HJhGzTf9Tn8BWmnQ0L8oGGiWPUf5j7ScKnKicoHhb
	iVkb0TLtYDoHkG4DlnKaJFmKAq/mY5Zz0DcpPj4CiB9nzHiWoJz0Ahy7ynLn6DkAH8yJueka2gnCW
	swLbWp4Re0pJH5Ds3cqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9ru-0007Xv-GY; Thu, 16 May 2019 06:27:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9rp-0007XX-W7
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:27:51 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 8CF8A67358; Thu, 16 May 2019 08:27:29 +0200 (CEST)
Date: Thu, 16 May 2019 08:27:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 2/6] nvme-pci: Don't disable on timeout in reset state
Message-ID: <20190516062729.GD29930@lst.de>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-2-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-2-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_232750_181560_1C4388EC 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:36:21AM -0600, Keith Busch wrote:
> The driver doesn't dispatch commands that it needs to wait for in the reset
> state anymore. If a timeout occurs in this state, the reset work is
> already disabling the controller, so just reset the request's timer.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
