Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2FE11B43
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 16:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/+4hCSBclDV9DEREW2Qaj1wF2sm1PGkCuF54GxRkdE=; b=k6bHHQCphLhkd9
	9lxikxx8UhSqf2i7pRNvDW64U2hknITLfrbMBeZ0rmBtOZ/oGVRVK0wnzOajFbtZhBgkkTdWZEQTO
	tuMZfRLdcuUF+Pz8CQ0aEe6Ksu7gJ62NLwMf/5MpKAnW6gEE4lQ7I9CQVZhR/SPb2OzxDZMUnBj3k
	KTvjunseG+8HZwEYXVcg0OvgjhPPz80suQDvCp5ALcIHu4WjzMmWC2QcIAOkalesxmFIpWgeTMaZy
	uqemKJnuIenP1Hn2rk9sRUiGFMpgccJI1GDNX2diCOHBXcTdCp45XgM12QzIjjmJu6+RwfAj8gs6U
	iAyCdmAh9wxlm7x0q3yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCZt-0005cI-Gu; Thu, 02 May 2019 14:20:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCZn-0005by-JC
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 14:20:44 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B380530ADBC3;
 Thu,  2 May 2019 14:20:42 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA761827BC;
 Thu,  2 May 2019 14:20:32 +0000 (UTC)
Message-ID: <be56bf51cebb7f373c279adf3e9a46e6df5dfe76.camel@redhat.com>
Subject: Re: [PATCH v2 08/10] nvme/pci: implement the mdev external queue
 allocation interface
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Date: Thu, 02 May 2019 17:20:31 +0300
In-Reply-To: <20190502114801.23116-9-mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-9-mlevitsk@redhat.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 02 May 2019 14:20:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_072043_654334_8254695B 
X-CRM114-Status: GOOD (  16.00  )
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
Cc: Fam Zheng <fam@euphon.net>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, Sagi Grimberg <sagi@grimberg.me>,
 kvm@vger.kernel.org, Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Liu Changpeng <changpeng.liu@intel.com>, Keith Busch <keith.busch@intel.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 John Ferlan <jferlan@redhat.com>, "Paul E . McKenney" <paulmck@linux.ibm.com>,
 Amnon Ilan <ailan@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-05-02 at 14:47 +0300, Maxim Levitsky wrote:
> Note that currently the number of hw queues reserved for mdev,
> has to be pre determined on module load.
> 
> (I used to allocate the queues dynamicaly on demand, but
> recent changes to allocate polled/read queues made
> this somewhat difficult, so I dropped this for now)
> 
> Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
> ---
>  drivers/nvme/host/pci.c  | 375 ++++++++++++++++++++++++++++++++++++++-
>  drivers/nvme/mdev/host.c |  46 ++---
>  drivers/nvme/mdev/io.c   |  46 +++--
>  drivers/nvme/mdev/mmio.c |   3 -
>  4 files changed, 421 insertions(+), 49 deletions(-)

The changes in drivers/nvme/mdev aren't supposed to be here, this was some code
moving around to reduce the diff in the generic block layer support code,
it supposed to go to the main mdev commit.

Best regards,
	Maxim Levitsky


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
