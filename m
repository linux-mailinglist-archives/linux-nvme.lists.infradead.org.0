Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F4EE6D6F
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 08:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31Pj3M0MxrjpecSuz3lStyririkrn0QRUiZYZUI1nL4=; b=ovtx5hoR3yTrMD
	E0k9A0iV95QObxSL3Fon0wVc9k+iKn17cq4I5vhyZApNr1s42lbCYW9Mwmb0Dfr24mpsh9vjFialp
	QyhyfChqSJvrJAfEY2aDHJtPoV4eFRMoaWUmia9HeLcuxkjw7ez/D3Jr0s99nvusfH7ETfLKRNSMy
	6/AxbA59B8smiIpRnyvIyRV8V53LMt4x5l71CdglaoLBsRXgniOJlYdmaQFVfQ7QRmu/oMTLO5aGr
	idLOwF6WbvBjCTCFVh8njA8jP1jHWqiR3AMRNSzX27fZ2fHpNSpIOYLxupeYoRZMrFL+1iJi1KvRx
	5kzj+iTm4RvJO8ufuAqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzgC-0008Hb-PD; Mon, 28 Oct 2019 07:43:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzg6-0008GV-ND
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 07:43:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C571468C7B; Mon, 28 Oct 2019 08:43:00 +0100 (CET)
Date: Mon, 28 Oct 2019 08:43:00 +0100
From: "hch@lst.de" <hch@lst.de>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Message-ID: <20191028074300.GA20523@lst.de>
References: <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
 <FA6B6A9F-649B-4B58-99D0-2D09076E2482@onestopsystems.com>
 <20191025040540.GA19941@redsun51.ssa.fujisawa.hgst.com>
 <20191025042658.GB19941@redsun51.ssa.fujisawa.hgst.com>
 <109617B2-CC73-4CDE-B97A-FDDB12CD22BD@onestopsystems.com>
 <20191027150330.GA5843@lst.de>
 <20191028005517.GA6693@redsun51.ssa.fujisawa.hgst.com>
 <BYAPR04MB57491F5ED34EEE047D86C2D186660@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20191028073545.GA20427@lst.de>
 <BYAPR04MB5749A6D339572EFC0C9C401686660@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749A6D339572EFC0C9C401686660@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_004302_910036_31DFE6DA 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Mark Ruijter <MRuijter@onestopsystems.com>, Keith Busch <kbusch@kernel.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 07:38:05AM +0000, Chaitanya Kulkarni wrote:
> On 10/28/19 12:35 AM, hch@lst.de wrote:
> > On Mon, Oct 28, 2019 at 07:32:45AM +0000, Chaitanya Kulkarni wrote:
> >> Just did a quick test with following patch on the top of
> >> plug patch :-
> > 
> > Yes, that change makes total sense - in fact Keith also mentioned I
> > placed the finish_plug incorrectly.
> > 
> 
> Do you want me to send a new plug patch with updated patch
> description and performance numbers keeping you original
> author ?

Fine me me.  Or take the authorship for you, after all you changed 2
line a 3 line patch ;-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
