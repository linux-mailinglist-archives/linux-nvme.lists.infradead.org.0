Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60AD9EB69
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 16:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pl/n1zrOkNudjOGitklTlyz4dP3ZXGDFlxWhRXcpKAM=; b=tqd8jgUTrdl7Zg
	irkA+NumQBZhErQ7eMFunZEaRSvmOV6wsMXU5O+n1DDv9glAIQ34PYEMyQoqKGV9jKFQRPfSdHnW3
	0khYyIVEH/HAcJ0UpCoxMTvU0qdEX4IY1xd9FiKcqsLaZ+NkzMPwvXsK1ekEuv7CKTFrgOqI2YckP
	aQDogfJ+jBNsoFpfEIDwF9LSHlLTtI5iS8Pf0m6T7iWaHhR5Ar9Wc2sR9UGusXouk9dhC0mhDtgr0
	gPThoQos1rx0yBC3her3PON1h1sDWai0ah02FMRCS3p8Hm6q05NraihouJu8AJGXfcFeMmGM3RcP0
	caNd6SE3aWXo+OeXua4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cjl-0006Kw-88; Tue, 27 Aug 2019 14:46:21 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cjf-0006Ka-Ad
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 14:46:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="331841011"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 07:46:13 -0700
Date: Tue, 27 Aug 2019 08:44:26 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
Message-ID: <20190827144425.GA23100@localhost.localdomain>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
 <8837ea73-dcf5-801f-f037-267936bd65bc@suse.de>
 <20190827090926.GA30871@ming.t460p>
 <20190827143421.GA23091@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827143421.GA23091@localhost.localdomain>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_074615_374153_FBE52B05 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Johannes Thumshirn <jthumshirn@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 08:34:21AM -0600, Keith Busch wrote:
> I think you should probably just have pci_irq_get_affinity() take a flags
> argument, or make a new function like __pci_irq_get_affinity() that
> pci_irq_get_affinity() can call with a default flag.

Sorry, copied the wrong function name; I meant pci_request_irq(),
not pci_irq_get_affinity().

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
