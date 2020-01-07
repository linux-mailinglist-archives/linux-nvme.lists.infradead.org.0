Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA0D132C6F
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Jan 2020 18:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuXfKpjzc9x6Dnoq+mcau+iYCdoXqz8MWWwS/QZDXF4=; b=jOdRllFyuX3++K
	+Nta9/Vie3k1cVP+63n8XnFDgpt5Kl2sGa90COoTWNDFzIt9Hdldfn247iIrs6hQNkAVwCCLCtb4z
	F8oNORjlTsKP1YopPXgfJ2ID/Yf6a+ynswmek9ComRL5PjaqRDJeTYWOShdcZvku80GVwH+ew4PpH
	nsr9F75haFAkLH4XKr+jlU9FWOg8Y4umWpEpANpupDPaccpIwlrRWiAJzUQwVZDbNJlvc0EsicKcZ
	RoYPAaK+YpgJOT9VUDLU3CiHwEVjvM5R7LCEA89WPxEhruOzV/CTnIAcc8pgBm+H7soHm0Y2OBTcU
	MNLoFH26GJ4LeGp8vTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosHH-0005Xb-O2; Tue, 07 Jan 2020 17:04:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosHB-0005XG-SP
 for linux-nvme@lists.infradead.org; Tue, 07 Jan 2020 17:04:19 +0000
Received: from chuupie.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1C80208C4;
 Tue,  7 Jan 2020 17:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578416657;
 bh=GcW2dITOM3hpKnag21R+iXYkSDPuXta8coGyBUI0b3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cVoraKJM+yflGB5N4r11LLggbmfdwwgn/kygt0uL7WdPnarFepPtegE1ODbnNTh9a
 TvbbbEdX4hXr9itUNTJ/rMdsEwL+fJ0l/WdheH1Aozatp9CZyZ8h1mLRG9CZ86c4fh
 JCGmDteKdZnJ8FwWW/xIAt9p77f4htnm8U3ozAME=
Date: Tue, 7 Jan 2020 10:04:14 -0700
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-cli: Fix systemd service script use of CONNECT_ARGS
 env var
Message-ID: <20200107170414.GA600101@chuupie.wdl.wdc.com>
References: <20191219190534.11673-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219190534.11673-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_090417_939008_8ED6FBDD 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 11:05:34AM -0800, James Smart wrote:
> In testing, some environments are not properly expanding CONNECT_ARGS.
> 
> Change systemd service file use of CONNECT_ARGS to be encapsulated by
> apostrophes and parens.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>

Patch applied, sorry for the delay.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
