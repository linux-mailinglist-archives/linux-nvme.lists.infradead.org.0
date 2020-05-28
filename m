Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF7D1E6930
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 20:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HP43kz6LPIeYpdpO0JFY3ZXZEH2dTwGxcCYYKa22yKM=; b=Oj0Hh+bDyFL2Dz
	72oxvUtVhjWVzPEvnTJsF/wpG0/xyAHkZHPrBN2bnOCoQbkxy9GNqNZMOYhl/GyMikclb6vQv49Yb
	OD+0qnFJic5WPbSrPkXD0T5PsqoHBplmg7vQUNJG9Sw/llKhfLLSjh/fZ15I+EURwxF9kj+U/DLWC
	3qipkrKxuPt+z6aGaewfVbdDkKPfrS0vF87yiIsZiNqv3PkiNjU2YYL26yiVr78L5jNje9A2kw+Vi
	6/x7HX7VDQqu2MXi82T0evAh2rQRTjm2aPNelxAvt6mcsTXlyuH3TaT/TWnxJ/fDrDmx3NMKjHF4+
	qQPDk6fWOgi4dJO1Ea/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeN6c-0001Y6-RA; Thu, 28 May 2020 18:18:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeN6Y-0001Xf-KS
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 18:18:11 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 830372073B;
 Thu, 28 May 2020 18:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590689890;
 bh=AI6mftzqfL5PqUmgUmNnymIfEoSbNgy5qQglt19o9yk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vdJgTUdMWvo0k/8NfoBN38tUzqyyhsugmhAR4HGCIcVmcuqc4A5Difa48syV37mh8
 dv63NaSZ0H51K05wj0Zd8jRXL6rGQO0gTRkCHK9tCZVglOS5wiNC3VipyzgnBpB4kN
 rf7/2AuEtGfXiD4p/Wi1qZ/AkE3WnhXu8dJtagpE=
Date: Thu, 28 May 2020 11:18:07 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv2 1/2] blk-mq: export __blk_mq_complete_request
Message-ID: <20200528181807.GA3504306@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200528151931.3501506-1-kbusch@kernel.org>
 <20200528164256.GA25651@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528164256.GA25651@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_111810_689468_DCF1E4D4 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-block@vger.kernel.org, axboe@kernel.dk, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 06:42:56PM +0200, Christoph Hellwig wrote:
> I think this needs a better name.

blk_mq_do_complete_req()?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
