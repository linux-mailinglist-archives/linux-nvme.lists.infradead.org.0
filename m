Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC28274D1
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 05:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGFg38MwdQxImf83fxQ/HGI/TOQv6xwTBQFImJeuwCk=; b=ZXF7BHYdnsuVrv
	iaSRXvoEsxgzPBGjk5Z4UHkVQFz2Ro7fIHzUceOIzF2FB34spTcDKxx+AKKYxi6QpJCuI8LJ7vSm8
	cZ3mkRTDUqkrrS3dWiDP3SBAhdMOCJwJiQDy7igUM/PJhYhueDO5XDEmgExRdLxvPUBQkfrLAxjQ0
	TMWDjsotb19X08PYAWwF85+g2pBm24KbWh1gPVTqROTg7SmqPXwCrcuytSqLcprU49b56ZQH/Q5zd
	d1Sd9OLDs3puOtOT/jnUku2cmtn18q/etLt1nb6apbq9MSoBNVKv1fLwqFOuiZKt0vknBGamBA0MP
	iHj668ZkLYnviEIBdVDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeQK-00052x-03; Thu, 23 May 2019 03:29:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeQE-00052O-W6
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 03:29:40 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4A3DC3001809;
 Thu, 23 May 2019 03:29:38 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ECEC56013C;
 Thu, 23 May 2019 03:29:30 +0000 (UTC)
Date: Thu, 23 May 2019 11:29:26 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190523032925.GA10601@ming.t460p>
References: <20190522174812.5597-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522174812.5597-1-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 23 May 2019 03:29:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_202939_051145_1D611DBD 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:48:10AM -0600, Keith Busch wrote:
> Hardware may temporarily stop processing commands that have
> been dispatched to it while activating new firmware. Some target
> implementation's paused state time exceeds the default request expiry,
> so any request dispatched before the driver could quiesce for the
> hardware's paused state will time out, and handling this may interrupt
> the firmware activation.
> 
> This two-part series provides a way for drivers to reset dispatched
> requests' timeout deadline, then uses this new mechanism from the nvme
> driver's fw activation work.

Just wondering why not freeze IO queues before updating FW?


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
