Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD981B2EB5
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 20:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHIh4gXBtr6vJuZKa93pI472w0CG9rAAEIEN9ETYCgo=; b=DDrLNovzGFhGGY
	MTIL06osnTrqENX06Dl6cmyscbOObGyW7aO8G6OZVchXgsIt+UO2Ik4CzLQ//25C8048WBOfXOB5P
	Dod7Y39EUpdJDliAwJVqxyjxd6SrMFDuEqEMyxvFsxqc4uQx4IxZHXgwJ9fFckFAsOgKZKw/ElLOo
	geGFWYb+5BL7mA9WJghR7HC3xw347F04q868eIKo1BRBbEFeLhxEOheYxM8kttvMwoXagRX5f/Dmz
	frGNRUwbx0JVYjH5gM2oRpanwHGSo/TOAVCmALHVxw2y6FFr/8mKxsXV9CtJA99cywnxuMxH7T4gu
	ZA4tsfCHxT9ubhwaKoNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxEo-0008Gz-Pb; Tue, 21 Apr 2020 18:03:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQxEm-0008Ga-P3; Tue, 21 Apr 2020 18:03:12 +0000
Date: Tue, 21 Apr 2020 11:03:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [RFC 1/6] nvme: Add ns to nvme_request struct
Message-ID: <20200421180312.GA31265@infradead.org>
References: <20200224184859.20995-1-jsmart2021@gmail.com>
 <20200224184859.20995-2-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224184859.20995-2-jsmart2021@gmail.com>
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

On Mon, Feb 24, 2020 at 10:48:54AM -0800, James Smart wrote:
> To facilitate obtaining status about the namespace issuing the request,
> add a ns pointer to the nvme_request structure.

Not against this per-se, buf if we can find a way to not bloat the
request it would be nice.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
