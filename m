Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C4B26D5
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 22:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ec5Ed3ubCMTw+NBrcxCTFXkzM1pM9HYhv+K0z4xfyzc=; b=THjOC6dnjLsLVe
	Rw+A26NKviKC/wobc0s4tRgWxJVSj1oRz48JdvJBiiCDwFKtF7e+GHo93Lj731XQMsnTHZkfmk+TZ
	ZgpYZhikonotw1wTw1ecAeVmris1rgIKdQqIbb3I3nLz93k0FQFosuj/60XkEcq1FcLUKO/zKnvKU
	et+8d7ceSfEDWSfWhQJiLWNaXb90FQLymr0Vs4+yuoshGk9z2Kh2x9GN0SvWuugzMJDcIP/9Enmwy
	hRce/mmLplOFT6k9MaOFaiIft9Z95ylocNTwQ8awBjBPT87dZAfhWbfodSFzKWEt7RK7i3fOcLohc
	jhSWe17rAdDFjPIl6vkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8sTz-0001qc-4P; Fri, 13 Sep 2019 20:47:55 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8sTr-0001q8-Ne
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 20:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568407668; x=1599943668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0DMgzk9Q31R6OXQnNFdYX5k6fSz5migwYEG5yqcq2sQ=;
 b=f0PRfZux50re6WVfRnjOyAbWdA1dTqsW2WOEUGDqbZpi81CtQAa1/Oc9
 Ou2Ua2oIwefkefCew60Oz2jDihMnQ/qslNpsrvXsxcNx73VeqH8XriTeh
 /M2L6zRezcJ3PXdvJ6sm09IODjryRVloV8vENNjzMgrdAVQlB6Hbx55hF w=;
X-IronPort-AV: E=Sophos;i="5.64,501,1559520000"; d="scan'208";a="750652449"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1a-821c648d.us-east-1.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 13 Sep 2019 20:47:41 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-821c648d.us-east-1.amazon.com (Postfix) with ESMTPS
 id 61960A05FE; Fri, 13 Sep 2019 20:47:40 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 20:47:38 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 20:47:38 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Fri, 13 Sep 2019 20:47:38 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "kbusch@kernel.org" <kbusch@kernel.org>, "sblbir@amzn.com"
 <sblbir@amzn.com>
Subject: Re: [PATCH 2/2] nvme/host/core: Allow overriding of wait_ready timeout
Thread-Topic: [PATCH 2/2] nvme/host/core: Allow overriding of wait_ready
 timeout
Thread-Index: AQHVad0wnPWhMokpAUG0gkmWHw51hacpssQAgABidAA=
Date: Fri, 13 Sep 2019 20:47:38 +0000
Message-ID: <a5f9ac82515153852df382add4985927e2fbf586.camel@amazon.com>
References: <20190913024432.7705-1-sblbir@amzn.com>
 <20190913024432.7705-2-sblbir@amzn.com>
 <20190913145513.GA17139@keith-busch>
In-Reply-To: <20190913145513.GA17139@keith-busch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.147]
Content-ID: <44B7C724CDE48C48AD7670D7B77FF326@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_134747_901325_EAE6758E 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 08:55 -0600, Keith Busch wrote:
> On Fri, Sep 13, 2019 at 02:44:32AM +0000, Balbir Singh wrote:
> > Largely for debugging purposes where controllers with large
> > timeouts get stuck during reset.
> > 
> > Signed-off-by: Balbir Singh <sblbir@amzn.com>
> > ---
> >  drivers/nvme/host/core.c | 8 ++++++++
> >  drivers/nvme/host/nvme.h | 3 +++
> >  2 files changed, 11 insertions(+)
> > 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 45b96c6ac2d5..fa7982dfe551 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -40,6 +40,11 @@ module_param_named(io_timeout, nvme_io_timeout,
> > uint, 0644);
> >  MODULE_PARM_DESC(io_timeout, "timeout in seconds for I/O");
> >  EXPORT_SYMBOL_GPL(nvme_io_timeout);
> >  
> > +unsigned int nvme_wait_ready_timeout = 0;
> > +module_param_named(wait_ready_timeout, nvme_wait_ready_timeout,
> > uint, 0644);
> > +MODULE_PARM_DESC(wait_ready_timeout, "timeout in seconds for wait
> > ready on reset");
> > +EXPORT_SYMBOL_GPL(nvme_wait_ready_timeout);
> 
> There's no need to export this symbol.

Good point, I'll repost without the export

Balbir Singh.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
