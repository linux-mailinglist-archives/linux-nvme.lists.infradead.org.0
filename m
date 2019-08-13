Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8918F8B43E
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 11:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4tCV0k1cfRm78pM1mox453IYx7IGkdWxnRL4KBmqHdw=; b=khN7rTpBoeBopjDVb618S826W
	NYEyZ34CFjXyQ81fWr65H8HMD7EGnwGnf76VlI87hi6Zzcip0+smBnVATf7g4CtnpKS7r255cPyYi
	ii9tN/kPk4uVY/YhV2HbsmpAhAVIdjcBbRdlc4CYl08Qc17nrLxXAd5eeSVFHkShu0LHLqjjAloxJ
	mBKRiyJ48mS4h9sqc5cT0CFbqEfLyiPDJI1bi6xiGyOu8xp5IOjmNNBNDN8omWEveeyiGjPz0zQxn
	wU421O3WkO4syOTuP5a13if6AUKPROghPiv1tZLH2t6a1YawP4HYJaAODhKp5gmEz0wcciZyIiqkX
	26mnmCJOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTCY-0003tM-GC; Tue, 13 Aug 2019 09:34:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTCK-0003rb-5n
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 09:34:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D1578ABD0;
 Tue, 13 Aug 2019 09:34:28 +0000 (UTC)
Subject: Re: [PATCH V3 3/3] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
To: Ming Lei <ming.lei@redhat.com>
References: <20190813081447.1396-1-ming.lei@redhat.com>
 <20190813081447.1396-4-ming.lei@redhat.com>
From: Daniel Wagner <dwagner@suse.de>
Message-ID: <7579c5b8-3992-e685-d559-98e9b0f7baad@suse.de>
Date: Tue, 13 Aug 2019 11:34:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813081447.1396-4-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_023432_359276_23A21B0F 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Jon Derrick <jonathan.derrick@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

On 8/13/19 10:14 AM, Ming Lei wrote:
> Now __irq_build_affinity_masks() spreads vectors evenly per node, and
> all vectors may not be spread in case that each numa node has different
> CPU number, then the following warning in irq_build_affinity_masks() can
> be triggered:
> 
> 	if (nr_present < numvecs)
> 		WARN_ON(nr_present + nr_others < numvecs);

Is this the warning which is changed in patch #1?

Thanks,
Daniel

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
