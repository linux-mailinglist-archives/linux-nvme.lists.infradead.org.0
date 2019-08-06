Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C4A833A5
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 16:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYRZLTnRVun+0peOjBh9AvTzPelLQ0TW53Vm//nbA88=; b=uCQ3IlakjyFbFN
	yKVCSi7UYiQ5L4F2om9ey4DLyLQTDshvPw9vkrmh1oLdhgGuMaAoDHjK75iQENAgWgw0ggy1drbyF
	sC+ju+lMxhvfHwcZG7Gp/TmI+u3uMSP9vWPg3/t0cB5hWJ9hqKmpyWObNPqK/q3CBhAoBlRSzmeSl
	pQLf/N8PAa7uOQeQ+WIs456I9wDyca0AbXjbhg4mZ9vCkKm0yAqzl0r3t9FeOAn06sl3x9g6wTprF
	VZ6hXe7ejUqxqwfhp5rxEYamNqkkHLTmA2//Gonk384HpxHdLkV7IpqcgCyZv9gg9IDHsqFCvL3QE
	BHjZBspdTG6f3pBJjriw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0AY-0005g1-FM; Tue, 06 Aug 2019 14:10:30 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv09t-0003pj-LG
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 14:09:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 07:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="325643305"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 06 Aug 2019 07:09:46 -0700
Date: Tue, 6 Aug 2019 08:07:17 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190806140716.GA24030@localhost.localdomain>
References: <20190806111036.113233-1-hare@suse.de>
 <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
 <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_070949_751927_B9FF32C1 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Aug 06, 2019 at 03:53:29PM +0200, Hannes Reinecke wrote:
> On 8/6/19 3:50 PM, Nadolski, Edmund wrote:
> > On 8/6/2019 5:10 AM, Hannes Reinecke wrote:
> > > If the DNR bit is set we should not retry the command, even if
> > > the standard status evaluation indicates so.
> > > =

> > > Signed-off-by: Hannes Reinecke <hare@suse.com>
> > > ---
> > > =A0 drivers/nvme/host/core.c | 7 +++++++
> > > =A0 1 file changed, 7 insertions(+)
> > > =

> > > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > > index cc09b81fc7f4..c3e9254f4757 100644
> > > --- a/drivers/nvme/host/core.c
> > > +++ b/drivers/nvme/host/core.c
> > > @@ -279,6 +279,13 @@ void nvme_complete_rq(struct request *req)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > =A0=A0=A0=A0=A0 }
> > > +=A0=A0=A0 /*
> > > +=A0=A0=A0=A0 * Any pathing error might be retried, but the DNR bit t=
akes
> > > +=A0=A0=A0=A0 * precedence. So return BLK_STS_TARGET if the DNR bit i=
s set
> > > +=A0=A0=A0=A0 * to avoid retrying.
> > > +=A0=A0=A0=A0 */
> > > +=A0=A0=A0 if (blk_path_error(status) && nvme_req(req)->status & NVME=
_SC_DNR)
> > > +=A0=A0=A0=A0=A0=A0=A0 status =3D BLK_STS_TARGET;
> > > =A0=A0=A0=A0=A0 blk_mq_end_request(req, status);
> > > =A0 }
> > > =A0 EXPORT_SYMBOL_GPL(nvme_complete_rq);
> > > =

> > =

> > - If DNR always takes precedence, is the blk_path_error() check still
> > needed?
> > =

> It takes precedence in the sense that it should cause the command not to =
be
> retried. It should not overwrite any error code indicating a non-retryable
> error.

But we're already past the nvme retry logic, which also handles the DNR
bit. Who is this telling not to retry?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
