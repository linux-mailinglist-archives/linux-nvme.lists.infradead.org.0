Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6AD6E07E
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 07:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axPBCso08PMd2j00mZ/iC/A6fbROEFbJO0+h8F9vBFk=; b=nELt+B7FwGorxF
	s9oacvIPbA65WqqSLJB34Fst7Y0ubtAMQeIOuIBNwntxSStxAU8qdhDLDamF6//NXbmhS3/ZQCiwE
	Yf93EmTxlKBXn2rS/QcIGyOcjpRRdzFrihY4efHI5Zlxw1wPBkh8rXwfjbB5Q4Km9P7749RCDe4XO
	Zxh/rFlaxI106vh9/+ibbvZADXzDN9U77EOAu3H4f2dUTRJ37XrT4hd4jTbbHFXqxXqI4uK9M9r3/
	3vz1b1rO3/6bDJKz+Z6qX640xlRYFCZnUPmDMfxl6vjX8FnEFyDxTE7N2hw+1Fxkc9D2w3qxufu2g
	yDfAvpTIdCpV0B1DnXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoLEy-0003pN-0N; Fri, 19 Jul 2019 05:15:32 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoLEr-0003oz-2r
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 05:15:26 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J5FFnH000351;
 Fri, 19 Jul 2019 00:15:16 -0500
Message-ID: <448cfd6b3e798dfbef45fa72e0819b1cb39cf68d.camel@kernel.crashing.org>
Subject: Re: [PATCH v2] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Date: Fri, 19 Jul 2019 15:15:14 +1000
In-Reply-To: <BYAPR04MB58166CED3126757BEC56D3A8E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <f19ac710b4dc28fb3b59ef11bd06d341bc939f3d.camel@kernel.crashing.org>
 <BYAPR04MB58168C42A68712287F734242E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bc856389e6b09f7c545144be0f370f7ad3b05784.camel@kernel.crashing.org>
 <BYAPR04MB58166CED3126757BEC56D3A8E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_221525_280472_78E314B3 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-07-19 at 05:01 +0000, Damien Le Moal wrote:
> > I suppose that would work and be simpler. I honestly don't know much
> > about the block layer and tag allocation so I stayed away from it :-)
> > 
> > I'll dig, but a hint would be welcome :)
> 
> Uuuh.. Never played with the tag management code directly myself either. A quick
> look seem to indicate that blk_mq_get/put_tag() is what you should be using. But
> further looking, struct blk_mq_tags has the field nr_reserved_tags which is used
> as an offset start point for searching free tags, which is exactly what you
> would need.

Yup. I was getting there, it's just that we use the tagset mess which I
had to untangle a bit first :-)

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
