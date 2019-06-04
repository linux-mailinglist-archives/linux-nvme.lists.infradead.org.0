Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641A633FD4
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 09:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gohoPmNHmGkwKKudOMtODVcAy3zfZX4TOcPy+WXuM8w=; b=UOv1wFrekEkyRP
	bn/WmPSCW6RzQfgjNOfS5eAHtcShgxfV6pQt0OZ35waNw+KrUbrsLM4KLdkbl5naeMmd9IREhYipA
	10EmFtNXTDFPzZMi/bJ/mYcmWxG+EesprNRgzTeviaht+H4WBC08wNBscN1r+4GK21kaSOCxA5Nba
	nuwh73WkMIp1Nj5hRu8WxbZzb2x1V7k6YJa6qVPrNlQkrgUzHGqahStRyT8e5CTy4V8TYc51D0vyb
	by6TBuY2GHAJ1Ha9siOzKJssSkdFWp/dAxipY7j4cxjxNj/+38dkyh2su9ak/vvcJK7DgTeLHO2dU
	QXtlVFWJ24AE2RY7YtcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3ic-0004Pt-Ew; Tue, 04 Jun 2019 07:18:50 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3iW-0004Pb-TP
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 07:18:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 26E5768B02; Tue,  4 Jun 2019 09:18:16 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:18:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jaesoo Lee <jalee@purestorage.com>
Subject: Re: [PATCH v2] nvme: Fix u32 overflow in the number of namespace
 list calculation
Message-ID: <20190604071816.GA15680@lst.de>
References: <1559604301-14042-1-git-send-email-jalee@purestorage.com>
 <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_001845_099465_8E637F0D 
X-CRM114-Status: UNSURE (   9.52  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, Roland Dreier <roland@purestorage.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:42:28PM -0700, Jaesoo Lee wrote:
> The Number of Namespaces (nn) field in the identify controller data structure is
> defined as u32 and the maximum allowed value in NVMe specification is
> 0xFFFFFFFEUL. This change fixes the possible overflow of the DIV_ROUND_UP()
> operation used in nvme_scan_ns_list() by casting the nn to u64.
> 
> Signed-off-by: Jaesoo Lee <jalee@purestorage.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
