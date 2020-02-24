Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D916ACA5
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 18:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZXsqzc0itQ4ohv+j5LRnSRgp6JENdvDobIcUJhzpLM=; b=Ab1fVMqViGNciu
	X2Zm/gTjlsSVjzSJsjUofeoheB77+p3vGkiOa9n/m2ldtNJUq6P1wan+Om1uKPAQobyMw056H2MeO
	0vRc09zGPC73JZzkQvFfUa7I1lm7rbgu7ybaFmKKH1ehtOCTICvhtsXWnyyxdJlbx4uUhz5SxAx6m
	pH0j+ODOC7WbbHjWSlm0CtYt9f3TUo4Z3xNvwYnsMdjIE2NM8TJkiDUef2jc9SlMHD2FAao/MI/Xo
	zVZiRTwCTcuT4+D2gWpkEB5XhCzP9JlA/1hbmdz1iFGSfOB3LOopVZF4zToMbqu8sAbHLtsa/Kgv+
	dh2qiWBcbj4M5twcPMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HBr-0000JS-Kg; Mon, 24 Feb 2020 17:06:43 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HBm-0000B7-Lw
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 17:06:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AF90A68B20; Mon, 24 Feb 2020 18:06:32 +0100 (CET)
Date: Mon, 24 Feb 2020 18:06:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: Rupesh Girase <rgirase@redhat.com>
Subject: Re: [PATCH] nvme: log additional message for controller status
Message-ID: <20200224170632.GA7064@lst.de>
References: <1582561924-8017-1-git-send-email-rgirase@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582561924-8017-1-git-send-email-rgirase@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_090638_890281_4FC86D64 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbusch@kernel.org, axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:02:04PM +0530, Rupesh Girase wrote:
> 	Logging the controller fatal and ready status would help to
> 	identfy if issue lies within kernel nvme subsytem or
> 	controller is unhealthy.
> 
> Signed-off-by: Rupesh Girase <rgirase@redhat.com>

There should be no tabs before the commit message.

Otherwise this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
