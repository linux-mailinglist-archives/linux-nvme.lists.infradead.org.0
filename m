Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4F1DBBA6
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTuD3AuQmh/6g4jsr2isA+1fK5tU+jZNHmAkzy/vh0w=; b=f9SCJBmaORe/pN
	wZt/Ym3iq1N5Py8DqKxKo6IYRWZjo9uPR2KYT56xrv/rtzoHftQlde0sP2LKzQowRPWEQGf6voTVy
	IbGn2dYQZmMiOi7c0ACPG6G/lOh4iSGKDzh0afSmrXU1x28jEC5t48dKfRGavG4msI1dGEBeJ5LzL
	tIvr2KfGhwKo4UObR04lwtkg4oHzYQ8GYUtzOPGcNMg2eKU18SDH+F9BvNsllCMONSq9cvK0BSb1k
	LU9P3vqCCyGRDSwu1CQGMU0odQ5VvKfYKpsCLzUUYNdMKjD6zdMXWxFB+QntXTJOr77N08qvtZE+4
	GWsgT4VpcZxSPXlsJcaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSfJ-0003op-3a; Wed, 20 May 2020 17:38:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbSfA-0003oD-Pe; Wed, 20 May 2020 17:37:52 +0000
Date: Wed, 20 May 2020 10:37:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH resend] scsi: lpfc: Fix a use after free in
 lpfc_nvme_unsol_ls_handler()
Message-ID: <20200520173752.GA13546@infradead.org>
References: <yq1y2purqt1.fsf@oracle.com> <20200515101903.GJ3041@kadam>
 <20200520165557.GA9700@infradead.org>
 <20200520172433.GD30374@kadam>
 <20200520172844.GA21006@infradead.org>
 <yq1y2pmtsv7.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1y2pmtsv7.fsf@ca-mkp.ca.oracle.com>
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
Cc: Jens Axboe <axboe@kernel.dk>, Dick Kennedy <dick.kennedy@broadcom.com>,
 linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 kernel-janitors@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Paul Ely <paul.ely@broadcom.com>, Hannes Reinecke <hare@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:33:12PM -0400, Martin K. Petersen wrote:
> 
> Christoph,
> 
> > On Wed, May 20, 2020 at 08:24:33PM +0300, Dan Carpenter wrote:
> >> On Wed, May 20, 2020 at 09:55:57AM -0700, Christoph Hellwig wrote:
> >> > James, can you review this patch?
> >> 
> >> He already reviewed it in a different thread.  I copied his R-b tag.
> >
> > James, should this go into the nvme or scsi tree?
> 
> The offending patch is in the nvme tree so I think you should take
> it. Otherwise I'll pick it up in 5.8/scsi-fixes.

I'll pick it up.  Can you give me an ACK for it to show Jens you are
ok with that?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
