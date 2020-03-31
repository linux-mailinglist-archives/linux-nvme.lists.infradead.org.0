Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C44199A21
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ell1OW+Pz78hBjZSXg/8MPl/jXceE3oswLxY65dF5pQ=; b=Zn5VisttbXoB/t
	2iI01RX1nrpHimRUHwWfAajpaUjX7SypWdUy2ofm6mvUcSTo9FwZQKOGPa233i0L+xuRZ/v8NgabU
	gOyQ27i+T8O0ABBsYX2y8GSBP2Oy0qQPRdywmDs/uYB8TEb0Wy+7ObqyHGJ+4ye+FzgJ2owqGT0Tw
	2nqCuFLR13WSpYnLZgmpvlPwMK5GFU9Lrm7ew+giWD0u6/UINDYXHeQrDDd1RDJtIXCEWfsVf9g7Q
	HWomnsGiBvxqFKbHTBWIwvJql2cwLkCT2VIGtwPbV741kt+4HAkoE+D9Bv+bnMa9RMQ9EdB6ZbZaV
	3hh1IGBrG000RifHksXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ5z-00058T-R7; Tue, 31 Mar 2020 15:46:31 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJHhV-0006sV-Sx; Tue, 31 Mar 2020 14:17:09 +0000
Date: Tue, 31 Mar 2020 07:17:09 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fcloop: Fix deallocation of working context
Message-ID: <20200331141709.GA26408@infradead.org>
References: <20200318214112.18317-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318214112.18317-1-jsmart2021@gmail.com>
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

Thanks,

applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
