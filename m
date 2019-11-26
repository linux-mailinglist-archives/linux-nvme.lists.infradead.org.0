Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9703A10A276
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPSuLIUebV6J+XAHHQospSIxb/PmLmRU2sMJvQdDp80=; b=Zq4dW7Bm2iDEY1
	8kB2RE3vVxxYl7pWjE8i76Ugzf+Fz0Jvfs0Gmt6i/RhYLZGqc/84Rl8p8kRowAklg9C9rEUgAVyG2
	4jh41V7KHcPvoclqQmuknLPjSMsvf/jChk2nDWkJgcYWjllUp11EHtZ3P/i2vDmDH//Vy0kG8yc/Q
	6Xjd+DcAen+H2JD+6MW4PwlVjCkZzGVuuYslmG42/Jg5EvexrRMjH6f6KLkwkH29RbivQGrMFS3Qf
	nV2JDnGsELMhii8PE7DtDXLwDMI10MgsPiCQv3EQJLE1b96z+SCQEuXYhuxHNJ0WsOEKAyTxJQXeX
	Xz+AIjZQf5y0DbD8xviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZe3g-0006te-6L; Tue, 26 Nov 2019 16:51:24 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iZe3c-0006tW-Oe; Tue, 26 Nov 2019 16:51:20 +0000
Date: Tue, 26 Nov 2019 08:51:20 -0800
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme: add error message on mismatching controller ids
Message-ID: <20191126165120.GD10487@infradead.org>
References: <20191121175810.19501-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121175810.19501-1-jsmart2021@gmail.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good (modulo the commit message nitpicks):

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
