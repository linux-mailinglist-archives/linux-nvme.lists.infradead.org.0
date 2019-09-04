Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6D8A82B5
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 14:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8jbUhSxeIQPUSFqxgap7SmP2Nw7VABR7XrqF/dGgXw=; b=ZKj0iWKhTeaFgd
	6FQ78L5LkT7JAgqrNfHr6FfS7RyojWr0A0KRWxA2B8BJ7FCv4VJtXkfEBcaDdB5rqDgTLJahKKWxN
	CtOKvhB9AsRG7a9A2A9JlY5Yp6+Wi4jBFFzi8sau4ed6CJoj0p4oQfnRjnIofbyPCNuOLn/PFhjqT
	ThP3UAtFqlzUUf9x5DnthXg2I1gKHPVHPOT0lKCWGDxgyNUYYA98bnpRiE3dEFRsfN8okFLgcoHTn
	L9l0r5fF+o7bzk8ka8AuEPGo4tIC56qNQpm7zpppVCoJQAoymRbqQBUjbrVWPeOq2KbH+/AE6iu3P
	GFlSxKB4otz8Mjuy2zEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UhB-0003nZ-3C; Wed, 04 Sep 2019 12:47:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i5Uh4-0003nP-7I; Wed, 04 Sep 2019 12:47:26 +0000
Date: Wed, 4 Sep 2019 05:47:26 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: include admin_q sync with nvme_sync_queues
Message-ID: <20190904124726.GB13452@infradead.org>
References: <20190903200847.3378-1-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903200847.3378-1-edmund.nadolski@intel.com>
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
Cc: keith.busch@intel.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 02:08:47PM -0600, Edmund Nadolski wrote:
> nvme_sync_queues currently syncs all namespace queues, but should
> also sync the admin queue, if present.
> 
> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
