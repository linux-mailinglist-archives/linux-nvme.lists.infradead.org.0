Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A6A104A99
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 07:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlJyQk+f6l7vPnJteqOYtotZEZ8DEyCyk5ntmx90Ias=; b=C4IpfJmmMglpQM
	KSt8vyBoWaMYkaTtoPJvHqaYBeTeZSACIrgGTiYCJdeZ9dnfgbiBp9fOQtbhSluGmqv3vYyLLsDm2
	nla81dQbvP3Nrpw6fMXJZv77v5AOP/GrFqkLuHjJr+8vby6PW+OUpH+v6wqpVB8Y/J32QaZ1q2Ss7
	cVkWD/Gemc+BCdgjG+/BdGyP158PXe4AfEa2nZSgR383McE9fqbFKlHG1rF2f5S27XKlydhGEwyir
	WF1oaF3mRQNy/gBaHExcbu/usPd5l5Wond3KmGVml1Fzvq5e7UglNBiVbEo2TM2ZOZyTVxbxgTVAK
	BtAWxTdq33ii0gZvlU7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXfjk-0003tq-CU; Thu, 21 Nov 2019 06:14:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXfje-0003t9-S1
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 06:14:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4431868B05; Thu, 21 Nov 2019 07:14:31 +0100 (CET)
Date: Thu, 21 Nov 2019 07:14:31 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191121061431.GA22886@lst.de>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191121031154.GJ24548@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121031154.GJ24548@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_221435_052711_4E7DF1F2 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 11:11:54AM +0800, Ming Lei wrote:
> Hi Guys,
> 
> Ping...

I think everyone has told you that it is an invasive horrible hack
that papers of the underlying problem(s).  I'm not sure what more
we can do here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
