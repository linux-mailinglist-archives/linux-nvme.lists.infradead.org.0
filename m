Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34932833FF
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 16:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKAsBj/RtQd8smixL7Geru1vgT8CxheF8hFppVl6IQ4=; b=eapYQffUEKG0qL
	m4mV+ehk+ES6CHVVUowOGUrXdIP7tSVStYhjvyGA/L8rS8v4UqRAtUKv8+PYc1VqagQeAGVAHTUh9
	s0bAniA/LH77LJvslus+9UC4zdo72JjzR/899Fe88Fp99HuxorR3ulcoasYGqTT4H07dZ7iVvY/Sx
	ivmxpsV2NmbxM0CjkWJhTDHMO+UnbfyohG0dXlGBZiyghkKfqDFHT5qrPre9b2qgQS+qm0oq6qncY
	CNTndOgcriscPzNEkF1qdMxgW/kGUuIprQP/5lnStqlNHdrAzGkLBu26t5STB4xs94TyC995jm05s
	Gs3wMYtEgzvQMPOf+nHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0VG-0005lT-Sk; Tue, 06 Aug 2019 14:31:55 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0V9-0005l7-Ng
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 14:31:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 07:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="374071310"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2019 07:31:46 -0700
Date: Tue, 6 Aug 2019 08:29:17 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190806142917.GB24030@localhost.localdomain>
References: <20190806111036.113233-1-hare@suse.de>
 <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
 <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
 <20190806140716.GA24030@localhost.localdomain>
 <31e6f42e-2157-077c-64d4-a5a31caf0aa4@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31e6f42e-2157-077c-64d4-a5a31caf0aa4@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073147_785606_EFC05A08 
X-CRM114-Status: GOOD (  20.80  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 04:13:40PM +0200, Hannes Reinecke wrote:
> On 8/6/19 4:07 PM, Keith Busch wrote:
> > On Tue, Aug 06, 2019 at 03:53:29PM +0200, Hannes Reinecke wrote:
> > > On 8/6/19 3:50 PM, Nadolski, Edmund wrote:
> > > > On 8/6/2019 5:10 AM, Hannes Reinecke wrote:
> > > > > If the DNR bit is set we should not retry the command, even if
> > > > > the standard status evaluation indicates so.
> > > > > =

> > > > > Signed-off-by: Hannes Reinecke <hare@suse.com>
> > > > > ---
> > > > >  =A0 drivers/nvme/host/core.c | 7 +++++++
> > > > >  =A0 1 file changed, 7 insertions(+)
> > > > > =

> > > > > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > > > > index cc09b81fc7f4..c3e9254f4757 100644
> > > > > --- a/drivers/nvme/host/core.c
> > > > > +++ b/drivers/nvme/host/core.c
> > > > > @@ -279,6 +279,13 @@ void nvme_complete_rq(struct request *req)
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > > >  =A0=A0=A0=A0=A0 }
> > > > > +=A0=A0=A0 /*
> > > > > +=A0=A0=A0=A0 * Any pathing error might be retried, but the DNR b=
it takes
> > > > > +=A0=A0=A0=A0 * precedence. So return BLK_STS_TARGET if the DNR b=
it is set
> > > > > +=A0=A0=A0=A0 * to avoid retrying.
> > > > > +=A0=A0=A0=A0 */
> > > > > +=A0=A0=A0 if (blk_path_error(status) && nvme_req(req)->status & =
NVME_SC_DNR)
> > > > > +=A0=A0=A0=A0=A0=A0=A0 status =3D BLK_STS_TARGET;
> > > > >  =A0=A0=A0=A0=A0 blk_mq_end_request(req, status);
> > > > >  =A0 }
> > > > >  =A0 EXPORT_SYMBOL_GPL(nvme_complete_rq);
> > > > > =

> > > > =

> > > > - If DNR always takes precedence, is the blk_path_error() check sti=
ll
> > > > needed?
> > > > =

> > > It takes precedence in the sense that it should cause the command not=
 to be
> > > retried. It should not overwrite any error code indicating a non-retr=
yable
> > > error.
> > =

> > But we're already past the nvme retry logic, which also handles the DNR
> > bit. Who is this telling not to retry?
> > =

> Anything layered on top of it, namely dm-multipath or MD.

Okay, that's what I thought. Can we just move this check to fit in the
unlikely() error case just above where you have it?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
