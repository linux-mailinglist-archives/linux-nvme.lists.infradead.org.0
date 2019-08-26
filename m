Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5D99C993
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 08:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JD8HG7tbZ7fYHtmm1277uMyJawXXUI+oc0xtzbOlvFQ=; b=tRuI8K0DdF/qPa
	U2krIib8NQTT6Kmvc+DTUJbUWHpanGEy6v834m+d5KQW3h/ZJ3WDnwzQITCwS/vecUw75DLJinYKl
	1eM4ILkhdk+ql6d1jGfgUEizkE2lfsCRI9x9RQQV8vUr5fNiy4ip2djMl59cwWXN+L4mD2Pq/UFDt
	6d4u1ZXoe5QDshnfKhgDoEHgZ3mhgpLZDutGquY+Proo7GHMqK6oy2cV61MTJIKsEu3OOx8eMyei4
	Ffv8+2cu4I9qeJlAowsQzFFG86DxdVOMNax9t9RlkJLnCax5pQGnW3iQsUXwP4LqG2WhPtLsHS5fp
	91n//c+ppx/2b/wkRznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28iK-0000tT-SE; Mon, 26 Aug 2019 06:42:53 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i28i7-0000su-Nq
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 06:42:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B020A68B20; Mon, 26 Aug 2019 08:42:33 +0200 (CEST)
Date: Mon, 26 Aug 2019 08:42:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3 2/4] nvme: enable aen regardles of the presence of
 I/O queues
Message-ID: <20190826064233.GA10911@lst.de>
References: <20190822222818.9845-1-sagi@grimberg.me>
 <20190822222818.9845-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822222818.9845-3-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_234239_927995_D13A0E51 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 03:28:16PM -0700, Sagi Grimberg wrote:
> AENs in general are not related to the presence of I/O queues,
> so enable them regardless. Note that the only exception is that
> discovery controller will not support any of the requested AENs
> and nvme_enable_aen will respect that and return, so it is still
> safe to enable regardless.

Any scanning races if the AENs are enabled before initial namespaces
scanning?  Not anymore since we have the scan workqueue, but that
might be worth mentioning in the commit log.

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
