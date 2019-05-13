Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4631B7A2
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+pEL6tpAIOkxW52qMawJRRcfAofLT65Bo4lBKgtU0c=; b=YKnJdr5MogRgw1
	bgVRkXrwV/qFSD6htEWeItAWHBtH8nlAo2JatqycspyVRjjkhaUJAhEqhjkqHplpI+32xCZtjusBW
	xyS3CMX5o0JQEVsJyZYs+JDHF3TIF92iJfmByf8o6sHZCsAMDPTCvutLqmINp2DS+Bl4DFa0rTHJc
	s7U5lO8/GeL4n3X2OKzmXq9o7+HXsM9EvKZlDzCrjGfJ1HZTI1H7XdvUdrdHRLkOnqdmf87+I+8/X
	iDEC1+c7xhVbwrITpDoDkYDenLW1uV0a6UAmSmtAc7qvmmYBi5OJHy2FhLoxtcTqBQIXaRPVJUsqE
	F8NK6SUfQkyT7z9oOwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBWJ-0007mW-AZ; Mon, 13 May 2019 14:01:35 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBWA-0007m4-S4
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:01:31 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7AB8368AFE; Mon, 13 May 2019 16:01:05 +0200 (CEST)
Date: Mon, 13 May 2019 16:01:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 0/2] Minor clean-ups for nvme and nvme-fabrics
Message-ID: <20190513140105.GA24840@lst.de>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_070127_056170_78871256 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied both patches to nvme-5.2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
