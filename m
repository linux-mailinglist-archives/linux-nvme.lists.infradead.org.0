Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4571162D2E
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Feb 2020 18:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbyY+RZc6TzuZw2YtkMpigBVvzd+RzVSo/FLNJYXPes=; b=Jmey2lsygLO3Kp
	QPxQeODpyZ2iccu02wCbE4E9kz2cpj/wdWfAiFm1CHo6TzNcAiOj+XfVAF/SNUHvPaYehOPE/h4ZN
	++RZV+4R4uVMckxesanBFUXXS1UrWJMN8S6xHLhIl3RyfUkBaXMb3nGxUJbAyKF8B6W+O9AgW85JB
	5bXhQ5RYvDJTxAvdq4jCO3U+IgFrVOcHhEjiwi5DwOs4iC+JmXv8GZUkS02tSa/Tb6yfshQqlUzFZ
	EqiKvllyU24E3aNZVijntmVY+g1tftiJX/IY18o7Tio6CyAAXNUsLoznmvQVAcB7k7RFGiY5aE3UH
	ELtaS4Kc5Rhp+hCh0aOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46sA-0001QN-2w; Tue, 18 Feb 2020 17:41:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46s6-0001Q2-0b
 for linux-nvme@lists.infradead.org; Tue, 18 Feb 2020 17:41:23 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F89D24649;
 Tue, 18 Feb 2020 17:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582047681;
 bh=KQhF/XCgFDGqcQGvzAyuvxtX381KYo5JSJAgfzEVDZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NYklz1TWM2ogfetiDX/78TQ3U3TX6aQUc7hzJ6lFKs5jVyuAaKKTWUQRRPVPcNEWV
 puZObhizJKKIXVDUtsgo3+ni0/vzVqQ3/vkAFh6UGUz2gLBoWvhS1/b6T/kCCGKtgu
 XsnXix5fQaoLmtT8eP3ebvhLdtQTQscn4b19tbP0=
Date: Wed, 19 Feb 2020 02:41:14 +0900
From: Keith Busch <kbusch@kernel.org>
To: Tim Walker <tim.t.walker@seagate.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200218174114.GA17609@redsun51.ssa.fujisawa.hgst.com>
References: <CANo=J14iRK8K3bc1g3rLBp=QTLZQak0DcHkvgZS2f=xO_HFgxQ@mail.gmail.com>
 <BYAPR04MB5816AA843E63FFE2EA1D5D23E71B0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <yq1blq3rxzj.fsf@oracle.com>
 <CANo=J16cDBUDWdV7tdY33UO0UT0t-g7jRfMVTxZpePvLew7Mxg@mail.gmail.com>
 <yq1r1yzqfyb.fsf@oracle.com>
 <2d66bb0b-29ca-6888-79ce-9e3518ee4b61@suse.de>
 <20200214144007.GD9819@redsun51.ssa.fujisawa.hgst.com>
 <d043a58d-6584-1792-4433-ac2cc39526ca@suse.de>
 <20200214170514.GA10757@redsun51.ssa.fujisawa.hgst.com>
 <CANo=J17Rve2mMLb_yJNFK5m8wt5Wi4c+b=-a5BJ5kW3RaWuQVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANo=J17Rve2mMLb_yJNFK5m8wt5Wi4c+b=-a5BJ5kW3RaWuQVg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094122_076096_8C8A264D 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 10:54:54AM -0500, Tim Walker wrote:
> With regards to our discussion on queue depths, it's common knowledge
> that an HDD choses commands from its internal command queue to
> optimize performance. The HDD looks at things like the current
> actuator position, current media rotational position, power
> constraints, command age, etc to choose the best next command to
> service. A large number of commands in the queue gives the HDD a
> better selection of commands from which to choose to maximize
> throughput/IOPS/etc but at the expense of the added latency due to
> commands sitting in the queue.
> 
> NVMe doesn't allow us to pull commands randomly from the SQ, so the
> HDD should attempt to fill its internal queue from the various SQs,
> according to the SQ servicing policy, so it can have a large number of
> commands to choose from for its internal command processing
> optimization.

You don't need multiple queues for that. While the device has to fifo
fetch commands from a host's submission queue, it may reorder their
executuion and completion however it wants, which you can do with a
single queue.
 
> It seems to me that the host would want to limit the total number of
> outstanding commands to an NVMe HDD

The host shouldn't have to decide on limits. NVMe lets the device report
it's queue count and depth. It should the device's responsibility to
report appropriate values that maximize iops within your latency limits,
and the host will react accordingly.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
