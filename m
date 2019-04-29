Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BE3E194
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 13:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORhQCHJvS1/hjMNbh6yv+uVED2r4a8it6HoIjLwhFno=; b=AAZTNk9b5eg7uT
	33mnRjgQlheXVNHMyfERNVtHFIm0FFAiCLBfZcczuv5Knn39uHl9S/boZLnFVaA5XWUgBmiwIsEJY
	9mdTJ3vC3rU7BUofBw8IoPgy4JbGNdaCqZwhlCFnPYDsnKtVehxVWiculldY8iVqAyb5emtsjh/+c
	LISiEhQ8PJcta1SiChGNja2RP2EgQe9mzImvTGwBso0fN58HD2C/6RGGTaw1Au+Vydjem9wcvxVTb
	0R+1PqBrkKT2qXCiYfou+wE98nbffQ3OqNxtXHhZqj8CIs+IdGfUHtMwCP9nqw4e2lkeLs7nEbuGT
	8+GmiK0Oa1UVp/hArcyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4nn-0007v9-Lj; Mon, 29 Apr 2019 11:50:31 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hL4nj-0007un-Cb; Mon, 29 Apr 2019 11:50:27 +0000
Date: Mon, 29 Apr 2019 04:50:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 1/2] nvme: improve logging
Message-ID: <20190429115027.GA25365@infradead.org>
References: <20190425024041.17657-1-chaitanya.kulkarni@wdc.com>
 <20190425024041.17657-2-chaitanya.kulkarni@wdc.com>
 <20190428120546.GB9759@infradead.org>
 <SN6PR04MB452781752A97CA874A973C7186380@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB452781752A97CA874A973C7186380@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>, "hare@suse.com" <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 07:32:32PM +0000, Chaitanya Kulkarni wrote:
> I've actually suggested that in my review but then it is static 
> afterall. I'll move it to header near NVME_CTRL_XXX definitions.
> Let me know if you prefer any other place.

Just keep it near the top of multipath.c..  But I can fix that up
if it is the last remanining issue in the new version.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
