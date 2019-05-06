Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5814A7A
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 14:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mi+/TKB4kwDhQs9Ay409+6hyg4Sg0vA/5DrgP74D+Q=; b=CJn5t/rp62XugN
	S14cGVIalMK4ipNBlzxcODMx0OdHdPfoOahd+K4Ro0Ee6qzknxp98uDdov0CRlfdlyzmU0V5ncmAI
	nphbqEEUML89btylElFTl/OFKP9F18JifyUx8Bd5wHVYnO3balS52WXp6JMQPtKkgANJ/fc38L3Yq
	pkaJkSgptxTdJ4OnLXFRQisEdemEL0Ndq4EnP4UcNmFMOiHI5E20qXzlbrblH4xcZGCZa+Fq9A25f
	ZweLg5b9xtNL3F/2F/1Ibx3fLFRi44B3TdLKCs4f8//iOunLpZ2GCLQWvgVYfgtMnam1+GO/W5Mwj
	FIq08ylnUd+XyEt3bg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdDQ-000396-6p; Mon, 06 May 2019 12:59:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdDL-00038g-Ey
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 12:59:28 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 36EC567358; Mon,  6 May 2019 14:59:09 +0200 (CEST)
Date: Mon, 6 May 2019 14:59:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 06/10] nvme/core: add mdev interfaces
Message-ID: <20190506125909.GB5288@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-7-mlevitsk@redhat.com>
 <20190503122902.GA5081@infradead.org>
 <d1c0c7ae-1a7d-06e5-d8bb-765a7fd5e41d@mellanox.com>
 <20190504064938.GA30814@lst.de>
 <1cc7efd1852f298b01f09955f2c4bf3b20cead13.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1cc7efd1852f298b01f09955f2c4bf3b20cead13.camel@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055927_648369_8104EEE7 
X-CRM114-Status: GOOD (  10.56  )
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
 Max Gurtovoy <maxg@mellanox.com>, "Paul E . McKenney" <paulmck@linux.ibm.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
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

On Mon, May 06, 2019 at 11:31:27AM +0300, Maxim Levitsky wrote:
> Why are you saying that? I actualy prefer to use a sepearate queue per software
> nvme controller, tat because of lower overhead (about half than going through
> the block layer) and it better at QoS as the separate queue (or even few queues
> if needed) will give the guest a mostly guaranteed slice of the bandwidth of the
> device.

The downside is that your create tons of crap code in the core nvme driver
for your specific use case that no one cares about.  Which is why it is
completely unacceptable.  If you want things to go fast make the block
layer go fast, don't add your very special bypass.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
