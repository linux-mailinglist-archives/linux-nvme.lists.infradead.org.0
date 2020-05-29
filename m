Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87311E8238
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 17:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcildmhPWODL2IBBJ/JdtF00aZlGBSetlMVSUKaXUmg=; b=bJpBuRkh26WAwU
	auxKGDf57FViPHNpdNUUgdYmLumZaygKOQYJhihL45X8vChWJ52jm/gUkYXx7eiCEgsgmvovwH5MB
	Q6+XV7p6UhCftCj1sejb3HJLM2aC6Ur58HEeMn/bKsc/1HW79U29sgiqsLXFrfvOsvsZDkkn3on03
	KZK/+SXPzOM77MVRHmoAtosEn0OP9lYm9OIU+3WC5bnIp69UJ5s45zAoETk7QMwfGQj6Wew78u5EG
	o0c2COnTAqLbKJhd+sg1fP9h/7HZpycXuf8ASp4R9xtUJmb6JNIZkfd03P5LMmyYDrtPq/DVeZMIR
	aJUnQA+C37V4/jiISUqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh9J-0006y9-Vk; Fri, 29 May 2020 15:42:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh9G-0006xW-3M
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 15:42:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 58E6AACB8;
 Fri, 29 May 2020 15:42:15 +0000 (UTC)
Date: Fri, 29 May 2020 17:42:14 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv4 1/2] blk-mq: blk-mq: provide forced completion method
Message-ID: <20200529154214.k4tl3uhtdg5sftex@beryllium.lan>
References: <20200529145200.3545747-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529145200.3545747-1-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_084218_288755_74408AFF 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: axboe@kernel.dk, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, alan.adamson@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 07:51:59AM -0700, Keith Busch wrote:
> Drivers may need to bypass error injection for error recovery. Rename
> __blk_mq_complete_request() to blk_mq_force_complete_rq() and export
> that function so drivers may skip potential fake timeouts after they've
> reclaimed lost requests.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>

Reviewed-by: Daniel Wagner <dwagner@suse.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
