Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF19815CF2C
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 01:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRLP9tKfoOMDzt7Ts7W8XTpAE1qxkblhFcR5N1ao4Mo=; b=f3ny0D0o0ZKaC7
	cxSa4SsK8AilLAcNwXPlHmXdpQ8meULTrX3rXsz5jebYJu+cICpHyFGwyZck7kSyMLIsgz9JzL7ka
	muEIr3PB2Cgs3WH8MVAsyD/GMIle2QPXTC1my8xrPNGsg8ZaY5Ia6ww8uaeDMcKwc2VkvKkJhiuRG
	J4huwh519lHnSJT0AhnjmUNzccH0M+MJrxTRpCtBUznZ/1TJRKubFKyqvstzrbGs/z6ShDjb3eGsc
	GVEtH0sNMNfuoRMztsFySZbvixzEQ6FTa8OYa1zN5uYgm5pf3UuyBigguhyGih3iv2GcH18XJPcI8
	9y9YLqY4N9iCNeRrRBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2P2l-0001jZ-C6; Fri, 14 Feb 2020 00:41:19 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2P2g-0001iS-Gb
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 00:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581640872;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FDMIxAbE8ieq5ylrZWE99LrHP924RmkuGOvqIWIn6sQ=;
 b=WSHToXF3zt4BHJIPsRvNbSG4jPHqnWNlMlO6djoX0A/AJJ93SCCzbulyMc/gAFFNRZs1K3
 WG+xqqx8zFNYyoSccrW5bx8cM83Hpfwn5DS3aa2xjt3J7jVCclPQNQZOEibUbhl2sy3RnF
 fo46m59iDoAVsIWRxKaZyqwy6SYGJKY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-f0p-8FSRMHGRhhX31onxaw-1; Thu, 13 Feb 2020 19:41:08 -0500
X-MC-Unique: f0p-8FSRMHGRhhX31onxaw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32B1C8017CC;
 Fri, 14 Feb 2020 00:41:07 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4997860BF4;
 Fri, 14 Feb 2020 00:41:00 +0000 (UTC)
Date: Fri, 14 Feb 2020 08:40:56 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200214004056.GC4907@ming.t460p>
References: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
 <20200211122821.GA29811@ming.t460p>
 <CANo=J14iRK8K3bc1g3rLBp=QTLZQak0DcHkvgZS2f=xO_HFgxQ@mail.gmail.com>
 <BYAPR04MB5816AA843E63FFE2EA1D5D23E71B0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200212220328.GB25314@ming.t460p>
 <BYAPR04MB581622DDD1B8B56CEFF3C23AE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200213075348.GA9144@ming.t460p>
 <BYAPR04MB58160C04182D5FE3A15842BBE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200213083413.GC9144@ming.t460p>
 <20200213163038.GB7634@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213163038.GB7634@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_164114_629633_1AFD4629 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
 Damien Le Moal <Damien.LeMoal@wdc.com>, Tim Walker <tim.t.walker@seagate.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 linux-scsi <linux-scsi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 01:30:38AM +0900, Keith Busch wrote:
> On Thu, Feb 13, 2020 at 04:34:13PM +0800, Ming Lei wrote:
> > On Thu, Feb 13, 2020 at 08:24:36AM +0000, Damien Le Moal wrote:
> > > Got it. And since queue full will mean no more tags, submission will block
> > > on get_request() and there will be no chance in the elevator to merge
> > > anything (aside from opportunistic merging in plugs), isn't it ?
> > > So I guess NVMe HDDs will need some tuning in this area.
> > 
> > scheduler queue depth is usually 2 times of hw queue depth, so requests
> > ar usually enough for merging.
> > 
> > For NVMe, there isn't ns queue depth, such as scsi's device queue depth,
> > meantime the hw queue depth is big enough, so no chance to trigger merge.
> 
> Most NVMe devices contain a single namespace anyway, so the shared tag
> queue depth is effectively the ns queue depth, and an NVMe HDD should
> advertise queue count and depth capabilities orders of magnitude lower
> than what we're used to with nvme SSDs. That should get merging and
> BLK_STS_DEV_RESOURCE handling to occur as desired, right?

Right.

The advertised queue depth might serve two purposes:

1) reflect the namespace's actual queueing capability, so block layer's merging
is possible

2) avoid timeout caused by too many in-flight IO


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
