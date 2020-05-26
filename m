Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0851B2ECC
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 20:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5edcyZyAQvUtBWLwvieaFYHO7sD5OYMwGWb62kFVBGs=; b=RrH76cWjpZX/O5
	IGk1OzSt9B0bWxZhoOsGsdK7Qc47+zJWb323DGq8eO8/fEIJI9XGAPrVxDi3+TIEnOQsH1opvCeR9
	7IBil0LkfrdIwanCzvN2BSqllr6jRnPdSBEjH7VmC/QJJJFAqlWjkhHAPluETcPbYxe0LHwPIsVfX
	otAP7NaWCEhQM8Nsj3vK+mRe5sUsEJnjCnlVnaXocN5WfDzUbrgtTmerLLHTMMkWnkWJpUP4qlooc
	UFDR9E2j/f/F5L8U6YOz3C0wo6IQKXRtbAUcLCPZeTXbst5mCQ3VGFFLS7K2UgCBKKUCFdyDoxpSv
	bEFm8gXXy93HADAXkkwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxMj-0006xZ-My; Tue, 21 Apr 2020 18:11:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQxMh-0006xH-1D; Tue, 21 Apr 2020 18:11:23 +0000
Date: Tue, 21 Apr 2020 11:11:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [RFC 5/6] nvme: Add pi_flags to nvme_request for transport pi
 support
Message-ID: <20200421181123.GE31265@infradead.org>
References: <20200224184859.20995-1-jsmart2021@gmail.com>
 <20200224184859.20995-6-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224184859.20995-6-jsmart2021@gmail.com>
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

On Mon, Feb 24, 2020 at 10:48:58AM -0800, James Smart wrote:
> Create a new field called pi_flags in the nvme request.   This field
> uses the enum nvme_transport_flags definition. However, they are set in
> a different manner:
>  NVME_F_FABRICS and NVME_F_PCI_P2PDMA will not be set.
>  NVME_F_METADATA_SUPPORTED will not be set. The transport must look
>    for blk_request_rq() to determine that there is metadata.
>    Note: There may or may not be PI when set.
>  If there is PI and metadata, only the NVME_F_PI_TYPE_xxx flag for the
>    ns's pi type will be set.
>  If there is PI and no metadata, the NVME_F_PI_TXINSERT_RXSTRIP flag
>    may be set.

I don't think reusing the same values for such a different field is
a good idea.  I also really have no idea how you are going to use these
just based on this patch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
