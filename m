Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26C863D49
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5ZK9Cfjq4Bao79janLETLRcTS0vLphFzMTZO86VbjI=; b=Onaj39Gyb9PaTv
	/ByR8OTGhgnUSZE6mIGXU/rqosYHOVTO2z+F41CGuH61QLEYXjFqH5TV1NiPRlxTp1KOgx6gtlI30
	tVw3kP7eokGrLCQPGMqL0xVg4+GS2XYJz+58XLmjf+VLO58NRpQbV1mt7pMQSvSVqvZ+gJNCsCTOe
	6FzMjYdAfG+erZG4B7twuXe3/0OrfJEjrs+0IW2k1PobDuGOX4EqzD9lywWnqm+AmOZkzDKFnvT1G
	dRp7Nq9rgEc8iXrEZBxj6Il3DC3VfxQu4p+sQikFC5opt/6oIP4LbJ647QvjlBkt1aRjv2w4y9ggt
	d5tn5YNp6J4sA2DxicxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxe4-0000oH-S5; Tue, 09 Jul 2019 21:27:29 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxdv-0000o0-0w
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:27:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 359D068B02; Tue,  9 Jul 2019 23:27:17 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:27:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
Message-ID: <20190709212717.GA9636@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
 <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142719_216391_743B4A53 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 02:26:04PM -0700, Sagi Grimberg wrote:
>> Looks good enough to me, especially now that we need to explicitly opt
>> into polling queues.
>
> Cool, so unless we have any objections, lets let it sit in 5.3?

Well, the 5.3 merge window is over, I'm not sure how happy Jens would
be about this new feature.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
