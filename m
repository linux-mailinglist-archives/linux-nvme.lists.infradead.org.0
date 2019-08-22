Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD389889B
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7qyG0f/RxC5al2irn6Ys+DyA3ilm6GTPjLTc0MQvBI=; b=XDgBzj414TgmBU
	VCEoF8rqwaUbrHeRLFsgBX6YdsH1rBH1nYwUrEkwht70dveR2IrWxWcMBZRZOE014+cP4+TL5QDwJ
	UWWzWg4JcGEDV90n02kEIX4fq2eoYKOq3BTLLIpfHpfohWF8f5FqLPwg7g9zy8nhmQEXq8xn7+2rU
	c4WSuhQQeRwXG++qw+eY61OOtN0mtQub4OLXXUpkyqUepZ4q1Fpc+a5bEDQ92z3b059ZGXq8nfhoe
	ZGu+5sA7C75pbV/CftPrSod84PFylsh+ipGhNkGOF/sXLDnX3kN6HqzN/869jeaPuiLv3Tip/ViYi
	ZVryNn/une52xZw376pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bC1-0000pY-3k; Thu, 22 Aug 2019 00:43:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bBu-0000p7-L5
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:43:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EF69E68BFE; Thu, 22 Aug 2019 02:42:59 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:42:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 6/6] nvme: don't remove namespace if revalidate
 failed because of a transport error
Message-ID: <20190822004259.GN10391@lst.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-7-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-7-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174302_852281_FAA5EE61 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 07:49:55PM -0700, Sagi Grimberg wrote:
> If a controller reset is racing with a namespace revalidation, the
> revalidation (admin) I/O will surely fail, but we should not remove the
> namespace as we will execute the I/O when the controller is back up.
> 
> Fix this by checking the specific error code that revalidate_disk
> returns, and if it is a transport related error, do not remove
> the namespace as it will either recover when the controller is
> back up and schedule a subsequent scan, or the controller is
> going away and the namespaces will be removed anyways.
> 
> This fixes a hang namespace scanning racing with a controller reset and
> also sporious I/O errors in path failover coditions where the
> controller reset is racing with the namespace scan work with multipath
> enabled.
> 
> Reported-by: Hannes Reinecke  <hare@suse.de>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
