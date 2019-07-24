Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C16723E7
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 03:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5WKd8gN2HmfMnS6VLkpXS+OQmB3pTTJquNfmabN++4=; b=BF/92gr1adh4Np
	Cllw8uq9jOIcI0Yi4DgbbjIgc+MSCNO5oCxHx1FMTHT6oEwal+/2qrpsHYMgD+9D4Gm0yBnbWISua
	oqaBezzZUHgqTbt7/dmHGAzW37ICiHuNgJ9Naln6mbIFpDvAwoDAQ2cIuil/apFb0CQmyi+FAq6Wt
	AwzN3JA8EdQhVszXIHVQf06cqT98EoWauypBRWKmDspRru+6TqqDGAHCDZwnUAtywgtilYIPFrSz9
	B1bG3CuZT/aa38jJt+tvJn26UgmZGLgVf+qnctlrqirgAsG3abJ6dA3WFu3S3u1Z9sQL00BLtS34n
	8bBynVxiUyDu3X3X/XRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6Jb-0001UY-Iw; Wed, 24 Jul 2019 01:43:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6JQ-0001U1-VX
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 01:43:26 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A20993DDBE;
 Wed, 24 Jul 2019 01:43:24 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B739D60A9F;
 Wed, 24 Jul 2019 01:43:16 +0000 (UTC)
Date: Wed, 24 Jul 2019 09:43:11 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 4/5] nvme: wait until all completed request's complete fn
 is called
Message-ID: <20190724014310.GC22421@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-5-ming.lei@redhat.com>
 <95f000ba-d3c8-f215-5e32-4b6e44954fb1@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95f000ba-d3c8-f215-5e32-4b6e44954fb1@grimberg.me>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 24 Jul 2019 01:43:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_184325_036210_D7B627E8 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 01:29:54PM -0700, Sagi Grimberg wrote:
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> 
> What about fc? I know that they are not canceling a request, but
> they still complete it, shouldn't it also wait before removing?

fc doesn't use blk-mq request abort mechanism, so its own approach
may sync with abort well.

However, for normal completion, I think the wait is still needed,
will do it in V2.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
