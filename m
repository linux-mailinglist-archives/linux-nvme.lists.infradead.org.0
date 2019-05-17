Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A048F21681
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUar6klgL0kNNiuEsMCzobc88zAFaxNnEsQavNvMNHA=; b=ZJQERLNEGCTVPv
	BzQztp92J6mrrYI0V7cLheU4sGRthkgL3S6McZniCVIwS7Ea8y3OPJgjb6jfLJYqcni326TWA8eHO
	fl6+ftTGQwLVWrsMge5bI8tWSS6bPh4DlZo837WQB5Qz82/rO0Na4gLFN07RuUhFRuCavjL9eDsi1
	9yWCOjntdOgXSVL2v4MUHETIJfrKVM7uqBMAkoUgO5wQRiemLITQm+l04g3DXckJVz970rJkbSfxG
	yfaygEMgUM95QX1qkuAmEJjf4koVMHbaiQsjtSbFzCt/J+eUBHkLrqkYfIpuvaymDBSBbZBBwjq2r
	30XVcoIvDYLA+TUQHvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZQz-0008NK-DI; Fri, 17 May 2019 09:45:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hRZQv-0008N9-RC; Fri, 17 May 2019 09:45:45 +0000
Date: Fri, 17 May 2019 02:45:45 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH RFC 0/4] nvmet: add support for port based io priority
Message-ID: <20190517094545.GA26412@infradead.org>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
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
Cc: sagi@grimberg.me, hch@lst.de, linux-nvme@lists.infradead.org,
 jthumshirn@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:21:04PM -0700, Chaitanya Kulkarni wrote:
> Any feedback is welcome, I'd like to understand if this approach is desirable,
> if not then what is the right way to use the io priorities on that target side
> so that NVMeOF target can take advantage of the scheduler infrastructure ?

I don't really see the point.  Why would we treat I/O differently
depending on which port it came into?  Until NVMe has an actually
working priority scheme trying to hack support into our infrastructure
seems rather futile.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
