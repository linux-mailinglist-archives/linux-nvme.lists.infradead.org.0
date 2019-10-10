Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C36BD27C3
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 13:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D24NW7BPxRiDcParaZaZLeuX6HnH7SX2qW25trFO4A=; b=ZyoHbpjaIwcIwF
	drKT74Sn5OP8VD2FJ+3U3cSuWVSvOTNGtDq/GZa2FIlxOgzHlB6taeur74632MnGfnxMM7QamXgGy
	3g4ePksuhVNgH7j8LT5BwV2+ykEbUNp4pLJSm6VMyhhjqEghiWAk8mku3E0qwEiim58KAR0zB+LSb
	6KAJONg3P42vDOd/UUImWrqVhwAQ+Yj3obicTPTSzonAfdmAeYMzo0Xcr8GwRt5SxkZVk47yp3rR5
	4+Vve3HOlv6B73LZ5W79/tTMGRat8uyCMG/mOFmXPYKAqWmuepjqvLKd9yIIEpZL3/9AapVmG9joZ
	w0t+a4cjZL4Kmr8YuFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWIK-0007fw-Id; Thu, 10 Oct 2019 11:07:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWIF-0007fX-Q8
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 11:07:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BF6F768C65; Thu, 10 Oct 2019 13:07:35 +0200 (CEST)
Date: Thu, 10 Oct 2019 13:07:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v9 08/12] nvmet-tcp: don't check data_len in
 nvmet_tcp_map_data()
Message-ID: <20191010110735.GA28392@lst.de>
References: <20191009192530.13079-1-logang@deltatee.com>
 <20191009192530.13079-10-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009192530.13079-10-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_040739_995167_E1436608 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 01:25:26PM -0600, Logan Gunthorpe wrote:
> With passthru, the data_len is no longer guaranteed to be set
> for all requests. Therefore, we should not check for it to be
> non-zero. Instead check if the SGL length is zero and map
> when appropriate.
> 
> None of the other transports check data_len which is verified
> in core code.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

I think the issue here is deeper.  Yes, this patch is correct, but
nvmet-tcp has another use of req.data_len in
nvmet_tcp_handle_req_failure, which looks completely bogus.  Please
try to audit that as well and send out fixes to the list separately
from this series, as both look like potentially serious bugs.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
