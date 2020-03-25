Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC7E19304E
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 19:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk6ylSjOF9dEMYDbbPfT2tV6T0g3CIFJi5NHIJOdpyY=; b=jU21ZkN4/+TCKY
	PBIOXDDx900BXJ8JSUTv0ktSEnk1WzoF8tGunoNG8T0mYpkxBpE7NwAVX04WbE39uih8cvo+9UEXY
	VnjrFVQUj35PQFxVN16o2qhd1ExDAsFC7S+k1Rf05Whbs3UVMG6FekWV2rpdqvkO6BLywvIIr6VQ7
	Ct/OxmeIJRNGVeHLdrrIzzwZvNIuPhsjGcmikAJbKlJ0K3IJCtF4tV31YGkIobiiAAlyWK+Jx3Z8n
	MT85MAufO1vw097obX6d3OMygl9v0X4FsZBTe502H2QJ1t9qryd85HBVzYCZF6bzT8a91UfwEeeGB
	2u2k31TnN0uZhkzr3C0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHAjI-0004Q4-Io; Wed, 25 Mar 2020 18:26:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHAjD-0004PF-Pe
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 18:26:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 472A320740;
 Wed, 25 Mar 2020 18:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585160771;
 bh=6Q+CrQ602tmxDcWOlZL6ufQEyLdb6veHata9Ej2DLPU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s9nDuL/OQSVs9yDeSg0VIZhceIqy4WFDzhhjqt2M33MT1llbQOCI8Bh4gMbHb1+Xo
 A8ueEhVPB5veTp5WBrwa5NgoRml5vDRsubWCY3Onw1vw67uXe0w8RjUALavx98foGC
 e2ydlGazdYoSxj065nxyFm9UBTjnpDnhZTVlU2Qc=
Date: Thu, 26 Mar 2020 03:26:07 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: Fix NVME_IOCTL_ADMIN_CMD compat address handling.
Message-ID: <20200325182607.GA5290@redsun51.ssa.fujisawa.hgst.com>
References: <20200325002847.2140-1-nbowler@draconx.ca>
 <3eed9434-d1af-b0d9-e972-ddd393d1ab4b@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3eed9434-d1af-b0d9-e972-ddd393d1ab4b@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_112611_853223_7F277CE7 
X-CRM114-Status: UNSURE (   7.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Bowler <nbowler@draconx.ca>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Queued up for nvme-5.7, thanks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
