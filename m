Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7241156DF
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 18:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY0Qwx+ck4Gdx1EUJQ5rnZob5+cMrqrq0nyka1qEmWw=; b=Cz0CqjjUDpurj/
	LWrdWehIjl/u0HUxHyz8enPjbiYedhr0dybz58iA9HOmEEIXvjkwdf3uDAj3PmMX2wASpnPZ1cegK
	XOIJRI7h7lPhsLJOWOicCF6ElgCBShTP/N9RYMstV1qScb/gc0qU8qKH/s1UMm7QwAWHh8A3vNeSy
	uoxwCaQNwTowGljTiXKToEas3yJXY5tdot4eilpf0e5IFkfc9UugYnHoNTRxwl//einBq0vHhMxdb
	bYZKrZg91oL8OLpYsYWRm9SgzDDF+oeboqui+LkCShLAzqmK0n7/pcDCVfjEvmIUrbWIdpXeBMgsx
	rtwkKnnX9Qrmjy1X7Gnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHsT-0002ZE-Vw; Fri, 06 Dec 2019 17:58:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHsP-0002Yk-OQ
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 17:58:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A85B124670;
 Fri,  6 Dec 2019 17:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575655129;
 bh=/3ceQaXThxhF2lA/kE8ImZh7r8c1O67MHsiDG0XYmXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0O630ikUgde0Yt6uq3dQa+EM1xoRq0rWM5k+nNs/K7ngIAYW+9UJNV7uzryRVG+gB
 Qv+2cEQQGwrKSid659hSYHfH+O5EFNCjXRWn2KEYqT2STuRBixmIuqhNrNk2CQbaCa
 2pBr57bE1fLiJVFD4KodvCZgrimhDFGBM6Ksubcw=
Date: Sat, 7 Dec 2019 02:58:42 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: [PATCH 0/3] nvme specialized queue fixes
Message-ID: <20191206175842.GA2001@redsun51.ssa.fujisawa.hgst.com>
References: <20191206171316.2421-1-kbusch@kernel.org>
 <360fdd5a-f2ce-86c6-55e5-a15ff2f9e1cc@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <360fdd5a-f2ce-86c6-55e5-a15ff2f9e1cc@kernel.dk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_095849_813613_393DCB34 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 10:46:04AM -0700, Jens Axboe wrote:
> Looks good to me:
> 
> Reviewed-by: Jens Axboe <axboe@kernel.dk>

Thank you, queued up in nvme/for-5.5. Will be sending you the next pull
request later today. I'm just hoping to hear test results on another
patch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
