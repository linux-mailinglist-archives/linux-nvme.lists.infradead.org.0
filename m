Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFE98804
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 01:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epHkUmbeOiJy85riZ9ZOq44pR+j3/wsDarKk8oeqKMg=; b=rf2K3MZlibXQr0
	MrsQ4qLvWTBHSmGQH7+KMlhHNbcheTueU0Jm/07te7mZGvzV+VsIq6/euOJ9GJneRsNUeIfkIdDfd
	7EL5wBK0PsMa5K3h2Cbj5TRfWDhx5riRxTHvfx2CdiWtYObHUzxDocSmro2obSD6kwQc5owJu5rwn
	4dlGvCeJni/wYm/xKFFx7fxivlUtYeA68qWeXT5L/nXwj/ZPjTZ/Xx/Q7PiGGX+rb5gMWhAjWCHEV
	B1S7HvdqUax/12SUznsEVd3rSxphLC2WEJnUlTrZKRhA0AI+LreA0ky6PUE0bs1t7efv///ZHR5F9
	O+sJbFAX23KT7+HlbVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aFR-000887-3n; Wed, 21 Aug 2019 23:42:37 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0aFN-00080r-Ji; Wed, 21 Aug 2019 23:42:33 +0000
Date: Wed, 21 Aug 2019 16:42:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH] nvme-cli: Warn and delay before formatting
Message-ID: <20190821234233.GA27887@infradead.org>
References: <20190821224249.14281-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821224249.14281-1-keith.busch@intel.com>
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
Cc: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I like the idea of format warnings.  But there is one things even worse
about Format NVM that we need to include here, and that is FNA bit 0.
If that one is set, even a format of a specific nsid will format the
whole controller.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
