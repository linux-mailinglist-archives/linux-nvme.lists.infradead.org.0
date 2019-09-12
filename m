Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6310DB0E9D
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 14:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0tkzR2c5uh5AwyU5pcOMVwLEweVvTCWJP7K0pVhTLU=; b=jGkoubkMk865no
	7XA+Aq3tiy3MTyXvSREqVoLqSvZbjKN0LvoQGJPS7JBNR+nSQaTwDoanECRBKJ6QnP/ZY8gWpdJ9n
	y1zqw12G6wMw+5NQFw2HHQuMSdAK6RbZFOAyCSKJ9CYWFYf1t/gi45ckUACdKXPvL5b8v6KJB9XUn
	b7fAqG7Ntco9Vb3yPc8c+6B7BqOldjqKf6DpgsKB7qFQCMcH90JeCVar299woWzFjA7Qa1MCXeIrC
	VD6yDfGupnaQB/Qxv+XynVavzLR20Fe7p0IyOqnKCQKqU34GWq6Kv1UqW3DXYTX3arQgCqEYY+J9d
	zN84kkN/cNZrW0avI2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Nuz-0000pZ-9K; Thu, 12 Sep 2019 12:09:45 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1i8Nuc-0000dU-V2; Thu, 12 Sep 2019 12:09:23 +0000
Date: Thu, 12 Sep 2019 05:09:22 -0700
From: Christoph Hellwig <hch@infradead.org>
To: amit.engel@dell.com
Subject: Re: [PATCH] nvmet: fix a wrong error status returned in error log page
Message-ID: <20190912120922.GA1637@infradead.org>
References: <20190912052939.105578-1-amit.engel@dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912052939.105578-1-amit.engel@dell.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 08:29:39AM +0300, amit.engel@dell.com wrote:
> From: Amit <amit.engel@emc.com>
> 
> When the command data_len cannot hold all the controller errors,
> we should simply return as much errors as we can fit
> instead of failing the command.
> 
> Signed-off-by: Amit Engel <amit.engel@dell.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
