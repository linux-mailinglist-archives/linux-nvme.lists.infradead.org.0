Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835171C0EDF
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 09:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vVBv7IUSS1K45T3KqGiiAFIrqh6U+1S+PULHQnuo4I=; b=hyjYyDA3ysnCxU
	IgcNUpZWalu3J/HCXaJweZGk0QncPDB13+oVYThfJH9wauSYTzXrDrMp5fi1zK17/abPwqo8vGbm4
	FAMeYmC3QJtEpaVh8iw46D9JbVliJ2OXM5BAiEuudIJ1bm+LZbOHY0HPRchQer7gxobbjDN/yjFjr
	geaKMN+mEq0TQgHs1qPY6lDLay4PEibTOO15IUgvS6DK0ODTmz5czCeT92wNTZCaoWYJGMOvCaQXK
	Haxyh1Yck2XGaphLhpU71BwYKoxD32DGNfNlWF42qEuxViVDUkoT3f6wY3pHvuYlEUCy+hHEt/YIz
	UQqbudo62GW5TADAqfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQAV-0001ds-Kf; Fri, 01 May 2020 07:33:07 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQAQ-0001cZ-0l
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 07:33:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A94968D07; Fri,  1 May 2020 09:32:56 +0200 (CEST)
Date: Fri, 1 May 2020 09:32:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 15/15] nvme: avoid gcc-10 zero-length-bounds warning
Message-ID: <20200501073256.GA23452@lst.de>
References: <20200430213101.135134-1-arnd@arndb.de>
 <20200430213101.135134-16-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430213101.135134-16-arnd@arndb.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_003302_217076_A82692D6 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Israel Rukshin <israelr@mellanox.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Ming Lei <ming.lei@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 11:30:57PM +0200, Arnd Bergmann wrote:
> When CONFIG_ARCH_NO_SG_CHAIN is set, op->sgl[0] cannot be dereferenced,
> as gcc-10 now points out:
> 
> drivers/nvme/host/fc.c: In function 'nvme_fc_init_request':
> drivers/nvme/host/fc.c:1774:29: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct scatterlist[0]' [-Wzero-length-bounds]
>  1774 |  op->op.fcp_req.first_sgl = &op->sgl[0];
>       |                             ^~~~~~~~~~~
> drivers/nvme/host/fc.c:98:21: note: while referencing 'sgl'
>    98 |  struct scatterlist sgl[NVME_INLINE_SG_CNT];
>       |                     ^~~
> 
> I don't know if this is a legitimate warning or a false-positive.
> If this is just a false alarm, the warning is easily suppressed
> by interpreting the array as a pointer.

This looks like a surpression to be, but then again I find the new
code actually cleaner, so I'm fine with it :)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
