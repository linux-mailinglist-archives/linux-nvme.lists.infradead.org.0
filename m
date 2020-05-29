Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C61E824B
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 17:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtVLqy2fgkLE+PfPjPaVXgeamYh0l2XhGxyVwqm8kbU=; b=Vcr8TKyPO9O0Vf
	7iPD7dvSseA+nHE0BwWBL3b+MHNyjAMIWy9BCLBpkYN8le5rOLakr9/bmNI9WNH6uOwDaMqbpsu73
	wweax23U41uw168SIZCOWhiCWPPX50FaejR18qjEqYKC2icTj8LbXJySvdQTaX18w8fEmPJNCGSvw
	xlfggt/b4eiYHb5AV6Aai6hO5Dnsptlu/ZIAlD5rXFaMtiwe7dtBi09tIx664iJXjDsdZp3fRmaY2
	1bgoAeQX+CRc4lU5Erz+Mgsbov3RdAujZOGEGVfA36PfXa22aSICuYobz0sFkuDfZiOoSJVfuyzou
	6R8IpghqeQk+d8YKBUJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh9n-0007AA-D1; Fri, 29 May 2020 15:42:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh9i-00079N-BF
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 15:42:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B56D1B17D;
 Fri, 29 May 2020 15:42:44 +0000 (UTC)
Date: Fri, 29 May 2020 17:42:43 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv4 2/2] nvme: force complete cancelled requests
Message-ID: <20200529154243.xy6mslkweyveejl2@beryllium.lan>
References: <20200529145200.3545747-1-kbusch@kernel.org>
 <20200529145200.3545747-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529145200.3545747-2-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_084246_531040_4CD0174C 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: axboe@kernel.dk, sagi@grimberg.me,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, alan.adamson@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 07:52:00AM -0700, Keith Busch wrote:
> Use blk_mq_foce_complete_rq() to bypass fake timeout error injection so
> that request reclaim may proceed.
> 
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> Reviewed-by: Ming Lei <ming.lei@redhat.com>
> Signed-off-by: Keith Busch <kbusch@kernel.org>

Reviewed-by: Daniel Wagner <dwagner@suse.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
