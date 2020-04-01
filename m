Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2EC19B67E
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 21:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+qaVXNH3Aqbn49+9jcmEu6dWjq5v6V14aTx2BA2YvM=; b=YTDovPH+JwSb0p
	IO+rb/dLD1r7bcRZGurXMoVxs9/AbCR7k/JOVR1UeQGKDLYhi/DI6jleBMQ85xbblAjciV+08v2FA
	WWK/KrgvBiAkNI1Mst1H63IxLzVSczg8fx59LDAgkxE7bXux4SHYoSo8yZj7zyjowxN3zxnOS8KXM
	MDKIRHYe5VtCaUyJQIOX+PHfxtLbOL1eZ01QDqOFo5L7XPPHdkNcRBe9jb2Sn+/baRtJXy1yOmvyv
	jmqc6rJOlaekIoGPvgvRfxybK7Y4dmX4NcHZPb5oZqkwZYL3gSgKd8QmfgeIGjzYxjrW5R2Z8sPlv
	DLQBD7BTFrjZhi4gWGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjEs-0000xT-Hg; Wed, 01 Apr 2020 19:41:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjEn-0000wy-VG
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 19:41:23 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BF9620714;
 Wed,  1 Apr 2020 19:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585770081;
 bh=CvAGjUOnQUvbdCFe7tNgyMqy9ugmppsFAfXoQhzmBoQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AyYbJpf+nuGe9CICXSUY9hfxYOHsnnB42OllsWcotaBJQb9NhFWOC/YkseWfOKBmh
 6rkjU9+2RhoRiYipwithFYXRX4VWPxrzh6DDuP/89GTSar7iWxJVPAThoi+BApPo9i
 b8KWWbO6SChitTdD2HfyZe1yD5Pym3x495FxbNwo=
Date: Wed, 1 Apr 2020 12:41:19 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme-print: list also hostnqn and hostid for verbose
Message-ID: <20200401194119.GC1144965@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200324085328.23387-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324085328.23387-1-sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_124122_036416_9A8EF98B 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for the patches, applied both to nvme-cli

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
