Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFBE24880
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVZv8I2OIfSLzbiv69jBsRXp2UKZ5bd7BOF6pwxn05w=; b=q93xNpgjT0canN
	qAr7/y1azcRm5u9+9aTTq3oHK/QsLoO9cAhy84kXVDHpZ67YyrY2pr8vgAQARi5yVwgtxTAqax9eI
	mgsayqDFfDn4i7Oe5AAY+p6uKWj28xFViFwpeFxYLTY9PyF+g0tpala91AbxqqDDgkDXHkFu4J48R
	kwp/4O7OAjYCEZ0gyMvtft13saeupJ1GzA8JkmfmdU6Knug76W79ZhvP6+zOQ1k1uy8HYi+WMX+zD
	4cw16c3FsfYwyBJk7IAPOCLrZvepdkImg9RmTmC4Cw0OJIg+jDBpRJsSTdAsD60uN/0b5CRqoJxcL
	a/+eAxt0RFWDCZxxZPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyhP-0006SP-6K; Tue, 21 May 2019 06:56:35 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hSyhK-0006S3-Jl; Tue, 21 May 2019 06:56:30 +0000
Date: Mon, 20 May 2019 23:56:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: get rid of extra line in the tcp code
Message-ID: <20190521065630.GB17946@infradead.org>
References: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
