Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376BA1637F7
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 01:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=en+Q7VkMsaq4xJBOdgupgQW5UjR8I71Mvaws7+CeV9Q=; b=XWkrdvZFfscPUo
	jly02qlZICkvLOMboYXx6gxqS/pKBCRJ/qWc969wUmyAskb6oGQn1Hfix/ICKpyOL58BLnIvWunCR
	8MQCYYbUhrFSAAtxNeD4pltxHMMPihzdbaQ6s3l+yrmZs/bsMoB3Pp8IjLWE3GScdeORTT/5PWaTz
	3QVUUOmM6kKI3iQm/HUhMwnNRqH/PnHlPJSibrz4op7y9+uw7itLdb3dkLEFDyhpWkBv6r5cEiM4E
	Uuq2BJcQJgcdn1NRG+++/8VbZbpoVtAuf6jYmRsk/mvvRxJyJyqj41RAcUsM33P2XFP3t7WoemYcD
	zk7G+l82w1pSHdyQyf+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Crp-0007TX-Q6; Wed, 19 Feb 2020 00:05:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Crl-0007TE-Bc
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 00:05:26 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64EB2208E4;
 Wed, 19 Feb 2020 00:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582070724;
 bh=sH5O3xWAIkvm8LQwxC8TtAEp/a7Uo9nlFDZX5BpE1BI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n34GwqorcOZe9+n/DJqkx+bN9uzQ3LmSN0iQe6xFjGjG2VrjWSeePqaDBPfsjHmBB
 XHc+QPAj7qb4SLqaMeTvJlpBRBwdVgQ7QZUHpfDDGMo9DZQN9aExDG7T8SEexciv+4
 8YzeJZIbJBUwKe8xctNcBGrU1/YzCHJNjjDs9QF0=
Date: Wed, 19 Feb 2020 09:05:19 +0900
From: Keith Busch <kbusch@kernel.org>
To: Edmund Merrow-Smith <edmund@sucs.org>
Subject: Re: [PATCH] drivers: NVME: host: core.c: Fixed some coding style
 issues.
Message-ID: <20200219000519.GB18306@redsun51.ssa.fujisawa.hgst.com>
References: <20200218230131.12135-1-edmund@sucs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218230131.12135-1-edmund@sucs.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160525_422513_9D650E00 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:01:31PM +0000, Edmund Merrow-Smith wrote:
> Fixed a number of style issues highlighted by scripts/checkpatch.pl.
> Mostly whitespace issues, implied int warnings,
> trailing semicolons and line length issues.

But checkpatch.pl is on the wrong side of the 'unsigned'/'unsigned int'
debate! The C standard defined unsigned since forever ago, its usage is
not at all confusing.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
