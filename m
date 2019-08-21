Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6466198812
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 01:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdtj/O2S3xm+DOuDXQxm1Hay7/jRrlOpHhfRiVsLWAA=; b=MUG7GwwCOfp6/x
	gOc7v6JxonfQCTGad/igsJIooRb6tm/tohWS417EM8yQ9fel9DqNK9Z6D60J7ux5y/8woeHORuiDW
	Jkap/QPgAicPpUrP3oSnIuCuYH3Qj27TipMVpZfg8focRa06z8fjeuxPP6VlL2aQYqVFWu6RAw9Y8
	ZGOvOXFYudSSszJ3n/6Ti0tCnkMU9NDNylIJMDOmO+faWBocdB0lNvhrMAnRKDb/P+JjfFPitWkTl
	j5gbeuJl68LBHwSQkOtzD+JETQ2gnZETNl3ldrc1o5ndCTMbPaOkQqyDSCeyHM30eCQ/leZHghfWL
	q0BH7n+6LXn07mujbttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aIl-0001ML-RV; Wed, 21 Aug 2019 23:46:03 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0aIh-0001M6-5t; Wed, 21 Aug 2019 23:45:59 +0000
Date: Wed, 21 Aug 2019 16:45:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: amit.engel@dell.com
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Message-ID: <20190821234559.GB27887@infradead.org>
References: <20190821063711.1252-1-amit.engel@dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821063711.1252-1-amit.engel@dell.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

I don't think we should need this check.  nvmet_copy_to_sgl uses
sg_pcopy_from_buffer to copy the buffer, which uses the SGL iterators to
copy, and the SGL is build only for the range cover by data_len.

Did you see an issue that prompted you to prepare this patch?  In
that case we might have a problem in the data_len validation earlier
on.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
