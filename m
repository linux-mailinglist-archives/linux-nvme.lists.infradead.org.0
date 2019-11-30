Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966C310DE5B
	for <lists+linux-nvme@lfdr.de>; Sat, 30 Nov 2019 18:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMI6iEZ0nKYnjE4m70FHYuZVCgQk/HD6sFRVvtLRd2g=; b=DYIKTSUieHlTzW
	Nj7j1bVIA/5qkvKUnDHHcciFV1GzZgB3msx8oHoSN0G/xuQsJN9RH+2zQqCmKhoxKKklI2QzlcqqX
	qI9+tAMgwj7I1zVWdFA/S/OGfpHxwh9yPpmM4hFVxVxow82NV2OTyX/emaIy4f8OH3BZOgYN2MSxM
	2qwktW7gcmE1ZMLVz5dDIUUV8fdRh10GgizxQlaMoK6BWWyvumn6Xt2fZ65UukWBy0Mh2yvAm9Bvu
	ovY8W4n79rjVU63ZaGFYXqn3kdB0OK/hDNeLGWruul3jfiZg0BVutdUlOgyKMYmu7HzkyNu1JE3iF
	PH27j8sD2zvbQWB+hMUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib68i-0005ks-F8; Sat, 30 Nov 2019 17:02:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib68c-0005kb-9m
 for linux-nvme@lists.infradead.org; Sat, 30 Nov 2019 17:02:32 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 410B82073C;
 Sat, 30 Nov 2019 17:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575133349;
 bh=4Z03Qq4Ko/UGElYVw5HFhFaBxkzGUvCLQACF5HtJHys=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ErFLvVegdbPkqxODcTwcFbriUOI277vNdhc24MwLNCWjoEEGs77aedpF/GSuFQFax
 eLHYXRa/in+Y4z9GD6EyLfxMbhNn5KQCj4YHp7ap8xWEYPoYBHD6EstRc4r10IZZFn
 k468Vt9azCR9ErzbITGgHcJRMytFbThYQrgSP7NM=
Date: Sun, 1 Dec 2019 02:02:22 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191130170222.GA5273@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191129094640.6fq6wcxmfi4fwnlw@linutronix.de>
 <20191129162719.GA47681@C02WT3WMHTD6.lpcnextlight.net>
 <20191129170545.axnykbrabigzcghs@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129170545.axnykbrabigzcghs@linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_090230_366708_3B2A43C5 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 06:05:45PM +0100, Sebastian Andrzej Siewior wrote:
> Ach okay. But I wouldn't consider it as a "bug" if your threaded handler
> returns IRQ_HANDLED and requires a longer period of time. Thsi seems
> fine to me.
> The SDHCI driver has a case where the interrupt thread waits for another
> interrupt (from its primary handler) in order to make progress.

Yes, that uses a driver specific way to handle that. This patch series
provides nvme specific handling for long running irq threads.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
