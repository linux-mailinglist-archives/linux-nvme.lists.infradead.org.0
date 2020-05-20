Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCAE1DBC1D
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9xUkdUEkOpHPaOaB6/QlF2/uHa4m6wp1N7zF9wVUWk=; b=ST1VDczprzzVEa
	MUhS5zLsicuiYFK11MfJnHUwnLn7SVxE0rOLBwYPaGfdFEb28c1fLTBxZmcobMFFAOa81aPBgCYRH
	K9hBZxU0wLwbMLzXHJZ6IPNpSMClzNR06H51xrPW0XpxPF/nqd6BNS91cUPvatmoku7D8ePjFQo06
	EC+aGqSPc8RPz32gvVMgoqzxqCskSXhJMPZQh/o9ymM8AGorcfSFi9A5wU4YYknqu19jgdopGdeh+
	BTqu3nckMuHI1FrXv1Zjb4QfHYCgkU5aBjSPWklNXF0EVg8V4NRUd3bdHOXLhSn0KfMkuc3rYrG3K
	CIBTUTLYmw33IlkOGNWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSyI-0004OQ-Od; Wed, 20 May 2020 17:57:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbSyC-0004Nx-Vk; Wed, 20 May 2020 17:57:32 +0000
Date: Wed, 20 May 2020 10:57:32 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <james.smart@broadcom.com>
Subject: Re: [PATCH resend] scsi: lpfc: Fix a use after free in
 lpfc_nvme_unsol_ls_handler()
Message-ID: <20200520175732.GA15911@infradead.org>
References: <yq1y2purqt1.fsf@oracle.com> <20200515101903.GJ3041@kadam>
 <20200520165557.GA9700@infradead.org>
 <20200520172433.GD30374@kadam>
 <20200520172844.GA21006@infradead.org>
 <yq1y2pmtsv7.fsf@ca-mkp.ca.oracle.com>
 <20200520173752.GA13546@infradead.org>
 <yq1sgfutsjd.fsf@ca-mkp.ca.oracle.com>
 <20200520174800.GA13253@infradead.org>
 <4693662b-60de-388e-d67f-722eabbba475@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4693662b-60de-388e-d67f-722eabbba475@broadcom.com>
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
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Paul Ely <paul.ely@broadcom.com>, Hannes Reinecke <hare@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:51:48AM -0700, James Smart wrote:
> On 5/20/2020 10:48 AM, Christoph Hellwig wrote:
> > On Wed, May 20, 2020 at 01:39:55PM -0400, Martin K. Petersen wrote:
> > > Christoph,
> > > 
> > > > I'll pick it up.  Can you give me an ACK for it to show Jens you are
> > > > ok with that?
> > > Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
> > Thanks,
> > 
> > applied to nvme-5.8.
> 
> Guess you didn't see Dan's response - we had replied, and Dick rejected it.
> Dick has created a new patch that I'll be posting shortly.

Oh well, I'll pull it again then.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
