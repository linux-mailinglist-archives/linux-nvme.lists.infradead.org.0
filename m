Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1D8CD04D
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 12:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysAg9moaHVstE2eYYVtT3lrZiut1DXN0LbjRA7re0ug=; b=LP6xnILfHXve3p
	6bUMGZipmOFqEc0Sljo7hgYBdsU38bIWFmzWe6ys5z/EKWUe3UCkJd6pYrzKaEWDbcNpi6ibl1tg4
	UXJorh3z53VfcgDgl8yIPFJLj4QqeF3rtLQ2S2OB9RfOlXJ3C7STwF/xFN5UwwXDYSOSmVrNChdIT
	2tS3GwjvplvUpXgCKzyqYhh5XpawJa1IpUHrdo7ip1oqPsuDd+xyX46OGuyefNsGizfWuObYY3Bp6
	Gkh+7xdoDNwJQ3RX6iHV2LLQY/+63Eo30VdOqWpY6a4KHC/1iQNB119JDehA0fmPqUcHk5Sfv4RDm
	BtqS9K/mhR+OC9ziquiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3X7-00086J-MT; Sun, 06 Oct 2019 10:12:57 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iH3X2-00086A-RE; Sun, 06 Oct 2019 10:12:52 +0000
Date: Sun, 6 Oct 2019 03:12:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme: define struct for __nvme_submit_sync_cmd()
Message-ID: <20191006101252.GB30175@infradead.org>
References: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:13:46PM -0700, Chaitanya Kulkarni wrote:
> Over the period of time __nvme_submit_sync_cmd() function has grown to
> accept large number of paratements. The function __nvme_submit_sync_cmd()
> now takes 10 parameters. This patch consolidates all the parameters into
> one defined structure.
> 
> This makes calls to the same function easy to read and improves overall
> code readability.

This makes the code both a lot more unreadable and a lot larger.  What
is the point?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
