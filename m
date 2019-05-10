Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C69C1A218
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 19:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRNYCEqCBpXUGMoPyGBCEZkzXTxVgSF3sWCMwax7Tnc=; b=ATmlUgfTLod+05
	GpYkLqa5AuQJq3ObdRVsXzV/GREIHE/PsBw9HPVCtfSDTgU8oTsnkRqidzo1kRE4vQgxvE6+vX+ke
	QF26iS0ZwJfK45vh9+Q64FEQCug3B9sS9zFxLXZjO67E2xhNHmq/PROImoExGyTZ4SWjQWs6EBG6t
	P/akHnjnN6EqXtkTcAJjnetI1dLaDxthKsMSMtfDuOU/m5JXV+Ei734e35Sr8V1VVH/oFSAD9Vhrw
	vR+Ps+O1p79MWSkl5llCyCONIRKvEVJ/iSG/3YQeNtE+lHe0sU+NGG16gK6sNTSjuwITXH2DWITOn
	LodO6W2uHkmplfpIEQmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP8v8-00075Q-Ic; Fri, 10 May 2019 17:02:54 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hP8v3-00075G-R8; Fri, 10 May 2019 17:02:49 +0000
Date: Fri, 10 May 2019 10:02:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kanchan Joshi <joshi.k@samsung.com>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190510170249.GA26907@infradead.org>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, anshul@samsung.com, linux-fsdevel@vger.kernel.org,
 prakash.v@samsung.com, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I think this fundamentally goes in the wrong direction.  We explicitly
designed the block layer infrastructure around life time hints and
not the not fish not flesh streams interface, which causes all kinds
of problems.

Including the one this model causes on at least some SSDs where you
now statically allocate resources to a stream that is now not globally
available.  All for the little log with very short date lifetime that
any half decent hot/cold partitioning algorithm in the SSD should be
able to detect.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
