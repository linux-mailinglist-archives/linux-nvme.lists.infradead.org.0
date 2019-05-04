Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D165137E8
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 08:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyjZMJFumSwhOeOBL30ZDBHr8kGxaPRW4qR2B6eLRo8=; b=Qy3MCwVyhIBUOX
	89/XdBSJwez7boBLfwtRGCopGFbte59lBqCcL5epprlkYcWXND64BD4LQtZTYavWLYTuIT5QQu6LW
	RkC3x3ku38/ha7KGUXO6REC+Djs7zaQdmdokVLbMhru0N4vCcPp878Sqpfphun5caIfDuh81+KWkf
	aYMEKeDJh/TYvw8uDBnooofEBiMT8vmz3TZ4bzZAvrGqaul3dbJToq3+1PjKmHs6qO4TXee1dhj5L
	7JFF1yIE5CfB7aJX8P+cZTVQIiRAHkrbjscwvHJ0UjQvPJsa9/2SZbEif7MLgQUDmX76MhPTkX4J2
	mQ0I4KFYn917fpcfQNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMoUr-0007Ih-Jq; Sat, 04 May 2019 06:50:09 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMoUl-0006S2-6U
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 06:50:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id ECAD168AFE; Sat,  4 May 2019 08:49:38 +0200 (CEST)
Date: Sat, 4 May 2019 08:49:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 06/10] nvme/core: add mdev interfaces
Message-ID: <20190504064938.GA30814@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-7-mlevitsk@redhat.com>
 <20190503122902.GA5081@infradead.org>
 <d1c0c7ae-1a7d-06e5-d8bb-765a7fd5e41d@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1c0c7ae-1a7d-06e5-d8bb-765a7fd5e41d@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_235003_410055_968C6838 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Fam Zheng <fam@euphon.net>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Maxim Levitsky <mlevitsk@redhat.com>,
 Christoph Hellwig <hch@infradead.org>, Liang Cunming <cunming.liang@intel.com>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 Jens Axboe <axboe@kernel.dk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 10:00:54PM +0300, Max Gurtovoy wrote:
> Don't see a big difference of taking NVMe queue and namespace/partition to 
> guest OS or to P2P since IO is issued by external entity and pooled outside 
> the pci driver.

We are not going to the queue aside either way..  That is where the
last patch in this series is already working to, and which would be
the sensible vhost model to start with.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
