Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5FA1DBB74
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnBELzFx16YeeMd7YWDxEivLI4ugSQUQ3+JXArc8m0o=; b=A4pdwulHMB603P
	Ak0oQNefARDo+I0wTJlc2AWH8lfHUShxVWe036m5u+Nv1nTleXjE+2ONEBuJlchWy3zfFziTkhY/J
	ESt66SlcPLZAR9bhHlTwtHno6esRA9h1EFXhQEeJEPuBrtMkIHmXXx+zGitSuQPpCHPfuRXtw7SkR
	79qsALEgbrCGU3y/jZrrcoDsMUXoRlwSfythT+nYFM7u0t2TY5xl0omyAP0hTPo9jRA6y75iucuDy
	hFGGlUWvHTrjK+fr3rSp9jIfZ4mxKV5/mUqUX7XzLYFpEN+r/KkGkh8HnyvmgDJtDtO41nWJmxhOC
	gBvmfs46BhQojYLXFlKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSWO-0005aQ-Go; Wed, 20 May 2020 17:28:48 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbSWK-0005a3-HY; Wed, 20 May 2020 17:28:44 +0000
Date: Wed, 20 May 2020 10:28:44 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH resend] scsi: lpfc: Fix a use after free in
 lpfc_nvme_unsol_ls_handler()
Message-ID: <20200520172844.GA21006@infradead.org>
References: <yq1y2purqt1.fsf@oracle.com> <20200515101903.GJ3041@kadam>
 <20200520165557.GA9700@infradead.org>
 <20200520172433.GD30374@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520172433.GD30374@kadam>
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
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, kernel-janitors@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@infradead.org>, Paul Ely <paul.ely@broadcom.com>,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 08:24:33PM +0300, Dan Carpenter wrote:
> On Wed, May 20, 2020 at 09:55:57AM -0700, Christoph Hellwig wrote:
> > James, can you review this patch?
> 
> He already reviewed it in a different thread.  I copied his R-b tag.

James, should this go into the nvme or scsi tree?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
