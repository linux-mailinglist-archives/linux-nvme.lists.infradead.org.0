Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F6B1DBA5B
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 18:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUqkx7D66/X+YJ+L5raOXy9y2jyRiI5pzfZwYbbe3BI=; b=USEP+zebnkFwRv
	qxyu1b6I1N3gFWAzHxUsnxRvBj8vY5J78j87ToO8SLbwa2hARPiexETbKHS+I4LS+EyH8ICOSDSc4
	CpvOSAneWnsK1m+Q0dF4FMQ0849/0bCus5N5qI9gxyrbd+wwwoEgfAJ7YuBcRRdNevADPhrK46Onv
	/flflbXY+D7F0iUY4ul2N7BMNzeCTLqjtoV9gz+bzWENEgXzi3Z+Fao9+5jHCrL4zUqU0fY/PPucA
	Tw02iTldty/kxd7xvHlMtkD10EJgsY57L9ySMv6FMJwZ6OhRaLBQ8WmXClAOTzKa4Fyw2J3Kq6C4U
	fm8dADJuiRaes4XwFBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbS0f-0005Mh-2q; Wed, 20 May 2020 16:56:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbS0b-0005MA-9e; Wed, 20 May 2020 16:55:57 +0000
Date: Wed, 20 May 2020 09:55:57 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH resend] scsi: lpfc: Fix a use after free in
 lpfc_nvme_unsol_ls_handler()
Message-ID: <20200520165557.GA9700@infradead.org>
References: <yq1y2purqt1.fsf@oracle.com>
 <20200515101903.GJ3041@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515101903.GJ3041@kadam>
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
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, kernel-janitors@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Paul Ely <paul.ely@broadcom.com>, Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

James, can you review this patch?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
