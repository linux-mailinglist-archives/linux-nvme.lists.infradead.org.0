Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C36D2D51
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmGggBASLzdPp/jdVgz8Bn75i+YZXNojuRJ7kRkH1ag=; b=EExtCLa/lfBqY5
	DNiCX9e9tuNHd9bkRpyUtHPVaO5aarzDKmQuquAnzod3L/ucQ3MilINL7oyNXOCZok5g/8dKaGW1Y
	QxPSuB678EPsOJY0z3c3LtuRdVdENh619pdDWYood3q5n8xQfNf/9QgVR+injJjtGG+l6HyTT3krQ
	k0JBM2dUbrI5Gzz33pLAkQYm+FtB/9Ps5GXrf36p1JHC0C4mXDd5BrnsbcswEwqZMO3QJRZLv84Je
	JAhwBNaM493wKKZoiKZwa+nRhvzN64NsJY5tmJ7812BBNlyeZsDbpOA7gVkZcpRVhWftTVFtv/MGl
	jyXSqU9B1r43xhw9W0Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIa5H-0006qk-IJ; Thu, 10 Oct 2019 15:10:31 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIa5B-0006qH-L0
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:10:26 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iIa59-0003kv-L5; Thu, 10 Oct 2019 17:10:23 +0200
Date: Thu, 10 Oct 2019 17:10:23 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-tcp: Remove access to sk->sk_ll_usec
Message-ID: <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010150719.GA617@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_081025_831688_117AEAD4 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 tglx@linutronix.de, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-10-10 17:07:19 [+0200], Christoph Hellwig wrote:
> The changelog doesn't match the patch, which just removes the assignment
> unconditionally.

I said that it has to be behind CONFIG_.* _but_ shouldn't be needed due
to the setsockopt() thingy. Isn't this working? If not I can put it
behind the ifdef. Be aware that the setsockopt() returns an error if
this polling is not available.

Sebastian

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
