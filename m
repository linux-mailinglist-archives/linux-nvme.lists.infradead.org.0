Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44ED98D19
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 10:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EACmhylmUrs1zGuFKN1+Vj35XDemqrh8ZMNH03HJM8o=; b=LwP0Ufzrew/s/F2mx0NvO1tzZp
	A7A6amrx/XZ6Oxg8m6Q8RL/yvnVnBBvNLYLZ/nFHVkNEhXSTCX/4XPMVxLSASqGYhKTN8ExCLwmP8
	zAgvUg+mw2q7xEkHCy3SVdgqy5WHELUgSMaxcOwZ7+g6Vmrs4HF78hx7I5GL9SmTXF9eUPSeGZQVp
	HxqeK5UOOWSNNDOhqXBc6yeui0rwYqp5p/FMhf7BFKvD0QIBMcoVqAw2KEO6CRFgpNRpLwxb/gN23
	rJidSOQXUXSZgfTiXfzwXg+ugY10NfPQEwT/7zwugXF8TPvJdqoqFv3QVbvlT1ds8iJEmxOgF3yiI
	HTqguSKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iDY-0005Rl-HE; Thu, 22 Aug 2019 08:13:12 +0000
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iCj-0005Ft-E6
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 08:12:22 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id E509340059; 
 Thu, 22 Aug 2019 08:12:19 +0000 (UTC)
Received: from linux-m89u (213.152.161.234) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 22 Aug
 2019 09:12:14 +0100
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190821234840.GD27887@infradead.org>
User-agent: mu4e 1.3.3; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
In-Reply-To: <20190821234840.GD27887@infradead.org>
Date: Thu, 22 Aug 2019 10:11:18 +0200
Message-ID: <87a7c1bowp.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [213.152.161.234]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24862.003
X-TM-AS-Result: No-11.299700-8.000000-10
X-TMASE-MatchedRID: eVEkOcJu0F7OH9fyebH9T5D2Qd/jbJtk+D+zbdY8EilYk5R4C39do6UT
 uBQ/WRv/ovy86c4vCCHMdHm3E7kFwCHhSBQfglfsA9lly13c/gGNY/pqxovzxeD0a1g8E91L4Zj
 Kc1lvMvCMVdvRiR/Be5D36q88ViR1/wc4BmSs8N3ovZduO2AF929Xf86cwKVaPz6MnI14Rikmy0
 rU1dBkl/ZxvfF2IHFpyPaKiqafZBztrl3Jv2BOW7xygpRxo469D9CGMZVWk53kMnUVL5d0ExAFI
 K5TH5/7jNB7AXtYiS0LsbbRyNDtIz5Ny7atIpPc0qHDUIYDGshtpkC5N7OtOcAkyHiYDAQbaYw6
 Dg19zC2urj0+g4CZ3Jsoi2XrUn/Jn6KdMrRsL14qtq5d3cxkNZd/mwLf2BVUfHSqt37H0ZaxAkh
 x5snflqce+V6Qk3oyZ16av/iwjZBLhb8xGEnVfg==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--11.299700-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24862.003
X-MDID: 1566461541-PcYovREbfrSM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011221_653704_43AC9213 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.154.164 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Christoph Hellwig <hch@infradead.org> writes:

 > On Tue, Aug 20, 2019 at 09:35:10AM +0200, Mikhail Skorzhinskii wrote:
 > > This trace point have no meaning without native multipath support and
 > > break compilation on configurations without enabled multipath.
 > >
 > > Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
 > > ---
 > >  drivers/nvme/host/core.c | 12 ++++--------
 > >  drivers/nvme/host/nvme.h | 14 ++++++++++++++
 > >  2 files changed, 18 insertions(+), 8 deletions(-)
 > >
 > > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
 > > index 90cfacc44209..40021cfd715a 100644
 > > --- a/drivers/nvme/host/core.c
 > > +++ b/drivers/nvme/host/core.c
 > > @@ -22,14 +22,12 @@
 > >  #include <linux/pm_qos.h>
 > >  #include <asm/unaligned.h>
 > >
 > > -#include <trace/events/block.h>
 > > +#include "nvme.h"
 > > +#include "fabrics.h"
 > >
 > >  #define CREATE_TRACE_POINTS
 > >  #include "trace.h"
 > >
 > > -#include "nvme.h"
 > > -#include "fabrics.h"
 > > -
 > >  #define NVME_MINORS		(1U << MINORBITS)
 > >
 > >  unsigned int admin_timeout = 60;
 > > @@ -263,7 +261,6 @@ static void nvme_retry_req(struct request *req)
 > >  void nvme_complete_rq(struct request *req)
 > >  {
 > >  	blk_status_t status = nvme_error_status(req);
 > > -	struct nvme_ns *ns = req->q->queuedata;
 > >
 > >  	trace_nvme_complete_rq(req);
 > >
 > > @@ -282,9 +279,8 @@ void nvme_complete_rq(struct request *req)
 > >  			return;
 > >  		}
 > >  	}
 > > -	if (req->bio && ns && ns->head->disk)
 > > -		trace_block_bio_complete(ns->head->disk->queue,
 > > -					 req->bio, status);
 > > +
 > > +	nvme_trace_bio_complete(req, status);
 > >  	blk_mq_end_request(req, status);
 > >  }
 > >  EXPORT_SYMBOL_GPL(nvme_complete_rq);
 > > diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
 > > index 3e64f7187e70..dc415183cabd 100644
 > > --- a/drivers/nvme/host/nvme.h
 > > +++ b/drivers/nvme/host/nvme.h
 > > @@ -16,6 +16,8 @@
 > >  #include <linux/fault-inject.h>
 > >  #include <linux/rcupdate.h>
 > >
 > > +#include <trace/events/block.h>
 > > +
 > >  extern unsigned int nvme_io_timeout;
 > >  #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
 > >
 > > @@ -530,6 +532,15 @@ static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
 > >  		kblockd_schedule_work(&head->requeue_work);
 > >  }
 > >
 > > +static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)
 >
 > Please fix the too long line.

Oh, I am sorry. I forgot to run a checkpath on later patches... Probably
make sense to configure it to run automatically on sending.

 > > +	struct nvme_ns *ns = req->q->queuedata;
 > > +
 > > +	if (req->bio && ns && ns->head->disk)
 >
 > Can't we just use REQ_NVME_MPATH instead of these three checks?

From my fast look into the code that sounds right. Head disk is
allocated only for multipath, as well as this flag is attached to the
bio.

I will give it a try.

 > > +static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)
 >
 > Another > 80 char line.

will fix

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
