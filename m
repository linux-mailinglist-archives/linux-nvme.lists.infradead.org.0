Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B3314662
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 10:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NybJId62VTQQnFXTiHcMl7qkpvqz9vlM6vsZDuy0k/A=; b=JU7zBU2N2Zt+fO
	VNQOgACjjZnGDEROv8D+09Que6fujbSom/FpjsEze8gq8ffUlJYUNDeio+pyPFbtIo/+NOqyS5CR2
	nu5eNOGjL8EyPv0OgJegrWSTTSuX4oLBWrgyEF2dNUd+aVsCAsnCnCg6IXK2hK1ewSQyeqlL5wPVc
	fuBwOyGyKrui+cTXugk/ktR5a3Yoa1C0helawfXl6i4krf+i/ygr/Y+RlZ/waQ2LyBsBnbtlu6FDN
	nq85Ibv1vI/pGMku6aotpK1we8CU20ZOaEHqyrJ5BVJlJegZOka+JpSFfn917M01dBioSHO5IFOCB
	nU1POR7wKTE0q0VTiokw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZ2C-0000Ka-KF; Mon, 06 May 2019 08:31:40 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZ27-0000Jo-Ta
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 08:31:37 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 397CE81DFA;
 Mon,  6 May 2019 08:31:34 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C8A11001DDE;
 Mon,  6 May 2019 08:31:25 +0000 (UTC)
Message-ID: <1cc7efd1852f298b01f09955f2c4bf3b20cead13.camel@redhat.com>
Subject: Re: [PATCH v2 06/10] nvme/core: add mdev interfaces
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Max Gurtovoy <maxg@mellanox.com>
Date: Mon, 06 May 2019 11:31:27 +0300
In-Reply-To: <20190504064938.GA30814@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-7-mlevitsk@redhat.com>
 <20190503122902.GA5081@infradead.org>
 <d1c0c7ae-1a7d-06e5-d8bb-765a7fd5e41d@mellanox.com>
 <20190504064938.GA30814@lst.de>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 06 May 2019 08:31:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_013135_979468_A50642AF 
X-CRM114-Status: GOOD (  16.48  )
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
Cc: Fam Zheng <fam@euphon.net>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-nvme@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Keith Busch <keith.busch@intel.com>, Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@infradead.org>, Liang Cunming <cunming.liang@intel.com>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 Jens Axboe <axboe@kernel.dk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Amnon Ilan <ailan@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, 2019-05-04 at 08:49 +0200, Christoph Hellwig wrote:
> On Fri, May 03, 2019 at 10:00:54PM +0300, Max Gurtovoy wrote:
> > Don't see a big difference of taking NVMe queue and namespace/partition to 
> > guest OS or to P2P since IO is issued by external entity and pooled outside 
> > the pci driver.
> 
> We are not going to the queue aside either way..  That is where the
> last patch in this series is already working to, and which would be
> the sensible vhost model to start with.

Why are you saying that? I actualy prefer to use a sepearate queue per software
nvme controller, tat because of lower overhead (about half than going through
the block layer) and it better at QoS as the separate queue (or even few queues
if needed) will give the guest a mostly guaranteed slice of the bandwidth of the
device.

The only drawback of this is some code duplication but that can be worked on
with some changes in the block layer.

The last patch in my series was done with 2 purposes in mind which are to
measure the overhead, and to maybe utilize that as a failback to non nvme
devices.

Best regards,
	Maxim Levitsky


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
