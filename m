Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CDCBCBF9
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Sep 2019 17:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOnWRh4W0nPox13WLGIXWa8q/jWZoCVTCTAuK/XJUWs=; b=GFigejXMsN3WRR
	FIkxpI1TXAduakIDRkNsTM4lB3aJv0p3Eb79Wd40IbBVTbj6xA1YtAkZDsxbmOdkUxd8phhwt3Mmd
	I2joRpTaS/Kx2ezNaBmYbJXjYuliRizXeNxWCL2ekWkIHwiUKkRZoRaN+b/PfNzLpHIeAkIhoPZgx
	nA8NHjP49Gk7akeeIK8Cs3N1MGiaYUVgSdYPYmEatgGCcMTjzenu41r3UfIb9nP/yByMH8xjHzCIr
	wICLwXKG7kBOAI633nVCm3fkpJvwcUcx57KAahUI6yNz086aH+y45OIFAvTQh0uwzR1VIIyUhXsi6
	mo+Jr+TxhV+vMW2RTkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCnDM-00036s-Ct; Tue, 24 Sep 2019 15:58:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnD2-0002vD-2B
 for linux-nvme@lists.infradead.org; Tue, 24 Sep 2019 15:58:37 +0000
Received: from C02WT3WMHTD6.sdcorp.global.sandisk.com (rap-us.hgst.com
 [199.255.44.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B7A0214AF;
 Tue, 24 Sep 2019 15:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569340715;
 bh=XW9HCeI4esIqHaNl9NUjs2X8GH66CIkoFY3v4L7tcjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W1R7ZFku03lJ16bfNEeFC9yXXVJ/hjsCv3il6cNuscApm7OlRzOJeJdJIth0rfoEt
 uUAUirfR3CYXtQUIAnRP74uws2JcbH3c3F3GFTuYNUwtz/CzpdqWH/QEaBeU4quKy9
 bY+iHTm7NMrHePqHk5D6kQc26tGACdeRLGPR2lQc=
Date: Tue, 24 Sep 2019 08:58:34 -0700
From: Keith Busch <kbusch@kernel.org>
To: Jeffrey Lien <Jeff.Lien@wdc.com>
Subject: Re: NVMe CLI Documentation Regen
Message-ID: <20190924155834.GA24729@C02WT3WMHTD6.sdcorp.global.sandisk.com>
References: <DM5PR04MB12448280B8639C509EC336F3EA840@DM5PR04MB1244.namprd04.prod.outlook.com>
 <20190924151745.GB21929@C02WT3WMHTD6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924151745.GB21929@C02WT3WMHTD6>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_085836_307805_9A2DE45B 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 08:17:45AM -0700, Keith Busch wrote:
> On Tue, Sep 24, 2019 at 01:19:40PM +0000, Jeffrey Lien wrote:
> > Keith,
> > Could you regenerate the nvme cli Documentation dir?  I made a few documentation updates to the some of the wdc plugin commands (vs-internal-log and vs-fw-activate-history) in my last pull request and noticed the .html and .1 files hadn't been updated.  
> 
> Yes, will get that pushed out today.

Done.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
