Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B336F15C839
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 17:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=805Tlh03L6fxeH6aX6vDc0TyI/N/n19IDMNCxxLivps=; b=Xm5bBiGrTp1hsu
	5tMljhBGg0fwRBCd3W/aIdTqGVDLgvGDUUP8Rr9U3qwmTI5wLpnGsC8C8YBNnYl8s3QnzZrz6Hdwo
	w8LUQT9o6qN6S2haV57GxkW9QmfIcIjsSr8vushMbu9hQz9QmpPGuS/aBBKwcVA6Q1I4ZfvzM3LVH
	p2amnp5m3z5c7b57bLAidR//yfDowG82cKQLACcxyQjqMNj988A5NHBbOd50x7/V6bPWPZIYARY48
	dUUiiRtJdxWRwp5W/08mW35N8GnbNXXJq8r480Vfd3R/XxWH73DAhzSzJnubsNGsJQ57SoVhsKaib
	yDD3Ay2s6FJ2gfwzpJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HO6-0005Z3-8b; Thu, 13 Feb 2020 16:30:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HO1-0005YF-90
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 16:30:46 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3DB5217F4;
 Thu, 13 Feb 2020 16:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581611444;
 bh=nsWJZz/XRgp46cV0agCDAmZPkwPwLp1ic2dkZW13uMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0rnNxsBFGlcfGbSG5+CPtnSIx21akwCBsUsO6wdm8O34Z+ufB7LBXP/sU8jM1/IAI
 qPlyr6r7813v+7XU0QhXvqwNLFInRY775lp723vSXcB+xNbXJchlbi7zjiPjNIn0aK
 HTV6p84oCg8+9UkaAdadR9A6sOBb1urepBHIDXvI=
Date: Fri, 14 Feb 2020 01:30:38 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200213163038.GB7634@redsun51.ssa.fujisawa.hgst.com>
References: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
 <20200211122821.GA29811@ming.t460p>
 <CANo=J14iRK8K3bc1g3rLBp=QTLZQak0DcHkvgZS2f=xO_HFgxQ@mail.gmail.com>
 <BYAPR04MB5816AA843E63FFE2EA1D5D23E71B0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200212220328.GB25314@ming.t460p>
 <BYAPR04MB581622DDD1B8B56CEFF3C23AE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200213075348.GA9144@ming.t460p>
 <BYAPR04MB58160C04182D5FE3A15842BBE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200213083413.GC9144@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213083413.GC9144@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_083045_337440_D447BAB9 
X-CRM114-Status: GOOD (  10.38  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Tim Walker <tim.t.walker@seagate.com>, linux-scsi <linux-scsi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 04:34:13PM +0800, Ming Lei wrote:
> On Thu, Feb 13, 2020 at 08:24:36AM +0000, Damien Le Moal wrote:
> > Got it. And since queue full will mean no more tags, submission will block
> > on get_request() and there will be no chance in the elevator to merge
> > anything (aside from opportunistic merging in plugs), isn't it ?
> > So I guess NVMe HDDs will need some tuning in this area.
> 
> scheduler queue depth is usually 2 times of hw queue depth, so requests
> ar usually enough for merging.
> 
> For NVMe, there isn't ns queue depth, such as scsi's device queue depth,
> meantime the hw queue depth is big enough, so no chance to trigger merge.

Most NVMe devices contain a single namespace anyway, so the shared tag
queue depth is effectively the ns queue depth, and an NVMe HDD should
advertise queue count and depth capabilities orders of magnitude lower
than what we're used to with nvme SSDs. That should get merging and
BLK_STS_DEV_RESOURCE handling to occur as desired, right?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
