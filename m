Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7728711D93F
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 23:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGvrJne0yI/v0L9oKnExi57YC8KqItmFe6KXnu83oHs=; b=u/iXk5zlX2DnuB
	KJ+9dT8rufSAoqmmmOtFGlI3o0uJbn4rP7P7Hqf27safzolnHNolE0MVD5z5j7D2zsBHFHfRUHIyJ
	OoStTFa4huYY1cu3kwqxxU6sndkBGn8fSAxx5zl9OzVE4WVsSamx84G4JmXZhz+ouQOejVWVvtJ12
	uWYq1qDUyVrA56hlrd+6bj2tYgE1ULkmvYwnYSeBqY0/58CYPzMXx8gPWudQ0FatqcHVvItTxbq0i
	2vz8+EKsv1nmh8mqz5JxwwaTUXyBJHRESVsGpaV4P/KZpjD0LBuXYNZ5G6zwXSYE8YSimxFIQp11G
	xFV1LG8mpyOI1ND/SFew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWoT-0005YG-Gp; Thu, 12 Dec 2019 22:20:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWoO-0005Xv-Sz
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 22:19:58 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 311EB2173E;
 Thu, 12 Dec 2019 22:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576189196;
 bh=6wqM/8nuJbTo8PW4nFbDaXSi3DHfDv/lnU1COiTALT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C76X7I0W/t6+u5063t1CUZHbu2JgTgOITbvJUNsHXwayJspBGLMpc+rJIUgo55wUs
 CrsJuLwBlLeAT5tyll96S6sUmKgWNFrH/Qy5R93yQVPUkyMy9R7ahMIrkh3jN3EcwY
 hifbQMvc3earqiuVJYueHl3lcBab6aVb05yEPy10=
Date: Fri, 13 Dec 2019 07:19:47 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [LSF/MM/BFP ATTEND] [LSF/MM/BFP TOPIC] Storage: add blktrace
 extension support
Message-ID: <20191212221947.GA32142@redsun51.ssa.fujisawa.hgst.com>
References: <BYAPR04MB5749B4DC50C43EE845A04612865A0@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749B4DC50C43EE845A04612865A0@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_141956_974827_8D100453 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>, Ming Lei <ming.lei@redhat.com>,
 "linux-btrace@vger.kernel.org" <linux-btrace@vger.kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>, Johannes Thumshirn <jthumshirn@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "lsf-pc@lists.linux-foundation.org" <lsf-pc@lists.linux-foundation.org>,
 Omar Sandoval <osandov@fb.com>, Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 06:16:29AM +0000, Chaitanya Kulkarni wrote:
> * Current state of the work:-
> -----------------------------------------------------------------------
> 
> RFC implementations [3] has been posted with the addition of new IOCTLs
> which is far from the production so that it can provide a basis to get
> the discussion started.
> 
> This RFC implementation provides:-
> 1. Extended bits to track new trace categories.
> 2. Support for tracing per trace priorities.
> 3. Support for priority mask.
> 4. New IOCTLs so that user-space tools can setup the extensions.
> 5. Ability to track the integrity fields.
> 6. blktrace and blkparse implementation which supports the above
>     mentioned features.
> 
> Bart and Martin has suggested changes which I've incorporated in the RFC 
> revisions.
> 
> * What we will discuss in the proposed session ?
> -----------------------------------------------------------------------
> 
> I'd like to propose a session for Storage track to go over the following
> discussion points:-
> 
> 1. What is the right approach to move this work forward?
> 2. What are the other information bits we need to add which will help
>     kernel community to speed up the development and improve tracing?
> 3. What are the other tracepoints we need to add in the block layer
>     to improve the tracing?
> 4. What are device driver callbacks tracing we can add in the block
>     layer?

I would like seeing driver/protocol specific tracepoint decoding for
users common under a single blkparse utility. For nvme, it'd be great if
we could set a fixed ABI, as people keep changing it by burdening the
kernel with making events more human readable. I'd prefer to simplify
the driver's tracepoints and do the decoding from userspace so that it's
forward compatible.

> 5. Since polling is becoming popular what are the new tracepoints
>     we need to improve debugging ?

Regarding polling, but not tracepoint related, but it'd be nice if
we had a new cpu state for this. Right now it just looks like all CPU
utilization from systat says 'system', which isn't really helpful with
analyzing how the hardware is doing.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
