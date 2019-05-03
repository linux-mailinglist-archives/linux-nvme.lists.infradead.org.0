Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B46412D4B
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x83pn4N3snrtR04iEVlwaULcCn5EDB10Kki3BEhCk6A=; b=Hee4U2jIICfkqU
	X2jBxmVDggbbVbLgcDqPjFaqOmmAKThawRsTi/SQJ5liBrsOMviXowXQn6wpzk6WUBrebncUsQEO6
	mAQ3upJgaKgIQvNNWwjykqySJa3h4mGdQiAL0qNPGeoKmUNk/65WUgchXpgz8KhLPxg3vIMadqZM/
	25622Qo36lZ/FBVML4jgRjDy7lvENEZsY6QWublGhyf+i8ISeULKMshRRdEntQsVoCEglBVMK61TO
	onLBAfSuUMEcZcnbXyeVkNNr4UHSmqtRuOAeAj1IJLJqEhFHPhkY7Px4meSetkJXrF2LXZaerEjjO
	1cfYMYCF0SkOuJCf1ROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMX5o-0006LX-8z; Fri, 03 May 2019 12:15:08 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMX5h-0005jh-B6
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:15:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 05:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="343043907"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 03 May 2019 05:14:58 -0700
Date: Fri, 3 May 2019 06:09:15 -0600
From: Keith Busch <kbusch@kernel.org>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 08/10] nvme/pci: implement the mdev external queue
 allocation interface
Message-ID: <20190503120915.GA30013@localhost.localdomain>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-9-mlevitsk@redhat.com>
 <63a499c3-25be-5c5b-5822-124854945279@intel.com>
 <f1f471e0b734413e6c0f7a8bb1a03041b1d12d6d.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1f471e0b734413e6c0f7a8bb1a03041b1d12d6d.camel@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_051501_590671_DBE6BC25 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Sagi Grimberg <sagi@grimberg.me>, Liang Cunming <cunming.liang@intel.com>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:20:17AM +0300, Maxim Levitsky wrote:
> On Thu, 2019-05-02 at 15:12 -0600, Heitke, Kenneth wrote:
> > On 5/2/2019 5:47 AM, Maxim Levitsky wrote:
> > > +static void nvme_ext_queue_free(struct nvme_ctrl *ctrl, u16 qid)
> > > +{
> > > +	struct nvme_dev *dev = to_nvme_dev(ctrl);
> > > +	struct nvme_queue *nvmeq;
> > > +
> > > +	mutex_lock(&dev->ext_dev_lock);
> > > +	nvmeq = &dev->queues[qid];
> > > +
> > > +	if (WARN_ON(!test_bit(NVMEQ_EXTERNAL, &nvmeq->flags)))
> > > +		return;
> > 
> > This condition is probably not expected to happen (since its a warning)
> > but do you need to unlock the ext_dev_lock before returning?
> 
> This is true, I will fix this. This used to be BUG_ON, but due to checkpatch.pl
> complains I turned them all to WARN_ON, and missed this.

Gentle reminder to trim your replies to the relevant context. It's
much easier to read when we don't need to scroll through hundreds of
unnecessary lines.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
