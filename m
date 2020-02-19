Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8A41639E9
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 03:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br+bVRIQL/AB1Xliss6epaqiHo1XfZ3kb4TGFeyiS28=; b=Mqxv9nxVxpYazV
	Jmbgt1T0h1o0LQeMdzdUODwPjtqX/1JkBR1KPZaJKgT2JKPIdhExyQeMdC0czxJjfEf81qAcv3fKS
	jjmyxz5ZEX8unwU39Yp/tLv4ZKwclRyIiHwWTxpjP0yYN6+2BtC9trK6IEiwpQ2nhKqkVdh/VFcGO
	HAHVb5WPArfg23cAC7X7HqtQHSCfloi6TZ5xH+DTeAbZ3rw2nCF/15p/NZrU93bEvvxzjsQWqZqd9
	MgFh9FFsHArBMtT/dJLM2TPi51vx3LqVgQ2fDJlyOyBQip50NkvbiSfSstz7SGgeE//+NI+3qyTFj
	RmoMtweQA9/+fGQNyKpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EuK-00084K-PU; Wed, 19 Feb 2020 02:16:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EuE-00082P-Qj
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 02:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582078565;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qK22eFnPp6Y6N7ivF93PnBHTh+akjIs7qzO+QRbCQwU=;
 b=hAzMuonFCPH1AyyDrMpGANcQRjvtDAjzRHiTxCNTSEYgoZC1moup81LI6K7ywuibhyqDjn
 nLT/dWIMNFQGbBqO2C168bzzzvkzSDQbL2wmgGOtyrQxPLLGs1UdmCdKEOPQY85HfjqGAM
 dYWvAy45siBypUGIBmTFhcMPk1hh1Fs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-8J29FEukOL-h00bsx0WeBA-1; Tue, 18 Feb 2020 21:15:54 -0500
X-MC-Unique: 8J29FEukOL-h00bsx0WeBA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68A7C107ACC5;
 Wed, 19 Feb 2020 02:15:53 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BE3D17DC8;
 Wed, 19 Feb 2020 02:15:45 +0000 (UTC)
Date: Wed, 19 Feb 2020 10:15:40 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200219021540.GC31488@ming.t460p>
References: <CANo=J16cDBUDWdV7tdY33UO0UT0t-g7jRfMVTxZpePvLew7Mxg@mail.gmail.com>
 <yq1r1yzqfyb.fsf@oracle.com>
 <2d66bb0b-29ca-6888-79ce-9e3518ee4b61@suse.de>
 <20200214144007.GD9819@redsun51.ssa.fujisawa.hgst.com>
 <d043a58d-6584-1792-4433-ac2cc39526ca@suse.de>
 <20200214170514.GA10757@redsun51.ssa.fujisawa.hgst.com>
 <CANo=J17Rve2mMLb_yJNFK5m8wt5Wi4c+b=-a5BJ5kW3RaWuQVg@mail.gmail.com>
 <20200218174114.GA17609@redsun51.ssa.fujisawa.hgst.com>
 <20200219013137.GA31488@ming.t460p>
 <BYAPR04MB58165C6B400AE30986F988D5E7100@BYAPR04MB5816.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB58165C6B400AE30986F988D5E7100@BYAPR04MB5816.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181607_101627_3E37DD24 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi <linux-scsi@vger.kernel.org>, Tim Walker <tim.t.walker@seagate.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 01:53:53AM +0000, Damien Le Moal wrote:
> On 2020/02/19 10:32, Ming Lei wrote:
> > On Wed, Feb 19, 2020 at 02:41:14AM +0900, Keith Busch wrote:
> >> On Tue, Feb 18, 2020 at 10:54:54AM -0500, Tim Walker wrote:
> >>> With regards to our discussion on queue depths, it's common knowledge
> >>> that an HDD choses commands from its internal command queue to
> >>> optimize performance. The HDD looks at things like the current
> >>> actuator position, current media rotational position, power
> >>> constraints, command age, etc to choose the best next command to
> >>> service. A large number of commands in the queue gives the HDD a
> >>> better selection of commands from which to choose to maximize
> >>> throughput/IOPS/etc but at the expense of the added latency due to
> >>> commands sitting in the queue.
> >>>
> >>> NVMe doesn't allow us to pull commands randomly from the SQ, so the
> >>> HDD should attempt to fill its internal queue from the various SQs,
> >>> according to the SQ servicing policy, so it can have a large number of
> >>> commands to choose from for its internal command processing
> >>> optimization.
> >>
> >> You don't need multiple queues for that. While the device has to fifo
> >> fetch commands from a host's submission queue, it may reorder their
> >> executuion and completion however it wants, which you can do with a
> >> single queue.
> >>  
> >>> It seems to me that the host would want to limit the total number of
> >>> outstanding commands to an NVMe HDD
> >>
> >> The host shouldn't have to decide on limits. NVMe lets the device report
> >> it's queue count and depth. It should the device's responsibility to
> > 
> > Will NVMe HDD support multiple NS? If yes, this queue depth isn't
> > enough, given all NSs share this single host queue depth.
> > 
> >> report appropriate values that maximize iops within your latency limits,
> >> and the host will react accordingly.
> > 
> > Suppose NVMe HDD just wants to support single NS and there is single queue,
> > if the device just reports one host queue depth, block layer IO sort/merge
> > can only be done when there is device saturation feedback provided.
> > 
> > So, looks either NS queue depth or per-NS device saturation feedback
> > mechanism is needed, otherwise NVMe HDD may have to do internal IO
> > sort/merge.
> 
> SAS and SATA HDDs today already do internal IO reordering and merging, a
> lot. That is partly why even with "none" set as the scheduler, you can see
> iops increasing with QD used.

That is why I asked if NVMe HDD will attempt to sort/merge IO among SQs
from the beginning, but Tim said no, see:

https://lore.kernel.org/linux-block/20200212215251.GA25314@ming.t460p/T/#m2d0eff5ef8fcaced0f304180e571bb8fefc72e84

It could be cheap for NVMe HDD to do that, given all queues/requests
just stay in system's RAM.

Also I guess internal IO sort/merge may not be good enough compared with
SW's implementation:

1) device internal queue depth is often low, and the participated requests won't
be enough many, but SW's scheduler queue depth is often 2 times of
device queue depth.

2) HDD drive doesn't have context info, so when concurrent IOs are run from
multiple contexts, HDD internal reorder/merge can't work well enough. blk-mq
doesn't address this case too, however the legacy IO path does consider that
via IOC batch.


Thanks, 
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
