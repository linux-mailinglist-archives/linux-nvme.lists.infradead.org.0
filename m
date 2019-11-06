Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C051EF0B44
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 01:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CP8KwoMeyLcOVCeX80kknNEXB+kvN0d31pM1Cki5iSc=; b=mMldlPTeWFatDv
	eUvzbfggpyYEGg45TCn3wovRqHZDVTSIxMIXcqQ4sfeFUzsoahgsnJnyDVjjJF2htWpzlHXIA0/r4
	hzrxiiQeezugDIQM3/eLjSWSxPctetE0ycxwahd+4+XRRyWyo/Vrps3KAu2vt3U+b4NRnPZuY8ZBx
	IPBgM6m31NpKoSpbn5OOiIDDth90wK0waj3eJdgsdz2yP2tilGSt8wHyc1APfQmvuasIofCXpG1Zf
	6SpKmsUj6/1knZVgRUjroY1n4FCHszOizEWZO6uUqQb4Ikh3HaYd83jQsjNoejR37El5g2HmkZmZA
	pCbt3NH0CSqH4p39E6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS9WU-0005wi-Sr; Wed, 06 Nov 2019 00:50:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS9WQ-0005Xm-23
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 00:50:07 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1325721929;
 Wed,  6 Nov 2019 00:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573001405;
 bh=kXsjUOS49xb6Fg1pib3zaDmvnT2F5CQvvc8/QohwCok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tfu2cqCorP2sk4AHYkOj6Om9aQ8LncxBsiXoLybAe53JiHZsAIE1p+1FThoYBotIH
 nH9AhVlxtQOZx6sIiDGK7OeAeasSy59EbkxbyI20iJtPD/xg7J5XrHoO6TQOaewnPn
 2JppKs+NzSrfvrkhKK2ciYP24b8OiV4ch7ZqjGkw=
Date: Wed, 6 Nov 2019 09:49:58 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [RFC] nvme-cli: Support for hugetlbfs
Message-ID: <20191106004958.GC1450@redsun51.ssa.fujisawa.hgst.com>
References: <20191105183412.333-1-kbusch@kernel.org>
 <BYAPR04MB574927DA082B5B78D48CB9CE867E0@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB574927DA082B5B78D48CB9CE867E0@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_165006_128640_C729AAC5 
X-CRM114-Status: UNSURE (   5.70  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for the reviews! I've gone ahead and pushed this to master.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
